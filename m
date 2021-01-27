Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.11974.1611771693259281301
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 10:21:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fvgyBPpz;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: mtownsend1973@gmail.com)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9D6DC38C04AD
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 18:21:32 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id f16so2323539wmq.5
        for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 10:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=0CPbXV6fRo9CFVOVDjsGtFIQYWev1kp4vQeD3z8y0BI=;
        b=fvgyBPpztk8SVceVK+zTwemJ8FP9MtDrrsVKJQJPwDFP7Co3bQWF/jEk0Jp666T81g
         yRSR/C/K+DPy3VRI05kKyheuXcD4EAXPmOdQCF63BqERcctL5P+MBrsj+9XBEIhgvXCN
         T/VGfMXm2+s7S6cN1Uj735Qb4C3qSAAel3NYhzJZfOz/f9gEofwuFhDWGnj+/AAQhEBf
         fZ57HkLAnTrR8T7c+4iHlSGT/BUlS8vBF8Ka2s91lI7jcfr4UmE1fkK9qsphPMTB+OeA
         WanioFbm42pe/USk2SJLz1ewOg4/9fxeobApB3ZOFZ/5meSzaQv9WCPe0Zc6Ziv+dQAh
         uF5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=0CPbXV6fRo9CFVOVDjsGtFIQYWev1kp4vQeD3z8y0BI=;
        b=kiPcWWJwsrQQWbS3wFobfHZBW+tIpp/tadUkIn0QrVmw2YfGBQBEsh8GFdh97YuIbM
         QBh8/MjTeuZ58RhAKmT3iVupL5HAxISBDGSg1dzuDMs/KwWzWmFyOs9FnLOPHvRlyfk7
         bQuBUFy1hYheF66bYSQ7dW6iEbTqRHeF7g4ebkJVGS1GCq8/urGgRW7ZYXEvPDET9CJX
         /CwyQt8v2wBM/cafqdTgS0/v/2rf8ChUY906EEp4OkRF0qseuI36huOlbHF+V3RbDAqf
         fDHtaX8vknMr4HtXQes5NjaCnjUjkrM27dSk/rrsrd37PQKAYouV55tKF2uCxqM7KsbK
         TbJQ==
X-Gm-Message-State: AOAM533z9rQcA+slleUUOlqB8PdRBSgULkCVHvxptVqqiDvxE583GCaT
	36lDnPp5bAuYVulQjSyArTHeuXU9kal8ys7gRBI6KF6z9DU=
X-Google-Smtp-Source: ABdhPJxPw7HzjFRpCnZ+tNvnMCdqaoQxU0Wo9TpyNSV+6Jj6kzCHtFxWA419nE6cZl0jaBWCYf5kL4GC8fPd/k7rEp4=
X-Received: by 2002:a1c:7f94:: with SMTP id a142mr5232666wmd.145.1611771690648;
 Wed, 27 Jan 2021 10:21:30 -0800 (PST)
MIME-Version: 1.0
From: "Martin Townsend" <mtownsend1973@gmail.com>
Date: Wed, 27 Jan 2021 18:21:19 +0000
Message-ID: <CABatt_wByJduMMQbg18n4PvP3Vws8Kt1oZANbcVJzs8Zrih7Zg@mail.gmail.com>
Subject: Kernel Initramfs Problems
To: Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to get an initramfs working so I can load firmware early
enough in the boot. So I've created an initramfs with the firmware
files and a script to switch to the main root.  I've set the following

# Use the FIT image format
KERNEL_IMAGETYPES += "fitImage"
KERNEL_CLASSES += "kernel-fitimage"
KERNEL_IMAGETYPE = "fitImage"
KERNEL_IMAGETYPE_aarch64 = "fitImage"

# Add the initramfs for loading the firmware files
INITRAMFS_IMAGE_BUNDLE = "1"
INITRAMFS_IMAGE = "octave-cad-image-initramfs"
INITRAMFS_FSTYPES = "cpio.gz"

