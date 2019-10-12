Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72C19E00DB6; Sat, 12 Oct 2019 01:17:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C8DFE00D4F
	for <yocto@yoctoproject.org>; Sat, 12 Oct 2019 01:17:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id x9C8HGk2011898
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 12 Oct 2019 01:17:16 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Sat, 12 Oct 2019 01:17:15 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@kernel.crashing.org>
Date: Sat, 12 Oct 2019 16:17:10 +0800
Message-ID: <1570868230-34625-3-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570868230-34625-1-git-send-email-hongxu.jia@windriver.com>
References: <1570868230-34625-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 3/3] nss: conditionally enable fips
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
X-List-Received-Date: Sat, 12 Oct 2019 08:17:25 -0000
Content-Type: text/plain

Add export NSS_FORCE_FIPS=1 to force enable fips, and add the same
macro limitaition to fips enable test, currently we are not ready
to support nss fips

...
$ certutil -N -d sql:. --empty-password
|certutil: function failed: SEC_ERROR_PKCS11_DEVICE_ERROR: A PKCS #11
module returned CKR_DEVICE_ERROR, indicating that a problem has occurred
with the token or slot.

$rpm -h
|error: Failed to initialize NSS library
...

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../nss/nss/0001-conditionally-enable-fips.patch   | 93 ++++++++++++++++++++++
 recipes-support/nss/nss_3.%.bbappend               |  4 +
 recipes-support/nss/nss_fips.inc                   |  4 +
 3 files changed, 101 insertions(+)
 create mode 100644 recipes-support/nss/nss/0001-conditionally-enable-fips.patch
 create mode 100644 recipes-support/nss/nss_3.%.bbappend
 create mode 100644 recipes-support/nss/nss_fips.inc

diff --git a/recipes-support/nss/nss/0001-conditionally-enable-fips.patch b/recipes-support/nss/nss/0001-conditionally-enable-fips.patch
new file mode 100644
index 0000000..d11db91
--- /dev/null
+++ b/recipes-support/nss/nss/0001-conditionally-enable-fips.patch
@@ -0,0 +1,93 @@
+From f2cb8bcc556aa1121db7209d433170bd1ab60954 Mon Sep 17 00:00:00 2001
+From: Hongxu Jia <hongxu.jia@windriver.com>
+Date: Sat, 12 Oct 2019 10:49:28 +0800
+Subject: [PATCH] conditionally enable fips
+
+Add export NSS_FORCE_FIPS=1 to force enable fips, and add the same
+macro limitaition to fips enable test, currently we are not ready
+to support nss fips
+
+...
+$ certutil -N -d sql:. --empty-password
+|certutil: function failed: SEC_ERROR_PKCS11_DEVICE_ERROR: A PKCS #11
+module returned CKR_DEVICE_ERROR, indicating that a problem has occurred
+with the token or slot.
+
+$rpm -h
+|error: Failed to initialize NSS library
+...
+
+Upstream-Status: Inappropriate [oe specific]
+
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ nss/coreconf/config.mk       | 2 ++
+ nss/lib/freebl/nsslowhash.c  | 2 +-
+ nss/lib/pk11wrap/pk11util.c  | 2 +-
+ nss/lib/sysinit/nsssysinit.c | 4 ++++
+ 4 files changed, 8 insertions(+), 2 deletions(-)
+
+diff --git a/nss/coreconf/config.mk b/nss/coreconf/config.mk
+index 60a0841..dcca87f 100644
+--- a/nss/coreconf/config.mk
++++ b/nss/coreconf/config.mk
+@@ -179,6 +179,8 @@ endif
+ # executing the startup tests at library load time.
+ ifndef NSS_FORCE_FIPS
+ DEFINES += -DNSS_NO_INIT_SUPPORT
++else
++DEFINES += -DNSS_FORCE_FIPS
+ endif
+ 
+ ifdef NSS_SEED_ONLY_DEV_URANDOM
+diff --git a/nss/lib/freebl/nsslowhash.c b/nss/lib/freebl/nsslowhash.c
+index 22f9781..baf71c3 100644
+--- a/nss/lib/freebl/nsslowhash.c
++++ b/nss/lib/freebl/nsslowhash.c
+@@ -26,7 +26,7 @@ struct NSSLOWHASHContextStr {
+ static int
+ nsslow_GetFIPSEnabled(void)
+ {
+-#ifdef LINUX
++#if defined LINUX && defined NSS_FORCE_FIPS
+     FILE *f;
+     char d;
+     size_t size;
+diff --git a/nss/lib/pk11wrap/pk11util.c b/nss/lib/pk11wrap/pk11util.c
+index 502c4d0..cd86270 100644
+--- a/nss/lib/pk11wrap/pk11util.c
++++ b/nss/lib/pk11wrap/pk11util.c
+@@ -98,7 +98,7 @@ SECMOD_Shutdown()
+ int
+ secmod_GetSystemFIPSEnabled(void)
+ {
+-#ifdef LINUX
++#if defined LINUX && defined NSS_FORCE_FIPS
+     FILE *f;
+     char d;
+     size_t size;
+diff --git a/nss/lib/sysinit/nsssysinit.c b/nss/lib/sysinit/nsssysinit.c
+index bd0fac2..5c09e8d 100644
+--- a/nss/lib/sysinit/nsssysinit.c
++++ b/nss/lib/sysinit/nsssysinit.c
+@@ -168,6 +168,7 @@ getFIPSEnv(void)
+ static PRBool
+ getFIPSMode(void)
+ {
++#ifdef NSS_FORCE_FIPS
+     FILE *f;
+     char d;
+     size_t size;
+@@ -186,6 +187,9 @@ getFIPSMode(void)
+     if (d != '1')
+         return PR_FALSE;
+     return PR_TRUE;
++#else
++    return PR_FALSE;
++#endif
+ }
+ 
+ #define NSS_DEFAULT_FLAGS "flags=readonly"
+-- 
+2.7.4
+
diff --git a/recipes-support/nss/nss_3.%.bbappend b/recipes-support/nss/nss_3.%.bbappend
new file mode 100644
index 0000000..9608ca3
--- /dev/null
+++ b/recipes-support/nss/nss_3.%.bbappend
@@ -0,0 +1,4 @@
+FIPSINC = ""
+FIPSINC_class-target = "${@'' if d.getVar('OPENSSL_FIPS_ENABLED', True) != '1' else 'nss_fips.inc'}"
+
+require ${FIPSINC}
diff --git a/recipes-support/nss/nss_fips.inc b/recipes-support/nss/nss_fips.inc
new file mode 100644
index 0000000..b183f55
--- /dev/null
+++ b/recipes-support/nss/nss_fips.inc
@@ -0,0 +1,4 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/nss:"
+SRC_URI += " \
+    file://0001-conditionally-enable-fips.patch \
+"
-- 
2.7.4


