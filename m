Return-Path: <Randy.MacLeod@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA412E01512
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2013 14:28:36 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3ULSZSd004120
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2013 14:28:36 -0700 (PDT)
Received: from yow-mthebeau-lx4.wrs.com (128.224.147.159) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Tue, 30 Apr 2013 14:28:35 -0700
From: Randy MacLeod <Randy.MacLeod@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 30 Apr 2013 17:28:34 -0400
Message-ID: <1367357314-15049-1-git-send-email-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 1.8.1
MIME-Version: 1.0
Subject: [PATCH] libselinux: drop flag: -Wno-unused-but-set-variable
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
X-List-Received-Date: Tue, 30 Apr 2013 21:28:37 -0000
Content-Type: text/plain

The flag: -Wno-unused-but-set-variable isn't supported on older
versions of gcc such as gcc-4.1.2 which is the native compiler for
RHEL-5.9. I've droped this warning flag for both the native and target builds.

Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
---
 .../libselinux-drop-Wno-unused-but-set-variable.patch   | 17 +++++++++++++++++
 recipes-security/selinux/libselinux_2.1.12.bb           |  9 ++++++---
 2 files changed, 23 insertions(+), 3 deletions(-)
 create mode 100644 recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch

diff --git a/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch b/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch
new file mode 100644
index 0000000..9deb67d
--- /dev/null
+++ b/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch
@@ -0,0 +1,17 @@
+Subject: libselinux: drop flag: -Wno-unused-but-set-variable
+
+Upstream status: inappropriate (older compilers only).
+
+Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
+
+--- libselinux-2.1.12.orig/src/Makefile
++++ libselinux-2.1.12/src/Makefile
+@@ -79,7 +79,7 @@
+ 
+ override CFLAGS += -I../include -I$(INCLUDEDIR) -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 $(EMFLAGS)
+ 
+-SWIG_CFLAGS += -Wno-error -Wno-unused-variable -Wno-unused-but-set-variable -Wno-unused-parameter \
++SWIG_CFLAGS += -Wno-error -Wno-unused-variable -Wno-unused-parameter \
+ 		-Wno-shadow -Wno-uninitialized -Wno-missing-prototypes -Wno-missing-declarations
+ 
+ RANLIB=ranlib
diff --git a/recipes-security/selinux/libselinux_2.1.12.bb b/recipes-security/selinux/libselinux_2.1.12.bb
index 34f9c2c..d881534 100644
--- a/recipes-security/selinux/libselinux_2.1.12.bb
+++ b/recipes-security/selinux/libselinux_2.1.12.bb
@@ -1,4 +1,4 @@
-PR = "r0"
+PR = "r1"
 
 include selinux_20120924.inc
 include ${BPN}.inc
@@ -8,5 +8,8 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 SRC_URI[md5sum] = "73270f384a032fad34b5fe075fa05ce2"
 SRC_URI[sha256sum] = "8dad879380e0ce1e4ab67195a08f6052c1396493bcb12fe92a033f49f7dbca9e"
 
-SRC_URI += "file://libselinux-fix-init-load-policy.patch \
-	file://libselinux-pcre-link-order.patch"
+SRC_URI += "\
+        file://libselinux-fix-init-load-policy.patch \
+        file://libselinux-pcre-link-order.patch \
+        file://libselinux-drop-Wno-unused-but-set-variable.patch \
+        "
-- 
1.8.1


