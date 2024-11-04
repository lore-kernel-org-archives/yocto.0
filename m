Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 643B2D1BDEB
	for <webhook@archiver.kernel.org>; Mon,  4 Nov 2024 19:52:46 +0000 (UTC)
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
 by mx.groups.io with SMTP id smtpd.web11.768.1730749956383199818
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Nov 2024 11:52:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OW6PYIxb;
 spf=pass (domain: gmail.com, ip: 209.85.161.49, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5ebc0dbc566so2305657eaf.3
        for <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 11:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730749955; x=1731354755; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vnZUTJVcvMqGWv1hawI+BKCwM09Z4V+Tw877uUpQK/M=;
        b=OW6PYIxbOIO3v1+H29cbyNEvVGl8ktxx21zmk8DCJmD3WQ7DC/VKPs/nKFWc+kaVjC
         LhHXM6ouvbK6puzydBQvL9OEAA6kUHXYhXBVIl0uQC99K6EXYo7iexCgHkUNKW8lRvq3
         qogTUdYSLyqXig+Q3I+MoD40alZt5Rs2KKyiP1UAEeLWxbnBjoIPSkgKvwfI0AFXe9H0
         S3tEg10yeApsl6NVbUyrETDi84clzPg3ZDqzqMlZTQQ4dtJVM149tP3FEdQKnwyYXgTj
         YdFkaCnPsuMXu6f8FABee4/JzNP+xTTtN9S4aJzf27J3moM62SBPUBd6srgMeMy86cGX
         9Bug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730749955; x=1731354755;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vnZUTJVcvMqGWv1hawI+BKCwM09Z4V+Tw877uUpQK/M=;
        b=vJ89Uc0/koMBZUwBk0XrE8bL//92v07G0+XCDC5bEowX9IghtDbQNx8x9KPW9Mirnr
         Qy7TdPoUW3iwfFPx8kZ9Ma8UpsuigzQplahSSm7V2hhiBudPxwwAdk4epzQGP+IvRcyE
         lbVjj3B80uZ8Mfd96JT4yXmlyZkgqDW82tBvT0nT8AP/LRym3HdDv3jH/zTQJvkc/I4i
         1SoxKG8ZfyYbyf/0XQHf0+2N/4FogVacbZbv6w2tpTjfXuogKPBVP+EKpUyBhxABvYWT
         IZsDX8TBWi4SwvJNK3DO+x6FQSerskMUcc0+tkwn5flppz0BFzGXI33LWbHKwcGq/hqX
         ZL0A==
X-Gm-Message-State: AOJu0YzKfTNWxHXJwY/FYUKbeyc1NYQmEnHhHOC0uBHQZztgdIvojee8
	X5HmoHKq/ucN4b/T686ziWRs7Czf7Ee2lrYbXGbyuWvho2PeHhFr4QuzH4+zq+TCItM3R9LhZLj
	LeioklxDZeaYSUIuR+VJhD+6ihYDDR45f
X-Google-Smtp-Source: AGHT+IH/6/Xkul1CDdbNbPZqw44N40gn0v9bHrejQ+rEbK95c/6kUYB0mzTucEaWDczOZ+Siv6aVTV71yzxve8TjwPI=
X-Received: by 2002:a05:6820:16a0:b0:5e5:b5d1:ee19 with SMTP id
 006d021491bc7-5ec239f5f9fmr21076648eaf.8.1730749955265; Mon, 04 Nov 2024
 11:52:35 -0800 (PST)
MIME-Version: 1.0
References: <dtQB.1730746424320409614.w6ox@lists.yoctoproject.org>
In-Reply-To: <dtQB.1730746424320409614.w6ox@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 4 Nov 2024 11:52:08 -0800
Message-ID: <CAMKF1spzLHq0+4kgv=sq+2sakx3+bVgOLqgsGfYBn8-=Ndmjkg@mail.gmail.com>
Subject: Re: [yocto] Yocto Xilinx Failing GCC with _GNU_SOURCE
To: yocto@lists.yoctoproject.org, jesse_borders@yahoo.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 19:52:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64216

you have TARGET_CFLAGS:append =3D " -D_GNU_SOURCE" in config metadata,
that may not be best place to do it because packages detect it and
enable it
themselves.

On Mon, Nov 4, 2024 at 11:44=E2=80=AFAM jesse_borders via
lists.yoctoproject.org
<jesse_borders=3Dyahoo.com@lists.yoctoproject.org> wrote:
>
> First sorry I am new and not sure how to reply to a message.  Original me=
ssage is here:  https://lists.yoctoproject.org/g/yocto/message/64208
>
> Peter Marko pointed out I was on an unsupported branch.  So I spun up a n=
ew 22.04 Ubuntu to build on.  I am still seeing the same _GNU_SOURCE redefi=
ned errors.
>
>
> local.conf
>
> BBMASK =3D "v4l-utils|yavta"
> LICENSE_FLAGS_ACCEPTED +=3D "xilinx"
> MACHINE =3D "microzed-zynq7"
> #HDF_MACHINE =3D "microzed-zynq7"
> CONFIG_DTFILE =3D "${TOPDIR}/../zynq-microzed.dts"
> DISTRO ?=3D "poky"
> PACKAGE_CLASSES ?=3D "package_ipk"
> EXTRA_IMAGEDEPENDS +=3D "u-boot-xlnx-scr"
> EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
> EXTRA_OEMAKE +=3D "DEVICE_TREE=3Dzynq-microzed"
> IMAGE_INSTALL +=3D "u-boot linux-firmware"
> IMAGE_INSTALL +=3D "device-tree-microzed"
> PREFERRED_PROVIDER_u-boot =3D "u-boot-microzed"
> PREFERRED_PROVIDER_virtual/kernel =3D "linux-xlnx"
> PREFERRED_VERSION_virtual/hdf =3D "2023.2"
> DEVICE_TREE =3D "zynq-zybo-z7"
> KERNEL_DEVICETREE =3D "zynq-microzed.dts"
> TARGET_CFLAGS:append =3D " -D_GNU_SOURCE"
> INHERIT:remove =3D "uninative"
>
>
>
> bblayers.conf
>
> POKY_BBLAYERS_CONF_VERSION =3D "2"
> BBPATH =3D "${TOPDIR}"
> BBFILES ?=3D ""
> BBLAYERS ?=3D " \
>   ${TOPDIR}/../meta \
>   ${TOPDIR}/../meta-poky \
>   ${TOPDIR}/../meta-yocto-bsp \
>   ${TOPDIR}/../meta-xilinx-tools \
>   ${TOPDIR}/../meta-xilinx/meta-xilinx-core \
>   ${TOPDIR}/../meta-xilinx/meta-xilinx-bsp \
>   ${TOPDIR}/../meta-xilinx/meta-xilinx-vendor \
>   ${TOPDIR}/../meta-xilinx/meta-xilinx-standalone \
>   ${TOPDIR}/../meta-openembedded/meta-oe \
>   ${TOPDIR}/../meta-openembedded/meta-filesystems \
>   "
>
>
>
>
>
>
> Build Configuration:
> BB_VERSION           =3D "2.2.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "ubuntu-22.04"
> TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> MACHINE              =3D "microzed-zynq7"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "4.1.4"
> TUNE_FEATURES        =3D "arm vfp cortexa9 neon thumb callconvention-hard=
"
> TARGET_FPU           =3D "hard"
> XILINX_XSCT_VERSION  =3D "2024.1"
> SOC_VARIANT          =3D "7z"
> XILINX_RELEASE_VERSION =3D "v2024.1"
> meta
> meta-poky
> meta-yocto-bsp       =3D "langdale:3e95f268ce04b49ba6731fd4bbc53b1693c219=
63"
> meta-xilinx-tools    =3D "langdale:1b5a45eb94ebed00eea3e5915b9171a2c1ed9d=
0e"
> meta-xilinx-core
> meta-xilinx-bsp
> meta-xilinx-vendor
> meta-xilinx-standalone =3D "langdale:de3eefaa7037dadbf566c1542da27a79eaae=
648d"
> meta-oe
> meta-filesystems     =3D "langdale:cbbaa82238cd60f08c9b9cb58dde59d5f9318c=
7b"
>
>
>
> _SOURCE -pthread -c /home/me/code/yocto/build/tmp/work-shared/gcc-12.2.0-=
r0/gcc-12.2.0/libgomp/allocator.c  -fPIC -DPIC -o .libs/allocator.o
> | /home/me/code/yocto/build/tmp/work-shared/gcc-12.2.0-r0/gcc-12.2.0/libg=
omp/alloc.c:30: error: "_GNU_SOURCE" redefined [-Werror]
> |    30 | #define _GNU_SOURCE
> |       |
> | <command-line>: note: this is the location of the previous definition
> | /home/me/code/yocto/build/tmp/work-shared/gcc-12.2.0-r0/gcc-12.2.0/libg=
omp/allocator.c:30: error: "_GNU_SOURCE" redefined [-Werror]
> |    30 | #define _GNU_SOURCE
> |       |
> | <command-line>: note: this is the location of the previous definition
> | /home/me/code/yocto/build/tmp/work-shared/gcc-12.2.0-r0/gcc-12.2.0/libg=
omp/env.c:29: error: "_GNU_SOURCE" redefined [-Werror]
> |    29 | #define _GNU_SOURCE
> |       |
> | <command-line>: note: this is the location of the previous definition
> | /home/me/code/yocto/build/tmp/work-shared/gcc-12.2.0-r0/gcc-12.2.0/libg=
omp/oacc-profiling.c:29: error: "_GNU_SOURCE" redefined [-Werror]
> |    29 | #define _GNU_SOURCE
> |       |
> | <command-line>: note: this is the location of the previous definition
> | In file included from /home/me/code/yocto/build/tmp/work-shared/gcc-12.=
2.0-r0/gcc-12.2.0/libgomp/config/linux/wait.h:46,
> |                  from /home/me/code/yocto/build/tmp/work-shared/gcc-12.=
2.0-r0/gcc-12.2.0/libgomp/config/linux/sem.c:30:
> | /home/me/code/yocto/build/tmp/work-shared/gcc-12.2.0-r0/gcc-12.2.0/libg=
omp/config/linux/futex.h:36: error: "_GNU_SOURCE" redefined [-Werror]
> |    36 | #define _GNU_SOURCE
> |       |
> | In file included from /home/me/code/yocto/build/tmp/work-shared/gcc-12.=
2.0-r0/gcc-12.2.0/libgomp/config/linux/wait.h:46,
> |                  from /home/me/code/yocto/build/tmp/work-shared/gcc-12.=
2.0-r0/gcc-12.2.0/libgomp/config/linux/lock.c:33:
> | /home/me/code/yocto/build/tmp/work-shared/gcc-12.2.0-r0/gcc-12.2.0/libg=
omp/config/linux/futex.h:36: error: "_GNU_SOURCE" redefined [-Werror]
> |    36 | #define _GNU_SOURCE
> |       |
> | <command-line>: note: this is the location of the previous definition
> | <command-line>: note: this is the location of the previous definition
> | In file included from /home/me/code/yocto/build/tmp/work-shared/gcc-12.=
2.0-r0/gcc-12.2.0/libgomp/config/linux/wait.h:46,
> |                  from /home/me/code/yocto/build/tmp/work-shared/gcc-12.=
2.0-r0/gcc-12.2.0/libgomp/config/linux/bar.c:31:
> | /home/me/code/yocto/build/tmp/work-shared/gcc-12.2.0-r0/gcc-12.2.0/libg=
omp/config/linux/futex.h:36: error: "_GNU_SOURCE" redefined [-Werror]
> |    36 | #define _GNU_SOURCE
> |       |
> | <command-line>: note: this is the location of the previous definition
> | In file included from /home/me/code/yocto/build/tmp/work-shared/gcc-12.=
2.0-r0/gcc-12.2.0/libgomp/config/linux/wait.h:46,
> |                  from /home/me/code/yocto/build/tmp/work-shared/gcc-12.=
2.0-r0/gcc-12.2.0/libgomp/config/linux/doacross.h:33,
> |                  from /home/me/code/yocto/build/tmp/work-shared/gcc-12.=
2.0-r0/gcc-12.2.0/libgomp/ordered.c:31:
> | /home/me/code/yocto/build/tmp/work-shared/gcc-12.2.0-r0/gcc-12.2.0/libg=
omp/config/linux/futex.h:36: error: "_GNU_SOURCE" redefined [-Werror]
> |    36 | #define _GNU_SOURCE
> |       |
> | <command-line>: note: this is the location of the previous definition
> | In file included from /home/me/code/yocto/build/tmp/work-shared/gcc-12.=
2.0-r0/gcc-12.2.0/libgomp/config/linux/wait.h:46,
> |                  from /home/me/code/yocto/build/tmp/work-shared/gcc-12.=
2.0-r0/gcc-12.2.0/libgomp/config/linux/ptrlock.c:32:
> | /home/me/code/yocto/build/tmp/work-shared/gcc-12.2.0-r0/gcc-12.2.0/libg=
omp/config/linux/futex.h:36: error: "_GNU_SOURCE" redefined [-Werror]
> |    36 | #define _GNU_SOURCE
> |       |
> | <command-line>: note: this is the location of the previous definition
> | In file included from /home/me/code/yocto/build/tmp/work-shared/gcc-12.=
2.0-r0/gcc-12.2.0/libgomp/config/linux/wait.h:46,
> |                  from /home/me/code/yocto/build/tmp/work-shared/gcc-12.=
2.0-r0/gcc-12.2.0/libgomp/config/linux/mutex.c:30:
> | /home/me/code/yocto/build/tmp/work-shared/gcc-12.2.0-r0/gcc-12.2.0/libg=
omp/config/linux/futex.h:36: error: "_GNU_SOURCE" redefined [-Werror]
> |    36 | #define _GNU_SOURCE
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64215): https://lists.yoctoproject.org/g/yocto/messag=
e/64215
> Mute This Topic: https://lists.yoctoproject.org/mt/109392558/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

