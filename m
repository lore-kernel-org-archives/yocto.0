Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.6869.1586850214418254770
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:43:34 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 03E7grgJ001032
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 00:43:03 -0700
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 00:42:42 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 04/16] libselinux: upgrade to 3.0 (20191204)
Date: Tue, 14 Apr 2020 15:41:46 +0800
Message-ID: <20200414074158.32058-4-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414074158.32058-1-yi.zhao@windriver.com>
References: <20200414074158.32058-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

* Backport a patch to fix build failure with musl.
* Fix typos in patches.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...ainst-musl-and-uClibc-libc-libraries.patch | 38 +++++++++++++++++++
 ...linux-define-FD_CLOEXEC-as-necessary.patch |  2 +-
 ...nux-drop-Wno-unused-but-set-variable.patch |  2 +-
 .../libselinux-make-O_CLOEXEC-optional.patch  |  2 +-
 ...ibselinux-make-SOCK_CLOEXEC-optional.patch |  2 +-
 .../{libselinux_2.9.bb => libselinux_3.0.bb}  |  7 ++--
 6 files changed, 46 insertions(+), 7 deletions(-)
 create mode 100644 recipes-security/selinux/libselinux/0001-Fix-building-against-musl-and-uClibc-libc-libraries.patch
 rename recipes-security/selinux/{libselinux_2.9.bb => libselinux_3.0.bb} (59%)

diff --git a/recipes-security/selinux/libselinux/0001-Fix-building-against-musl-and-uClibc-libc-libraries.patch b/recipes-security/selinux/libselinux/0001-Fix-building-against-musl-and-uClibc-libc-libraries.patch
new file mode 100644
index 0000000..8308553
--- /dev/null
+++ b/recipes-security/selinux/libselinux/0001-Fix-building-against-musl-and-uClibc-libc-libraries.patch
@@ -0,0 +1,38 @@
+From 61bfcbffce32be51d712040c3f84293b78428184 Mon Sep 17 00:00:00 2001
+From: Adam Duskett <Aduskett@gmail.com>
+Date: Tue, 7 Apr 2020 13:53:05 -0700
+Subject: [PATCH] Fix building against musl and uClibc libc libraries.
+
+Currently, the src/Makefile provides the FTS_LDLIBS when building against musl
+or uClibc. However, this is missing from utils/Makefile, which causes linking
+to fail.
+
+Add the FTS_LDLIBS variable to the LDLIBS variable in utils/Makefile to fix
+compiling against uClibc and musl.
+
+Signed-off-by: Adam Duskett <Aduskett@gmail.com>
+
+Upstream-Status: Backport
+[https://github.com/SELinuxProject/selinux/commit/aa40067b7b86d5e4c951fccae1aa98baff148613]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ utils/Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/utils/Makefile b/utils/Makefile
+index 3615063..a5632b7 100644
+--- a/utils/Makefile
++++ b/utils/Makefile
+@@ -45,7 +45,7 @@ endif
+ 
+ override CFLAGS += -I../include -D_GNU_SOURCE $(DISABLE_FLAGS) $(PCRE_CFLAGS)
+ override LDFLAGS += -L../src
+-override LDLIBS += -lselinux
++override LDLIBS += -lselinux $(FTS_LDLIBS)
+ PCRE_LDLIBS ?= -lpcre
+ 
+ ifeq ($(ANDROID_HOST),y)
+-- 
+2.7.4
+
diff --git a/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch b/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch
index ad18cf5..25d4b24 100644
--- a/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch
+++ b/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch
@@ -7,7 +7,7 @@ In truly old systems, even FD_CLOEXEC may not be defined.  Produce a
 warning and duplicate the #define for FD_CLOEXEC found in
 asm-generic/fcntl.h on more modern platforms.
 
-Uptream-Status: Inappropriate
+Upstream-Status: Inappropriate
 
 Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
 
diff --git a/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch b/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch
index d58e4eb..688b4e3 100644
--- a/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch
+++ b/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch
@@ -3,7 +3,7 @@ From: Randy MacLeod <Randy.MacLeod@windriver.com>
 Date: Tue, 30 Apr 2013 17:28:34 -0400
 Subject: [PATCH] libselinux: drop flag: -Wno-unused-but-set-variable
 
-Upstream status: inappropriate (older compilers only).
+Upstream status: Inappropriate [older compilers only]
 
 Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
 
diff --git a/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch b/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
index 6394bf0..1d6f3a7 100644
--- a/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
+++ b/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
@@ -14,7 +14,7 @@ compile-time option and generate a warning when it is not available.  The
 actual impact of leaking these file descriptors is minimal, though it does
 produce curious AVC Denied messages.
 
-Uptream-Status: Inappropriate [O_CLOEXEC has been in Linux since 2007 and POSIX since 2008]
+Upstream-Status: Inappropriate [O_CLOEXEC has been in Linux since 2007 and POSIX since 2008]
 
 Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
diff --git a/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch b/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch
index febced7..77a9136 100644
--- a/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch
+++ b/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch
@@ -9,7 +9,7 @@ SOCK_CLOEXEC suffers the same problem as O_CLOEXEC on some older
 platforms, we need to ensure we protect the references it it in the same
 way.
 
-Uptream-Status: Inappropriate
+Upstream-Status: Inappropriate
 
 Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
 
diff --git a/recipes-security/selinux/libselinux_2.9.bb b/recipes-security/selinux/libselinux_3.0.bb
similarity index 59%
rename from recipes-security/selinux/libselinux_2.9.bb
rename to recipes-security/selinux/libselinux_3.0.bb
index f04bc4a..05d2346 100644
--- a/recipes-security/selinux/libselinux_2.9.bb
+++ b/recipes-security/selinux/libselinux_3.0.bb
@@ -1,14 +1,15 @@
-require selinux_20190315.inc
+require selinux_20191204.inc
 require ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 
-SRC_URI[md5sum] = "bb449431b6ed55a0a0496dbc366d6e31"
-SRC_URI[sha256sum] = "1bccc8873e449587d9a2b2cf253de9b89a8291b9fbc7c59393ca9e5f5f4d2693"
+SRC_URI[md5sum] = "b387a66f087b6d97713570e85ec89d89"
+SRC_URI[sha256sum] = "2ea2b30f671dae9d6b1391cbe8fb2ce5d36a3ee4fb1cd3c32f0d933c31b82433"
 
 SRC_URI += "\
         file://libselinux-drop-Wno-unused-but-set-variable.patch \
         file://libselinux-make-O_CLOEXEC-optional.patch \
         file://libselinux-make-SOCK_CLOEXEC-optional.patch \
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
+        file://0001-Fix-building-against-musl-and-uClibc-libc-libraries.patch \
         "
-- 
2.17.1

