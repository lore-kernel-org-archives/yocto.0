Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.13738.1611777728302097321
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 12:02:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PduvgbwE;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: mtownsend1973@gmail.com)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by mail.yoctoproject.org (Postfix) with ESMTPS id BF16E38C04B4
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 20:02:07 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id a1so3206428wrq.6
        for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 12:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=1YIe/9WX98C5vsGeL7XPA93bTk7nC5Oa98lEWm4q+X4=;
        b=PduvgbwE3SRt+KfHWl5xJMe4DRYavyt70izuLV35904WI2uqcKAKHyGjxp+663wYUt
         TY9DZDjW06o+zeOlzfJ2nbP2YotHcgO2uwEW+6YfBKjpQ5nbPqFfJxE4rRNcj6GeYRED
         UP9s0FX+dDbUZpBHgDUOFYX0TpAdVp7pOAEmXEYEZR90hmiv8ZrNrxKwmKxP+pRSQk+W
         /ECtHZnC23bCVXAn75KzhsFrWvt35MyT9BTox+kjKmIgAVxe3NiGHPWhoEnno2tzgFbx
         l7xei0+uY1i3r1gGv9fpXNzPR2j9f+u70EKF1lo1ak6JWw4bi/uIccDbmUU+W9aRnn8k
         1w+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=1YIe/9WX98C5vsGeL7XPA93bTk7nC5Oa98lEWm4q+X4=;
        b=BdVsz+MLx2KuDNdVxulCt5cl3+omqWxXLToJGx1VEALenvCBuuREg0l6Ao/vCz6ejF
         YjDKMS91AZRv9xCEUeRNSykVUhqmVhRf9myrmieH/UI030kmw7ar4F/aOx+fVNi7WUS4
         EE9B31asS0Iys1bxRW0Rxrrlax4w6LkPchqzoY6w4ox9W20G5xKnmKg2SFvjsQ4WOyx3
         yXn/dWnInUpyxwnZFaq5/e4J9Z6vydbfGqCI/Z8tqwDGhcJY3+152FxbVQTB2JY+BpEa
         nqep0RCE8q+szuNl+vXIQvQ6VSzviJsjRafXMJmOBAj3fn4NG/5gsMGWV4X9uHNCWAWR
         JTxA==
X-Gm-Message-State: AOAM530aIhslg5PupbKMi+IftP3IyJ8Tdtlqvg9fXUQV5L5OvDQjBID8
	8zvJR/2V+4m6IeM5WhuedYMw4V5kyogTjL82cs/FRXMzqVk=
X-Google-Smtp-Source: ABdhPJx5qqyiatC4j3BsKI2oFph0rnkLWJtGbWJQkovdriHxjFeOeV0OIF0RXY2eUX4C3rBjY0hwSp11COZWv7RgicM=
X-Received: by 2002:adf:fc86:: with SMTP id g6mr12614111wrr.20.1611777725666;
 Wed, 27 Jan 2021 12:02:05 -0800 (PST)
