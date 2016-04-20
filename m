Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F351E00948; Wed, 20 Apr 2016 06:12:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 272EEE00522
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 06:12:41 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id v188so203012203wme.1
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 06:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=elfin-de.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=Z30E6ac5w9kij+gJd9cKHt9ORAjQ9YL/WxI9TfCKwoc=;
	b=wc85WnIUN2b7LSVB6hfUDQcQHJ8ahRMXJSiFznY7zZ2CHdchF9XndctsMexl/JFyU2
	lRxE4G1uWgcmY+BCyGfz4BlHnDrKpWSs19zHoczAbgejNeD5XmUBAnJCzuIgvC+P5wVp
	6o6UrFC5kTzwC5OWo1rwtlqqYe5AgJCEFaW4lqVU1gLYAEGsLJNOEAs63kxEG3Ypws1j
	ut5QQlv0+VPXdHHg0r3MutnTRTRwZPzLgJ1LIfzw2rK8zFWZL2cZAj4sgJS91yQsRpdr
	UWaMJitgvVdSSmuLCF4Gvd6PGFfPy+qc52ga88zefQCFTtc1MIavKF8TfrLA4s1AaAMJ
	ALMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Z30E6ac5w9kij+gJd9cKHt9ORAjQ9YL/WxI9TfCKwoc=;
	b=bsnIQcQBvIOgkHxMsls/MgnyhxiKm3cyKuSXOVSBDEyjA+P/QYBIZ3LKcvMmTzF67p
	jA1sqOJUPkOsW3Yl73lDrJfky91/mF4ZYwr7j8W2HrPur+u5bBVCVwINHxZ3rI4KpRyA
	fsYdRyfa7jtG5kVSCdhZIehD1rv+tCRXNpAyAILYg8CNbSZhURgjych7r8WQ36+a15Op
	ng6g7fiZ9WeCF0lUNxx0tMZdZnVhucUwNRpY4AS1t4hTXwRXsAcXBso+UT+pJcp3vFbH
	lygHj+fakK8EuNPl7KpzWRGnI6kMMvyB/LCHv/eeOPvJshz9uqhW5OwKvn49M6di7QxT
	Q7dw==
X-Gm-Message-State: AOPr4FVXeGrIBzVrgPQXZ3bjowyfrpNcJJNXLR61UGfHv7XbPaKO18Ey6mm6EtrNYlfLOw==
X-Received: by 10.28.227.130 with SMTP id a124mr9794134wmh.2.1461157960327;
	Wed, 20 Apr 2016 06:12:40 -0700 (PDT)
Received: from localhost.localdomain (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	u192sm9610869wmd.11.2016.04.20.06.12.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 20 Apr 2016 06:12:39 -0700 (PDT)
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
To: yocto@yoctoproject.org
Date: Wed, 20 Apr 2016 15:11:32 +0200
Message-Id: <1461157892-9156-1-git-send-email-piotr.lewicki@elfin.de>
X-Mailer: git-send-email 2.5.0
X-Mailman-Approved-At: Thu, 21 Apr 2016 07:40:53 -0700
Subject: [PATCH] replace libav with ffmpeg and add a patch fixing building omxplayer after 3645b27848edd0d873925f5fa2a7686f3ff9eeb9
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
X-List-Received-Date: Wed, 20 Apr 2016 13:12:45 -0000

---
 .../omxplayer/explicitly_link_with_vchostif_library.patch   | 13 +++++++++++++
 recipes-multimedia/omxplayer/omxplayer_git.bb               |  5 +++--
 2 files changed, 16 insertions(+), 2 deletions(-)
 create mode 100644 recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch

diff --git a/recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch b/recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch
new file mode 100644
index 0000000..642f63a
--- /dev/null
+++ b/recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch
@@ -0,0 +1,13 @@
+diff --git a/Makefile b/Makefile
+index 80b63b1..bcfadfb 100644
+--- a/Makefile
++++ b/Makefile
+@@ -51,7 +51,7 @@ version:
+ 	bash gen_version.sh > version.h 
+ 
+ omxplayer.bin: version $(OBJS)
+-	$(CXX) $(LDFLAGS) -o omxplayer.bin $(OBJS) -lvchiq_arm -lvcos -ldbus-1 -lrt -lpthread -lavutil -lavcodec -lavformat -lswscale -lswresample -lpcre
++	$(CXX) $(LDFLAGS) -o omxplayer.bin $(OBJS) -lvchiq_arm -lvchostif -lvcos -ldbus-1 -lrt -lpthread -lavutil -lavcodec -lavformat -lswscale -lswresample -lpcre
+ 	$(STRIP) omxplayer.bin
+ 
+ help.h: README.md Makefile
diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index c8251fe..c2b1342 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -7,8 +7,8 @@ SECTION = "console/utils"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh"
-PR = "r4"
+DEPENDS = "libpcre ffmpeg virtual/egl boost freetype dbus openssl samba libssh"
+PR = "r5"
 
 SRCREV = "15a490b2397b358776c56b017a137c4716eb6b4e"
 SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
@@ -19,6 +19,7 @@ SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master
            file://fix-tar-command-with-DIST.patch \
            file://use-native-pkg-config.patch \
            file://don-t-preserve-file-attributes-when-cp.patch \
+           file://explicitly_link_with_vchostif_library.patch \
            "
 S = "${WORKDIR}/git"
 
-- 
2.5.0


