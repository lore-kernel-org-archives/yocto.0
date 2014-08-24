Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46BD4E0086B; Sat, 23 Aug 2014 18:09:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EA41E0084D
	for <yocto@yoctoproject.org>; Sat, 23 Aug 2014 18:09:46 -0700 (PDT)
Received: by mail-lb0-f179.google.com with SMTP id v6so10549925lbi.24
	for <yocto@yoctoproject.org>; Sat, 23 Aug 2014 18:09:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Vi8ExN0iwtHWRk0gUpzawxBHl+XQ4UOnI4a2GyNMha4=;
	b=fKXLeGR350FLs2L38xUm/blcotdA4Bh9bhZKDYYoZG0wGYO3uXnPp0TE1zcLJIt3ul
	6bjgb9zF+0zPoOz+e8QqPIg+4Loimpif8HPTPpFRBGfAHa3DrxfuS0P0xVmtAzI21ayf
	hGyt1BzEIl2oyyvEwjdT3hLPmIAKOsgloJFDeHtM5Yr+E80a0D3vAeDhHy7P6FwhCrrW
	TMKk2ufZAbC0aMECzgGQvslQp9R56XXovlAnlBQ6fsCoAzkiGW/+80L9MQJJW4JPNvfX
	IdhBDx1dc9WwM97LY5aSJj9ZWQSHccf5PEnEYLsazrMl9nZHF+f0AsAF8FZtDltPnw+i
	etlQ==
X-Gm-Message-State: ALoCoQlGm4PXEvJBdf/F1lOCctsxjyCo4Gm3/I/wEARbMo3w83vYqiP6I1RZVmxrCIfe1MsKScKN
X-Received: by 10.112.209.36 with SMTP id mj4mr12244196lbc.26.1408842586017;
	Sat, 23 Aug 2014 18:09:46 -0700 (PDT)
Received: from otp-agherzan-l1.gjk.dk (dhcp-189-34.gjk.dk. [195.249.189.34])
	by mx.google.com with ESMTPSA id u4sm1192544laa.42.2014.08.23.18.09.45
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 23 Aug 2014 18:09:45 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 24 Aug 2014 03:09:36 +0200
Message-Id: <1408842576-30267-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1408842576-30267-1-git-send-email-andrei@gherzan.ro>
References: <1408842576-30267-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 5/5] omxplayer: Update to remote's HEAD
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
X-List-Received-Date: Sun, 24 Aug 2014 01:09:50 -0000

Cleanup and rebase patches.

Change-Id: I151fa6b067a66ac6de9eed920f7e16a08a157e17
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/userland/userland_git.bb          |  2 +-
 ...nd-headers-from-ffmpeg-are-installed-in-u.patch | 25 ++++----
 .../0003-Remove-strip-step-in-Makefile.patch       | 28 +++++----
 .../omxplayer/mktemp-compatible-with-busybox.patch | 23 --------
 .../omxplayer/remove-makefile-include.patch        | 69 ----------------------
 recipes-multimedia/omxplayer/omxplayer_git.bb      |  2 +-
 6 files changed, 30 insertions(+), 119 deletions(-)
 delete mode 100644 recipes-multimedia/omxplayer/omxplayer/mktemp-compatible-with-busybox.patch
 delete mode 100644 recipes-multimedia/omxplayer/omxplayer/remove-makefile-include.patch

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 7fb7ebb..77c98d7 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -13,7 +13,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "eccb81050afd177da1923404b366c6226f29bfe0"
+SRCREV = "85441185e653347e6b3c2bbc7494f5e29a6ca4a2"
 
 SRC_URI = "git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
           "
diff --git a/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch b/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
index 9bc137f..366772e 100644
--- a/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
+++ b/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
@@ -1,23 +1,22 @@
-From 13b525667a6ab7af2354ffd6208e490349669798 Mon Sep 17 00:00:00 2001
+From 1e92da659375eae1622984d4cc0ffd2a7b082fcf Mon Sep 17 00:00:00 2001
 From: Andrei Gherzan <andrei@gherzan.ro>
-Date: Tue, 20 Aug 2013 16:15:15 +0300
-Subject: [PATCH 2/3] Libraries and headers from ffmpeg are installed in /usr.
+Date: Sun, 24 Aug 2014 00:13:13 +0200
+Subject: [PATCH] Libraries and headers from ffmpeg are installed in /usr.
 
 Don't search for libraries and headers in /usr/local.
 
 Upstream-Status: Inappropriate [embedded specific]
 Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