MIME-Version: 1.0
References: <CABatt_wByJduMMQbg18n4PvP3Vws8Kt1oZANbcVJzs8Zrih7Zg@mail.gmail.com>
In-Reply-To: <CABatt_wByJduMMQbg18n4PvP3Vws8Kt1oZANbcVJzs8Zrih7Zg@mail.gmail.com>
From: "Martin Townsend" <mtownsend1973@gmail.com>
Date: Wed, 27 Jan 2021 20:01:54 +0000
Message-ID: <CABatt_w_Uy1J+A6gT2GEKO4vhPHiYKyH=nggOJ+OiXJvkdhQfw@mail.gmail.com>
Subject: Re: Kernel Initramfs Problems
To: Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 27, 2021 at 6:21 PM Martin Townsend <mtownsend1973@gmail.com> wrote:
>
> Hi,
>
> I'm trying to get an initramfs working so I can load firmware early
> enough in the boot. So I've created an initramfs with the firmware
> files and a script to switch to the main root.  I've set the following
>
> # Use the FIT image format
> KERNEL_IMAGETYPES += "fitImage"
> KERNEL_CLASSES += "kernel-fitimage"
> KERNEL_IMAGETYPE = "fitImage"
> KERNEL_IMAGETYPE_aarch64 = "fitImage"
>
> # Add the initramfs for loading the firmware files
> INITRAMFS_IMAGE_BUNDLE = "1"
> INITRAMFS_IMAGE = "octave-cad-image-initramfs"
> INITRAMFS_FSTYPES = "cpio.gz"
>
> in a configuration file.  According to the docs for INITRAMFS_IMAGE_BUNDLE:
>  "The unpacked initramfs image is then passed to the kernel's Makefile
> using the CONFIG_INITRAMFS_SOURCE variable, allowing the initramfs
> image to be built into the kernel normally. "
>
> Perfect, this is exactly what I want.  Now I'm expecting the kernel
> image to contain the initramfs using CONFIG_INITRAMFS_SOURCE and not
> include the initramfs in the FIT image as an image configuration that
> U-Boot extracts and passes to the kernel.
>
> But I'm not seeing this.  I get two FIT images deployed, one with an
> initramfs included as a configuration and a FIT image without.  This
> doesn't seem right as the initramfs should already be in the kernel so
> including it in the FIT image means it would be there twice.  Ignoring
> this the FIT image without an initramfs in the filename should still
> have the initramfs in the kernel via CONFIG_INITRAMFS_SOURCE but it's
> not there.  When booting this image I don't see the firmware loading
>
> [    0.629648][   T12] imx-sdma 302b0000.dma-controller: Direct
> firmware load for imx/sdma/sdma-imx7d.bin failed with error -2
> [    0.638320][   T12] imx-sdma 302b0000.dma-controller: Falling back
> to sysfs fallback for: imx/sdma/sdma-imx7d.bin
>
> Now if I boot the FIT image with the initramfs in the filename I get
>
> [    0.713335][   T12] imx-sdma 302b0000.dma-controller: loaded firmware 4.5
>
> early in the boot so I know the initramfs works.
>
> So you could say use the FIT image with the initramfs in its filename
> but this isn't the FIT image that gets installed by
> packagegroup-core-boot and I can't find out how to use the other FIT
> image.  I would prefer to bundle the initramfs into the kernel and not
> rely on the FIT image mechanism.
>
> I've tried building the kernel with all the INITRAMFS_* variables
> commented out and the file sizes are nearly the same, not quite but
> nearly.  The initramfs is around 4MiB in size due to firmware files,
> busybox and the libraries that this requires to perform the
> switch_root.  This also suggests that CONFIG_INITRAMFS_SOURCE isn't
> working.
>
> I've built the kernel with verbose on and see
> + use_alternate_initrd=CONFIG_INITRAMFS_SOURCE=/ws/rufilla/octopus/octave-dunfell/build-release/tmp/work/octave_imx8mnevk-poky-linux/linux-imx/5.4.24+gitAUTOINC+babac008e5-r0/build/usr/octave-cad-image-initramfs-octave-imx8mnevk.cpio
>
>
> and also
> + oe_runmake [snip]
> CONFIG_INITRAMFS_SOURCE=/ws/rufilla/octopus/octave-dunfell/build-release/tmp/work/octave_imx8mnevk-poky-linux/linux-imx/5.4.24+gitAUTOINC+babac008e5-r0/build/usr/octave-cad-image-initramfs-octave-imx8mnevk.cpio
>
> So it looks like this doesn't work for some reason. I am using NXP's
> vendor specific kernel but I don't think they've touched the kernel's
> build system.  The kernel version is 5.4.  The log does contain what
> looks like the Makefile actually performing the steps required
>
>   GEN     Makefile
>
> scripts/kconfig/conf  --syncconfig Kconfig
>
>   GEN     Makefile
>
>   CALL    /ws/rufilla/octopus/octave-dunfell/build-release/tmp/work-shared/octave-imx8mnevk/kernel-source/scripts/checksyscalls.sh
>
>   CALL    /ws/rufilla/octopus/octave-dunfell/build-release/tmp/work-shared/octave-imx8mnevk/kernel-source/scripts/atomic/check-atomics.sh
>
>   CHK     include/generated/compile.h
>
>   GEN     usr/initramfs_data.cpio
>
>   AS      usr/initramfs_data.o
>
>   AR      usr/built-in.a
>
>   GEN     .version
>
>   CHK     include/generated/compile.h
>
>   LD      vmlinux.o
>
>   MODPOST vmlinux.o
>
>   MODINFO modules.builtin.modinfo
>
>   LD      .tmp_vmlinux1
>
>   KSYM    .tmp_kallsyms1.o
>
>   LD      .tmp_vmlinux2
>
>   KSYM    .tmp_kallsyms2.o
>
>   LD      vmlinux
>
>   SORTEX  vmlinux
>
>   SYSMAP  System.map
>
>   OBJCOPY arch/arm64/boot/Image
>
> ${B}/usr seems ok
>
> drwxr-xr-x  2 martin martin    4096 Jan 27 17:19 .
> drwxr-xr-x 20 martin martin    4096 Jan 27 17:19 ..
> -rw-rw-r--  1 martin martin     146 Jan 27 17:19 built-in.a
> -rw-r--r--  1 martin martin     109 Jan 27 17:19 .built-in.a.cmd
> -rwxr-xr-x  1 martin martin   31320 Jan 27 17:14 gen_init_cpio
> -rw-r--r--  1 martin martin    6642 Jan 27 17:14 .gen_init_cpio.cmd
> -rw-r--r--  1 martin martin     512 Jan 27 17:14 initramfs_data.cpio
> -rw-r--r--  1 martin martin     188 Jan 27 17:14 .initramfs_data.cpio.cmd
> -rw-r--r--  1 martin martin     142 Jan 27 17:15 .initramfs_data.cpio.d
> -rw-rw-r--  1 martin martin 1504249 Jan 27 17:19 initramfs_data.cpio.gz
> -rw-rw-r--  1 martin martin     389 Jan 27 17:19 .initramfs_data.cpio.gz.cmd
> -rw-rw-r--  1 martin martin     329 Jan 27 17:19 .initramfs_data.cpio.gz.d
> -rw-rw-r--  1 martin martin 1505240 Jan 27 17:19 initramfs_data.o
> -rw-r--r--  1 martin martin    4631 Jan 27 17:19 .initramfs_data.o.cmd
> -rw-r--r--  1 martin martin 2939392 Jan 27 17:15
> octave-cad-image-initramfs-octave-imx8mnevk.cpio
>
> I'm wondering if there is maybe a race condition somewhere in the
> build.  I say this because after the initial build I see the following
>
> ls -la arch/arm64/boot/
> total 50684
> drwxr-xr-x 3 martin martin     4096 Jan 27 18:01 .
> drwxr-xr-x 9 martin martin     4096 Jan 27 18:00 ..
> drwxr-xr-x 3 martin martin     4096 Jan 27 18:00 dts
> -rwx------ 1 martin martin  7218640 Jan 27 18:00 fitImage
> -rwx------ 1 martin martin 10239756 Jan 27 18:01
> fitImage-octave-cad-image-initramfs
> -rw-r--r-- 1 martin martin 15876608 Jan 27 18:00 Image
> -rw-r--r-- 1 martin martin      143 Jan 27 18:01 .Image.cmd
> -rw-rw-r-- 1 martin martin 18825728 Jan 27 18:01 Image.initramfs
> lrwxrwxrwx 1 martin martin       16 Jan 27 18:00 vmlinux -> ../../../vmlinux
>
>
> Now if I manually from do_assemble_fitimage again I get
> ./temp/run.do_assemble_fitimage
> gzip
> fit-image.its:8.26-20.19: Warning (unit_address_vs_reg):
> /images/kernel@1: node has a unit name, but no reg property
> fit-image.its:17.32-19.27: Warning (unit_address_vs_reg):
> /images/kernel@1/hash@1: node has a unit name, but no reg property
> fit-image.its:21.60-31.19: Warning (unit_address_vs_reg):
> /images/fdt@freescale_octopus,octave-imx8mnevk.dtb: node has a unit
> name, but no reg property
> fit-image.its:28.32-30.27: Warning (unit_address_vs_reg):
> /images/fdt@freescale_octopus,octave-imx8mnevk.dtb/hash@1: node has a
> unit name, but no reg property
> fit-image.its:36.61-45.19: Warning (unit_address_vs_reg):
> /configurations/conf@freescale_octopus,octave-imx8mnevk.dtb: node has
> a unit name, but no reg property
> fit-image.its:42.32-44.27: Warning (unit_address_vs_reg):
> /configurations/conf@freescale_octopus,octave-imx8mnevk.dtb/hash@1:
> node has a unit name, but no reg property
> FIT description: U-Boot fitImage for Octopus Energy Octave Linux
> OS/5.4.24+gitAUTOINC+babac008e5/octave-imx8mnevk
> Created:         Sat May 30 07:25:46 2020
>  Image 0 (kernel@1)
>   Description:  Linux kernel
>   Created:      Sat May 30 07:25:46 2020
>   Type:         Kernel Image
>   Compression:  gzip compressed
>   Data Size:    8692100 Bytes = 8488.38 KiB = 8.29 MiB
>   Architecture: AArch64
>   OS:           Linux
>   Load Address: 0x40480000
>   Entry Point:  0x40480000
>   Hash algo:    sha256
>   Hash value:   3c2213b560910ff59f04307e6531ad6bd55c21e17d559c3a5d4f1927e23d4c1a
>  Image 1 (fdt@freescale_octopus,octave-imx8mnevk.dtb)
>   Description:  Flattened Device Tree blob
>   Created:      Sat May 30 07:25:46 2020
>   Type:         Flat Device Tree
>   Compression:  uncompressed
>   Data Size:    35902 Bytes = 35.06 KiB = 0.03 MiB
>   Architecture: AArch64
>   Hash algo:    sha256
>   Hash value:   63b81215384c3b243a538f8f738e3d9ea0c8496373cf47c2a138838f88bbe90c
>  Default Configuration: 'conf@freescale_octopus,octave-imx8mnevk.dtb'
>  Configuration 0 (conf@freescale_octopus,octave-imx8mnevk.dtb)
>   Description:  1 Linux kernel, FDT blob
>   Kernel:       kernel@1
>   FDT:          fdt@freescale_octopus,octave-imx8mnevk.dtb
>   Hash algo:    sha256
>   Hash value:   unavailable
> martin@martin-X570-AORUS-ELITE:/ws/rufilla/octopus/octave-dunfell/build-release/tmp/work/octave_imx8mnevk-poky-linux/linux-imx/5.4.24+gitAUTOINC+babac008e5-r0$
> ls -la build/arch/arm64/boot/total 52160
> drwxr-xr-x 3 martin martin     4096 Jan 27 18:06 .
> drwxr-xr-x 9 martin martin     4096 Jan 27 18:00 ..
> drwxr-xr-x 3 martin martin     4096 Jan 27 18:00 dts
> -rwx------ 1 martin martin  8730032 Jan 27 18:06 fitImage
> -rwx------ 1 martin martin 10239756 Jan 27 18:01
> fitImage-octave-cad-image-initramfs
> -rw-r--r-- 1 martin martin 15876608 Jan 27 18:00 Image
> -rw-r--r-- 1 martin martin      143 Jan 27 18:01 .Image.cmd
> -rw-rw-r-- 1 martin martin 18825728 Jan 27 18:01 Image.initramfs
> lrwxrwxrwx 1 martin martin       16 Jan 27 18:00 vmlinux -> ../../../vmlinux
>
> Now the FIT image looks like it contains the initramfs.  I tried
> booting it and the firmware files were loaded.  Looking at the
> original log for do_assemble_fitimage I see
>
> FIT description: U-Boot fitImage for Octopus Energy Octave Linux
> OS/5.4.24+gitAUTOINC+babac008e5/octave-imx8mnevk
> Created:         Sat May 30 07:25:46 2020
>  Image 0 (kernel@1)
>   Description:  Linux kernel
>   Created:      Sat May 30 07:25:46 2020
>   Type:         Kernel Image
>   Compression:  gzip compressed
>   Data Size:    7180707 Bytes = 7012.41 KiB = 6.85 MiB
>   Architecture: AArch64
>   OS:           Linux
>   Load Address: 0x40480000
>   Entry Point:  0x40480000
>   Hash algo:    sha256
>
> Note that the kernel image size is 7180707 originally whereas the
> second time I run do_assemble_fitimage it's 8692100.  It looks like
> linux.bin the first time doesn't include the initramfs but on the
> second time it does.  Note my PC is a fairly rapid AMD Ryzen 9 5950X
> 16-Core (32 thread) Processor.
>
> I'll keep digging but I would be grateful for any suggestions.
>
> Many Thanks,
> Martin.

