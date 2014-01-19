Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f47.google.com (mail-ee0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4137E00875
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 11:16:18 -0800 (PST)
Received: by mail-ee0-f47.google.com with SMTP id d49so2266704eek.20
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 11:16:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=LYtDOPCgVT4r2LfNsqjzQHLJDKucyb5kD8S26ziXWFQ=;
	b=JZa7dQknAzbeLh6sjjVuk2XStPYedIHzZKJD0hzn8Qmrfrr1bdnmdqKIrv9x2WCrtV
	k1mC2voP9SnmW+0RAQl9xmP7QwiGMuwBvM3w/I4f097fILDxsEX6gilKwgaKOo9Y5oYa
	3Ky+IFnbvtiDgj+9DZFkQPwfgW+VHxZMdJaNZ/L6OMm/X9AC+JDpshUjJa2UE2PDXfj/
	fxjwBPeCOjhKZfvI3cuGV656JDV6Bhoownhsm6AP1MBgqx1GL4cvyI2SuVkuH7aPrGcm
	kRE9r1cxwLcvKqy5lT+tACJ7duOWgoBbnuPZWHGNWohXyTfbWQf77FGvxtKBP82UMy6h
	MesQ==
X-Gm-Message-State: ALoCoQkcNbYiEVsDK/Tz/hYeJYt5kamwEqbdnSPQWSJGKNbPKRuJ3r9md0Wa1b4ESFibYcsUHYSb
X-Received: by 10.14.221.193 with SMTP id r41mr573539eep.92.1390158977653;
	Sun, 19 Jan 2014 11:16:17 -0800 (PST)
Received: from localhost.localdomain ([79.116.111.233])
	by mx.google.com with ESMTPSA id 4sm46036842eed.14.2014.01.19.11.16.15
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Jan 2014 11:16:16 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 19 Jan 2014 21:15:56 +0200
Message-Id: <1390158956-24554-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1390158956-24554-1-git-send-email-andrei@gherzan.ro>
References: <1390158956-24554-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/4] omxplayer: Update to remote HEAD
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
X-List-Received-Date: Sun, 19 Jan 2014 19:16:19 -0000

* Rebase 0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
to apply on HEAD.
* Add fix-tar-command-with-DIST.patch which reverts a change in tar command
which breaks compilation if DIST is an absolute path.
* Avoid stripping omxplayer binary (let build system take care of strpping).

Change-Id: I95d70094b0069ad19f7d445abaf421756776c4c7
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 ...nd-headers-from-ffmpeg-are-installed-in-u.patch | 24 ++++++++++------------
 .../omxplayer/fix-tar-command-with-DIST.patch      | 18 ++++++++++++++++
 recipes-multimedia/omxplayer/omxplayer_git.bb      | 10 +++++----
 3 files changed, 35 insertions(+), 17 deletions(-)
 create mode 100644 recipes-multimedia/omxplayer/omxplayer/fix-tar-command-with-DIST.patch

diff --git a/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch b/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
index 4976995..7f7927f 100644
--- a/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
+++ b/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
@@ -8,18 +8,16 @@ Don't search for libraries and headers in /usr/local.
 Upstream-Status: Inappropriate [embedded specific]
 Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
 
-Updated patch to apply to c0dd9502ed2c43c487674939195c69680f3d98b0 revision
-
-diff --git a/Makefile b/Makefile
-index 65f7637..5dc1832 100644
---- a/Makefile
-+++ b/Makefile
+Index: git/Makefile
+===================================================================
+--- git.orig/Makefile
++++ git/Makefile
 @@ -1,9 +1,9 @@
  
  CFLAGS+=-std=c++0x -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DTARGET_POSIX -DTARGET_LINUX -fPIC -DPIC -D_REENTRANT -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DHAVE_CMAKE_CONFIG -D__VIDEOCORE4__ -U_FORTIFY_SOURCE -Wall -DHAVE_OMXLIB -DUSE_EXTERNAL_FFMPEG  -DHAVE_LIBAVCODEC_AVCODEC_H -DHAVE_LIBAVUTIL_OPT_H -DHAVE_LIBAVUTIL_MEM_H -DHAVE_LIBAVUTIL_AVUTIL_H -DHAVE_LIBAVFORMAT_AVFORMAT_H -DHAVE_LIBAVFILTER_AVFILTER_H -DHAVE_LIBSWRESAMPLE_SWRESAMPLE_H -DOMX -DOMX_SKIP64BIT -ftree-vectorize -DUSE_EXTERNAL_OMX -DTARGET_RASPBERRY_PI -DUSE_EXTERNAL_LIBBCM_HOST
  