in a configuration file.  According to the docs for INITRAMFS_IMAGE_BUNDLE:
 "The unpacked initramfs image is then passed to the kernel's Makefile
using the CONFIG_INITRAMFS_SOURCE variable, allowing the initramfs
image to be built into the kernel normally. "

Perfect, this is exactly what I want.  Now I'm expecting the kernel
image to contain the initramfs using CONFIG_INITRAMFS_SOURCE and not
include the initramfs in the FIT image as an image configuration that
U-Boot extracts and passes to the kernel.

But I'm not seeing this.  I get two FIT images deployed, one with an
initramfs included as a configuration and a FIT image without.  This
doesn't seem right as the initramfs should already be in the kernel so
including it in the FIT image means it would be there twice.  Ignoring
this the FIT image without an initramfs in the filename should still
have the initramfs in the kernel via CONFIG_INITRAMFS_SOURCE but it's
not there.  When booting this image I don't see the firmware loading

[    0.629648][   T12] imx-sdma 302b0000.dma-controller: Direct
firmware load for imx/sdma/sdma-imx7d.bin failed with error -2
[    0.638320][   T12] imx-sdma 302b0000.dma-controller: Falling back
to sysfs fallback for: imx/sdma/sdma-imx7d.bin

Now if I boot the FIT image with the initramfs in the filename I get

[    0.713335][   T12] imx-sdma 302b0000.dma-controller: loaded firmware 4.5

early in the boot so I know the initramfs works.

So you could say use the FIT image with the initramfs in its filename
but this isn't the FIT image that gets installed by
packagegroup-core-boot and I can't find out how to use the other FIT
image.  I would prefer to bundle the initramfs into the kernel and not
rely on the FIT image mechanism.

I've tried building the kernel with all the INITRAMFS_* variables
commented out and the file sizes are nearly the same, not quite but
nearly.  The initramfs is around 4MiB in size due to firmware files,
busybox and the libraries that this requires to perform the
switch_root.  This also suggests that CONFIG_INITRAMFS_SOURCE isn't
working.

I've built the kernel with verbose on and see
+ use_alternate_initrd=CONFIG_INITRAMFS_SOURCE=/ws/rufilla/octopus/octave-dunfell/build-release/tmp/work/octave_imx8mnevk-poky-linux/linux-imx/5.4.24+gitAUTOINC+babac008e5-r0/build/usr/octave-cad-image-initramfs-octave-imx8mnevk.cpio


and also
+ oe_runmake [snip]
CONFIG_INITRAMFS_SOURCE=/ws/rufilla/octopus/octave-dunfell/build-release/tmp/work/octave_imx8mnevk-poky-linux/linux-imx/5.4.24+gitAUTOINC+babac008e5-r0/build/usr/octave-cad-image-initramfs-octave-imx8mnevk.cpio

So it looks like this doesn't work for some reason. I am using NXP's
vendor specific kernel but I don't think they've touched the kernel's
build system.  The kernel version is 5.4.  The log does contain what
looks like the Makefile actually performing the steps required

  GEN     Makefile

scripts/kconfig/conf  --syncconfig Kconfig

  GEN     Makefile

  CALL    /ws/rufilla/octopus/octave-dunfell/build-release/tmp/work-shared/octave-imx8mnevk/kernel-source/scripts/checksyscalls.sh

  CALL    /ws/rufilla/octopus/octave-dunfell/build-release/tmp/work-shared/octave-imx8mnevk/kernel-source/scripts/atomic/check-atomics.sh

  CHK     include/generated/compile.h

  GEN     usr/initramfs_data.cpio

  AS      usr/initramfs_data.o

  AR      usr/built-in.a

  GEN     .version

  CHK     include/generated/compile.h

  LD      vmlinux.o

  MODPOST vmlinux.o

  MODINFO modules.builtin.modinfo

  LD      .tmp_vmlinux1

  KSYM    .tmp_kallsyms1.o

  LD      .tmp_vmlinux2

  KSYM    .tmp_kallsyms2.o

  LD      vmlinux

  SORTEX  vmlinux

  SYSMAP  System.map

  OBJCOPY arch/arm64/boot/Image

