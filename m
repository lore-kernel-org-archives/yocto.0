Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f175.google.com (mail-ea0-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FC3EE0159A
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:58 -0700 (PDT)
Received: by mail-ea0-f175.google.com with SMTP id m14so339757eaj.20
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=01d6kz64Xkh0TtKvW0vMWN76ePSEERehkYOBAKGI0P0=;
	b=UFzmMBLB41zp5rJ70gNvfWPyEs0uuQyNEAlVJlfHgulLLbp/90XaGoSjhtEEL6TuCH
	yiJ6ZjWofqonJsQRAr71vBgct10bZU0zu9LtvAtuODlYSlVEBDEV4OKnazyKSPyVZmRF
	lsNLHxhXDHW+kqmI6Z7P8EUBcqq9+gboMsu10yWEYxluN9Suug+icqkywrbnbFI1+P0E
	3bvWR23/9BfnsadNTiuivNTpZO1zBPYWoABfJsswYWppqKB4yu9bzWlQBMfZxbma2JxY
	mUEM4BPdqYph/6oKJJ7XC9Np3KDHLGo4FM7FOGvrKiFDvOeqx6bAr53QaQOpmBjWP6s9
	AR9g==
X-Gm-Message-State: ALoCoQlW1/te2sOvXilvi8kfhZZ4SwQlnDkfcmCq7uNU3sbCnW4wT0UDQxLFfk5lX8BYGyaBSyLb
X-Received: by 10.15.52.201 with SMTP id p49mr157174eew.125.1377018177275;
	Tue, 20 Aug 2013 10:02:57 -0700 (PDT)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id l47sm3584186eex.15.1969.12.31.16.00.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 20 Aug 2013 10:02:56 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 20 Aug 2013 20:02:36 +0300
Message-Id: <1377018158-2983-9-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 09/11] omxplayer: Update to 2013-08-20 master's snapshot
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
X-List-Received-Date: Tue, 20 Aug 2013 17:02:59 -0000

* Use DIST for install path as used in package's makefile.
* Set FLOAT based on callconvention-hard TUNE_FEATURE.
* Add an include path to avoid a header error.

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 ...Makefile.include-which-includes-hardcoded.patch |   84 ++++++++++++++++++++
 ...nd-headers-from-ffmpeg-are-installed-in-u.patch |   49 ++++++++++++
 .../0003-Remove-strip-step-in-Makefile.patch       |   39 +++++++++
 .../omxplayer/don-t-strip-while-installing.patch   |   28 -------
 .../libraries-are-installed-in-usr-lib.patch       |   37 ---------
 ...remove-hardcoded-directory-omxplayer-dist.patch |   32 --------
 recipes-multimedia/omxplayer/omxplayer_git.bb      |   24 +++---
 7 files changed, 183 insertions(+), 110 deletions(-)
 create mode 100644 recipes-multimedia/omxplayer/omxplayer/0001-Remove-Makefile.include-which-includes-hardcoded.patch
 create mode 100644 recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
 create mode 100644 recipes-multimedia/omxplayer/omxplayer/0003-Remove-strip-step-in-Makefile.patch
 delete mode 100644 recipes-multimedia/omxplayer/omxplayer/don-t-strip-while-installing.patch
 delete mode 100644 recipes-multimedia/omxplayer/omxplayer/libraries-are-installed-in-usr-lib.patch
 delete mode 100644 recipes-multimedia/omxplayer/omxplayer/remove-hardcoded-directory-omxplayer-dist.patch

