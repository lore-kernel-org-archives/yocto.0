Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD864E00E5F; Fri, 15 Apr 2016 18:21:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CFC9E00527
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 18:21:49 -0700 (PDT)
Received: by mail-pa0-f50.google.com with SMTP id er2so31636901pad.3
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 18:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=8wyr9Fm2rZQ2Js/2NqgrUKrYk+CACL6L1Xa8kgWKjUk=;
	b=ClRtHjcCW+yUq5Vy4ST0tkyTqn3/FO2EIsPeZjTF433sKpFAkyypvipv+XvhINjQe8
	5BmnofUwUJX017tt2SZUKC2okl6wtl0Pt69bllRFp3DEWNqWuMHmT5vKIj4Sb2wAzR9t
	D55eMJHDMafi0+BzpxdihMR6Njyl3mR6q0XgpHhQYCWuVMCLUUCSyQcgSwISKH0dNmm6
	W6Ke0EaG3TMqMtCrY7wzCzN26/wnzsKM/BCmW7stzuuJWO2PLpKII6DlPs9o39WWfZ2B
	5oOmWooFKUaAKEedl6lef4dYRA4hvh/kc6XTgOzeaJ5rii2JN7nLLpSdKMNj4O/IJvik
	vRyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=8wyr9Fm2rZQ2Js/2NqgrUKrYk+CACL6L1Xa8kgWKjUk=;
	b=dHh4rDtOpJHkmYONksBRPy956q6yRm6fvYs/Lcsdyr+yQEKJSVLIjEkkK4eRfzg4RI
	Zz76PPmonIgrdY+wAfImJbkZBTodQOo++u8EuMoj5bSmLpjvk1gEPPfbTBKLuRlbLvET
	2Ji91BFsxtSrFEhKIW6ugoRlKCy2WdMzuqfWhtMea6CWgLTM+EgwVEh7DTeglYCCR8g2
	dKNpmM68HZU1/Y5hejzZS25ZR1Zx6u+gLE87bvZMwS1spKOW3x+J/bmDsOeF70kVXzaC
	b6tTIKQU5IOzAJQkNEDpBELNQC/3p8gyfauzmbI3rtLNk3g4CGTrHuq/qR/DZSKTUJ7F
	yrmw==
X-Gm-Message-State: AOPr4FVhh240RAl0c8+F5fexvD9pQQ3KGWf6puJtZXr9I4WfBVvNJvqKk9pqQTan11Btqw==
X-Received: by 10.66.160.7 with SMTP id xg7mr33024746pab.10.1460769708987;
	Fri, 15 Apr 2016 18:21:48 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	n19sm67318750pfi.53.2016.04.15.18.21.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 15 Apr 2016 18:21:48 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 16 Apr 2016 11:20:51 +1000
Message-Id: <1460769651-5168-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH] omxplayer: Bump revision
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
X-List-Received-Date: Sat, 16 Apr 2016 01:21:52 -0000

Fixes linking error due to missing vchostif library dependency.
Rebased patches and removed patches already merged upstream.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 ...es-and-headers-from-ffmpeg-are-installed-in-u.patch | 12 +++++++-----
 .../don-t-preserve-file-attributes-when-cp.patch       | 18 ------------------
 .../omxplayer/fix-tar-command-with-DIST.patch          |  5 ++++-
 recipes-multimedia/omxplayer/omxplayer_git.bb          |  3 +--
 4 files changed, 12 insertions(+), 26 deletions(-)
 delete mode 100644 recipes-multimedia/omxplayer/omxplayer/don-t-preserve-file-attributes-when-cp.patch

diff --git a/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch b/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
index 366772e..75f7254 100644
--- a/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
+++ b/recipes-multimedia/omxplayer/omxplayer/0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch
@@ -6,14 +6,16 @@ Subject: [PATCH] Libraries and headers from ffmpeg are installed in /usr.
 Don't search for libraries and headers in /usr/local.
 
 Upstream-Status: Inappropriate [embedded specific]
+
 Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
+Signed-off-by: Jonathan Liu <net147@gmail.com>
 ---
  Makefile        | 6 +++---
  Makefile.ffmpeg | 2 +-
  2 files changed, 4 insertions(+), 4 deletions(-)
 
 diff --git a/Makefile b/Makefile
-index 38e1400..1b15999 100644
+index be97c2b..2c120fc 100644
 --- a/Makefile
 +++ b/Makefile
 @@ -1,9 +1,9 @@