-
 ---
  Makefile        | 6 +++---
  Makefile.ffmpeg | 2 +-
  2 files changed, 4 insertions(+), 4 deletions(-)
 
 diff --git a/Makefile b/Makefile
-index 87cb775..abe9923 100644
+index 38e1400..1b15999 100644
 --- a/Makefile
 +++ b/Makefile
-@@ -2,9 +2,9 @@ include Makefile.include
+@@ -1,9 +1,9 @@
  
  CFLAGS+=-std=c++0x -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -DTARGET_LINUX -fPIC -DPIC -D_REENTRANT -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DHAVE_CMAKE_CONFIG -D__VIDEOCORE4__ -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_OPT_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DHAVE_LIBSWRESAMPLE_SWRESAMPLE_H -DOMX -DOMX_SKIP64BIT -ftree-vectorize -DUSE_EXTERNAL_OMX -DTARGET_RASPBERRY_PI -DUSE_EXTERNAL_LIBBCM_HOST
  
@@ -25,28 +24,28 @@ index 87cb775..abe9923 100644
 +LDFLAGS+=-L./ -Lffmpeg_compiled/usr/lib/ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz
  
 -INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/local/include/ -I /usr/include/dbus-1.0 -I /usr/lib/arm-linux-gnueabihf/dbus-1.0/include
-+INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/include/ -I=/usr/include/dbus-1.0 -I=/usr/lib/arm-linux-gnueabihf/dbus-1.0/include
++INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/include/ -I=/usr/include/dbus-1.0 -I /usr/lib/arm-linux-gnueabihf/dbus-1.0/include
  
  DIST ?= omxplayer-dist
  
-@@ -71,5 +71,5 @@ dist: omxplayer.bin
- 	cp omxplayer omxplayer.bin $(DIST)/usr/bin
+@@ -87,5 +87,5 @@ dist: omxplayer.bin omxplayer.1
  	cp COPYING $(DIST)/usr/share/doc/omxplayer
  	cp README.md $(DIST)/usr/share/doc/omxplayer/README
