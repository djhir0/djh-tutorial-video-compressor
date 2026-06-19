# ==========================================
# DJH Tutorial Video Archiver V 20260602-225637
# Overnight Safe Version
# Recursive FFmpeg HEVC NVENC Batch Converter 
# ==========================================

$FFMPEG = "C:\D\ffmpeg\ffmpeg.exe"

$VideoExtensions = @(
    "*.mp4",
    "*.avi",
    "*.mov",
    "*.wmv",
    "*.flv",
    "*.webm",
    "*.m4v",
    "*.mpeg",
    "*.mpg",
    "*.ts"
)

$LogFile = Join-Path `
    $PSScriptRoot `
    ("ConvertLog_" + (Get-Date -Format "yyyy-MM-dd_HHmmss") + ".txt")

function Write-Log {
    param([string]$Text)

    $Line = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')  $Text"

    Write-Host $Line
    Add-Content -LiteralPath $LogFile -Value $Line -Encoding UTF8
}

Write-Log "====================================="
Write-Log "Batch conversion started"
Write-Log "Root folder: $PSScriptRoot"
Write-Log "Log file: $LogFile"
Write-Log "====================================="

if (!(Test-Path $FFMPEG)) {
    Write-Log "ERROR: FFmpeg not found:"
    Write-Log $FFMPEG
    pause
    exit
}

$Files = foreach ($Pattern in $VideoExtensions) {
    Get-ChildItem `
        -LiteralPath $PSScriptRoot `
        -File `
        -Filter $Pattern `
        -Recurse `
        -ErrorAction SilentlyContinue
}

$Files = $Files |
    Where-Object {
        $_.Name -notlike "*-DJH-12fps.mp4" -and
        $_.Name -notlike "*.bak"
    } |
    Sort-Object FullName -Unique

if ($Files.Count -eq 0) {
    Write-Log "No video files found."
    pause
    exit
}

Write-Log "Found $($Files.Count) video files."

$Counter = 0

foreach ($File in $Files) {

    $Counter++

    $InputFile = $File.FullName

    $OutputFile = Join-Path `
        $File.DirectoryName `
        ($File.BaseName + "_DJH-12fps.mkv")

    Write-Log ""
    Write-Log "[$Counter/$($Files.Count)] Processing:"
    Write-Log $InputFile

    if (Test-Path $OutputFile) {
        Write-Log "Skipped - output already exists:"
        Write-Log $OutputFile
        continue
    }

    & $FFMPEG `
        -hide_banner `
        -y `
        -i $InputFile `
        -c:v hevc_nvenc `
        -preset p7 `
        -cq 38 `
        -pix_fmt yuv420p `
        -r 12 `
		-c:a libopus `
		-b:a 32k `
		-ac 1 `
        $OutputFile 2>&1 |
        Tee-Object -FilePath $LogFile -Append

    if (($LASTEXITCODE -eq 0) -and (Test-Path $OutputFile)) {

        try {

            $BakName = $File.Name + ".bak"

            Rename-Item `
                -LiteralPath $InputFile `
                -NewName $BakName `
                -ErrorAction Stop

            Write-Log "SUCCESS"
            Write-Log "Output:"
            Write-Log $OutputFile
            Write-Log "Original renamed to:"
            Write-Log $BakName
        }
        catch {

            Write-Log "WARNING: Conversion succeeded but rename failed."
            Write-Log $_.Exception.Message
        }
    }
    else {

        Write-Log "FAILED"
        Write-Log $InputFile

        if (Test-Path $OutputFile) {
            Remove-Item `
                -LiteralPath $OutputFile `
                -Force `
                -ErrorAction SilentlyContinue
        }
    }
}

Write-Log ""
Write-Log "====================================="
Write-Log "All jobs finished"
Write-Log "====================================="

pause