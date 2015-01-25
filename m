Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F25CEE00827; Sun, 25 Jan 2015 10:32:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6097E0076F
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 10:31:54 -0800 (PST)
Received: by mail-wg0-f42.google.com with SMTP id x13so5641066wgg.1
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 10:31:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=Il1uyjZMgrUk/SbYUzYWRqNFkxYWvYFrI0XV/eecacw=;
	b=S9HjJRu/ii139rzVY22anlkquBdk9kOVOkvTwfzaDcl4EOjQ0bi3LObY7hdcwwlNjM
	Ja4+qXyY8vIhP13p/u3qIcquLftUk4Fws+XgqV/ycIEAFDHu6+7+fdryS/RqPFrCj7k+
	x7Y1ir5KgfWCgljU5BZmt6z9To6ptAay6Ybq2B4uiguEofdiGkq6nli/7kwVOQp+3KaT
	S8pV6qf+AlkTfll7oG5GwnoZKI2eGK1cy33Uz+cw4K+Mw2hL7AbhSZWw/Uf68IipYgJz
	A/R60D6MS6BTDG70wnut9eolwN4tKgD5KXbNXWrB+r3yfbLySc6Xl/5dyKBK4/uFvTT9
	lOfg==
X-Gm-Message-State: ALoCoQlGSpebQ0v7no4cFuyuYch5RTi5a8uufKyULz8NXJ2oJiTTtJ6l0l0f6kXWjvnembR9DXec
X-Received: by 10.194.77.201 with SMTP id u9mr36917050wjw.41.1422210713070;
	Sun, 25 Jan 2015 10:31:53 -0800 (PST)
Received: from otp-agherzan-l1.localdomain ([109.100.140.128])
	by mx.google.com with ESMTPSA id
	i20sm11111972wjq.22.2015.01.25.10.31.52 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Jan 2015 10:31:52 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 25 Jan 2015 20:31:45 +0200
Message-Id: <1422210706-8050-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
Subject: [meta-raspberrypi][PATCH 1/2] omxplayer: Add patch to fix lflags and cflags
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
X-List-Received-Date: Sun, 25 Jan 2015 18:32:05 -0000

This patch fixes the following package build break:
| arm-poky-linux-gnueabi-gcc is unable to create an executable file.
| C compiler test failed.

Change-Id: I9f0bf47e4bf969a793718e915fc6c5f4eab012bb
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 ...PEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch | 31 ++++++++++++++++++++++
 recipes-multimedia/omxplayer/omxplayer_git.bb      |  3 +++
 2 files changed, 34 insertions(+)
 create mode 100644 recipes-multimedia/omxplayer/omxplayer/0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch

diff --git a/recipes-multimedia/omxplayer/omxplayer/0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch b/recipes-multimedia/omxplayer/omxplayer/0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch
new file mode 100644
index 0000000..edb388e
--- /dev/null
+++ b/recipes-multimedia/omxplayer/omxplayer/0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch
@@ -0,0 +1,31 @@
+From 100982ee1fc1cb571c7453d14f9acd60e67d4765 Mon Sep 17 00:00:00 2001
+From: Andrei Gherzan <andrei.gherzan@windriver.com>
+Date: Sun, 25 Jan 2015 11:13:51 +0200
+Subject: [PATCH] Add FFMPEG_EXTRA_CFLAGS and FFMPEG_EXTRA_LDFLAGS
+
+In this way we can inject flags to LD and CC using
+--extra-cflags and --extra-ldflags.
+
+Upstream-Status: Inappropriate [embedded specific]
+Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
+---
+ Makefile.ffmpeg | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/Makefile.ffmpeg b/Makefile.ffmpeg
+index abe4b26..c9d42d7 100644
+--- a/Makefile.ffmpeg
++++ b/Makefile.ffmpeg
+@@ -22,7 +22,8 @@ configure:
+ 	CFLAGS="$(CFLAGS) ${INCLUDES}" \
+ 	LDFLAGS="" \
+   ./configure \
+-			--extra-cflags="-mfpu=vfp -mfloat-abi=$(FLOAT) -mno-apcs-stack-check -mstructure-size-boundary=32 -mno-sched-prolog" \
++			--extra-cflags="-mfpu=vfp -mfloat-abi=$(FLOAT) -mno-apcs-stack-check -mstructure-size-boundary=32 -mno-sched-prolog $(FFMPEG_EXTRA_CFLAGS)" \
++			--extra-ldflags="$(FFMPEG_EXTRA_LDFLAGS)" \
+ 			--enable-cross-compile \
+ 			--enable-shared \
+ 			--disable-static \
+-- 
+2.1.0
+
diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index 8f346f5..2c8e4b5 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -15,6 +15,7 @@ SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master
            file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
            file://0003-Remove-strip-step-in-Makefile.patch \
+           file://0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch \
            file://fix-tar-command-with-DIST.patch \
            "
 S = "${WORKDIR}/git"
@@ -30,6 +31,8 @@ export TEMPDIR = "${S}/tmp"
 export HOST = "${HOST_SYS}"
 export WORK = "${S}"
 export FLOAT = "${@bb.utils.contains("TUNE_FEATURES", "callconvention-hard", "hard", "softfp", d)}"
+export FFMPEG_EXTRA_CFLAGS  = "--sysroot=${STAGING_DIR_TARGET}"
+export FFMPEG_EXTRA_LDFLAGS = "--sysroot=${STAGING_DIR_TARGET}"
 
 export LDFLAGS = "-L${S}/ffmpeg_compiled/usr/lib \
                   -L${STAGING_DIR_HOST}/lib \
-- 
2.1.0


