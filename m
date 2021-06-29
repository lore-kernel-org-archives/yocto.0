Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web09.6030.1624960532303982393
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Jun 2021 02:55:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=R6dfgBiu;
 spf=softfail (domain: sidebranch.com, ip: 209.85.222.180, mailfrom: leon@sidebranch.com)
Received: by mail-qk1-f180.google.com with SMTP id y29so28895368qky.12
        for <yocto@lists.yoctoproject.org>; Tue, 29 Jun 2021 02:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=afEDTbSabX7RFoEDq89ohfJEg4xtOjJEplme3zzYQzI=;
        b=R6dfgBiucgce+GALOIaLXTwStHsNZZphF+zI3aWta3CmatM+8XSOACcejhv0iFX5LF
         XK5/9PsxEX28Kix2rW+WrfWFu/Ka73UpHR3gSkIl5P3CfbgN4Nfo7db9S3Mk4B9b9oS7
         TAYb60tortUek67DqUw6mCBxc0HdTip7IiHPquakwdugCiW9f4nieCIC/1P8RKS88l/U
         mxhlohLSqGI7uS3G9MvevIZf+V0ZoLmoEx2rsvhJ8cEmPwGy+wMvA8f3PqS+Db/8vdmN
         895GuCWkiuf0vyM30C/Eix3NgJ7DMxHAcTb8E3xdtPqy1FQm3pbHkEG2Iksl+80eqkjk
         KiZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=afEDTbSabX7RFoEDq89ohfJEg4xtOjJEplme3zzYQzI=;
        b=ZTDMzjHwAm9zQ5SkQkOLJ5OKljL5BkOliBE1rgFByCKHuCgQECwBymWW/0dCjKkhV8
         nThlzt5NBGasyfRBvW3RZlRZahcATyLgtH47atHE+LvyXuE1VI/mnh91bhtGvAU140tC
         qHY0fQpP/yVSVu/Nmml4nEz1dbmsRbYPBS0U+/W+PEaYI8yfLbluphGPBaN52NSiBVLj
         A2PjJRuPSm7uT7vSYheiHfc9D0X/2G4KZyq4qVCuYzHQG0vwLE/6hPmdnNLqbQ0IVH7Q
         ILM0yYeLEDJYoESDsw7ui6Z58HTfx14q9WrV5p4FqWRrm35VZw6E7zZhGsJ2CxzixLPq
         uW+g==
X-Gm-Message-State: AOAM531fyj6ZxJZiTphn3izUvfsIe9LZWPcn3yPIojhauXuGyvEU+WIF
	NR7AxdDjKnaixLxPeYuAy6d6Kmlr+W3+LpvulN8Dzi9rwjEas1M6
X-Google-Smtp-Source: ABdhPJwNOfbONLCqZUTii+1W4W3U5wYUTYu8Jl6rMNk6fNIFu9VSAlo3hk43O3jdKHlZNkULgNIQpQAI2Ky2uqj7VOw=
X-Received: by 2002:a37:9085:: with SMTP id s127mr1891443qkd.215.1624960531139;
 Tue, 29 Jun 2021 02:55:31 -0700 (PDT)
MIME-Version: 1.0
References: <WQyj.1624946555328053729.Urcg@lists.yoctoproject.org>
In-Reply-To: <WQyj.1624946555328053729.Urcg@lists.yoctoproject.org>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Tue, 29 Jun 2021 11:55:22 +0200
Message-ID: <CAMjhiJizpi_y5jRn1+RJCSM+KSJxo4G_GZ1YMndwaaGc=WZ+gg@mail.gmail.com>
Subject: Re: [yocto] Yocto build isnot Booting up on board zc702 #gatesgarth #linux #yocto
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello,

>
> i have tried to build yocto image.  And it compiled successfully without any error but when am trying to BOOT them it didnt prompt any error message
> what should i do to BOOT my yocto build image on zc702 board

What is your output from the ZC702 (USB) serial console?


I had similar issue on ZCU102 and debugged my issue:

"the U-Boot not showing anything I have debugged to be an issue where
DEVICE_TREE does not propagate from the BitBake recipe into the U-Boot
build (both for upstream and Xilinx). I have reported this on
meta-xilinx but will make it a separate bug report."