I see the problem now, here is the task order from do_compile onwards.

do_compile

do_shared_workdir
do_kernel_link_images
do_assemble_fitimage

do_compile_kernelmodules

do_strip

do_sizecheck

do_install

do_package
do_populate_sysroot

do_packagedata

do_package_write_rpm
do_package_qa

do_bundle_initramfs
    use_alternate_initrd=CONFIG_INITRAMFS_SOURCE=/ws/rufilla/octopus/octave-dunfell/build-release/tmp/work/octave_imx8mnevk-poky-linux/linux-imx/5.4.24+gitAUTOINC+babac008e5-r0/build/usr/octave-cad-image-initramfs-octave-imx8mnevk.cpio
    kernel_do_compile

do_assemble_fitimage_initramfs

do_deploy


the problem is that do_assemble_fitimage occurs before
do_bundle_initramfs so the linux.bin file doesn't contain the
initramfs.  I tried re-ordering the tasks but due to the dependencies
between u-boot for mkimge and the initramfs recipe I keep on getting
into a circular dependency hell.

I'll try to work out how to install the FIT image with initramfs into
/boot from kernel-image any help appreciated :) .

Ideally though the kernel should produce a linux.bin on the first
compile that gets used in the FIT Image with initramfs and then on the
second compile in do_bundle_initramfs another linux.bin is created
(with initramfs compiled in) that gets used with the normal FIT image.
Then both FIT image files deployed would have an initramfs just using
the different methods.

-Martin.
