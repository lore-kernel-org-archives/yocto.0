Return-Path: <Randy.MacLeod@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4274E0151B
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2013 20:15:59 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r413FxuV028901
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2013 20:15:59 -0700 (PDT)
Received: from yow-mthebeau-lx4.wrs.com (128.224.147.159) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Tue, 30 Apr 2013 20:15:58 -0700
From: Randy MacLeod <Randy.MacLeod@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 30 Apr 2013 23:15:57 -0400
Message-ID: <1367378157-8574-1-git-send-email-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 1.8.1
MIME-Version: 1.0
Subject: [PATCH] libsemanage: drop flag: -Wno-unused-but-set-variable
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
X-List-Received-Date: Wed, 01 May 2013 03:15:59 -0000
Content-Type: text/plain

The flag: -Wno-unused-but-set-variable isn't supported on older
versions of gcc such as gcc-4.1.2 which is the native compiler for
RHEL-5.9. Drop this warning flag for both the native and target builds.

Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
---
 ...semanage-drop-Wno-unused-but-set-variable.patch |   17 +++++++++++++++++
 recipes-security/selinux/libsemanage_2.1.9.bb      |    6 ++++--
 recipes-security/selinux/libsemanage_git.bb        |    6 ++++--
 3 files changed, 25 insertions(+), 4 deletions(-)
 create mode 100644 recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch

diff --git a/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch b/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
new file mode 100644
index 0000000..faf8fc5
--- /dev/null
+++ b/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
@@ -0,0 +1,17 @@
+Subject: libselinux: drop flag: -Wno-unused-but-set-variable
+
+Upstream status: inappropriate (older compilers only).
+
+Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
+
+--- libsemanage-2.1.9.orig/src/Makefile
++++ libsemanage-2.1.9/src/Makefile
+@@ -57,7 +57,7 @@
+ LOBJS= $(patsubst %.c,%.lo,$(SRCS)) conf-scan.lo conf-parse.lo
+ CFLAGS ?= -Werror -Wall -W -Wundef -Wshadow -Wmissing-noreturn -Wmissing-format-attribute
+ 
+-SWIG_CFLAGS += -Wno-error -Wno-unused-but-set-variable -Wno-unused-variable -Wno-shadow \
++SWIG_CFLAGS += -Wno-error -Wno-unused-variable -Wno-shadow \
+ 		-Wno-unused-parameter
+ 
+ override CFLAGS += -I../include -I$(INCLUDEDIR) -D_GNU_SOURCE 
diff --git a/recipes-security/selinux/libsemanage_2.1.9.bb b/recipes-security/selinux/libsemanage_2.1.9.bb
index 0e0bc41..3b1d8db 100644
--- a/recipes-security/selinux/libsemanage_2.1.9.bb
+++ b/recipes-security/selinux/libsemanage_2.1.9.bb
@@ -1,4 +1,4 @@
-PR = "r0"
+PR = "r1"
 
 include selinux_20120924.inc
 include ${BPN}.inc
@@ -11,4 +11,6 @@ SRC_URI[sha256sum] = "6f01d17f9751412f7b76e6e7daafeb2faf301b9bfeea83506160c81bec
 SRC_URI += "\
 	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
 	file://libsemanage-fix-path-len-limit.patch \
-	file://libsemanage-fix-path-nologin.patch"
+	file://libsemanage-fix-path-nologin.patch \
+	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
+	"
diff --git a/recipes-security/selinux/libsemanage_git.bb b/recipes-security/selinux/libsemanage_git.bb
index 562512c..b3819a0 100644
--- a/recipes-security/selinux/libsemanage_git.bb
+++ b/recipes-security/selinux/libsemanage_git.bb
@@ -1,4 +1,4 @@
-PR = "r4"
+PR = "r5"
 PV = "2.1.6+git${SRCPV}"
 
 include selinux_git.inc
@@ -10,4 +10,6 @@ SRC_URI += "file://Fix-segfault-for-standard-policy.patch \
 	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
 	file://libsemanage-semanage.conf-for-cross-compile.patch \
 	file://libsemanage-fix-path-len-limit.patch \
-	file://libsemanage-fix-path-nologin.patch"
+	file://libsemanage-fix-path-nologin.patch \
+	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
+	"
-- 
1.7.4.1


