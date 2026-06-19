# DJH Tutorial Video Archiver

## Repository Name
[![GitHub release](https://img.shields.io/github/v/release/djhir0/djh-tutorial-video-compressor?style=flat-square)](https://github.com/djhir0/djh-tutorial-video-compressor/releases)
[![GitHub Downloads](https://img.shields.io/github/downloads/djhir0/djh-tutorial-video-compressor/total?style=flat-square)](https://github.com/djhir0/djh-tutorial-video-compressor/releases)
[![GitHub stars](https://img.shields.io/github/stars/djhir0/djh-tutorial-video-compressor?style=social)](https://github.com/djhir0/djh-tutorial-video-compressor/stargazers)
```
djh-tutorial-video-archiver
```
[![PowerShell](https://img.shields.io/badge/PowerShell-5.1+-5391FE?style=for-the-badge&logo=powershell&logoColor=white)](https://github.com/djhir0/djh-tutorial-video-compressor)
[![FFmpeg](https://img.shields.io/badge/FFmpeg-NVENC-007808?style=for-the-badge&logo=ffmpeg&logoColor=white)](https://ffmpeg.org/)
[![Windows](https://img.shields.io/badge/Windows-10%2F11-0078D6?style=for-the-badge&logo=windows11&logoColor=white)](https://www.microsoft.com/windows)
[![NVIDIA](https://img.shields.io/badge/NVIDIA-NVENC-76B900?style=for-the-badge&logo=nvidia&logoColor=white)](https://www.nvidia.com/)
[![License](https://img.shields.io/github/license/djhir0/djh-tutorial-video-compressor?style=for-the-badge)](https://github.com/djhir0/djh-tutorial-video-compressor/blob/main/LICENSE)
[![Stars](https://img.shields.io/github/stars/djhir0/djh-tutorial-video-compressor?style=for-the-badge)](https://github.com/djhir0/djh-tutorial-video-compressor/stargazers)
[![Forks](https://img.shields.io/github/forks/djhir0/djh-tutorial-video-compressor?style=for-the-badge)](https://github.com/djhir0/djh-tutorial-video-compressor/network/members)
[![Issues](https://img.shields.io/github/issues/djhir0/djh-tutorial-video-compressor?style=for-the-badge)](https://github.com/djhir0/djh-tutorial-video-compressor/issues)
[![Last Commit](https://img.shields.io/github/last-commit/djhir0/djh-tutorial-video-compressor?style=for-the-badge)](https://github.com/djhir0/djh-tutorial-video-compressor/commits/main)
[![Repo Size](https://img.shields.io/github/repo-size/djhir0/djh-tutorial-video-compressor?style=for-the-badge)](https://github.com/djhir0/djh-tutorial-video-compressor)



Alternative names

* ffmpeg-hevc-batch-archiver
* powershell-video-archiver
* ffmpeg-nvenc-video-compressor
* tutorial-video-storage-optimizer
* recursive-video-batch-converter

---

# Repository Description

DJH Tutorial Video Archiver is a professional PowerShell automation tool designed to safely archive large collections of tutorial videos using FFmpeg with NVIDIA NVENC hardware acceleration. The script recursively scans folders for supported video formats, converts each video into highly compressed HEVC (H.265) MKV files at 12 FPS with Opus audio, automatically logs every operation, skips already processed files, and renames originals to *.bak* only after successful conversion. It is ideal for developers, students, educators, content collectors, IT professionals, and anyone managing large offline video libraries who wants to dramatically reduce storage requirements while preserving educational content. Built with safety, automation, and overnight unattended processing in mind.

---

# README.md

# DJH Tutorial Video Archiver

> Compress years of tutorial videos into a fraction of the storage space without sacrificing their educational value.

---

## Overview

DJH Tutorial Video Archiver is a Windows PowerShell automation script that leverages the power of FFmpeg and NVIDIA NVENC hardware encoding to batch convert thousands of tutorial videos into a lightweight archival format.

Unlike ordinary video converters, this project is specifically designed for educational content.

Programming courses, software tutorials, conference recordings, webinars, online classes, coding bootcamps, and technical demonstrations generally contain static screens with minimal motion. Storing these videos at their original frame rates often wastes enormous amounts of disk space.

This project solves that problem automatically.

The script recursively scans every folder beneath itself, locates supported video files, compresses them into HEVC (H.265) MKV format at only 12 frames per second, converts audio into low bitrate Opus mono, verifies successful completion, renames the original file as a backup, logs everything, and continues processing until every file has been archived.

The result is a safe, unattended overnight batch conversion solution capable of reducing storage consumption by 60–95% depending on the source material.

---

# Why This Project Exists

Many developers own terabytes of programming tutorials collected over years.

Examples include:

* Udemy courses
* YouTube downloads
* Programming bootcamps
* Linux tutorials
* AI courses
* Database lessons
* Security training
* Microsoft Learn videos
* Internal company training
* University lectures

Most of these videos consist almost entirely of:

* IDE windows
* PowerPoint slides
* Browser pages
* Terminal windows
* Documentation
* Whiteboards

These scenes rarely require 30 or 60 FPS.

Reducing frame rate to 12 FPS while using HEVC dramatically decreases file size with minimal impact on readability.

For educational content, storage efficiency is usually more valuable than cinematic smoothness.

---

# Features

✔ Recursive folder scanning

✔ Automatic batch conversion

✔ NVIDIA NVENC hardware acceleration

✔ HEVC (H.265) encoding

✔ MKV output

✔ Opus audio conversion

✔ Mono audio optimization

✔ 12 FPS archival mode

✔ Timestamped logging

✔ Automatic duplicate prevention

✔ Resume-safe processing

✔ Backup preservation

✔ Overnight unattended operation

✔ Windows PowerShell compatible

✔ FFmpeg powered

✔ Supports thousands of files

✔ Safe failure handling

✔ No database required

✔ Portable

✔ Free

---

# Supported Formats

The script automatically searches for:

```
MP4
AVI
MOV
WMV
FLV
WEBM
M4V
MPEG
MPG
TS
```

Adding additional formats is as simple as editing the `$VideoExtensions` array.

---

# Requirements

* Windows 10 or newer
* PowerShell
* FFmpeg
* NVIDIA GPU
* NVIDIA NVENC supported graphics card

---

# Folder Structure

```
Archive

│
├── Convert.ps1
├── Course A
├── Course B
├── Course C
├── Course D
└── More folders...
```

Run the script once.

Everything underneath is processed automatically.

---

# Workflow

The script performs the following operations:

1. Verify FFmpeg exists.
2. Create a timestamped log.
3. Search recursively.
4. Find supported videos.
5. Skip previous outputs.
6. Convert using NVENC.
7. Create MKV archive.
8. Convert audio to Opus.
9. Verify successful output.
10. Rename original file to `.bak`.
11. Continue to the next file.
12. Finish with a complete report.

No user interaction is required during processing.

---

# Compression Settings

Video Codec

```
HEVC (H.265)
```

Encoder

```
hevc_nvenc
```

Preset

```
p7
```

Quality

```
CQ 38
```

Frame Rate

```
12 FPS
```

Pixel Format

```
yuv420p
```

Audio

```
Opus
32 kbps
Mono
```

Output

```
MKV
```

---

# Daily Usage

This project is intended to become part of a long-term archival workflow.

Typical scenarios include:

* Archive old programming courses.
* Save SSD space.
* Organize NAS storage.
* Prepare cold backups.
* Compress university lectures.
* Store conference recordings.
* Archive webinar collections.
* Compress YouTube educational downloads.
* Reduce cloud backup costs.
* Maintain offline learning libraries.

Many users simply copy new tutorial videos into the archive folder and run the script overnight.

By morning, everything has been converted automatically.

---

# Safety Features

One of the primary goals of this project is data safety.

Unlike many batch converters that immediately delete original files, this script only renames the source after confirming a successful conversion.

If anything fails:

* original video remains untouched
* partial output is removed
* conversion continues
* errors are logged

This approach minimizes the risk of accidental data loss.

---

# Logging

Every run generates a unique timestamped log file.

Example:

```
ConvertLog_2026-06-02_225637.txt
```

The log records:

* conversion start
* conversion finish
* FFmpeg output
* skipped files
* warnings
* errors
* renamed files
* processing order
* timestamps

This makes troubleshooting and auditing straightforward.

---

# Performance

Since encoding uses NVIDIA NVENC, CPU usage remains relatively low while the GPU handles video compression.

This enables:

* faster conversions
* reduced power consumption
* improved multitasking
* overnight automation

Performance varies based on:

* GPU model
* SSD speed
* source resolution
* source codec

---

# Example

Original

```
Python Course.mp4
```

After processing

```
Python Course_DJH-12fps.mkv
Python Course.mp4.bak
```

---

# Advantages

Compared to manual conversion:

✔ One click

✔ Recursive scanning

✔ Automatic logging

✔ Duplicate protection

✔ Safe backups

✔ Overnight processing

✔ Hardware acceleration

✔ Zero repetitive work

---

# Customization

Users can easily modify:

* frame rate
* output extension
* encoder
* quality
* bitrate
* supported formats
* audio codec
* output naming

The script is intentionally easy to edit.

---

# Intended Audience

This project is ideal for:

* Developers
* System Administrators
* Students
* Educators
* IT Professionals
* DevOps Engineers
* Cybersecurity learners
* Data hoarders
* Home lab owners
* Content collectors

---

# FAQ

## Why 12 FPS?

Educational videos usually contain static content. Lower frame rates significantly reduce storage requirements while remaining perfectly readable.

---

## Why HEVC?

HEVC provides much higher compression efficiency than H.264.

---

## Why MKV?

MKV is flexible, open, and supports nearly every codec combination.

---

## Why Opus?

Opus delivers excellent speech quality at extremely low bitrates.

---

## Does it delete my originals?

No.

Original files are renamed to `.bak` only after successful conversion.

---

## Can I stop the script?

Yes.

Simply close the PowerShell window.

Already converted files remain intact.

---

## Can I resume later?

Yes.

Existing output files are automatically skipped.

---

## Does it process subfolders?

Yes.

Unlimited recursion is supported.

---

## Can I use CPU encoding?

Yes.

Replace:

```
hevc_nvenc
```

with

```
libx265
```

---

## Is this intended for movies?

No.

The settings are optimized specifically for tutorial and educational content.

Movies and high-motion videos may lose noticeable smoothness at 12 FPS.

---

# Roadmap

Future ideas include:

* Multi-GPU support
* Resume database
* Progress bar
* Statistics report
* Estimated space savings
* Parallel processing
* Drag-and-drop support
* Automatic FFmpeg detection
* Configuration file
* GUI version
* CPU fallback mode
* Linux compatibility
* Windows Task Scheduler integration

---

# Contributing

Contributions, bug reports, feature requests, and pull requests are welcome.

If you have ideas for improving performance, compatibility, or usability, feel free to open an issue or submit a pull request.

---

# License

MIT License

You are free to use, modify, distribute, and improve this project while preserving the original license.

---

# Author

Created with ❤️ by **DJH**

If this project saves you time or disk space, consider giving it a ⭐ on GitHub.

---

# Support

If you encounter an issue:

1. Check the generated log file.
2. Verify FFmpeg is installed.
3. Confirm your NVIDIA drivers are up to date.
4. Open a GitHub Issue with the relevant log output.

---

# Star the Project ⭐

If this repository helped you archive your video collection or reduce storage usage, please consider starring the project. It helps others discover the repository and motivates future development.

---

# GitHub Badges

```md
![PowerShell](https://img.shields.io/badge/PowerShell-5+-5391FE?style=for-the-badge&logo=powershell)

![FFmpeg](https://img.shields.io/badge/FFmpeg-Enabled-green?style=for-the-badge&logo=ffmpeg)

![Windows](https://img.shields.io/badge/Windows-10%2F11-blue?style=for-the-badge&logo=windows)

![NVIDIA](https://img.shields.io/badge/NVIDIA-NVENC-76B900?style=for-the-badge&logo=nvidia)

![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)

![Maintained](https://img.shields.io/badge/Maintained-Yes-brightgreen?style=for-the-badge)

![Status](https://img.shields.io/badge/Status-Stable-success?style=for-the-badge)

![Made With Love](https://img.shields.io/badge/Made%20With-%E2%9D%A4-red?style=for-the-badge)

![GitHub Stars](https://img.shields.io/github/stars/USERNAME/REPOSITORY?style=for-the-badge)

![GitHub Forks](https://img.shields.io/github/forks/USERNAME/REPOSITORY?style=for-the-badge)

![Issues](https://img.shields.io/github/issues/USERNAME/REPOSITORY?style=for-the-badge)

![Last Commit](https://img.shields.io/github/last-commit/USERNAME/REPOSITORY?style=for-the-badge)
```

---

# GitHub Topics (Tags)

```
powershell
ffmpeg
video
batch
automation
hevc
h265
nvenc
nvidia
mkv
opus
compression
archiving
backup
recursive
windows
tutorial
course
video-processing
media
encoding
storage
optimization
developer-tools
sysadmin
automation-script
```
