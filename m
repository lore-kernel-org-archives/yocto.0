Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FA11E00716; Tue, 27 May 2014 15:44:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ie0-f169.google.com (unknown [209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB1E6E006EC
	for <yocto@yoctoproject.org>; Tue, 27 May 2014 15:44:34 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id at1so9576854iec.14
	for <yocto@yoctoproject.org>; Tue, 27 May 2014 15:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=e9CSyz78Xafr5R/fnxiUfS/5/5cXNGRVgmJUmhTm0L0=;
	b=RhG3ZljQTAY0xs6yqPJFMFFG3tcsKXIRFevbR0KPIo6CiBtJCvto1ePSqB1jrwThVx
	rpmn2spLw9SQluRUKPeXia9w7SLJVKGlNBo/rRBMLCI1O1vTl8MV2mADnq35fP0eY4hq
	JqcAoHhGt7J2UFBfkOlwETntxl+76m4cy5ZcdTz+ip4kIF7sxUBYA9p7BKxowCFssH/j
	Q/KlKGDMIGLuEyo6l2TpkzvFMmc6TqhH9on4MzKqo5Epkpr+UetGNET7Nx7PXvTvTgxF
	3/my3GPiQQadgR9M4KWFhw0do6qkalNSTWsJ8JfL+70mYZDCmtcFbSYd9jNuWvhPZmR1
	Tlbg==
X-Received: by 10.43.74.198 with SMTP id yx6mr32839503icb.40.1401230673793;
	Tue, 27 May 2014 15:44:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.228.141 with HTTP; Tue, 27 May 2014 15:44:13 -0700 (PDT)
From: Chris Morgan <chmorgan@gmail.com>
Date: Tue, 27 May 2014 18:44:13 -0400
Message-ID: <CAAPegz2DCZGTKfyJBGMytu_zofk2K9CSJMbVtiKHdS2eysZgrQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: virtual/mesa, virtual/libgl provided by multiple packages
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
X-List-Received-Date: Tue, 27 May 2014 22:44:37 -0000
Content-Type: text/plain; charset=UTF-8

Building a custom image with wayland and weston based on core-image,
seeing issues with virtual/mesa and virtual/libgl being provided by
multiple packages. Not sure if I'm doing something wrong here, like
not specifying packages that provide those virtual targets?



[cmorgan@localhost build]$ bitbake core-image-cybex
NOTE: Started PRServer with DBfile:
/home/cmorgan/projects/yocto_poky/build/cache/prserv.sqlite3, IP:
127.0.0.1, PORT: 54426, PID: 13617
Loading cache: 100%
|######################################################| ETA:
00:00:00
Loaded 1797 entries from dependency cache.
Parsing recipes: 100%
|####################################################| Time: 00:00:00
Parsing of 1372 .bb files complete (1366 cached, 6 parsed). 1802
targets, 68 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg

Build Configuration:
BB_VERSION        = "1.23.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-20"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.6+snapshot-20140527"
TUNE_FEATURES     = "arm armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta              = "master:f3d62a9eb9c47356e6150fdd55f790c159e620c7"
meta-bbb          = "master:8318556523a747b7e9c97326bef14922a154e8a2"
common-bsp        = "master:a070f6898bc354bb4a8ec6c9ce3907452db732b8"
meta-yocto
meta-yocto-bsp    = "master:f3d62a9eb9c47356e6150fdd55f790c159e620c7"
meta-mono         = "master:89fbbf6d6029190f9093b25d6158180607a87ea1"
meta-oe           = "master:0e7630c31989bec8ac96261b72518f7b505bcdb7"
meta-cybex        = "master:3d9914ff3252112ab1b5c9cf4d3a1d07344e0e8e"

NOTE: Preparing runqueue
ERROR: Multiple .bb files are due to be built which each provide
virtual/mesa (/home/cmorgan/projects/yocto_poky/meta/recipes-graphics/mesa/mesa_9.2.5.bb
/home/cmorgan/projects/yocto_poky/meta/recipes-graphics/mesa/mesa-gl_9.2.5.bb).
 This usually means one provides something the other doesn't and should.
ERROR: Multiple .bb files are due to be built which each provide
virtual/libgl (/home/cmorgan/projects/yocto_poky/meta/recipes-graphics/mesa/mesa_9.2.5.bb
/home/cmorgan/projects/yocto_poky/meta/recipes-graphics/mesa/mesa-gl_9.2.5.bb).
 This usually means one provides something the other doesn't and should.
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Recipe mesa-gl is trying to create package libegl-mesa which
was already written by recipe mesa. This will cause corruption, please
resolve this and only provide the package from one recipe or the other
or only build one of the recipes.
ERROR: Function failed: read_subpackage_metadata
ERROR: Logfile of failure stored in:
/home/cmorgan/projects/yocto_poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/mesa-gl/2_9.2.5-r0/temp/log.do_package_write_ipk.8631
ERROR: Task 1194
(/home/cmorgan/projects/yocto_poky/meta/recipes-graphics/mesa/mesa-gl_9.2.5.bb,
do_package_write_ipk) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2439 tasks of which 2310 didn't need to
be rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/cmorgan/projects/yocto_poky/meta/recipes-graphics/mesa/mesa-gl_9.2.5.bb,
do_package_write_ipk
Summary: There were 4 ERROR messages shown, returning a non-zero exit code.
[cmorgan@localhost build]$


Chris

