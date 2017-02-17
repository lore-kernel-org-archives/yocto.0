Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACE2BE006EA; Thu, 16 Feb 2017 16:47:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 884B9E00510
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 16:47:18 -0800 (PST)
Received: by mail-pf0-f193.google.com with SMTP id o64so2727736pfb.1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 16:47:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=OQZKHjpSuKlGfVQqovE8wS2edijG0R8c4s8LOePn1/8=;
	b=PJPFPQTSZ+fUV4mMkQBH+bmhzZTUpzMdyWJkL7WNO73VvuEiFexvTtbAoUI4Ur77cc
	/PBRg0oEE5y/mpMj8oisjn7N/RMvbsBbExrMPLtNIwsdmdy7tqID9Y8u7Akhrc8g3nxv
	oPeMO5Ev6jCOeVobEy8BRtyJNDOASIjiJ+XsDfJov6HIN8fCkIb/MFcQ4NA27DcGKOpa
	Rr18kDPZi2hcCf/8xutwdxxC9JMuf7akPKFv4rftDLtYnx4QoLlBAMPPite34xSdbHAp
	H08uQD8lpwBKE2NUs8i6KTDIKinwCgFOPHozo5LEhgWeU19/u1mBAT3D68bRVFKHkW9g
	/BkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=OQZKHjpSuKlGfVQqovE8wS2edijG0R8c4s8LOePn1/8=;
	b=fC/2/QbCc0+MT4RGnYKD6OVRI9exV1QtkEV8+MToPGydtwwxo91KiXRCHvYg0UlLO/
	X3cBKm3I7pefQdkGo7xfe6WmWNi/qLIx287j6W3gk9/b+pzSPNMltQ9Lw5QnWdiK950/
	jk9u09QkNm2P+mf4S3pwAiezSimw6Jrk+blrGUrGWV0BsRQbNH+puVdjUQ3Gd8MkOlju
	CaLUYcWfJkUIVkAhMP37e7g60MzY/J8D1cEgT6Vodkp1Y5LaNYs9z5IlGXUG6dlne4FD
	V88/iJTnFVLZhyZPeI4VPsWh9C0D9LqRTJwZ0N8uDpb9ckY1+W02YGQ+/wGR/cwlG/wu
	kuNQ==
X-Gm-Message-State: AMke39kPMsJZsY8vQ0lmtjOlqRF38ycxzOS3xUy9+DprIRUIX/rvop7v8A7czwWhvtqD2Q==
X-Received: by 10.98.198.90 with SMTP id m87mr5974457pfg.153.1487292438625;
	Thu, 16 Feb 2017 16:47:18 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	x81sm15646295pff.69.2017.02.16.16.47.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 16:47:18 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 16:47:08 -0800
Message-Id: <20170217004708.29335-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
Subject: [meta-raspberrypi][PATCH] omxplayer: Update to latest and disable on rpi64
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
X-List-Received-Date: Fri, 17 Feb 2017 00:47:22 -0000