I can imagine the same problem would occur on ZC702 (single-core Zynq).

I have posted a few messages with meta-xilinx in the subject on how I
had to bring Yocto to the ZCU102.

Regards,

Leon.


--
Leon Woestenberg
leon@sidebranch.com
M: +31 6 472 30 372

Sidebranch Embedded Systems
Eindhoven, The Netherlands
http://www.sidebranch.com



On Tue, Jun 29, 2021 at 8:02 AM shoaib akhtar
<m.shoaibakhtar98@gmail.com> wrote:
>
>
>
>
> i have tried to build yocto image.  And it compiled successfully without any error but when am trying to BOOT them it didnt prompt any error message my BBlayer.conf is shown below
>
> # POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> POKY_BBLAYERS_CONF_VERSION = "2"
>
> BBPATH = "${TOPDIR}"
> BBFILES ?= ""
>
> BBLAYERS ?= " \
>   /media/vmnrtc/Drive/poky/meta \
>   /media/vmnrtc/Drive/poky/meta-poky \
>   /media/vmnrtc/Drive/poky/meta-yocto-bsp \
>   /media/vmnrtc/Drive/poky/meta-xilinx/meta-xilinx-bsp \
>   /media/vmnrtc/Drive/poky/meta-openembedded/meta-oe \
>   /media/vmnrtc/Drive/poky/meta-openembedded/meta-python \
>   /media/vmnrtc/Drive/poky/meta-xilinx/meta-xilinx-standalone \
>   /media/vmnrtc/Drive/poky/meta-xilinx-tools \
>   /media/vmnrtc/Drive/poky/build/meta-networking \
>   "
>
> MY files in image directories
>
>
> boot.bin
> boot.bin-zc702-zynq7
> boot.bin-zc702-zynq7-v2020.01-xilinx-v2020.2+gitAUTOINC+bb4660c33a-r0
> boot.scr
> core-image-minimal-zc702-zynq7-20210629031233.qemuboot.conf
> core-image-minimal-zc702-zynq7-20210629031233.rootfs.cpio
> core-image-minimal-zc702-zynq7-20210629031233.rootfs.cpio.gz.u-boot
> core-image-minimal-zc702-zynq7-20210629031233.rootfs.manifest
> core-image-minimal-zc702-zynq7-20210629031233.rootfs.tar.gz
> core-image-minimal-zc702-zynq7-20210629031233.testdata.json
> core-image-minimal-zc702-zynq7.cpio
> core-image-minimal-zc702-zynq7.cpio.gz.u-boot
> core-image-minimal-zc702-zynq7.manifest
> core-image-minimal-zc702-zynq7.qemuboot.conf
> core-image-minimal-zc702-zynq7.tar.gz
> core-image-minimal-zc702-zynq7.testdata.json
> modules--5.4+git0+62ea514294-r0-zc702-zynq7-20210622034511.tgz
> modules-zc702-zynq7.tgz
> pxeboot
> pxelinux.cfg
> u-boot.elf
> u-boot.img
> u-boot-xlnx-AUTOINC+bb4660c33a.elf
> u-boot-xlnx-initial-env
> u-boot-xlnx-initial-env-zc702-zynq7
> u-boot-xlnx-initial-env-zc702-zynq7-v2020.01-xilinx-v2020.2+gitAUTOINC+bb4660c33a-r0
> u-boot-zc702-zynq7.elf
> u-boot-zc702-zynq7.img
> u-boot-zc702-zynq7-v2020.01-xilinx-v2020.2+gitAUTOINC+bb4660c33a-r0.img
> u-boot-zynq-scr--1.0-r0.scr
> uEnv.txt
> uImage
> uImage--5.4+git0+62ea514294-r0-zc702-zynq7-20210622034511.bin
> uImage-zc702-zynq7.bin
> zImage
> zImage--5.4+git0+62ea514294-r0-zc702-zynq7-20210622034511.bin
> zImage-zc702-zynq7.bin
> zynq-zc702--5.4+git0+62ea514294-r0-zc702-zynq7-20210622034511.dtb
> zynq-zc702.dtb
> zynq-zc702-zc702-zynq7.dtb
>
>
>
> what should i do to BOOT my yocto build image on zc702 board
>
>
> 
>
