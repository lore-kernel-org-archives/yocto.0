Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FFBCE01358
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 02:08:38 -0700 (PDT)
Received: by mail-ob0-f175.google.com with SMTP id xn12so4361030obc.6
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 02:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=aqAe19VGI2JqIiuqJ/fngwIUczV+pyn7GLaDVAeHMdY=;
	b=J5SbDGuYUdBQjGJAacaoY8VKPQs4py5XK4c3ZmVDdV0xjiZFQa5ahGS3TiAciRMbAb
	TyL0hUjR9uqWkusaFfcyIuJU0X8trYY9M6M5F6e4EuKMfH0WlWRuC7rBT7+zNHUOCXip
	sZx52NkSuCnPzodujXMYvLTvintjjVG4y7v/A8jNPsSGCgw0JHlw4xNppvFKFmt33tfL
	c/8gxtnM1ZxH7EPFNOeW2V2VNkJZhVngQAz8n9zRkf8Csl9OTYi3eT8S564lRZhLe4ZB
	Ta/pGRylHodVRTQoeDG9TMEcWN/CQ1CQKVMkQ1noAQ4p8L7K8fgMHEcbAwYxqpx95bM3
	o0Yg==
MIME-Version: 1.0
X-Received: by 10.182.87.170 with SMTP id az10mr992322obb.10.1377594518325;
	Tue, 27 Aug 2013 02:08:38 -0700 (PDT)
Received: by 10.182.109.36 with HTTP; Tue, 27 Aug 2013 02:08:38 -0700 (PDT)
Date: Tue, 27 Aug 2013 11:08:38 +0200
Message-ID: <CAFyqS9oq7=v=H2VdH1mK_jznoqrQrCR3ZeS54NAT6g2zAxPk3w@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Kernel 3.9 uImage build problem
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 27 Aug 2013 09:08:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. We are trying to build a Linux 3.9 kernel (uplift from 3.6) and
are suddenly facing a completely new error when creating the uImage.

HOSTCC  scripts/mod/file2alias.o
|   HOSTLD  scripts/mod/modpost
| make[1]: `include/generated/mach-types.h' is up to date.
|   CALL    scripts/checksyscalls.sh
|   CHK     include/generated/compile.h
|   CHK     kernel/config_data.h
|   Kernel: arch/arm/boot/Image is ready
|   Kernel: arch/arm/boot/zImage is ready
| multiple (or no) load addresses:
| This is incompatible with uImages
| Specify LOADADDR on the commandline to build an uImage
| make[1]: *** [arch/arm/boot/uImage] Error 1
| make: *** [uImage] Error 2

Any hints on where to start look for source of the problem?
In our machine config UBOOT_LOADADDR is set.

Build Configuration:
BB_VERSION        = "1.19.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "SUSE-LINUX-11"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zynq-zc706"
DISTRO            = "poky-chris"
DISTRO_VERSION    = "1.4+snapshot-20130827"
TUNE_FEATURES     = "armv7a vfp cortexa9"
TARGET_FPU        = "vfp"

Thanks.
Hans

