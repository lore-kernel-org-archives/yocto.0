Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E924CE00985; Fri,  6 Feb 2015 08:12:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC079E0080C
	for <yocto@yoctoproject.org>; Fri,  6 Feb 2015 08:12:09 -0800 (PST)
Received: by mail-wi0-f173.google.com with SMTP id r20so3644767wiv.0
	for <yocto@yoctoproject.org>; Fri, 06 Feb 2015 08:12:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=+dUKW9H4gqM9a3pThzDZ7gEoqjx6QXnzQ8cgtnzNRd4=;
	b=fjZhqeRcwUJd8skGsZ3fA9zG9gM1s6cXh2SDIW998nn2xs+Kjj6yO18KEpz7JHHRFn
	Vklk9MS8MsgpGfon3MrDQtuh/NlfsUaRRS9EnalOOv4BY9Te6OoC0f5pv03LQkUcG6fL
	bP+iJMSUJ4gOmBxiRWMHdTVfKdZrn0YjUR5tL+dq/54ZJeMvPs+8uzXI4MbJDbGSV6wK
	jlR8TSEenMYaISFA6IsysbcOmgHHLoMDEfmOc5WVrUBoRyliy2FzkkSP0I3WUle94i1O
	fcpTcYQotujfUDK+OU2VY3SvFg6NWGVdLCedDHGS+dPustLtV1O6wrc7w/a/xITAUmwz
	n2Gg==
X-Gm-Message-State: ALoCoQkppkmjt6Y+g1qtyYftwucodGvGSQpuwrI3cNn6BYN8a7IRejPptHmc7ELlEndqLejvc/is
X-Received: by 10.180.37.197 with SMTP id a5mr4908804wik.2.1423239129063;
	Fri, 06 Feb 2015 08:12:09 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com (dhcp-186-165.gjk.dk.
	[195.249.186.165])
	by mx.google.com with ESMTPSA id jg3sm2088556wid.0.2015.02.06.08.12.08
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 06 Feb 2015 08:12:08 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri,  6 Feb 2015 18:11:56 +0200
Message-Id: <1423239119-21918-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423239119-21918-1-git-send-email-andrei@gherzan.ro>
References: <1423239119-21918-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/5] omxplayer: Bump SRCREV
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
X-List-Received-Date: Fri, 06 Feb 2015 16:12:17 -0000

Add a patch to fix the pkg-config mechanism in ffmpeg.

Change-Id: Ib506bb4e26a8a0c5c294ed55da0a0da8dc67a2d7
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 .../omxplayer/omxplayer/use-native-pkg-config.patch   | 19 +++++++++++++++++++
 recipes-multimedia/omxplayer/omxplayer_git.bb         |  7 ++++---
 2 files changed, 23 insertions(+), 3 deletions(-)
 create mode 100644 recipes-multimedia/omxplayer/omxplayer/use-native-pkg-config.patch

diff --git a/recipes-multimedia/omxplayer/omxplayer/use-native-pkg-config.patch b/recipes-multimedia/omxplayer/omxplayer/use-native-pkg-config.patch
new file mode 100644
index 0000000..ed81999
--- /dev/null
+++ b/recipes-multimedia/omxplayer/omxplayer/use-native-pkg-config.patch
@@ -0,0 +1,19 @@
+Force the pkg-config native tool. Strangely ffmpeg prepends cross_prefix
+to the default value which obviously is wrong.
+
+Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
+
+Index: git/Makefile.ffmpeg
+===================================================================
+--- git.orig/Makefile.ffmpeg
++++ git/Makefile.ffmpeg
+@@ -245,7 +245,8 @@ configure:
+ 			--disable-decoder=idf \
+ 			--enable-decoder=opus \
+ 			--cross-prefix=$(HOST)- \
+-			--disable-stripping
++			--disable-stripping \
++			--pkg-config=pkg-config
+ 
+ .PHONY : clean
+ clean:
diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index 41ef339..c71a743 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -7,22 +7,23 @@ SECTION = "console/utils"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl"
+DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh"
 PR = "r3"
 
-SRCREV = "1817503430b8f195bef12bd7a3542bdd251f8389"
+SRCREV = "18f051d64d9c837edbf718bc4935204583cfa030"
 SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
            file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
            file://0003-Remove-strip-step-in-Makefile.patch \
            file://0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch \
            file://fix-tar-command-with-DIST.patch \
+           file://use-native-pkg-config.patch \
            "
 S = "${WORKDIR}/git"
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-inherit autotools-brokensep
+inherit autotools-brokensep pkgconfig
 
 # Needed in ffmpeg configure
 export TEMPDIR = "${S}/tmp"
-- 
2.1.0


