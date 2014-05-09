Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F193E00B73; Fri,  9 May 2014 06:09:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f49.google.com (unknown [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03C3DE00B7B
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 06:09:24 -0700 (PDT)
Received: by mail-ee0-f49.google.com with SMTP id e53so2638417eek.22
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 06:09:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=gXowQmG7uexjsfsYInLymrDXpr8MnV1vjCmpqpInnUo=;
	b=NnM1H8Yz6jQykIOCtagZHWB9piS2SkIffhz1Hv8KIzXhbCDdftLqpK08MufxJLn2kK
	woqZfRx+9YiFTWxm4JRAGUOiwnRfd9GfmyK8qDZNURdR4xJIrEg/GZbOKR2Gee1SEzn/
	ZQevDe0OQrSbRRyI/DKw2hGQ5zJvOtJ+vmGFIa0CN0p0sLbVKzePyunHo2DH+wLKYreG
	gJjauN1CZYD/Ai3g3vWnwRDO0GFr3sB4dyyY4mL82KfAfmZkfBGhoJ+1IDOP0cApMLly
	v025b4EL2meyqvQVSMTV34jS8YIEhehcKyaMKbmsbxeoxypg8m+WSTABViTkwfr6mq/d
	fVZA==
X-Gm-Message-State: ALoCoQmrzK7aHUU4yNtI6o2KWFg1GouTjG4CuqSILSZ+4CsT/gz7TA+Z/JSOh/ys8SSzIpGpGZpo
X-Received: by 10.15.54.6 with SMTP id s6mr13393074eew.4.1399640963411;
	Fri, 09 May 2014 06:09:23 -0700 (PDT)
Received: from localhost.localdomain (5-13-208-17.residential.rdsnet.ro.
	[5.13.208.17]) by mx.google.com with ESMTPSA id
	x45sm11341136eef.15.2014.05.09.06.09.21 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 May 2014 06:09:22 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri,  9 May 2014 16:09:06 +0300
Message-Id: <1399640946-21680-9-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
References: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 9/9] omxplayer: Update to remote's HEAD
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
X-List-Received-Date: Fri, 09 May 2014 13:09:36 -0000

Rebase a patch for this version and fix "unsafe for cross-compilation"
warnings.

Change-Id: Idcc9f188bc716982ede9dfb5f87870d9f5a2f9a3
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 ...nd-headers-from-ffmpeg-are-installed-in-u.patch | 38 +++++++++++++---------
 recipes-multimedia/omxplayer/omxplayer_git.bb      |  2 +-
 2 files changed, 24 insertions(+), 16 deletions(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch b/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
index 7f7927f..9bc137f 100644
--- a/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
+++ b/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
@@ -8,37 +8,45 @@ Don't search for libraries and headers in /usr/local.
 Upstream-Status: Inappropriate [embedded specific]
 Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
 
-Index: git/Makefile
-===================================================================
---- git.orig/Makefile
-+++ git/Makefile
-@@ -1,9 +1,9 @@
+---
+ Makefile        | 6 +++---
+ Makefile.ffmpeg | 2 +-
+ 2 files changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/Makefile b/Makefile
+index 87cb775..abe9923 100644
+--- a/Makefile
++++ b/Makefile
+@@ -2,9 +2,9 @@ include Makefile.include
  
  CFLAGS+=-std=c++0x -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -DTARGET_LINUX -fPIC -DPIC -D_REENTRANT -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DHAVE_CMAKE_CONFIG -D__VIDEOCORE4__ -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_OPT_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DHAVE_LIBSWRESAMPLE_SWRESAMPLE_H -DOMX -DOMX_SKIP64BIT -ftree-vectorize -DUSE_EXTERNAL_OMX -DTARGET_RASPBERRY_PI -DUSE_EXTERNAL_LIBBCM_HOST
  
 -LDFLAGS+=-L./ -Lffmpeg_compiled/usr/local/lib/ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz
 +LDFLAGS+=-L./ -Lffmpeg_compiled/usr/lib/ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz
  
--INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/local/include/
-+INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/include/
+-INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/local/include/ -I /usr/include/dbus-1.0 -I /usr/lib/arm-linux-gnueabihf/dbus-1.0/include
++INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/include/ -I=/usr/include/dbus-1.0 -I=/usr/lib/arm-linux-gnueabihf/dbus-1.0/include
  
  DIST ?= omxplayer-dist
  
-@@ -70,5 +70,5 @@ dist: omxplayer.bin
+@@ -71,5 +71,5 @@ dist: omxplayer.bin
  	cp omxplayer omxplayer.bin $(DIST)/usr/bin
- 	cp COPYING $(DIST)/usr/share/doc/
- 	cp README.md $(DIST)/usr/share/doc/README
+ 	cp COPYING $(DIST)/usr/share/doc/omxplayer
+ 	cp README.md $(DIST)/usr/share/doc/omxplayer/README
 -	cp -a ffmpeg_compiled/usr/local/lib/*.so* $(DIST)/usr/lib/omxplayer/
 +	cp -a ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
  	cd $(DIST); tar -czf ../$(DIST).tgz *
-Index: git/Makefile.ffmpeg
-===================================================================
---- git.orig/Makefile.ffmpeg
-+++ git/Makefile.ffmpeg
-@@ -248,5 +248,5 @@ checkout:
+diff --git a/Makefile.ffmpeg b/Makefile.ffmpeg
+index c21b2fa..5518680 100644
+--- a/Makefile.ffmpeg
++++ b/Makefile.ffmpeg
+@@ -249,5 +249,5 @@ checkout:
  
  install:
  	cd ffmpeg; make -j9 DESTDIR="$(WORK)/ffmpeg_compiled" install
 -	$(HOST)-strip ffmpeg_compiled/usr/local/lib/*.so
 +	$(HOST)-strip ffmpeg_compiled/usr/lib/*.so
  
+-- 
+1.8.5.3
+
diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index cee68e1..5763d8f 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS = "libpcre libav virtual/egl boost freetype dbus"
 PR = "r3"
 
-SRCREV = "7af21f596378e5efeceebedff9c4a298e2d06d98"
+SRCREV = "f3221825a92f27c5f49a52200ff933e454977ed2"
 SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
            file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
-- 
1.8.5.3


