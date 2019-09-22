Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D069E00A04; Sun, 22 Sep 2019 07:57:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66855E0082A
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2019 07:57:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x8MEvcXV007651
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 22 Sep 2019 07:57:38 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Sun, 22 Sep 2019 07:57:37 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Sun, 22 Sep 2019 22:56:54 +0800
Message-ID: <1569164228-26934-2-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
References: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 1/15] fipscheck: add 1.5.0
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
X-List-Received-Date: Sun, 22 Sep 2019 14:57:42 -0000
Content-Type: text/plain

Port it from fedora:
https://src.fedoraproject.org/rpms/fipscheck

It is required by openssh fips.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../0001-compat-fip-with-openssl-1.0.2.patch       | 34 ++++++++++++++++++++++
 recipes-connectivity/openssh/fipscheck_1.5.0.bb    | 30 +++++++++++++++++++
 templates/feature/openssl-fips/template.conf       |  2 +-
 3 files changed, 65 insertions(+), 1 deletion(-)
 create mode 100644 recipes-connectivity/openssh/fipscheck/0001-compat-fip-with-openssl-1.0.2.patch
 create mode 100644 recipes-connectivity/openssh/fipscheck_1.5.0.bb

diff --git a/recipes-connectivity/openssh/fipscheck/0001-compat-fip-with-openssl-1.0.2.patch b/recipes-connectivity/openssh/fipscheck/0001-compat-fip-with-openssl-1.0.2.patch
new file mode 100644
index 0000000..22e5a62
--- /dev/null
+++ b/recipes-connectivity/openssh/fipscheck/0001-compat-fip-with-openssl-1.0.2.patch
@@ -0,0 +1,34 @@
+From 3147ae2a63f10f9bbdd0a617b450ff8b9868e60f Mon Sep 17 00:00:00 2001
+From: Hongxu Jia <hongxu.jia@windriver.com>
+Date: Fri, 20 Sep 2019 17:51:09 +0800
+Subject: [PATCH] compat fip with openssl 1.0.2
+
+In /usr/lib64/ssl/fips-2.0/include/openssl/opensslv.h
+...
+define OPENSSL_VERSION_NUMBER  0x10100000L
+...
+Since fips include file compat with openssl 1.1.0, do not include it
+in Yocto
+
+Upstream-Status: Inappropriate [oe specific]
+
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ src/filehmac.c | 1 -
+ 1 file changed, 1 deletion(-)
+
+diff --git a/src/filehmac.c b/src/filehmac.c
+index a8eef00..0b36cec 100644
+--- a/src/filehmac.c
++++ b/src/filehmac.c
+@@ -41,7 +41,6 @@
+ #include <sys/wait.h>
+ 
+ #if defined(WITH_OPENSSL)
+-#include <openssl/fips.h>
+ #include <openssl/evp.h>
+ #include <openssl/hmac.h>
+ #elif defined(WITH_NSS)
+-- 
+2.7.4
+
diff --git a/recipes-connectivity/openssh/fipscheck_1.5.0.bb b/recipes-connectivity/openssh/fipscheck_1.5.0.bb
new file mode 100644
index 0000000..68051d2
--- /dev/null
+++ b/recipes-connectivity/openssh/fipscheck_1.5.0.bb
@@ -0,0 +1,30 @@
+SUMMARY = "A library for integrity verification of FIPS validated modules"
+DESCRIPTION = "FIPSCheck is a library for integrity verification of FIPS validated \
+modules. The package also provides helper binaries for creation and \
+verification of the HMAC-SHA256 checksum files."
+HOMEPAGE = "https://pagure.io/fipscheck"
+SECTION = "libs/network"
+
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://COPYING;md5=35f2904ce138ac5fa63e7cedf96bbedf"
+
+SRC_URI = "https://releases.pagure.org/fipscheck/${BPN}-${PV}.tar.bz2 \
+           file://0001-compat-fip-with-openssl-1.0.2.patch \
+"
+SRC_URI[md5sum] = "86e756a7d2aa15f3f91033fb3eced99b"
+SRC_URI[sha256sum] = "7ba38100ced187f44b12dd52c8c74db8f366a2a8b9da819bd3e7c6ea17f469d5"
+
+DEPENDS = " \
+    openssl \
+    openssl-fips \
+"
+
+inherit autotools pkgconfig
+
+EXTRA_OECONF += " \
+    --disable-static \
+"
+EXTRA_OEMAKE += " \
+    -I${STAGING_LIBDIR_NATIVE}/ssl/fips-2.0/include \
+"
+
diff --git a/templates/feature/openssl-fips/template.conf b/templates/feature/openssl-fips/template.conf
index 6da678c..9a551c3 100644
--- a/templates/feature/openssl-fips/template.conf
+++ b/templates/feature/openssl-fips/template.conf
@@ -8,4 +8,4 @@ OPENSSL_FIPS_PREBUILT ??= ""
 
 PNWHITELIST_meta-openssl-one-zero-two-fips += 'openssl-fips'
 PNWHITELIST_meta-openssl-one-zero-two-fips += 'openssl-fips-example'
-
+PNWHITELIST_meta-openssl-one-zero-two-fips += 'fipscheck'
-- 
2.7.4


