Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f169.google.com (mail-ea0-f169.google.com
	[209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AC22E007AE
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 10:01:40 -0800 (PST)
Received: by mail-ea0-f169.google.com with SMTP id l9so10759690eaj.14
	for <yocto@yoctoproject.org>; Wed, 04 Dec 2013 10:01:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=yQpC3iwYy+ynl7kngHwnQ7cIDWIkV8LcEfGpKhC4GeM=;
	b=lB2Ka8oj+lMR4TvUuCGljM55Id0vdLKRE7ezH07HsRWgUhKCjE5x0haPGqrrNjL513
	u1g98lQ0oAJp7bunsqqbUFYXm6ymht+QEcq3NXmTaRnHxSfrXES2PPCuhm34gcpatmlZ
	kABVq9mfYVnh2c8X4emxKlDVP+Ypt7J0VlAhobDiydbgEDgUJhohs3ij/XRGWHmOszqn
	Pgsg22wsA8z+ZfPRS7qfL9AkxsxtiyW5eprf9OVu9M0hoPMbzYyR9oV4LuAvg4Jsqysk
	8CXNlPLmu4qBzIDMXBbMu+xRHd4EShPSlLIpD6kF6kJ2zkoX+YKrQorK1agctfEfVLgS
	2cSQ==
X-Gm-Message-State: ALoCoQkc+OC6HkQtROcoHNj4Y8NozYP2qacwcrHaTE1O3cA8MNyccANzpyNp2nNAvJ28xC5tFUnZ
X-Received: by 10.14.100.4 with SMTP id y4mr12482910eef.40.1386180099809;
	Wed, 04 Dec 2013 10:01:39 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id e43sm85965913eep.7.2013.12.04.10.01.39
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Dec 2013 10:01:39 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed,  4 Dec 2013 20:01:28 +0200
Message-Id: <1386180088-27454-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1386180088-27454-1-git-send-email-andrei@gherzan.ro>
References: <1386180088-27454-1-git-send-email-andrei@gherzan.ro>
Subject: [PATCH 2/2] libav: Update to v0.8.8
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
X-List-Received-Date: Wed, 04 Dec 2013 18:01:43 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 .../0001-configure-enable-pic-for-AArch64.patch    | 23 ----------------------
 .../0001-configure-enable-pic-for-AArch64.patch    | 23 ++++++++++++++++++++++
 meta/recipes-multimedia/libav/libav_0.8.8.bb       | 18 -----------------
 meta/recipes-multimedia/libav/libav_0.8.9.bb       | 16 +++++++++++++++
 4 files changed, 39 insertions(+), 41 deletions(-)
 delete mode 100644 meta/recipes-multimedia/libav/libav-0.8.8/0001-configure-enable-pic-for-AArch64.patch
 create mode 100644 meta/recipes-multimedia/libav/libav-0.8.9/0001-configure-enable-pic-for-AArch64.patch
 delete mode 100644 meta/recipes-multimedia/libav/libav_0.8.8.bb
 create mode 100644 meta/recipes-multimedia/libav/libav_0.8.9.bb

diff --git a/meta/recipes-multimedia/libav/libav-0.8.8/0001-configure-enable-pic-for-AArch64.patch b/meta/recipes-multimedia/libav/libav-0.8.8/0001-configure-enable-pic-for-AArch64.patch
deleted file mode 100644
index d9b22b9..0000000
--- a/meta/recipes-multimedia/libav/libav-0.8.8/0001-configure-enable-pic-for-AArch64.patch
+++ /dev/null
@@ -1,23 +0,0 @@
-From 58db99e98f615d79ea90cac8f4bcf11c94e3e7c7 Mon Sep 17 00:00:00 2001
-From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
-Date: Thu, 10 Jan 2013 12:42:19 +0100
-Subject: [PATCH] configure: enable pic for AArch64
-
-Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
-
-Upstream-Status: Backport
----
- configure |    2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
---- git.orig/configure
-+++ git/configure
-@@ -2393,7 +2393,7 @@ check_host_cflags -std=c99
- check_host_cflags -Wall
- 
- case "$arch" in
--    alpha|ia64|mips|parisc|ppc|sparc)
-+    alpha|ia64|mips|parisc|ppc|sparc|aarch64)
-         spic=$shared
-     ;;
-     x86)
diff --git a/meta/recipes-multimedia/libav/libav-0.8.9/0001-configure-enable-pic-for-AArch64.patch b/meta/recipes-multimedia/libav/libav-0.8.9/0001-configure-enable-pic-for-AArch64.patch
new file mode 100644
index 0000000..d9b22b9
--- /dev/null
+++ b/meta/recipes-multimedia/libav/libav-0.8.9/0001-configure-enable-pic-for-AArch64.patch
@@ -0,0 +1,23 @@
+From 58db99e98f615d79ea90cac8f4bcf11c94e3e7c7 Mon Sep 17 00:00:00 2001
+From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
+Date: Thu, 10 Jan 2013 12:42:19 +0100
+Subject: [PATCH] configure: enable pic for AArch64
+
+Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
+
+Upstream-Status: Backport
+---
+ configure |    2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+--- git.orig/configure
++++ git/configure
+@@ -2393,7 +2393,7 @@ check_host_cflags -std=c99
+ check_host_cflags -Wall
+ 
+ case "$arch" in
+-    alpha|ia64|mips|parisc|ppc|sparc)
++    alpha|ia64|mips|parisc|ppc|sparc|aarch64)
+         spic=$shared
+     ;;
+     x86)
diff --git a/meta/recipes-multimedia/libav/libav_0.8.8.bb b/meta/recipes-multimedia/libav/libav_0.8.8.bb
deleted file mode 100644
index 9cb4cf2..0000000
--- a/meta/recipes-multimedia/libav/libav_0.8.8.bb
+++ /dev/null
@@ -1,18 +0,0 @@
-require libav.inc
-
-SRC_URI = "http://libav.org/releases/libav-0.8.8.tar.xz \
-           file://0001-configure-enable-pic-for-AArch64.patch"
-
-SRC_URI[md5sum] = "34b8f1279a04466386ed67731197efe3"
-SRC_URI[sha256sum] = "e95cf618eb6239177a62c46f15e840c37e02e8308baf94912fc5910ff4aacbf2"
-
-LIC_FILES_CHKSUM = "file://COPYING.GPLv2;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
-                    file://COPYING.GPLv3;md5=d32239bcb673463ab874e80d47fae504 \
-                    file://COPYING.LGPLv2.1;md5=e344c8fa836c3a41c4cbd79d7bd3a379 \
-                    file://COPYING.LGPLv3;md5=e6a600fd5e1d9cbde2d983680233ad02"
-
-EXTRA_OECONF += " \
-    --enable-postproc \
-"
-
-
diff --git a/meta/recipes-multimedia/libav/libav_0.8.9.bb b/meta/recipes-multimedia/libav/libav_0.8.9.bb
new file mode 100644
index 0000000..065a6d2
--- /dev/null
+++ b/meta/recipes-multimedia/libav/libav_0.8.9.bb
@@ -0,0 +1,16 @@
+require libav.inc
+
+SRC_URI = "http://libav.org/releases/libav-0.8.9.tar.xz \
+           file://0001-configure-enable-pic-for-AArch64.patch"
+
+SRC_URI[md5sum] = "7c0e5743cd5c4d4b1bcafd02a2e82e09"
+SRC_URI[sha256sum] = "4f5181164e4007d5b0013bb3cc5e3b7393ab71ac286319c714b7697e2784f77f"
+
+LIC_FILES_CHKSUM = "file://COPYING.GPLv2;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
+                    file://COPYING.GPLv3;md5=d32239bcb673463ab874e80d47fae504 \
+                    file://COPYING.LGPLv2.1;md5=e344c8fa836c3a41c4cbd79d7bd3a379 \
+                    file://COPYING.LGPLv3;md5=e6a600fd5e1d9cbde2d983680233ad02"
+
+EXTRA_OECONF += " \
+    --enable-postproc \
+"
-- 
1.8.1.4