@@ -32,14 +34,14 @@ index 38e1400..1b15999 100644
  	cp COPYING $(DIST)/usr/share/doc/omxplayer
  	cp README.md $(DIST)/usr/share/doc/omxplayer/README
  	cp omxplayer.1 $(DIST)/usr/share/man/man1
--	cp -a ffmpeg_compiled/usr/local/lib/*.so* $(DIST)/usr/lib/omxplayer/
-+	cp -a ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
+-	cp -P ffmpeg_compiled/usr/local/lib/*.so* $(DIST)/usr/lib/omxplayer/
++	cp -P ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
  	cd $(DIST); tar -czf ../$(DIST).tgz *
 diff --git a/Makefile.ffmpeg b/Makefile.ffmpeg
-index 4d2d720..9d66a85 100644
+index 5ccf96f..a7ddd5f 100644
 --- a/Makefile.ffmpeg
 +++ b/Makefile.ffmpeg
-@@ -256,5 +256,5 @@ checkout:
+@@ -254,5 +254,5 @@ checkout:
  .PHONY : install
  install:
  	cd ffmpeg; make -j9 DESTDIR="$(WORK)/ffmpeg_compiled" install
diff --git a/recipes-multimedia/omxplayer/omxplayer/don-t-preserve-file-attributes-when-cp.patch b/recipes-multimedia/omxplayer/omxplayer/don-t-preserve-file-attributes-when-cp.patch
deleted file mode 100644
index 08df12e..0000000
--- a/recipes-multimedia/omxplayer/omxplayer/don-t-preserve-file-attributes-when-cp.patch
+++ /dev/null
@@ -1,18 +0,0 @@
-When running install (fakeroot) host-user-contaminated will fail because dist
-rule copies files while preserving file attributes like user ID.
-
-Upstream-Status: Submitted [https://github.com/popcornmix/omxplayer/pull/431]
-Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
-
-Index: git/Makefile
-===================================================================
---- git.orig/Makefile
-+++ git/Makefile
-@@ -87,5 +87,5 @@ dist: omxplayer.bin omxplayer.1
- 	cp COPYING $(DIST)/usr/share/doc/omxplayer
- 	cp README.md $(DIST)/usr/share/doc/omxplayer/README
- 	cp omxplayer.1 $(DIST)/usr/share/man/man1
--	cp -a ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
-+	cp -P ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
- 	tar -czf omxplayer-dist.tar.gz $(DIST)
-\ No newline at end of file
diff --git a/recipes-multimedia/omxplayer/omxplayer/fix-tar-command-with-DIST.patch b/recipes-multimedia/omxplayer/omxplayer/fix-tar-command-with-DIST.patch
index 5b3bd21..ab40e40 100644
--- a/recipes-multimedia/omxplayer/omxplayer/fix-tar-command-with-DIST.patch
+++ b/recipes-multimedia/omxplayer/omxplayer/fix-tar-command-with-DIST.patch
@@ -3,7 +3,10 @@ https://github.com/popcornmix/omxplayer/commit/201c77973155861e60492e45d35467b19
 
 This fails if DIST is an absolute path. The old command was working just fine.
 
+Upstream-Status: Pending
+
 Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
+Signed-off-by: Jonathan Liu <net147@gmail.com>
 
 Index: git/Makefile
 ===================================================================
@@ -12,7 +15,7 @@ Index: git/Makefile
 @@ -71,4 +71,4 @@ dist: omxplayer.bin
  	cp COPYING $(DIST)/usr/share/doc/
  	cp README.md $(DIST)/usr/share/doc/README
- 	cp -a ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
+ 	cp -P ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
 -	cd $(DIST); tar -czf ../$(DIST).tgz *
 +	tar -czf omxplayer-dist.tar.gz $(DIST)
 \ No newline at end of file
diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index c8251fe..7d3b464 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh"
 PR = "r4"
 
-SRCREV = "15a490b2397b358776c56b017a137c4716eb6b4e"
+SRCREV = "8466acf65f5f444dfa22631fb83c07ac759c02a5"
 SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
            file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
@@ -18,7 +18,6 @@ SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master
            file://0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch \
            file://fix-tar-command-with-DIST.patch \
            file://use-native-pkg-config.patch \
-           file://don-t-preserve-file-attributes-when-cp.patch \
            "
 S = "${WORKDIR}/git"
 
-- 
2.7.4