${B}/usr seems ok

drwxr-xr-x  2 martin martin    4096 Jan 27 17:19 .
drwxr-xr-x 20 martin martin    4096 Jan 27 17:19 ..
-rw-rw-r--  1 martin martin     146 Jan 27 17:19 built-in.a
-rw-r--r--  1 martin martin     109 Jan 27 17:19 .built-in.a.cmd
-rwxr-xr-x  1 martin martin   31320 Jan 27 17:14 gen_init_cpio
-rw-r--r--  1 martin martin    6642 Jan 27 17:14 .gen_init_cpio.cmd
-rw-r--r--  1 martin martin     512 Jan 27 17:14 initramfs_data.cpio
-rw-r--r--  1 martin martin     188 Jan 27 17:14 .initramfs_data.cpio.cmd
-rw-r--r--  1 martin martin     142 Jan 27 17:15 .initramfs_data.cpio.d
-rw-rw-r--  1 martin martin 1504249 Jan 27 17:19 initramfs_data.cpio.gz
-rw-rw-r--  1 martin martin     389 Jan 27 17:19 .initramfs_data.cpio.gz.cmd
-rw-rw-r--  1 martin martin     329 Jan 27 17:19 .initramfs_data.cpio.gz.d
-rw-rw-r--  1 martin martin 1505240 Jan 27 17:19 initramfs_data.o
-rw-r--r--  1 martin martin    4631 Jan 27 17:19 .initramfs_data.o.cmd
-rw-r--r--  1 martin martin 2939392 Jan 27 17:15
octave-cad-image-initramfs-octave-imx8mnevk.cpio

I'm wondering if there is maybe a race condition somewhere in the
build.  I say this because after the initial build I see the following

ls -la arch/arm64/boot/
total 50684
drwxr-xr-x 3 martin martin     4096 Jan 27 18:01 .
drwxr-xr-x 9 martin martin     4096 Jan 27 18:00 ..
drwxr-xr-x 3 martin martin     4096 Jan 27 18:00 dts
-rwx------ 1 martin martin  7218640 Jan 27 18:00 fitImage
-rwx------ 1 martin martin 10239756 Jan 27 18:01
fitImage-octave-cad-image-initramfs
-rw-r--r-- 1 martin martin 15876608 Jan 27 18:00 Image
-rw-r--r-- 1 martin martin      143 Jan 27 18:01 .Image.cmd
-rw-rw-r-- 1 martin martin 18825728 Jan 27 18:01 Image.initramfs
lrwxrwxrwx 1 martin martin       16 Jan 27 18:00 vmlinux -> ../../../vmlinux


