Return-Path: <andrei@gherzan.ro>
Received: from mail-qa0-f54.google.com (mail-qa0-f54.google.com
	[209.85.216.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEE0DE0081B
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 06:51:26 -0800 (PST)
Received: by mail-qa0-f54.google.com with SMTP id i13so3311899qae.41
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 06:51:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=/4SIUA69getzO8HtQnrhfVqka69pbsIXPY/yCUpeAh8=;
	b=NSaLzfJzWznH2xd0nC1XEyHBJKNpQEHxw1RAFR0g+yi5DcvFLEJ7wb/wc+dvMeVFvP
	+PLkjzDqPVFqGPeBgVJnmbHoF7jMr+/6pLzIvA1iVws8rIg0tH3fR7K441F0R+3ZxeND
	0Vlx0+/rYSBAJK+Xcmd3Z6t3VT1LrSjtON0qZ9i0DQtJzIgDS7QQGCDZ2GlfMtYLmQxj
	f8L32Q5Z68cx+WK8yRaGwXs3mb+m5pcTSfisM21xh8FMOlU8UQBsdm4V2NL4hknljXqq
	nLKWUSAax+5dPgaRLtVPptqROtdPhjXhTHaqReiU5lKxyqVFVq/Itg3kWnQIpX8quexB
	ycFQ==
X-Gm-Message-State: ALoCoQnYTbZd0cCH2KloICK0KpXmntWDUTBUl9fS2il2ytuNID7vLvGbFsKZYlmgaR3Z4dPW1H49
X-Received: by 10.224.8.72 with SMTP id g8mr3630750qag.83.1389970285290;
	Fri, 17 Jan 2014 06:51:25 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id w8sm14398658qag.15.2014.01.17.06.51.23
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 Jan 2014 06:51:24 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 17 Jan 2014 16:51:11 +0200
Message-Id: <1389970274-26349-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH 1/4] omxplayer: Update to HEAD and tweak SUMMARY and DESCRIPTION
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
X-List-Received-Date: Fri, 17 Jan 2014 14:51:29 -0000

* Update to current git HEAD commit which includes fix for boost 1.55.
* Replace tabs by spaces
* Tweak SUMMARY and DESCRIPTION
* Add bash to PN RDEPENDS as omxplayer is actually a bash script.
* omxplayer is a bash script - add RDEPENDS and fix mktemp inside

Change-Id: I5c8a4cf1005ba49f9b01821e3f832d1da49869bc
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 .../omxplayer/mktemp-compatible-with-busybox.patch | 23 ++++++++++++++++
 recipes-multimedia/omxplayer/omxplayer_git.bb      | 31 ++++++++++++----------
 2 files changed, 40 insertions(+), 14 deletions(-)
 create mode 100644 recipes-multimedia/omxplayer/omxplayer/mktemp-compatible-with-busybox.patch

diff --git a/recipes-multimedia/omxplayer/omxplayer/mktemp-compatible-with-busybox.patch b/recipes-multimedia/omxplayer/omxplayer/mktemp-compatible-with-busybox.patch
new file mode 100644
index 0000000..4e43c7d
--- /dev/null
+++ b/recipes-multimedia/omxplayer/omxplayer/mktemp-compatible-with-busybox.patch
@@ -0,0 +1,23 @@
+Busybox has a restriction in temp file name. From documentation:
+Create a temporary file with name based on TEMPLATE and print its name.
+TEMPLATE must end with XXXXXX (e.g. [/dir/]nameXXXXXX).
+
+Use 6 x 'X' to be busybox compatible too.
+
+Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
+
+Index: git/omxplayer
+===================================================================
+--- git.orig/omxplayer
++++ git/omxplayer
+@@ -43,8 +43,8 @@ if [ -z $NOREFRESH ] || [ "$NOREFRESH" =
+     fi
+ fi
+ 
+-OMXPLAYER_DBUS_ADDR=`mktemp -t omxplayer-XXXXX`
+-OMXPLAYER_DBUS_PID=`mktemp -t omxplayer-XXXXX`
++OMXPLAYER_DBUS_ADDR=`mktemp -t omxplayer-XXXXXX`
++OMXPLAYER_DBUS_PID=`mktemp -t omxplayer-XXXXXX`
+ 
+ exec 5> $OMXPLAYER_DBUS_ADDR
+ exec 6> $OMXPLAYER_DBUS_PID
diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index c77f858..8d444fd 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -1,20 +1,21 @@
-DESCRIPTION = "OMXPlayer is a commandline OMX player for the Raspberry Pi"
+SUMMARY = "A commandline OMX player for the Raspberry Pi"
+DESCRIPTION = "This player was developed as a testbed for the XBMC \
+Raspberry PI implementation and is quite handy to use standalone"
 HOMEPAGE = "https://github.com/popcornmix/omxplayer"
 SECTION = "console/utils"
-LICENSE = "GPLv2"
 
+LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 DEPENDS = "libpcre libav virtual/egl boost freetype dbus"
+PR = "r2"
 
-PR = "r1"
-
-SRCREV = "c0dd9502ed2c43c487674939195c69680f3d98b0"
-
+SRCREV = "74f4be222be05d3ea50be9f5a70846f7c0e9df6e"
 SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
            file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
-           file://0003-Remove-strip-step-in-Makefile.patch"
+           file://0003-Remove-strip-step-in-Makefile.patch \
+           file://mktemp-compatible-with-busybox.patch"
 S = "${WORKDIR}/git"
 
 COMPATIBLE_MACHINE = "raspberrypi"
@@ -46,17 +47,17 @@ export INCLUDES = "-isystem${STAGING_DIR_HOST}/usr/include \
 export DIST = "${D}"
 
 do_compile() {
-	# Needed for compiler test in ffmpeg's configure
-	mkdir -p tmp
+    # Needed for compiler test in ffmpeg's configure
+    mkdir -p tmp
 
-	oe_runmake ffmpeg
-	oe_runmake
+    oe_runmake ffmpeg
+    oe_runmake
 }
 
 do_install() {
-	oe_runmake dist
-	mkdir -p ${D}/usr/share/fonts/truetype/freefont/
-	install ${S}/fonts/* ${D}/usr/share/fonts/truetype/freefont/
+    oe_runmake dist
+    mkdir -p ${D}/usr/share/fonts/truetype/freefont/
+    install ${S}/fonts/* ${D}/usr/share/fonts/truetype/freefont/
 }
 
 FILES_${PN} = "${bindir}/omxplayer* \
@@ -64,3 +65,5 @@ FILES_${PN} = "${bindir}/omxplayer* \
                /usr/share/fonts"
 
 FILES_${PN}-dev += "${libdir}/omxplayer/*.so"
+
+RDEPENDS_${PN} += "bash"
-- 
1.8.1.4