+ 	cp omxplayer.1 $(DIST)/usr/share/man/man1
 -	cp -a ffmpeg_compiled/usr/local/lib/*.so* $(DIST)/usr/lib/omxplayer/
 +	cp -a ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
  	cd $(DIST); tar -czf ../$(DIST).tgz *
 diff --git a/Makefile.ffmpeg b/Makefile.ffmpeg
-index c21b2fa..5518680 100644
+index 4d2d720..9d66a85 100644
 --- a/Makefile.ffmpeg
 +++ b/Makefile.ffmpeg
-@@ -249,5 +249,5 @@ checkout:
- 
+@@ -256,5 +256,5 @@ checkout:
+ .PHONY : install
  install:
  	cd ffmpeg; make -j9 DESTDIR="$(WORK)/ffmpeg_compiled" install
 -	$(HOST)-strip ffmpeg_compiled/usr/local/lib/*.so
 +	$(HOST)-strip ffmpeg_compiled/usr/lib/*.so
  
 -- 
-1.8.5.3
+1.9.3
 
diff --git a/recipes-multimedia/omxplayer/omxplayer/0003-Remove-strip-step-in-Makefile.patch b/recipes-multimedia/omxplayer/omxplayer/0003-Remove-strip-step-in-Makefile.patch
index d1d3d8f..7f31330 100644
--- a/recipes-multimedia/omxplayer/omxplayer/0003-Remove-strip-step-in-Makefile.patch
+++ b/recipes-multimedia/omxplayer/omxplayer/0003-Remove-strip-step-in-Makefile.patch
@@ -1,7 +1,7 @@
-From aa424d5bcbf40c69acb13de3cb6c67688f0c9046 Mon Sep 17 00:00:00 2001
+From b738724c6ca45ee5fecebed01c7ac91c92446123 Mon Sep 17 00:00:00 2001
 From: Andrei Gherzan <andrei@gherzan.ro>
-Date: Tue, 20 Aug 2013 16:17:06 +0300
-Subject: [PATCH 3/3] Remove strip step in Makefile
+Date: Sun, 24 Aug 2014 00:18:05 +0200
+Subject: [PATCH] Remove strip step in Makefile
 
 Build system will strip binaries so remove strip step in Makefile.
 Avoid warnings/errors like:
@@ -10,26 +10,30 @@ omxplayer was already stripped, this will prevent future debugging!
 
 Upstream-Status: Inappropriate [embedded specific]
 Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
-
-Updated patch to apply to 0dd9502ed2c43c487674939195c69680f3d98b0 revision
+---
+ Makefile.ffmpeg | 5 ++---
+ 1 file changed, 2 insertions(+), 3 deletions(-)
 
 diff --git a/Makefile.ffmpeg b/Makefile.ffmpeg
-index 5f30b51..e023927 100644
+index 9d66a85..00df197 100644
 --- a/Makefile.ffmpeg
 +++ b/Makefile.ffmpeg
-@@ -237,7 +237,8 @@ configure:
- 			--disable-decoder=bintext \
+@@ -243,7 +243,8 @@ configure:
  			--disable-decoder=xbin \
  			--disable-decoder=idf \
+ 			--enable-decoder=opus \
 -			--cross-prefix=$(HOST)-
 +			--cross-prefix=$(HOST)- \
 +			--disable-stripping
  
+ .PHONY : clean
  clean:
- 	@rm -rf ffmpeg
-@@ -248,5 +249,4 @@ checkout:
- 
+@@ -256,5 +257,3 @@ checkout:
+ .PHONY : install
  install:
  	cd ffmpeg; make -j9 DESTDIR="$(WORK)/ffmpeg_compiled" install
 -	$(HOST)-strip ffmpeg_compiled/usr/lib/*.so
- 
+-
+-- 
+1.9.3
+
diff --git a/recipes-multimedia/omxplayer/omxplayer/mktemp-compatible-with-busybox.patch b/recipes-multimedia/omxplayer/omxplayer/mktemp-compatible-with-busybox.patch
deleted file mode 100644
index 4e43c7d..0000000
--- a/recipes-multimedia/omxplayer/omxplayer/mktemp-compatible-with-busybox.patch
+++ /dev/null
@@ -1,23 +0,0 @@
-Busybox has a restriction in temp file name. From documentation:
-Create a temporary file with name based on TEMPLATE and print its name.
-TEMPLATE must end with XXXXXX (e.g. [/dir/]nameXXXXXX).
-
-Use 6 x 'X' to be busybox compatible too.
-
-Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
-
-Index: git/omxplayer
-===================================================================
---- git.orig/omxplayer
-+++ git/omxplayer
-@@ -43,8 +43,8 @@ if [ -z $NOREFRESH ] || [ "$NOREFRESH" =
-     fi
- fi
- 
--OMXPLAYER_DBUS_ADDR=`mktemp -t omxplayer-XXXXX`
--OMXPLAYER_DBUS_PID=`mktemp -t omxplayer-XXXXX`
-+OMXPLAYER_DBUS_ADDR=`mktemp -t omxplayer-XXXXXX`
-+OMXPLAYER_DBUS_PID=`mktemp -t omxplayer-XXXXXX`
- 
- exec 5> $OMXPLAYER_DBUS_ADDR
- exec 6> $OMXPLAYER_DBUS_PID
diff --git a/recipes-multimedia/omxplayer/omxplayer/remove-makefile-include.patch b/recipes-multimedia/omxplayer/omxplayer/remove-makefile-include.patch
deleted file mode 100644
index b4f3cd6..0000000
--- a/recipes-multimedia/omxplayer/omxplayer/remove-makefile-include.patch
+++ /dev/null
@@ -1,69 +0,0 @@
-Remove Makefile.include which includes hardcoded paths and rely on
-variables provided by build system.
-
-Upstream-Status: Inappropriate [embedded specific]
-Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
-
-Index: git/Makefile.ffmpeg
-===================================================================
---- git.orig/Makefile.ffmpeg	2012-08-26 01:04:27.208235775 +0300
-+++ git/Makefile.ffmpeg	2012-08-26 01:05:03.958245731 +0300
-@@ -1,5 +1,3 @@
--include Makefile.include
--
- CFLAGS=-D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -D_LINUX -fPIC -DPIC -D_REENTRANT -D_HAVE_SBRK -D_LARGEFILE64_SOURCE -DHAVE_CMAKE_CONFIG -DHAVE_VMCS_CONFIG -D_REENTRANT -DUSE_VCHIQ_ARM -DVCHI_BULK_ALIGN=1 -DVCHI_BULK_GRANULARITY=1 -DEGL_SERVER_DISPMANX -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D__VIDEOCORE4__ -DGRAPHICS_X_VG=1 -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DOMX -DOMX_SKIP64BIT
- 
- WORK=$(PWD)
-Index: git/Makefile
-===================================================================
---- git.orig/Makefile	2012-08-25 21:46:44.771745783 +0300
-+++ git/Makefile	2012-08-25 21:48:59.220406089 +0300
-@@ -1,5 +1,3 @@
--include Makefile.include
--
- CFLAGS+=-std=c++0x -DSTANDALONE -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -D_LINUX -fPIC -DPIC -D_REENTRANT -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DHAVE_CMAKE_CONFIG -D__VIDEOCORE4__ -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_OPT_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DOMX -DOMX_SKIP64BIT -ftree-vectorize -DUSE_EXTERNAL_OMX -DTARGET_RASPBERRY_PI -DUSE_EXTERNAL_LIBBCM_HOST
- 
- LDFLAGS+=-L./ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -Lffmpeg_compiled/usr/local/lib/
-Index: git/Makefile.include
-===================================================================
---- git.orig/Makefile.include	2012-08-25 21:46:44.771745783 +0300
-+++ /dev/null	1970-01-01 00:00:00.000000000 +0000
-@@ -1,38 +0,0 @@
--USE_BUILDROOT=1
--FLOAT=hard
--
--ifeq ($(USE_BUILDROOT), 1)
--BUILDROOT	:=/opt/xbmc-bcm/buildroot
--SDKSTAGE	:=$(BUILDROOT)/output/staging
--TARGETFS	:=$(BUILDROOT)/output/target
--TOOLCHAIN	:=$(BUILDROOT)/output/host/usr/
--HOST			:=arm-unknown-linux-gnueabi
--SYSROOT		:=$(BUILDROOT)/output/host/usr/arm-unknown-linux-gnueabi/sysroot
--else
--BUILDROOT	:=/opt/bcm-rootfs
--SDKSTAGE	:=/opt/bcm-rootfs
--TARGETFS	:=/opt/bcm-rootfs
--TOOLCHAIN	:=/usr/local/bcm-gcc
--HOST			:=bcm2708
--SYSROOT		:=$(TOOLCHAIN)/arm-bcm2708-linux-gnueabi/sys-root
--endif
--
--JOBS=7
--
--CFLAGS			:= -isystem$(PREFIX)/include
--CXXFLAGS		:= $(CFLAGS)
--CPPFLAGS		:= $(CFLAGS)
--LDFLAGS			:= -L$(BUILDROOT)/lib
--LD					:= $(TOOLCHAIN)/bin/$(HOST)-ld --sysroot=$(SYSROOT)
--CC					:= $(TOOLCHAIN)/bin/$(HOST)-gcc --sysroot=$(SYSROOT)
--CXX         := $(TOOLCHAIN)/bin/$(HOST)-g++ --sysroot=$(SYSROOT)
--OBJDUMP			:= $(TOOLCHAIN)/bin/$(HOST)-objdump
--RANLIB			:= $(TOOLCHAIN)/bin/$(HOST)-ranlib
--STRIP				:= $(TOOLCHAIN)/bin/$(HOST)-strip
--AR 					:= $(TOOLCHAIN)/bin/$(HOST)-ar
--CXXCP 			:= $(CXX) -E
--PATH 				:= $(PREFIX)/bin:$(BUILDROOT)/output/host/usr/bin:$(PATH)
--
--CFLAGS			+= -pipe -mfloat-abi=$(FLOAT) -mcpu=arm1176jzf-s -fomit-frame-pointer -mabi=aapcs-linux -mtune=arm1176jzf-s -mfpu=vfp -Wno-psabi -mno-apcs-stack-check -O3 -mstructure-size-boundary=32 -mno-sched-prolog
--LDFLAGS			+= -L$(SDKSTAGE)/lib -L$(SDKSTAGE)/usr/lib -L$(SDKSTAGE)/opt/vc/lib/
--INCLUDES		+= -isystem$(SDKSTAGE)/usr/include -isystem$(SDKSTAGE)/opt/vc/include -isystem$(SYSROOT)/usr/include -isystem$(SDKSTAGE)/opt/vc/include/interface/vcos/pthreads -isystem$(SDKSTAGE)/usr/include/freetype2
diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index eaadff6..8f346f5 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl"
 PR = "r3"
 
-SRCREV = "f3221825a92f27c5f49a52200ff933e454977ed2"
+SRCREV = "1817503430b8f195bef12bd7a3542bdd251f8389"
 SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
            file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
-- 
1.9.3


