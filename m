Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web10.2653.1592467046048824604
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jun 2020 00:57:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: mingli.yu@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 05I7v3S6023236
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 18 Jun 2020 00:57:14 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.487.0; Thu, 18 Jun 2020 00:56:52 -0700
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH] checkpolicy: remove unused te_assertions
Date: Thu, 18 Jun 2020 15:55:02 +0800
Message-ID: <20200618075502.4073370-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Mingli Yu <mingli.yu@windriver.com>

Backport a patch to remove unused te_assertions to fix the
build failure on fedora 32.

Fixes:
 | /build/tmp-glibc/hosttools/ld: policy_define.o:(.bss+0x28): multiple definition of `te_assertions'/build/tmp-glibc/hosttools/ld: policy_define.o:(.bss+0x28): multiple definition of `te_assertions'; y.tab.o:(.bss+0x18): first defined here
 | collect2: error: ld returned 1 exit status
 | make: *** [Makefile:33: checkpolicy] Error 1

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 ...ckpolicy-remove-unused-te_assertions.patch | 45 +++++++++++++++++++
 recipes-security/selinux/checkpolicy_3.0.bb   |  4 ++
 2 files changed, 49 insertions(+)
 create mode 100644 recipes-security/selinux/checkpolicy/0001-checkpolicy-remove-unused-te_assertions.patch

diff --git a/recipes-security/selinux/checkpolicy/0001-checkpolicy-remove-unused-te_assertions.patch b/recipes-security/selinux/checkpolicy/0001-checkpolicy-remove-unused-te_assertions.patch
new file mode 100644
index 0000000..61c301e
--- /dev/null
+++ b/recipes-security/selinux/checkpolicy/0001-checkpolicy-remove-unused-te_assertions.patch
@@ -0,0 +1,45 @@
+From 95d8f16ece96829109eb75a605b1459a25b5a6be Mon Sep 17 00:00:00 2001
+From: Ondrej Mosnacek <omosnace@redhat.com>
+Date: Thu, 23 Jan 2020 13:57:15 +0100
+Subject: [PATCH] checkpolicy: remove unused te_assertions
+
+This variable is declared in a header file, but never defined or used.
+The te_assert structure definition is only used in this declaration, so
+remove both.
+
+Upstream-Status: Backport [https://github.com/SELinuxProject/selinux/commit/4d330d0d3155211f119b3082f728ae42dcc01e96]
+
+Signed-off-by: Ondrej Mosnacek <omosnace@redhat.com>
+Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
+---
+ checkpolicy/checkpolicy.h | 14 --------------
+ 1 file changed, 14 deletions(-)
+
+diff --git a/checkpolicy.h b/checkpolicy.h
+index 3868f1fa023b..f127687e72a6 100644
+--- a/checkpolicy.h
++++ b/checkpolicy.h
+@@ -1,20 +1,6 @@
+ #ifndef _CHECKPOLICY_H_
+ #define _CHECKPOLICY_H_
+ 
+-#include <sepol/policydb/ebitmap.h>
+-
+-typedef struct te_assert {
+-	ebitmap_t stypes;
+-	ebitmap_t ttypes;
+-	ebitmap_t tclasses;
+-	int self;
+-	sepol_access_vector_t *avp;
+-	unsigned long line;
+-	struct te_assert *next;
+-} te_assert_t;
+-
+-te_assert_t *te_assertions;
+-
+ extern unsigned int policyvers;
+ 
+ #endif
+-- 
+2.24.1
+
diff --git a/recipes-security/selinux/checkpolicy_3.0.bb b/recipes-security/selinux/checkpolicy_3.0.bb
index 201da68..50d6217 100644
--- a/recipes-security/selinux/checkpolicy_3.0.bb
+++ b/recipes-security/selinux/checkpolicy_3.0.bb
@@ -5,3 +5,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 SRC_URI[md5sum] = "b7c5547b95ce855bcdc10cb8adba8223"
 SRC_URI[sha256sum] = "c88c719a141dd5c1202d49c378c7f063349d630522d5e04dc6e0c53da81aa4f8"
+
+SRC_URI += "\
+       file://0001-checkpolicy-remove-unused-te_assertions.patch \
+"
-- 
2.24.1