Now if I manually from do_assemble_fitimage again I get
./temp/run.do_assemble_fitimage
gzip
fit-image.its:8.26-20.19: Warning (unit_address_vs_reg):
/images/kernel@1: node has a unit name, but no reg property
fit-image.its:17.32-19.27: Warning (unit_address_vs_reg):
/images/kernel@1/hash@1: node has a unit name, but no reg property
fit-image.its:21.60-31.19: Warning (unit_address_vs_reg):
/images/fdt@freescale_octopus,octave-imx8mnevk.dtb: node has a unit
name, but no reg property
fit-image.its:28.32-30.27: Warning (unit_address_vs_reg):
/images/fdt@freescale_octopus,octave-imx8mnevk.dtb/hash@1: node has a
unit name, but no reg property
fit-image.its:36.61-45.19: Warning (unit_address_vs_reg):
/configurations/conf@freescale_octopus,octave-imx8mnevk.dtb: node has
a unit name, but no reg property
fit-image.its:42.32-44.27: Warning (unit_address_vs_reg):
/configurations/conf@freescale_octopus,octave-imx8mnevk.dtb/hash@1:
node has a unit name, but no reg property
FIT description: U-Boot fitImage for Octopus Energy Octave Linux
OS/5.4.24+gitAUTOINC+babac008e5/octave-imx8mnevk
Created:         Sat May 30 07:25:46 2020
 Image 0 (kernel@1)
  Description:  Linux kernel
  Created:      Sat May 30 07:25:46 2020
  Type:         Kernel Image
  Compression:  gzip compressed
  Data Size:    8692100 Bytes = 8488.38 KiB = 8.29 MiB
  Architecture: AArch64
  OS:           Linux
  Load Address: 0x40480000
  Entry Point:  0x40480000
  Hash algo:    sha256
  Hash value:   3c2213b560910ff59f04307e6531ad6bd55c21e17d559c3a5d4f1927e23d4c1a
 Image 1 (fdt@freescale_octopus,octave-imx8mnevk.dtb)
  Description:  Flattened Device Tree blob
  Created:      Sat May 30 07:25:46 2020
  Type:         Flat Device Tree
  Compression:  uncompressed
  Data Size:    35902 Bytes = 35.06 KiB = 0.03 MiB
  Architecture: AArch64
  Hash algo:    sha256
  Hash value:   63b81215384c3b243a538f8f738e3d9ea0c8496373cf47c2a138838f88bbe90c
 Default Configuration: 'conf@freescale_octopus,octave-imx8mnevk.dtb'
 Configuration 0 (conf@freescale_octopus,octave-imx8mnevk.dtb)
  Description:  1 Linux kernel, FDT blob
  Kernel:       kernel@1
  FDT:          fdt@freescale_octopus,octave-imx8mnevk.dtb
  Hash algo:    sha256
  Hash value:   unavailable
martin@martin-X570-AORUS-ELITE:/ws/rufilla/octopus/octave-dunfell/build-release/tmp/work/octave_imx8mnevk-poky-linux/linux-imx/5.4.24+gitAUTOINC+babac008e5-r0$
ls -la build/arch/arm64/boot/total 52160
drwxr-xr-x 3 martin martin     4096 Jan 27 18:06 .
drwxr-xr-x 9 martin martin     4096 Jan 27 18:00 ..
drwxr-xr-x 3 martin martin     4096 Jan 27 18:00 dts
-rwx------ 1 martin martin  8730032 Jan 27 18:06 fitImage
-rwx------ 1 martin martin 10239756 Jan 27 18:01
fitImage-octave-cad-image-initramfs
-rw-r--r-- 1 martin martin 15876608 Jan 27 18:00 Image
-rw-r--r-- 1 martin martin      143 Jan 27 18:01 .Image.cmd
-rw-rw-r-- 1 martin martin 18825728 Jan 27 18:01 Image.initramfs
lrwxrwxrwx 1 martin martin       16 Jan 27 18:00 vmlinux -> ../../../vmlinux

Now the FIT image looks like it contains the initramfs.  I tried
booting it and the firmware files were loaded.  Looking at the
original log for do_assemble_fitimage I see

FIT description: U-Boot fitImage for Octopus Energy Octave Linux
OS/5.4.24+gitAUTOINC+babac008e5/octave-imx8mnevk
Created:         Sat May 30 07:25:46 2020
 Image 0 (kernel@1)
  Description:  Linux kernel
  Created:      Sat May 30 07:25:46 2020
  Type:         Kernel Image
  Compression:  gzip compressed
  Data Size:    7180707 Bytes = 7012.41 KiB = 6.85 MiB
  Architecture: AArch64
  OS:           Linux
  Load Address: 0x40480000
  Entry Point:  0x40480000
  Hash algo:    sha256

Note that the kernel image size is 7180707 originally whereas the
second time I run do_assemble_fitimage it's 8692100.  It looks like
linux.bin the first time doesn't include the initramfs but on the
second time it does.  Note my PC is a fairly rapid AMD Ryzen 9 5950X
16-Core (32 thread) Processor.

I'll keep digging but I would be grateful for any suggestions.

Many Thanks,
Martin.
