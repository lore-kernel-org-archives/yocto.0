Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE0D1E00848; Fri,  3 Aug 2018 08:05:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2CFDE006B4
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2018 08:05:54 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id k12-v6so10328245oiw.8
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2018 08:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=oZ0Pwe3SDW+hxW6SKPAjdXo2BAiDVXDgtCLcP4x35pE=;
	b=Nl2qas2bITebJHPY1/S/WxrFc7bApNc07u8uR/Qk9E04JqMDwTlU+kkfGxdi6meQIS
	+Pa0b5BfrZ9LUTcA4VaEdPvgjuKvJAwAmfzq3pGQBsPjqWHQkV2qgDt4xyhZrEfoxYaT
	VH0vKDYwhxX34CcobdaQ9WH4uuzznmPXi5I4oKl+ybjIn83qnEiWEh2rmiL7mzTWd6UV
	GUBFN9pw2/jC+USxRnAMmGOS2mZ3sPiOL6WXJGGLKgAVATtMacFZN+siCaD1r9xCn3th
	BQTkM0rIl2GG0LsNr6pe2/hqv8mh1plad+TutGTPQ2LUOdf9ai+ujI9bS2l2twFZwfQS
	6Enw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=oZ0Pwe3SDW+hxW6SKPAjdXo2BAiDVXDgtCLcP4x35pE=;
	b=XTwtWgcn2An9kHtg++bs9wmjnh3usgHH+b+4EzSRwFVpJzaYi+vJeq5At8/K9OXMUF
	GnYuljzNIiWJ5VCRjwSzBIWQr/1Sp3TH8fVg4ukUxw5RnpqA40STcZGclUdNnzRuxRbN
	6yEQI9NKoh6MDTbxQHbuDdOFP+wT2EN70GWPWzhVWthMKNkUkevU1xBPsYwSkCWS+HvA
	NHK/mX3lwl0tFeUSrM0cl6YZrigPySQc/KydAQNA8RWi63rqRB2mY2K317i1z2LBc0U9
	vFDo0ZQfFYAv4inGGuToQ2YrUx9AFAN2ZV+dQJyEpz7qcWng9dX3tKZrDDRle7uT+UND
	tRKg==
X-Gm-Message-State: AOUpUlE67hiQKQr1TLq6tydCaRyYZPP9GaJbI780dhS7aLiDjRkA5+tg
	pAjIfn0fEYuHE+0o28XHvv8lT7z8Myd0tJwattmAnPXOiwU=
X-Google-Smtp-Source: AAOMgpfydLDwwBNeIVHZMcvdVP3Wd2mLDcdGmSHivF3zsAfubIjJceg9E0/tUsQ18qlpTmlGWYxY76pNyDD3kdHCqck=
X-Received: by 2002:aca:578b:: with SMTP id
	l133-v6mr3832125oib.329.1533308753606; 
	Fri, 03 Aug 2018 08:05:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:10da:0:0:0:0:0 with HTTP;
	Fri, 3 Aug 2018 08:05:52 -0700 (PDT)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 3 Aug 2018 17:05:52 +0200
Message-ID: <CAOT_U5adB=K=N_xFO5SOSOYiO7vMyxFz5e5mvEgf_UgHa4ECHg@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Preventing wic for running for an initramfs image
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
X-List-Received-Date: Fri, 03 Aug 2018 15:05:56 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
I'm setting up an initramfs image for an ARM board.
The minimal recipe I got to build the image is:

    # Simple initramfs image. Mostly used for live images.
    DESCRIPTION = "Small image capable of booting a device. The kernel
includes \
    the Minimal RAM-based Initial Root Filesystem (initramfs), which finds the \
    first 'init' program more efficiently."

    PACKAGE_INSTALL = "initramfs-live-boot
${VIRTUAL-RUNTIME_base-utils} udev base-passwd
${ROOTFS_BOOTSTRAP_INSTALL}"

    # Do not pollute the initrd image with rootfs features
    IMAGE_FEATURES = ""

    export IMAGE_BASENAME = "${MLPREFIX}core-image-minimal-initramfs"
    IMAGE_LINGUAS = ""

    LICENSE = "MIT"

    IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"
    inherit core-image

    IMAGE_ROOTFS_SIZE = "8192"
    IMAGE_ROOTFS_EXTRA_SPACE = "0"
    BAD_RECOMMENDATIONS += "busybox-syslog"

This results in an image created in
tmp-glibc/work/.../core-image-minimal-initramfs/1.0-r0/deploy-core-image-minimal-initramfs-image-complete/core-image-minimal-initramfs-senic-hub.cpio.gz

However the bitbaking process seems to fail in the process of running wic:

    | INFO: Creating image(s)...
    |
    | WARNING: overhead-factor was specified, but size was not, so
bitbake variables will be used for the size. In this case both
IMAGE_OVERHEAD_FACTOR and --overhead-factor will be applied
    | ERROR: _exec_cmd: export
PATH=/home/alan/workspace/senic-os/build/tmp-glibc/work/senic_hub-senic-linux-gnueabi/core-image-minimal-initramfs/1.0-r0/recipe-sysroot-
   native/sbin:/home/alan/workspace/senic-os/build/tmp-glibc/work/senic_hub-senic-linux-gnueabi/core-image-minimal-initramfs/1.0-r0/recipe-sysroot-native/usr/sbin:/home/alan/workspace/senic-
   os/build/tmp-glibc/work/senic_hub-senic-linux-gnueabi/core-image-minimal-initramfs/1.0-r0/recipe-sysroot-native/usr/bin:$PATH;mcopy
-i /home/alan/workspace/senic-os/build/tmp-
glibc/work/senic_hub-senic-linux-gnueabi/core-image-minimal-initramfs/1.0-r0/deploy-core-image-minimal-initramfs-image-complete/core-image-minimal-initramfs-senic-hub-20180803145716-
   sdimg/tmp.wic.hq0myf6p/rootfs_boot.3.vfat -s
/home/alan/workspace/senic-os/build/tmp-glibc/work/senic_hub-senic-linux-gnueabi/core-image-minimal-initramfs/1.0-r0/deploy-core-image-minimal-
   initramfs-image-complete/core-image-minimal-initramfs-senic-hub-20180803145716-sdimg/tmp.wic.hq0myf6p/boot.3/*
::/ returned '1' instead of 0
    | output: /home/alan/workspace/senic-os/build/tmp-glibc/work/senic_hub-senic-linux-gnueabi/core-image-minimal-initramfs/1.0-r0/deploy-core-image-minimal-initramfs-image-complete/core-image-
 minimal-initramfs-senic-hub-20180803145716-sdimg/tmp.wic.hq0myf6p/boot.3/*:
No such file or directory


I guess this is some obscure error that is probably to specific to ask
on a mailing list.
My question goes in the direction if I can stop running wic for an initramfs?

It's needed to combine partitions and create a single file images, but couldn't
initramfs be excluded from that process?
If the cpio is built shouldn't it be enough to pass that to the kernel
without the need
of running wic on top of it?


Be Well,
Alan

