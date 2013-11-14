Return-Path: <alexnick87@gmail.com>
Received: from mail-qe0-f54.google.com (mail-qe0-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 470DEE016A9
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:36:51 -0800 (PST)
Received: by mail-qe0-f54.google.com with SMTP id 1so1374291qec.27
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:36:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=TxyAqxBtjnyrgmJlgiXIkJRuj0dU+SWXbgo1PceYCm0=;
	b=XsChCMPBi3H3nux15RjRxxB7QvcWnl1u1i+LtAF2lcgrdHK1TaXE0LL1KFhVbw3AKd
	I/sxmiCEtoL0leK97Ag7oKV1SAQzen/YxmC1ZVk+8wzsnNUz5oqJhVK8nAXzYDLsPckc
	3ihHBiBr/79nOXZdRkQuL/yCNrKR3UeGjurS8ABAIVhpTAJ1ZAMGO56lZ2gNWOBhAZqi
	UgU0qLzXzh1XmN/NMZ8DvoY9WUHnwEHTmlDlU3eJTXH5VZ+q1uDWag16BLq6SrMJiCga
	Z9+yxjdprqr6I2LNwUFw5s5XUufmo2uySaRFJLvY3fpO0DLf7k6u7a+j23g6tRA1PSo4
	nqeA==
X-Received: by 10.224.111.197 with SMTP id t5mr3268866qap.49.1384443410590;
	Thu, 14 Nov 2013 07:36:50 -0800 (PST)
Received: from otp-aniculit-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id x10sm93933920qas.5.2013.11.14.07.36.49
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 14 Nov 2013 07:36:50 -0800 (PST)
From: Alexandru Niculita <alexnick87@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Nov 2013 17:36:27 +0200
Message-Id: <1384443387-16320-1-git-send-email-alexnick87@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-raspberrypi][PATCH 1/1] omxplayer: Updated package to the latest version from git
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
X-List-Received-Date: Thu, 14 Nov 2013 15:36:52 -0000

Changed the active development repository to git://github.com/popcornmix/omxplayer.git
Added dbus package as a dependency.
Installed fonts directory in the default location needed by omxplayer

