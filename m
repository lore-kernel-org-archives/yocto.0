Return-Path: <thayne.srf@gmail.com>
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D3CDE00749
	for <yocto@yoctoproject.org>; Sat, 15 Jun 2013 17:17:03 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id kl14so998898pab.5
	for <yocto@yoctoproject.org>; Sat, 15 Jun 2013 17:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:to:date:content-type:x-mailer:mime-version
	:content-transfer-encoding;
	bh=UTh0UeIk7HrW6TVelx3uwXF3LILS2XOEP9xDmUxao/A=;
	b=bBdx+KI55cr1mgBOq3BZBKHhlEVQuFrVkd+htyZgPAg83Gr4AZKNZ8HEXDZUIEeVdl
	RVKkJXZj9aXodBLz+ZsCDDN9iANNpSFf6lAcm6XTFYBf9kHa5a7vBfRrapkfTiU1ijQ7
	IKvyyzpHRNexPccbobi/7RtQsbEzTaqzF+6pL2xXbQ58vEHlTY8oXXDwEb26RO7S+gOX
	OkMHDTy+knn+4Z6sXDqc3PPwK8dcUkUyb1WD+jenlm5DpA5XuYG85cuoW6orM0pRv/k3
	V/7xGo5HiK/SSwSGZbqVtqW0/zFEcu4AnBjfQGNJzBihvzZTif0Pt3qadNM8VU2oLvlf
	C8Pg==
X-Received: by 10.68.254.105 with SMTP id ah9mr7801560pbd.76.1371341823641;
	Sat, 15 Jun 2013 17:17:03 -0700 (PDT)
Received: from [172.18.0.5] (thayneh.dsl.xmission.com. [198.60.114.251])
	by mx.google.com with ESMTPSA id tb7sm7826122pbc.14.2013.06.15.17.17.02
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 15 Jun 2013 17:17:02 -0700 (PDT)
Message-ID: <1371341815.10310.3.camel@magma>
From: Thayne Harbaugh <thayne.srf@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 15 Jun 2013 18:16:55 -0600
X-Mailer: Evolution 3.8.2-1 
Mime-Version: 1.0
Subject: Failure packaging u-boot
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
X-List-Received-Date: Sun, 16 Jun 2013 00:17:06 -0000
Content-Type: text/plain
Content-Transfer-Encoding: 7bit


I have followed the directions on this page:

  https://github.com/gumstix/Gumstix-YoctoProject-Repo

The results are a failure in do_package for u-boot.  It appears that the
u-boot tools have been built for the build host which don't match the
target architecture and that gets flagged as an error:

  thayne@magma:~/dev/spotterrf/dm3730/dspbridge/yocto$ TEMPLATECONF=meta-gumstix-extras/conf source ./poky/oe-init-build-env

  ### Shell environment set up for builds. ###

  You can now run 'bitbake <target>'

  Common targets are:
      core-image-minimal
      core-image-sato
      meta-toolchain
      meta-toolchain-sdk
      adt-installer
      meta-ide-support

  You can also run generated qemu images with a command like 'runqemu qemux86'

  thayne@magma:~/dev/spotterrf/dm3730/dspbridge/yocto/build$ bitbake -k core-image-minimal
  Loading cache: 100% || ETA:  00:00:00
  Loaded 1683 entries from dependency cache.
  Parsing recipes: 100% || Time: 00:00:00
  Parsing of 1336 .bb files complete (1334 cached, 2 parsed). 1684 targets, 36 skipped, 0 masked, 0 errors.

  Build Configuration:
  BB_VERSION        = "1.16.0"
  TARGET_ARCH       = "arm"
  TARGET_OS         = "linux-gnueabi"
  MACHINE           = "overo"
  DISTRO            = "poky"
  DISTRO_VERSION    = "1.3.1"
  TUNE_FEATURES     = "armv7a vfp neon cortexa8"
  TARGET_FPU        = "vfp-neon"
  meta
  meta-yocto
  meta-yocto-bsp    = "(nobranch):2806646a263527ec0487ea160afd4bdc0a3c1703"
  meta-gnome
  meta-oe
  meta-xfce         = "(nobranch):34e5537e67b655b8d2effbbecc207d88eea52b87"
  meta-gumstix      = "(nobranch):e373f9c91ba7e3719676bfdd3f8f9c87a7b3284c"

  NOTE: Resolving any missing task queue dependencies
  NOTE: Preparing runqueue
  NOTE: Executing SetScene Tasks
  NOTE: Executing RunQueue Tasks
  WARNING: File '/sbin/fw_setenv' from u-boot was already stripped, this will prevent future debugging!
  WARNING: File '/sbin/fw_printenv' from u-boot was already stripped, this will prevent future debugging!
  ERROR: runstrip: ''arm-poky-linux-gnueabi-strip' --remove-section=.comment --remove-section=.note '/home/thayne/dev/spotterrf/dm3730/dspbridge/yocto/build/tmp/work/overo-poky-linux-gnueabi/u-boot-2012.10-r0/package/sbin/fw_setenv'' strip command failed
  ERROR: runstrip: ''arm-poky-linux-gnueabi-strip' --remove-section=.comment --remove-section=.note '/home/thayne/dev/spotterrf/dm3730/dspbridge/yocto/build/tmp/work/overo-poky-linux-gnueabi/u-boot-2012.10-r0/package/sbin/fw_printenv'' strip command failed
  ERROR: QA Issue: Architecture did not match (40 to 62) on /work/overo-poky-linux-gnueabi/u-boot-2012.10-r0/packages-split/u-boot-fw-utils/sbin/fw_printenv
  ERROR: QA Issue: Architecture did not match (40 to 62) on /work/overo-poky-linux-gnueabi/u-boot-2012.10-r0/packages-split/u-boot-fw-utils/sbin/fw_setenv
  ERROR: QA run found fatal errors. Please consider fixing them.
  ERROR: Function failed: do_package_qa
  ERROR: Logfile of failure stored in: /home/thayne/dev/spotterrf/dm3730/dspbridge/yocto/build/tmp/work/overo-poky-linux-gnueabi/u-boot-2012.10-r0/temp/log.do_package.22481
  ERROR: Task 70 (/home/thayne/dev/spotterrf/dm3730/dspbridge/yocto/poky/meta-gumstix/recipes-bsp/u-boot/u-boot_2012.10.bb, do_package) failed with exit code '1'
  NOTE: Tasks Summary: Attempted 1937 tasks of which 1935 didn't need to be rerun and 1 failed.

  Summary: 1 task failed:
    /home/thayne/dev/spotterrf/dm3730/dspbridge/yocto/poky/meta-gumstix/recipes-bsp/u-boot/u-boot_2012.10.bb, do_package
  Summary: There were 2 WARNING messages shown.
  Summary: There were 6 ERROR messages shown, returning a non-zero exit code.