diff --git a/recipes-multimedia/omxplayer/omxplayer/0001-Remove-Makefile.include-which-includes-hardcoded.patch b/recipes-multimedia/omxplayer/omxplayer/0001-Remove-Makefile.include-which-includes-hardcoded.patch
new file mode 100644
index 0000000..b68e351
--- /dev/null
+++ b/recipes-multimedia/omxplayer/omxplayer/0001-Remove-Makefile.include-which-includes-hardcoded.patch
@@ -0,0 +1,84 @@
+From a2a28fb7c4e8354cc0f90454e9bd151c16a6bf8b Mon Sep 17 00:00:00 2001
+From: Andrei Gherzan <andrei@gherzan.ro>
+Date: Tue, 20 Aug 2013 16:10:51 +0300
+Subject: [PATCH] Remove Makefile.include which includes hardcoded
+
+Remove Makefile.include which includes hardcoded paths and rely on
+variables provided by build system.
+
+Upstream-Status: Inappropriate [embedded specific]
+Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
+---
+ Makefile         |    2 --
+ Makefile.ffmpeg  |    2 --
+ Makefile.include |   38 --------------------------------------
+ 3 files changed, 42 deletions(-)
+ delete mode 100644 Makefile.include
+
+diff --git a/Makefile b/Makefile
+index 519048a..1faa779 100644
+--- a/Makefile
++++ b/Makefile
+@@ -1,5 +1,3 @@
+-include Makefile.include
+-
+ CFLAGS+=-std=c++0x -DSTANDALONE -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -D_LINUX -fPIC -DPIC -D_REENTRANT -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DHAVE_CMAKE_CONFIG -D__VIDEOCORE4__ -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_OPT_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DHAVE_LIBSWRESAMPLE_SWRESAMPLE_H -DOMX -DOMX_SKIP64BIT -ftree-vectorize -DUSE_EXTERNAL_OMX -DTARGET_RASPBERRY_PI -DUSE_EXTERNAL_LIBBCM_HOST
+ 
+ LDFLAGS+=-L./ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -Lffmpeg_compiled/usr/local/lib/
+diff --git a/Makefile.ffmpeg b/Makefile.ffmpeg
+index 6ec94af..4297b1f 100644
+--- a/Makefile.ffmpeg
++++ b/Makefile.ffmpeg
+@@ -1,5 +1,3 @@
+-include Makefile.include
+-
+ CFLAGS=-D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -D_LINUX -fPIC -DPIC -D_REENTRANT -D_HAVE_SBRK -D_LARGEFILE64_SOURCE -DHAVE_CMAKE_CONFIG -DHAVE_VMCS_CONFIG -D_REENTRANT -DUSE_VCHIQ_ARM -DVCHI_BULK_ALIGN=1 -DVCHI_BULK_GRANULARITY=1 -DEGL_SERVER_DISPMANX -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D__VIDEOCORE4__ -DGRAPHICS_X_VG=1 -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DOMX -DOMX_SKIP64BIT
+ 
+ WORK=$(PWD)
+diff --git a/Makefile.include b/Makefile.include
+deleted file mode 100644
+index 501fd4f..0000000
+--- a/Makefile.include
++++ /dev/null
+@@ -1,38 +0,0 @@
+-USE_BUILDROOT=1
+-FLOAT=hard
+-
+-ifeq ($(USE_BUILDROOT), 1)
+-BUILDROOT	:=/opt/xbmc-bcm/buildroot
+-SDKSTAGE	:=$(BUILDROOT)/output/staging
+-TARGETFS	:=$(BUILDROOT)/output/target
+-TOOLCHAIN	:=$(BUILDROOT)/output/host/usr/
+-HOST			:=arm-unknown-linux-gnueabi
+-SYSROOT		:=$(BUILDROOT)/output/host/usr/arm-unknown-linux-gnueabi/sysroot
+-else
+-BUILDROOT	:=/opt/bcm-rootfs
+-SDKSTAGE	:=/opt/bcm-rootfs
+-TARGETFS	:=/opt/bcm-rootfs
+-TOOLCHAIN	:=/usr/local/bcm-gcc
+-HOST			:=bcm2708
+-SYSROOT		:=$(TOOLCHAIN)/arm-bcm2708-linux-gnueabi/sys-root
+-endif
+-
+-JOBS=7
+-
+-CFLAGS			:= -isystem$(PREFIX)/include
+-CXXFLAGS		:= $(CFLAGS)
+-CPPFLAGS		:= $(CFLAGS)
+-LDFLAGS			:= -L$(BUILDROOT)/lib
+-LD					:= $(TOOLCHAIN)/bin/$(HOST)-ld --sysroot=$(SYSROOT)
+-CC					:= $(TOOLCHAIN)/bin/$(HOST)-gcc --sysroot=$(SYSROOT)
+-CXX         := $(TOOLCHAIN)/bin/$(HOST)-g++ --sysroot=$(SYSROOT)
+-OBJDUMP			:= $(TOOLCHAIN)/bin/$(HOST)-objdump
+-RANLIB			:= $(TOOLCHAIN)/bin/$(HOST)-ranlib
+-STRIP				:= $(TOOLCHAIN)/bin/$(HOST)-strip
+-AR 					:= $(TOOLCHAIN)/bin/$(HOST)-ar
+-CXXCP 			:= $(CXX) -E
+-PATH 				:= $(PREFIX)/bin:$(BUILDROOT)/output/host/usr/bin:$(PATH)
+-
+-CFLAGS			+= -pipe -mfloat-abi=$(FLOAT) -mcpu=arm1176jzf-s -fomit-frame-pointer -mabi=aapcs-linux -mtune=arm1176jzf-s -mfpu=vfp -Wno-psabi -mno-apcs-stack-check -O3 -mstructure-size-boundary=32 -mno-sched-prolog
+-LDFLAGS			+= -L$(SDKSTAGE)/lib -L$(SDKSTAGE)/usr/lib -L$(SDKSTAGE)/opt/vc/lib/
+-INCLUDES		+= -isystem$(SDKSTAGE)/usr/include -isystem$(SDKSTAGE)/opt/vc/include -isystem$(SYSROOT)/usr/include -isystem$(SDKSTAGE)/opt/vc/include/interface/vcos/pthreads -isystem$(SDKSTAGE)/usr/include/freetype2
+-- 
+1.7.9.5
+
diff --git a/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch b/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
new file mode 100644
index 0000000..00a1f29
--- /dev/null
+++ b/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
@@ -0,0 +1,49 @@
+From 13b525667a6ab7af2354ffd6208e490349669798 Mon Sep 17 00:00:00 2001
+From: Andrei Gherzan <andrei@gherzan.ro>
+Date: Tue, 20 Aug 2013 16:15:15 +0300
+Subject: [PATCH 2/3] Libraries and headers from ffmpeg are installed in /usr.
+
+Don't search for libraries and headers in /usr/local.
+
+Upstream-Status: Inappropriate [embedded specific]
+Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
+---
+ Makefile        |    6 +++---
+ Makefile.ffmpeg |    2 +-
+ 2 files changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/Makefile b/Makefile
+index 1faa779..7b639f1 100644
+--- a/Makefile
++++ b/Makefile
+@@ -1,7 +1,7 @@
+ CFLAGS+=-std=c++0x -DSTANDALONE -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -D_LINUX -fPIC -DPIC -D_REENTRANT -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DHAVE_CMAKE_CONFIG -D__VIDEOCORE4__ -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_OPT_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DHAVE_LIBSWRESAMPLE_SWRESAMPLE_H -DOMX -DOMX_SKIP64BIT -ftree-vectorize -DUSE_EXTERNAL_OMX -DTARGET_RASPBERRY_PI -DUSE_EXTERNAL_LIBBCM_HOST
+ 
+-LDFLAGS+=-L./ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -Lffmpeg_compiled/usr/local/lib/
+-INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/local/include/
++LDFLAGS+=-L./ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -Lffmpeg_compiled/usr/lib/
++INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/include/
+ 
+ DIST ?= omxplayer-dist
+ 
+@@ -66,5 +66,5 @@ dist: omxplayer.bin
+ 	cp omxplayer omxplayer.bin $(DIST)/usr/bin
+ 	cp COPYING $(DIST)/usr/share/doc/
+ 	cp README.md $(DIST)/usr/share/doc/README
+-	cp -a ffmpeg_compiled/usr/local/lib/*.so* $(DIST)/usr/lib/omxplayer/
++	cp -a ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
+ 	tar -czf omxplayer-dist.tar.gz $(DIST)
+diff --git a/Makefile.ffmpeg b/Makefile.ffmpeg
+index 6ec94af..13e6c09 100644
+--- a/Makefile.ffmpeg
++++ b/Makefile.ffmpeg
+@@ -64,5 +64,5 @@ checkout:
+ 
+ install:
+ 	cd ffmpeg; make -j9 DESTDIR="$(WORK)/ffmpeg_compiled" install
+-	$(HOST)-strip ffmpeg_compiled/usr/local/lib/*.so
++	$(HOST)-strip ffmpeg_compiled/usr/lib/*.so
+ 
+-- 
+1.7.9.5
+
diff --git a/recipes-multimedia/omxplayer/omxplayer/0003-Remove-strip-step-in-Makefile.patch b/recipes-multimedia/omxplayer/omxplayer/0003-Remove-strip-step-in-Makefile.patch
new file mode 100644
index 0000000..df15763
--- /dev/null
+++ b/recipes-multimedia/omxplayer/omxplayer/0003-Remove-strip-step-in-Makefile.patch
@@ -0,0 +1,39 @@
+From aa424d5bcbf40c69acb13de3cb6c67688f0c9046 Mon Sep 17 00:00:00 2001
+From: Andrei Gherzan <andrei@gherzan.ro>
+Date: Tue, 20 Aug 2013 16:17:06 +0300
+Subject: [PATCH 3/3] Remove strip step in Makefile
+
+Build system will strip binaries so remove strip step in Makefile.
+Avoid warnings/errors like:
+WARNING: File '/usr/lib/omxplayer/libavutil.so.51.56.100' from
+omxplayer was already stripped, this will prevent future debugging!
+
+Upstream-Status: Inappropriate [embedded specific]
+Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
+---
+ Makefile.ffmpeg |    4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/Makefile.ffmpeg b/Makefile.ffmpeg
+index 13e6c09..51c9514 100644
+--- a/Makefile.ffmpeg
++++ b/Makefile.ffmpeg
+@@ -53,7 +53,8 @@ configure:
+ 			--enable-hardcoded-tables \
+ 			--disable-runtime-cpudetect \
+ 			--disable-debug \
+-			--cross-prefix=$(HOST)-
++			--cross-prefix=$(HOST)- \
++			--disable-stripping
+ 
+ clean:
+ 	@rm -rf ffmpeg
+@@ -64,5 +65,4 @@ checkout:
+ 
+ install:
+ 	cd ffmpeg; make -j9 DESTDIR="$(WORK)/ffmpeg_compiled" install
+-	$(HOST)-strip ffmpeg_compiled/usr/lib/*.so
+ 
+-- 
+1.7.9.5
+
diff --git a/recipes-multimedia/omxplayer/omxplayer/don-t-strip-while-installing.patch b/recipes-multimedia/omxplayer/omxplayer/don-t-strip-while-installing.patch
deleted file mode 100644
index 4f12cc0..0000000
--- a/recipes-multimedia/omxplayer/omxplayer/don-t-strip-while-installing.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-Build system will strip binaries so remove strip step in Makefile.
-Avoid warnings/errors like:
-WARNING: File '/usr/lib/omxplayer/libavutil.so.51.56.100' from
-omxplayer was already stripped, this will prevent future debugging!
-
-Upstream-Status: Inappropriate [embedded specific]
-Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
-
-Index: git/Makefile.ffmpeg
-===================================================================
---- git.orig/Makefile.ffmpeg	2012-08-26 15:38:45.099379852 +0300
-+++ git/Makefile.ffmpeg	2012-08-26 15:46:51.913055176 +0300
-@@ -52,7 +52,8 @@
- 			--enable-hardcoded-tables \
- 			--disable-runtime-cpudetect \
- 			--disable-debug \
--			--cross-prefix=$(HOST)-
-+			--cross-prefix=$(HOST)- \
-+			--disable-stripping
- 
- clean:
- 	@rm -rf ffmpeg
-@@ -63,5 +64,4 @@
- 
- install:
- 	cd ffmpeg; make -j9 DESTDIR="$(WORK)/ffmpeg_compiled" install
--	$(HOST)-strip ffmpeg_compiled/usr/lib/*.so
- 
diff --git a/recipes-multimedia/omxplayer/omxplayer/libraries-are-installed-in-usr-lib.patch b/recipes-multimedia/omxplayer/omxplayer/libraries-are-installed-in-usr-lib.patch
deleted file mode 100644
index 1126bfb..0000000
--- a/recipes-multimedia/omxplayer/omxplayer/libraries-are-installed-in-usr-lib.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-Libraries and headers from ffmpeg are installed in usr/lib.
-
-Upstream-Status: Pending
-Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
-
-Index: git/Makefile.ffmpeg
-===================================================================
---- git.orig/Makefile.ffmpeg	2012-08-26 02:46:40.380518313 +0300
-+++ git/Makefile.ffmpeg	2012-08-26 02:46:40.512511177 +0300
-@@ -63,5 +63,5 @@
- 
- install:
- 	cd ffmpeg; make -j9 DESTDIR="$(WORK)/ffmpeg_compiled" install
--	$(HOST)-strip ffmpeg_compiled/usr/local/lib/*.so
-+	$(HOST)-strip ffmpeg_compiled/usr/lib/*.so
- 
-Index: git/Makefile
-===================================================================
---- git.orig/Makefile	2012-08-26 02:52:11.578611542 +0300
-+++ git/Makefile	2012-08-26 02:52:53.952320465 +0300
-@@ -1,7 +1,7 @@
- CFLAGS+=-std=c++0x -DSTANDALONE -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -D_LINUX -fPIC -DPIC -D_REENTRANT -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DHAVE_CMAKE_CONFIG -D__VIDEOCORE4__ -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_OPT_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DOMX -DOMX_SKIP64BIT -ftree-vectorize -DUSE_EXTERNAL_OMX -DTARGET_RASPBERRY_PI -DUSE_EXTERNAL_LIBBCM_HOST
- 
--LDFLAGS+=-L./ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -Lffmpeg_compiled/usr/local/lib/
--INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/local/include/
-+LDFLAGS+=-L./ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -Lffmpeg_compiled/usr/lib/
-+INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/include/
- 
- SRC=linux/XMemUtils.cpp \
- 		utils/log.cpp \
-@@ -63,5 +63,5 @@
- 	cp omxplayer omxplayer.bin omxplayer-dist/usr/usr/bin
- 	cp COPYING omxplayer-dist/usr/share/doc/
- 	cp README.md omxplayer-dist/usr/share/doc/README
--	cp -a ffmpeg_compiled/usr/local/lib/*.so* omxplayer-dist/usr/lib/omxplayer/
-+	cp -a ffmpeg_compiled/usr/lib/*.so* omxplayer-dist/usr/lib/omxplayer/
- 	tar -czf omxplayer-dist.tar.gz omxplayer-dist
diff --git a/recipes-multimedia/omxplayer/omxplayer/remove-hardcoded-directory-omxplayer-dist.patch b/recipes-multimedia/omxplayer/omxplayer/remove-hardcoded-directory-omxplayer-dist.patch
deleted file mode 100644
index 99fbbf8..0000000
--- a/recipes-multimedia/omxplayer/omxplayer/remove-hardcoded-directory-omxplayer-dist.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-Modify install rule to use /usr/bin path and not /usr/usr/bin for
-installing omxplayer binary and script.
-As well, add a variable to let the user specify where to install
-the files.
-
-Upstream-Status: Pending
-Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
-
-Index: git/Makefile
-===================================================================
---- git.orig/Makefile	2012-08-26 05:03:31.710678243 +0300
-+++ git/Makefile	2012-08-26 05:03:11.000000000 +0300
-@@ -59,11 +57,11 @@
- 	make -f Makefile.ffmpeg install
- 
- dist: omxplayer.bin
--	mkdir -p omxplayer-dist/usr/lib/omxplayer
--	mkdir -p omxplayer-dist/usr/usr/bin
--	mkdir -p omxplayer-dist/usr/share/doc
--	cp omxplayer omxplayer.bin omxplayer-dist/usr/usr/bin
--	cp COPYING omxplayer-dist/usr/share/doc/
--	cp README.md omxplayer-dist/usr/share/doc/README
--	cp -a ffmpeg_compiled/usr/lib/*.so* omxplayer-dist/usr/lib/omxplayer/
--	tar -czf omxplayer-dist.tar.gz omxplayer-dist
-+	mkdir -p $(DEST)/usr/lib/omxplayer
-+	mkdir -p $(DEST)/usr/bin
-+	mkdir -p $(DEST)/usr/share/doc
-+	cp omxplayer omxplayer.bin $(DEST)/usr/bin
-+	cp COPYING $(DEST)/usr/share/doc/
-+	cp README.md $(DEST)/usr/share/doc/README
-+	cp -a ffmpeg_compiled/usr/lib/*.so* $(DEST)/usr/lib/omxplayer/
-+	tar -czf omxplayer-dist.tar.gz $(DEST)
diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index b637ba6..a456026 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -7,29 +7,26 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 DEPENDS = "libpcre libav virtual/egl boost freetype"
 
-PR = "r0"
+PR = "r1"
 
-SRCREV = "231c08b42005e3de565013bc1cee18bd5a349c1f"
+SRCREV = "dae98a8bba9dc7410b0621134f6ebdb406adb1bd"
 SRC_URI = "git://github.com/huceke/omxplayer.git;protocol=git;branch=master \
-           file://remove-makefile-include.patch \
-           file://libraries-are-installed-in-usr-lib.patch \
-           file://remove-hardcoded-directory-omxplayer-dist.patch \
-           file://don-t-strip-while-installing.patch \
-          "
+           file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
+           file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
+           file://0003-Remove-strip-step-in-Makefile.patch"
 S = "${WORKDIR}/git"
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
 inherit autotools
 
-# Variable added in Makefile to INCLUDE
-export ADD_INCDIR = "-I${STAGING_INCDIR}/interface/vcos/pthreads -I${STAGING_INCDIR}/freetype2"
+# Needed in ffmpeg configure
+export TEMPDIR = "${S}/tmp"
 
-# Needed in configure from Makefile.ffmpeg
+# Needed in Makefile.ffmpeg
 export HOST = "${HOST_SYS}"
 export WORK = "${S}"
-export TEMPDIR = "${S}/tmp"
-export FLOAT = "softfp"
+export FLOAT = "${@bb.utils.contains("TUNE_FEATURES", "callconvention-hard", "hard", "softfp", d)}"
 
 export LDFLAGS = "-L${S}/ffmpeg_compiled/usr/lib \
                   -L${STAGING_DIR_HOST}/lib \
@@ -39,10 +36,11 @@ export LDFLAGS = "-L${S}/ffmpeg_compiled/usr/lib \
 export INCLUDES = "-isystem${STAGING_DIR_HOST}/usr/include \
                    -isystem${STAGING_DIR_HOST}/usr/include/interface/vcos/pthreads \
                    -isystem${STAGING_DIR_HOST}/usr/include/freetype2 \
+                   -isystem${STAGING_DIR_HOST}/usr/include/interface/vmcs_host/linux \
                   "
 
 # Install in ${D}
-export DEST = "${D}"
+export DIST = "${D}"
 
 do_compile() {
 	# Needed for compiler test in ffmpeg's configure
-- 
1.7.9.5