Change-Id: Ie2e1ae73656d3c9a5cbefbf87d0792b10fcd9430
Signed-off-by: Alexandru Niculita <alexnick87@gmail.com>
---
 ...Makefile.include-which-includes-hardcoded.patch |   49 +++++++++-----------
 ...nd-headers-from-ffmpeg-are-installed-in-u.patch |   27 +++++------
 .../0003-Remove-strip-step-in-Makefile.patch       |   20 ++++----
 recipes-multimedia/omxplayer/omxplayer_git.bb      |   16 +++++--
 4 files changed, 52 insertions(+), 60 deletions(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer/0001-Remove-Makefile.include-which-includes-hardcoded.patch b/recipes-multimedia/omxplayer/omxplayer/0001-Remove-Makefile.include-which-includes-hardcoded.patch
index b68e351..151c33c 100644
--- a/recipes-multimedia/omxplayer/omxplayer/0001-Remove-Makefile.include-which-includes-hardcoded.patch
+++ b/recipes-multimedia/omxplayer/omxplayer/0001-Remove-Makefile.include-which-includes-hardcoded.patch
@@ -8,40 +8,34 @@ variables provided by build system.
 
 Upstream-Status: Inappropriate [embedded specific]
 Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
----
- Makefile         |    2 --
- Makefile.ffmpeg  |    2 --
- Makefile.include |   38 --------------------------------------
- 3 files changed, 42 deletions(-)
- delete mode 100644 Makefile.include
+
+Updated patch to apply to c0dd9502ed2c43c487674939195c69680f3d98b0 revision
 
 diff --git a/Makefile b/Makefile
-index 519048a..1faa779 100644
+index f348465..65f7637 100644
 --- a/Makefile
 +++ b/Makefile
-@@ -1,5 +1,3 @@
+@@ -1,4 +1,3 @@
 -include Makefile.include
--
- CFLAGS+=-std=c++0x -DSTANDALONE -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -D_LINUX -fPIC -DPIC -D_REENTRANT -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DHAVE_CMAKE_CONFIG -D__VIDEOCORE4__ -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_OPT_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DHAVE_LIBSWRESAMPLE_SWRESAMPLE_H -DOMX -DOMX_SKIP64BIT -ftree-vectorize -DUSE_EXTERNAL_OMX -DTARGET_RASPBERRY_PI -DUSE_EXTERNAL_LIBBCM_HOST
  
- LDFLAGS+=-L./ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -Lffmpeg_compiled/usr/local/lib/
+ CFLAGS+=-std=c++0x -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -DTARGET_LINUX -fPIC -DPIC -D_REENTRANT -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DHAVE_CMAKE_CONFIG -D__VIDEOCORE4__ -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_OPT_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DHAVE_LIBSWRESAMPLE_SWRESAMPLE_H -DOMX -DOMX_SKIP64BIT -ftree-vectorize -DUSE_EXTERNAL_OMX -DTARGET_RASPBERRY_PI -DUSE_EXTERNAL_LIBBCM_HOST
+ 
 diff --git a/Makefile.ffmpeg b/Makefile.ffmpeg
-index 6ec94af..4297b1f 100644
+index 083e214..3b31a82 100644
 --- a/Makefile.ffmpeg
 +++ b/Makefile.ffmpeg
-@@ -1,5 +1,3 @@
+@@ -1,4 +1,3 @@
 -include Makefile.include
--
- CFLAGS=-D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -D_LINUX -fPIC -DPIC -D_REENTRANT -D_HAVE_SBRK -D_LARGEFILE64_SOURCE -DHAVE_CMAKE_CONFIG -DHAVE_VMCS_CONFIG -D_REENTRANT -DUSE_VCHIQ_ARM -DVCHI_BULK_ALIGN=1 -DVCHI_BULK_GRANULARITY=1 -DEGL_SERVER_DISPMANX -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D__VIDEOCORE4__ -DGRAPHICS_X_VG=1 -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DOMX -DOMX_SKIP64BIT
  
- WORK=$(PWD)
+ CFLAGS=-D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -DTARGET_LINUX -fPIC -DPIC -D_REENTRANT -D_HAVE_SBRK -D_LARGEFILE64_SOURCE -DHAVE_CMAKE_CONFIG -DHAVE_VMCS_CONFIG -D_REENTRANT -DUSE_VCHIQ_ARM -DVCHI_BULK_ALIGN=1 -DVCHI_BULK_GRANULARITY=1 -DEGL_SERVER_DISPMANX -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D__VIDEOCORE4__ -DGRAPHICS_X_VG=1 -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DOMX -DOMX_SKIP64BIT
+ 
 diff --git a/Makefile.include b/Makefile.include
 deleted file mode 100644
-index 501fd4f..0000000
+index 58e9560..0000000
 --- a/Makefile.include
 +++ /dev/null
-@@ -1,38 +0,0 @@
--USE_BUILDROOT=1
+@@ -1,40 +0,0 @@
+-USE_BUILDROOT=0
 -FLOAT=hard
 -
 -ifeq ($(USE_BUILDROOT), 1)
@@ -55,9 +49,10 @@ index 501fd4f..0000000
 -BUILDROOT	:=/opt/bcm-rootfs
 -SDKSTAGE	:=/opt/bcm-rootfs
 -TARGETFS	:=/opt/bcm-rootfs
--TOOLCHAIN	:=/usr/local/bcm-gcc
--HOST			:=bcm2708
--SYSROOT		:=$(TOOLCHAIN)/arm-bcm2708-linux-gnueabi/sys-root
+-TOOLCHAIN	:=/home/dc4/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/
+-HOST		:=arm-linux-gnueabihf
+-#SYSROOT		:=$(TOOLCHAIN)/arm-bcm2708hardfp-linux-gnueabi/sysroot
+-SYSROOT		:=/opt/bcm-rootfs
 -endif
 -
 -JOBS=7
@@ -76,9 +71,7 @@ index 501fd4f..0000000
 -CXXCP 			:= $(CXX) -E
 -PATH 				:= $(PREFIX)/bin:$(BUILDROOT)/output/host/usr/bin:$(PATH)
 -
--CFLAGS			+= -pipe -mfloat-abi=$(FLOAT) -mcpu=arm1176jzf-s -fomit-frame-pointer -mabi=aapcs-linux -mtune=arm1176jzf-s -mfpu=vfp -Wno-psabi -mno-apcs-stack-check -O3 -mstructure-size-boundary=32 -mno-sched-prolog
--LDFLAGS			+= -L$(SDKSTAGE)/lib -L$(SDKSTAGE)/usr/lib -L$(SDKSTAGE)/opt/vc/lib/
--INCLUDES		+= -isystem$(SDKSTAGE)/usr/include -isystem$(SDKSTAGE)/opt/vc/include -isystem$(SYSROOT)/usr/include -isystem$(SDKSTAGE)/opt/vc/include/interface/vcos/pthreads -isystem$(SDKSTAGE)/usr/include/freetype2
--- 
-1.7.9.5
-
+-CFLAGS			+= -pipe -mfloat-abi=$(FLOAT) -mcpu=arm1176jzf-s -fomit-frame-pointer -mabi=aapcs-linux -mtune=arm1176jzf-s -mfpu=vfp -Wno-psabi -mno-apcs-stack-check -g -mstructure-size-boundary=32 -mno-sched-prolog
+-LDFLAGS			+= -L$(SDKSTAGE)/lib -L$(SDKSTAGE)/usr/lib -L$(SDKSTAGE)/opt/vc/lib/ -Lpcre/build
+-#INCLUDES		+= -isystem$(SDKSTAGE)/usr/include -isystem$(SDKSTAGE)/opt/vc/include -isystem$(SYSROOT)/usr/include -isystem$(SDKSTAGE)/opt/vc/include/interface/vcos/pthreads -isystem$(SDKSTAGE)/usr/include/freetype2
+-INCLUDES		+= -isystem$(SDKSTAGE)/opt/vc/include -isystem$(SYSROOT)/usr/include -isystem$(SDKSTAGE)/opt/vc/include/interface/vcos/pthreads -Ipcre/build -Iboost-trunk -Ifreetype2/include
diff --git a/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch b/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
index 00a1f29..4976995 100644
--- a/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
+++ b/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
@@ -7,26 +7,26 @@ Don't search for libraries and headers in /usr/local.
 
 Upstream-Status: Inappropriate [embedded specific]
 Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
----
- Makefile        |    6 +++---
- Makefile.ffmpeg |    2 +-
- 2 files changed, 4 insertions(+), 4 deletions(-)
+
+Updated patch to apply to c0dd9502ed2c43c487674939195c69680f3d98b0 revision
 
 diff --git a/Makefile b/Makefile
-index 1faa779..7b639f1 100644
+index 65f7637..5dc1832 100644
 --- a/Makefile
 +++ b/Makefile
-@@ -1,7 +1,7 @@
- CFLAGS+=-std=c++0x -DSTANDALONE -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -D_LINUX -fPIC -DPIC -D_REENTRANT -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DHAVE_CMAKE_CONFIG -D__VIDEOCORE4__ -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_OPT_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DHAVE_LIBSWRESAMPLE_SWRESAMPLE_H -DOMX -DOMX_SKIP64BIT -ftree-vectorize -DUSE_EXTERNAL_OMX -DTARGET_RASPBERRY_PI -DUSE_EXTERNAL_LIBBCM_HOST
+@@ -1,9 +1,9 @@
+ 
+ CFLAGS+=-std=c++0x -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -DTARGET_LINUX -fPIC -DPIC -D_REENTRANT -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DHAVE_CMAKE_CONFIG -D__VIDEOCORE4__ -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_OPT_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DHAVE_LIBSWRESAMPLE_SWRESAMPLE_H -DOMX -DOMX_SKIP64BIT -ftree-vectorize -DUSE_EXTERNAL_OMX -DTARGET_RASPBERRY_PI -DUSE_EXTERNAL_LIBBCM_HOST
+ 
+-LDFLAGS+=-L./ -ldbus-1 -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -Lffmpeg_compiled/usr/local/lib/
++LDFLAGS+=-L./ -ldbus-1 -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -Lffmpeg_compiled/usr/lib/
  
--LDFLAGS+=-L./ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -Lffmpeg_compiled/usr/local/lib/
 -INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/local/include/
-+LDFLAGS+=-L./ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -Lffmpeg_compiled/usr/lib/
 +INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/include/
  
  DIST ?= omxplayer-dist
  
-@@ -66,5 +66,5 @@ dist: omxplayer.bin
+@@ -70,5 +70,5 @@ dist: omxplayer.bin
  	cp omxplayer omxplayer.bin $(DIST)/usr/bin
  	cp COPYING $(DIST)/usr/share/doc/
  	cp README.md $(DIST)/usr/share/doc/README
@@ -34,16 +34,13 @@ index 1faa779..7b639f1 100644
 +	cp -a ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
  	tar -czf omxplayer-dist.tar.gz $(DIST)
 diff --git a/Makefile.ffmpeg b/Makefile.ffmpeg
-index 6ec94af..13e6c09 100644
+index 3b31a82..5f30b51 100644
 --- a/Makefile.ffmpeg
 +++ b/Makefile.ffmpeg
-@@ -64,5 +64,5 @@ checkout:
+@@ -248,5 +248,5 @@ checkout:
  
  install:
  	cd ffmpeg; make -j9 DESTDIR="$(WORK)/ffmpeg_compiled" install
 -	$(HOST)-strip ffmpeg_compiled/usr/local/lib/*.so
 +	$(HOST)-strip ffmpeg_compiled/usr/lib/*.so
  
--- 
-1.7.9.5
-
diff --git a/recipes-multimedia/omxplayer/omxplayer/0003-Remove-strip-step-in-Makefile.patch b/recipes-multimedia/omxplayer/omxplayer/0003-Remove-strip-step-in-Makefile.patch
index df15763..d1d3d8f 100644
--- a/recipes-multimedia/omxplayer/omxplayer/0003-Remove-strip-step-in-Makefile.patch
+++ b/recipes-multimedia/omxplayer/omxplayer/0003-Remove-strip-step-in-Makefile.patch
@@ -10,30 +10,26 @@ omxplayer was already stripped, this will prevent future debugging!
 
 Upstream-Status: Inappropriate [embedded specific]
 Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
----
- Makefile.ffmpeg |    4 ++--
- 1 file changed, 2 insertions(+), 2 deletions(-)
+
+Updated patch to apply to 0dd9502ed2c43c487674939195c69680f3d98b0 revision
 
 diff --git a/Makefile.ffmpeg b/Makefile.ffmpeg
-index 13e6c09..51c9514 100644
+index 5f30b51..e023927 100644
 --- a/Makefile.ffmpeg
 +++ b/Makefile.ffmpeg
-@@ -53,7 +53,8 @@ configure:
- 			--enable-hardcoded-tables \
- 			--disable-runtime-cpudetect \
- 			--disable-debug \
+@@ -237,7 +237,8 @@ configure:
+ 			--disable-decoder=bintext \
+ 			--disable-decoder=xbin \
+ 			--disable-decoder=idf \
 -			--cross-prefix=$(HOST)-
 +			--cross-prefix=$(HOST)- \
 +			--disable-stripping
  
  clean:
  	@rm -rf ffmpeg
-@@ -64,5 +65,4 @@ checkout:
+@@ -248,5 +249,4 @@ checkout:
  
  install:
  	cd ffmpeg; make -j9 DESTDIR="$(WORK)/ffmpeg_compiled" install
 -	$(HOST)-strip ffmpeg_compiled/usr/lib/*.so
  
--- 
-1.7.9.5
-
diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index a456026..c77f858 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -1,16 +1,17 @@
 DESCRIPTION = "OMXPlayer is a commandline OMX player for the Raspberry Pi"
-HOMEPAGE = "https://github.com/huceke/omxplayer"
+HOMEPAGE = "https://github.com/popcornmix/omxplayer"
 SECTION = "console/utils"
 LICENSE = "GPLv2"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-DEPENDS = "libpcre libav virtual/egl boost freetype"
+DEPENDS = "libpcre libav virtual/egl boost freetype dbus"
 
 PR = "r1"
 
-SRCREV = "dae98a8bba9dc7410b0621134f6ebdb406adb1bd"
-SRC_URI = "git://github.com/huceke/omxplayer.git;protocol=git;branch=master \
+SRCREV = "c0dd9502ed2c43c487674939195c69680f3d98b0"
+
+SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
            file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
            file://0003-Remove-strip-step-in-Makefile.patch"
@@ -37,6 +38,8 @@ export INCLUDES = "-isystem${STAGING_DIR_HOST}/usr/include \
                    -isystem${STAGING_DIR_HOST}/usr/include/interface/vcos/pthreads \
                    -isystem${STAGING_DIR_HOST}/usr/include/freetype2 \
                    -isystem${STAGING_DIR_HOST}/usr/include/interface/vmcs_host/linux \
+                   -isystem${STAGING_DIR_HOST}/usr/include/dbus-1.0 \
+                   -isystem${STAGING_DIR_HOST}/usr/lib/dbus-1.0/include \
                   "
 
 # Install in ${D}
@@ -52,9 +55,12 @@ do_compile() {
 
 do_install() {
 	oe_runmake dist
+	mkdir -p ${D}/usr/share/fonts/truetype/freefont/
+	install ${S}/fonts/* ${D}/usr/share/fonts/truetype/freefont/
 }
 
 FILES_${PN} = "${bindir}/omxplayer* \
-               ${libdir}/omxplayer/lib*${SOLIBS}"
+               ${libdir}/omxplayer/lib*${SOLIBS} \
+               /usr/share/fonts"
 
 FILES_${PN}-dev += "${libdir}/omxplayer/*.so"
-- 
1.7.9.5