--LDFLAGS+=-L./ -ldbus-1 -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -Lffmpeg_compiled/usr/local/lib/
-+LDFLAGS+=-L./ -ldbus-1 -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -Lffmpeg_compiled/usr/lib/
+-LDFLAGS+=-L./ -Lffmpeg_compiled/usr/local/lib/ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz
++LDFLAGS+=-L./ -Lffmpeg_compiled/usr/lib/ -lc -lWFC -lGLESv2 -lEGL -lbcm_host -lopenmaxil -lfreetype -lz
  
 -INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/local/include/
 +INCLUDES+=-I./ -Ilinux -Iffmpeg_compiled/usr/include/
@@ -32,11 +30,11 @@ index 65f7637..5dc1832 100644
  	cp README.md $(DIST)/usr/share/doc/README
 -	cp -a ffmpeg_compiled/usr/local/lib/*.so* $(DIST)/usr/lib/omxplayer/
 +	cp -a ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
- 	tar -czf omxplayer-dist.tar.gz $(DIST)
-diff --git a/Makefile.ffmpeg b/Makefile.ffmpeg
-index 3b31a82..5f30b51 100644
---- a/Makefile.ffmpeg
-+++ b/Makefile.ffmpeg
+ 	cd $(DIST); tar -czf ../$(DIST).tgz *
+Index: git/Makefile.ffmpeg
+===================================================================
+--- git.orig/Makefile.ffmpeg
++++ git/Makefile.ffmpeg
 @@ -248,5 +248,5 @@ checkout:
  
  install:
diff --git a/recipes-multimedia/omxplayer/omxplayer/fix-tar-command-with-DIST.patch b/recipes-multimedia/omxplayer/omxplayer/fix-tar-command-with-DIST.patch
new file mode 100644
index 0000000..5b3bd21
--- /dev/null
+++ b/recipes-multimedia/omxplayer/omxplayer/fix-tar-command-with-DIST.patch
@@ -0,0 +1,18 @@
+Revert the tar command change introduced in:
+https://github.com/popcornmix/omxplayer/commit/201c77973155861e60492e45d35467b19b69c1c4
+
+This fails if DIST is an absolute path. The old command was working just fine.
+
+Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
+
+Index: git/Makefile
+===================================================================
+--- git.orig/Makefile
++++ git/Makefile
+@@ -71,4 +71,4 @@ dist: omxplayer.bin
+ 	cp COPYING $(DIST)/usr/share/doc/
+ 	cp README.md $(DIST)/usr/share/doc/README
+ 	cp -a ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
+-	cd $(DIST); tar -czf ../$(DIST).tgz *
++	tar -czf omxplayer-dist.tar.gz $(DIST)
+\ No newline at end of file
diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index 8d444fd..33202dc 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -8,14 +8,16 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 DEPENDS = "libpcre libav virtual/egl boost freetype dbus"
-PR = "r2"
+PR = "r3"
 
-SRCREV = "74f4be222be05d3ea50be9f5a70846f7c0e9df6e"
+SRCREV = "f666a5dfbec36e2af7cd965558ac8643c86277a6"
 SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
            file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
            file://0003-Remove-strip-step-in-Makefile.patch \
-           file://mktemp-compatible-with-busybox.patch"
+           file://mktemp-compatible-with-busybox.patch \
+           file://fix-tar-command-with-DIST.patch \
+           "
 S = "${WORKDIR}/git"
 
 COMPATIBLE_MACHINE = "raspberrypi"
@@ -55,7 +57,7 @@ do_compile() {
 }
 
 do_install() {
-    oe_runmake dist
+    oe_runmake STRIP='echo skipping strip' dist
     mkdir -p ${D}/usr/share/fonts/truetype/freefont/
     install ${S}/fonts/* ${D}/usr/share/fonts/truetype/freefont/
 }
-- 
1.8.1.4


