Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web10.6801.1586850201441743688
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:43:21 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 03E7hKOE025980
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 00:43:20 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 00:43:20 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 06/16] libsemanage: upgrade to 3.0 (20191204)
Date: Tue, 14 Apr 2020 15:41:48 +0800
Message-ID: <20200414074158.32058-6-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414074158.32058-1-yi.zhao@windriver.com>
References: <20200414074158.32058-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

* Refresh libsemanage-allow-to-disable-audit-support.patch
* Fix typos in patches.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/libsemanage.inc           |  2 +-
 ...ibsemanage-allow-to-disable-audit-support.patch | 14 +++++++-------
 ...ibsemanage-define-FD_CLOEXEC-as-necessary.patch |  2 +-
 ...semanage-drop-Wno-unused-but-set-variable.patch |  2 +-
 .../{libsemanage_2.9.bb => libsemanage_3.0.bb}     |  6 +++---
 5 files changed, 13 insertions(+), 13 deletions(-)
 rename recipes-security/selinux/{libsemanage_2.9.bb => libsemanage_3.0.bb} (70%)

diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/selinux/libsemanage.inc
index 81a3eda..0139511 100644
--- a/recipes-security/selinux/libsemanage.inc
+++ b/recipes-security/selinux/libsemanage.inc
@@ -6,7 +6,7 @@ on binary policies such as customizing policy boolean settings."
 SECTION = "base"
 LICENSE = "LGPLv2.1+"
 
-inherit lib_package python3-dir
+inherit lib_package python3native
 
 DEPENDS += "libsepol libselinux bzip2 python3 bison-native flex-native swig-native"
 DEPENDS_append_class-target = " audit"
diff --git a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
index 6ea9c29..c588b61 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
@@ -1,4 +1,4 @@
-From 50f8f9f090425d23ecab2bedc949bc65bc4d58dc Mon Sep 17 00:00:00 2001
+From 1633f72579e3b79d055759256b71e4169627889b Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Mon, 20 Jan 2014 03:53:48 -0500
 Subject: [PATCH] libsemanage: allow to disable audit support
@@ -13,7 +13,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  3 files changed, 31 insertions(+), 2 deletions(-)
 
 diff --git a/src/Makefile b/src/Makefile
-index 8240c3a..1485d23 100644
+index 3bd1e20..483e818 100644
 --- a/src/Makefile
 +++ b/src/Makefile
 @@ -26,6 +26,14 @@ ifeq ($(DEBUG),1)
@@ -41,7 +41,7 @@ index 8240c3a..1485d23 100644
  
  $(LIBPC): $(LIBPC).in ../VERSION
 diff --git a/src/seusers_local.c b/src/seusers_local.c
-index a79e2d3..ce76dee 100644
+index 3e2761c..8bc6b83 100644
 --- a/src/seusers_local.c
 +++ b/src/seusers_local.c
 @@ -8,7 +8,11 @@ typedef struct semanage_seuser record_t;
@@ -98,10 +98,10 @@ index a79e2d3..ce76dee 100644
  		semanage_seuser_free(seuser);
  	return rc;
 diff --git a/tests/Makefile b/tests/Makefile
-index 324766a..5732ec7 100644
+index 69f49a3..f914492 100644
 --- a/tests/Makefile
 +++ b/tests/Makefile
-@@ -3,10 +3,18 @@ SOURCES = $(sort $(wildcard *.c))
+@@ -4,10 +4,18 @@ CILS = $(sort $(wildcard *.cil))
  
  ###########################################################################
  
@@ -119,8 +119,8 @@ index 324766a..5732ec7 100644
 -override LDLIBS += -lcunit -lbz2 -laudit -lselinux -lsepol
 +override LDLIBS += -lcunit -lbz2 $(LIBAUDIT) -lselinux -lsepol
  
- OBJECTS = $(SOURCES:.c=.o) 
- 
+ OBJECTS = $(SOURCES:.c=.o)
+ POLICIES = $(CILS:.cil=.policy)
 -- 
 2.7.4
 
diff --git a/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLOEXEC-as-necessary.patch b/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLOEXEC-as-necessary.patch
index 0c77c7a..45bcbe6 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLOEXEC-as-necessary.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLOEXEC-as-necessary.patch
@@ -7,7 +7,7 @@ In truly old systems, even FD_CLOEXEC may not be defined.  Produce a
 warning and duplicate the #define for FD_CLOEXEC found in
 asm-generic/fcntl.h on more modern platforms.
 
-Uptream-Status: Inappropriate
+Upstream-Status: Inappropriate
 
 Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
 ---
diff --git a/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch b/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
index de71e27..c9b052c 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
@@ -3,7 +3,7 @@ From: Randy MacLeod <Randy.MacLeod@windriver.com>
 Date: Tue, 30 Apr 2013 23:15:57 -0400
 Subject: [PATCH] libselinux: drop flag: -Wno-unused-but-set-variable
 
-Upstream-Status: Inappropriate (older compilers only).
+Upstream-Status: Inappropriate [older compilers only]
 
 Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
 ---
diff --git a/recipes-security/selinux/libsemanage_2.9.bb b/recipes-security/selinux/libsemanage_3.0.bb
similarity index 70%
rename from recipes-security/selinux/libsemanage_2.9.bb
rename to recipes-security/selinux/libsemanage_3.0.bb
index 83320a1..450675b 100644
--- a/recipes-security/selinux/libsemanage_2.9.bb
+++ b/recipes-security/selinux/libsemanage_3.0.bb
@@ -1,10 +1,10 @@
-require selinux_20190315.inc
+require selinux_20191204.inc
 require ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
-SRC_URI[md5sum] = "25f086ff66175a0ca0e7b34dbe8586b7"
-SRC_URI[sha256sum] = "2576349d344492e73b468059767268dec1dabd8c35f3c7222c3ec2448737bc1c"
+SRC_URI[md5sum] = "17a2fc780af0a36f2cf27ab7c4e85946"
+SRC_URI[sha256sum] = "a497b0720d54eac427f1f3f618eed417e50ed8f4e47ed0f7a1d391bd416e84cf"
 
 SRC_URI += "\
 	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
-- 
2.17.1