Its uses omaxplayer/mmal APIs from firmware which seems
to not work with 4.9 kernel

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...nd-headers-from-ffmpeg-are-installed-in-u.patch | 27 ++++++++++------------
 ...PEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch | 24 +++++++++++--------
 recipes-multimedia/omxplayer/omxplayer_git.bb      | 13 ++++++-----
 3 files changed, 34 insertions(+), 30 deletions(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch b/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
index 75f7254..203f34b 100644
--- a/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
+++ b/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
@@ -14,33 +14,33 @@ Signed-off-by: Jonathan Liu <net147@gmail.com>
  Makefile.ffmpeg | 2 +-
  2 files changed, 4 insertions(+), 4 deletions(-)
 
-diff --git a/Makefile b/Makefile
-index be97c2b..2c120fc 100644
---- a/Makefile
-+++ b/Makefile
+Index: git/Makefile
+===================================================================
+--- git.orig/Makefile
++++ git/Makefile
 @@ -1,9 +1,9 @@
  
  CFLAGS+=-std=c++0x -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -DTARGET_LINUX -fPIC -DPIC -D_REENTRANT -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DHAVE_CMAKE_CONFIG -D__VIDEOCORE4__ -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_OPT_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DHAVE_LIBSWRESAMPLE_SWRESAMPLE_H -DOMX -DOMX_SKIP64BIT -ftree-vectorize -DUSE_EXTERNAL_OMX -DTARGET_RASPBERRY_PI -DUSE_EXTERNAL_LIBBCM_HOST
  
--LDFLAGS+=-L./ -Lffmpeg_compiled/usr/local/lib/ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz
-+LDFLAGS+=-L./ -Lffmpeg_compiled/usr/lib/ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz
+-LDFLAGS+=-L./ -Lffmpeg_compiled/usr/local/lib/ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -lasound
++LDFLAGS+=-L./ -Lffmpeg_compiled/usr/lib/ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -lasound
  
 -INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/local/include/ -I /usr/include/dbus-1.0 -I /usr/lib/arm-linux-gnueabihf/dbus-1.0/include
-+INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/include/ -I=/usr/include/dbus-1.0 -I /usr/lib/arm-linux-gnueabihf/dbus-1.0/include
++INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/include/ -I=/usr/include/dbus-1.0
  
  DIST ?= omxplayer-dist
  
-@@ -87,5 +87,5 @@ dist: omxplayer.bin omxplayer.1
+@@ -88,5 +88,5 @@ dist: omxplayer.bin omxplayer.1
  	cp COPYING $(DIST)/usr/share/doc/omxplayer
  	cp README.md $(DIST)/usr/share/doc/omxplayer/README
  	cp omxplayer.1 $(DIST)/usr/share/man/man1
 -	cp -P ffmpeg_compiled/usr/local/lib/*.so* $(DIST)/usr/lib/omxplayer/
 +	cp -P ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
  	cd $(DIST); tar -czf ../$(DIST).tgz *
-diff --git a/Makefile.ffmpeg b/Makefile.ffmpeg
-index 5ccf96f..a7ddd5f 100644
---- a/Makefile.ffmpeg
-+++ b/Makefile.ffmpeg
+Index: git/Makefile.ffmpeg
+===================================================================
+--- git.orig/Makefile.ffmpeg
++++ git/Makefile.ffmpeg
 @@ -254,5 +254,5 @@ checkout:
  .PHONY : install
  install:
@@ -48,6 +48,3 @@ index 5ccf96f..a7ddd5f 100644
 -	$(HOST)-strip ffmpeg_compiled/usr/local/lib/*.so
 +	$(HOST)-strip ffmpeg_compiled/usr/lib/*.so
  
--- 
-1.9.3
-
diff --git a/recipes-multimedia/omxplayer/omxplayer/0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch b/recipes-multimedia/omxplayer/omxplayer/0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch
index edb388e..ea8530d 100644
--- a/recipes-multimedia/omxplayer/omxplayer/0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch
+++ b/recipes-multimedia/omxplayer/omxplayer/0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch
@@ -12,20 +12,26 @@ Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
  Makefile.ffmpeg | 3 ++-
  1 file changed, 2 insertions(+), 1 deletion(-)
 
-diff --git a/Makefile.ffmpeg b/Makefile.ffmpeg
-index abe4b26..c9d42d7 100644
---- a/Makefile.ffmpeg
-+++ b/Makefile.ffmpeg
-@@ -22,7 +22,8 @@ configure:
+Index: git/Makefile.ffmpeg
+===================================================================
+--- git.orig/Makefile.ffmpeg
++++ git/Makefile.ffmpeg
+@@ -1,6 +1,8 @@
+ 
+ CFLAGS=-D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -DTARGET_LINUX -fPIC -DPIC -D_REENTRANT -D_HAVE_SBRK -D_LARGEFILE64_SOURCE -DHAVE_CMAKE_CONFIG -DHAVE_VMCS_CONFIG -D_REENTRANT -DUSE_VCHIQ_ARM -DVCHI_BULK_ALIGN=1 -DVCHI_BULK_GRANULARITY=1 -DEGL_SERVER_DISPMANX -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D__VIDEOCORE4__ -DGRAPHICS_X_VG=1 -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DOMX -DOMX_SKIP64BIT
+ 
++FFMPEG_EXTRA_CFLAGS?=-mfpu=vfp -mfloat-abi=$(FLOAT) -mno-apcs-stack-check -mstructure-size-boundary=32 -mno-sched-prolog
++
+ WORK=$(PWD)
+ 
+ .PHONY : all
+@@ -21,7 +23,8 @@ configure:
  	CFLAGS="$(CFLAGS) ${INCLUDES}" \
  	LDFLAGS="" \
    ./configure \
 -			--extra-cflags="-mfpu=vfp -mfloat-abi=$(FLOAT) -mno-apcs-stack-check -mstructure-size-boundary=32 -mno-sched-prolog" \
-+			--extra-cflags="-mfpu=vfp -mfloat-abi=$(FLOAT) -mno-apcs-stack-check -mstructure-size-boundary=32 -mno-sched-prolog $(FFMPEG_EXTRA_CFLAGS)" \
++			--extra-cflags="$(FFMPEG_EXTRA_CFLAGS)" \
 +			--extra-ldflags="$(FFMPEG_EXTRA_LDFLAGS)" \
  			--enable-cross-compile \
  			--enable-shared \
  			--disable-static \
--- 
-2.1.0
-
diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index d9460de..c196fbf 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -7,10 +7,10 @@ SECTION = "console/utils"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh"
+DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh libomxil"
 PR = "r4"
 
-SRCREV = "8466acf65f5f444dfa22631fb83c07ac759c02a5"
+SRCREV = "62fb580260adb9b01e5694bb4374fb9a5f6f1021"
 SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
            file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
@@ -21,7 +21,9 @@ SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master
            "
 S = "${WORKDIR}/git"
 
-COMPATIBLE_MACHINE = "raspberrypi"
+COMPATIBLE_MACHINE ?= "null"
+COMPATIBLE_MACHINE_rpi_aarch64 = "null"
+COMPATIBLE_MACHINE_rpi = "(.*)"
 
 inherit autotools-brokensep pkgconfig
 
@@ -31,9 +33,8 @@ export TEMPDIR = "${S}/tmp"
 # Needed in Makefile.ffmpeg
 export HOST = "${HOST_SYS}"
 export WORK = "${S}"
-export FLOAT = "${@bb.utils.contains("TUNE_FEATURES", "callconvention-hard", "hard", "softfp", d)}"
-export FFMPEG_EXTRA_CFLAGS  = "--sysroot=${STAGING_DIR_TARGET}"
-export FFMPEG_EXTRA_LDFLAGS = "--sysroot=${STAGING_DIR_TARGET}"
+export FFMPEG_EXTRA_CFLAGS  = "${TUNE_CCARGS} ${TOOLCHAIN_OPTIONS}"
+export FFMPEG_EXTRA_LDFLAGS  = "${TUNE_CCARGS} ${TOOLCHAIN_OPTIONS}"
 
 # Needed in top Makefile
 export LDFLAGS = "-L${S}/ffmpeg_compiled/usr/lib \
-- 
2.11.1


