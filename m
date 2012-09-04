Return-Path: <twoerner@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64AF9E0146C
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2012 19:25:43 -0700 (PDT)
Received: by lagr15 with SMTP id r15so4471899lag.35
	for <yocto@yoctoproject.org>; Mon, 03 Sep 2012 19:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=+DowVbDmwICuGPS9OFnBJIStkGqiozuHRFRlo6B//0Y=;
	b=vgwQuzj3k8Ch6vGYcW9/D1ozTrkOlIso6Oo1qJiZvMu0vAycFTaw9wKUDVEQlDPucz
	iP5Wjrl8jsRSNx+VNpQtZ/5+C69ZfX0VkXT4MgZ/gycZYoH1kDb1JR6rqpR4U9sPck2S
	Ru8fe/HDgZg4g9ppw5dIHOtTjBX+XBZOLhn6cjJmV9RfSIKJVqL+XQ89im0ODXOuNn5w
	n9Lfy6vxQdPcq6PVAkt7xPh6jHjOXA2Po0Jiv5jtV510WApqXwBjxEjPMKF0w3DGRVzZ
	gN4/eEyqV3v+S076wD7BDBQ8SkVFgJWy0wb8slOhFdSBMU0uDmU5iweedsjstXtPJbBU
	mi7g==
MIME-Version: 1.0
Received: by 10.152.112.233 with SMTP id it9mr15358683lab.40.1346725541897;
	Mon, 03 Sep 2012 19:25:41 -0700 (PDT)
Received: by 10.112.21.9 with HTTP; Mon, 3 Sep 2012 19:25:41 -0700 (PDT)
Date: Mon, 3 Sep 2012 22:25:41 -0400
Message-ID: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: any success with spartan6-lx9mb?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 04 Sep 2012 02:25:43 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I was playing around with the meta-xilinx layer and tried to build
"core-image-minimal" for the spartan6 without success. I was wondering
if anyone has tried this lately and/or if anyone has any tips to
suggest?

configuration:

I'm using the latest HEAD:
    BB_VERSION        = "1.15.3"
    TARGET_ARCH       = "microblaze"
    TARGET_OS         = "linux"
    MACHINE           = "spartan6-lx9mb"
    DISTRO            = "poky"
    DISTRO_VERSION    = "1.2+snapshot-20120904"
    TUNE_FEATURES     = "m32 microblazeel"
    TARGET_FPU        = "soft"
    meta
    meta-yocto        = "master:37c8597e7600385367257e8a513e003947ebef5b"
    meta-xilinx       = "master:d196fa93c7ff5e080d4c44e2b83aed472f32b2c7"

conf/local.conf:
    BB_NUMBER_THREADS = "4"
    PARALLEL_MAKE = "-j 4"
    MACHINE ??= "spartan6-lx9mb"
    DL_DIR = "/home/trevor/devel/Downloads"
    DISTRO ?= "poky"
    PACKAGE_CLASSES ?= "package_rpm"
    EXTRA_IMAGE_FEATURES = "debug-tweaks"
    USER_CLASSES ?= "buildstats image-mklibs image-prelink"
    PATCHRESOLVE = "noop"
    CONF_VERSION = "1"

conf/bblayers.conf:
    LCONF_VERSION = "5"
    BBPATH = "${TOPDIR}"
    BBFILES ?= ""
    BBLAYERS ?= " \
      /home/trevor/devel/yocto/git-method/poky/meta \
      /home/trevor/devel/yocto/git-method/poky/meta-yocto \
      /home/trevor/devel/yocto/git-method/poky/meta-xilinx \
      "

issues:

The first problem I encountered was trying to build gcc-cross-initial:
    This target does not support --with-float.

I was able to get around this with the following (very silly) patch:
diff --git a/meta/recipes-devtools/gcc/gcc-common.inc
b/meta/recipes-devtools/gcc/gcc-common.inc
index 72180db..cb3a8cf 100644
--- a/meta/recipes-devtools/gcc/gcc-common.inc
+++ b/meta/recipes-devtools/gcc/gcc-common.inc
@@ -12,8 +12,6 @@ FILESDIR = "${@os.path.dirname(d.getVar('FILE',1))}/gcc-${PV}"
 def get_gcc_fpu_setting(bb, d):
     if d.getVar('ARMPKGSFX_EABI', True) == "hf" and
d.getVar('TRANSLATED_TARGET_ARCH', True) == "arm":
         return "--with-float=hard"
-    if d.getVar('TARGET_FPU', True) in [ 'soft' ]:
-        return "--with-float=soft"
     if d.getVar('TARGET_FPU', True) in [ 'ppc-efd' ]:
         return "--enable-e500_double"
     return ""
-- 


Although I could get past this point, bitbaking again led to the
following problem with the same, gcc-cross-initial, recipe:

opening microblaze-c.o: No such file or directory
make[1]: *** [cc1-checksum.c] Error 1
rm cpp.pod gcov.pod gfdl.pod gcc.pod fsf-funding.pod
make[1]: Leaving directory
`/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/work/microblazeel-poky-linux/gcc-cross-initial-4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5dede-r11/gcc-4_7-branch/build.x86_64-linux.microblaze-poky-linux/gcc'
make: *** [all-gcc] Error 2
ERROR: oe_runmake failed
ERROR: Function failed: do_compile

