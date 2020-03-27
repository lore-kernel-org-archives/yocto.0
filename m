Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web11.3995.1585274304407664373
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2020 18:58:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 02R1wN6K001143
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 26 Mar 2020 18:58:23 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Thu, 26 Mar
 2020 18:58:22 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>, <mark.hatle@kernel.crashing.org>
Subject: [meta-openssl102-fips][PATCH] nss: drop bbappend and patch
Date: Fri, 27 Mar 2020 09:58:20 +0800
Message-ID: <20200327015820.4451-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

In nss 3.51, there is a C macro NSS_FIPS_DISABLED can be used to disable
some FIPS compliant code and enable alternative implementations. And the
current build system never defines NSS_FIPS_DISABLED and always uses the
FIPS compliant code. So we can drop this local patch.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../nss/0001-conditionally-enable-fips.patch  | 93 -------------------
 recipes-support/nss/nss_3.%.bbappend          |  4 -
 recipes-support/nss/nss_fips.inc              |  4 -
 3 files changed, 101 deletions(-)
 delete mode 100644 recipes-support/nss/nss/0001-conditionally-enable-fips.patch
 delete mode 100644 recipes-support/nss/nss_3.%.bbappend
 delete mode 100644 recipes-support/nss/nss_fips.inc

diff --git a/recipes-support/nss/nss/0001-conditionally-enable-fips.patch b/recipes-support/nss/nss/0001-conditionally-enable-fips.patch
deleted file mode 100644
index d11db91..0000000
--- a/recipes-support/nss/nss/0001-conditionally-enable-fips.patch
+++ /dev/null
@@ -1,93 +0,0 @@
-From f2cb8bcc556aa1121db7209d433170bd1ab60954 Mon Sep 17 00:00:00 2001
-From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Sat, 12 Oct 2019 10:49:28 +0800
-Subject: [PATCH] conditionally enable fips
-
-Add export NSS_FORCE_FIPS=1 to force enable fips, and add the same
-macro limitaition to fips enable test, currently we are not ready
-to support nss fips
-
-...
-$ certutil -N -d sql:. --empty-password
-|certutil: function failed: SEC_ERROR_PKCS11_DEVICE_ERROR: A PKCS #11
-module returned CKR_DEVICE_ERROR, indicating that a problem has occurred
-with the token or slot.
-
-$rpm -h
-|error: Failed to initialize NSS library
-...
-
-Upstream-Status: Inappropriate [oe specific]
-
-Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
----
- nss/coreconf/config.mk       | 2 ++
- nss/lib/freebl/nsslowhash.c  | 2 +-
- nss/lib/pk11wrap/pk11util.c  | 2 +-
- nss/lib/sysinit/nsssysinit.c | 4 ++++
- 4 files changed, 8 insertions(+), 2 deletions(-)
-
-diff --git a/nss/coreconf/config.mk b/nss/coreconf/config.mk
-index 60a0841..dcca87f 100644
---- a/nss/coreconf/config.mk
-+++ b/nss/coreconf/config.mk
-@@ -179,6 +179,8 @@ endif
- # executing the startup tests at library load time.
- ifndef NSS_FORCE_FIPS
- DEFINES += -DNSS_NO_INIT_SUPPORT
-+else
-+DEFINES += -DNSS_FORCE_FIPS
- endif
- 
- ifdef NSS_SEED_ONLY_DEV_URANDOM
-diff --git a/nss/lib/freebl/nsslowhash.c b/nss/lib/freebl/nsslowhash.c
-index 22f9781..baf71c3 100644
---- a/nss/lib/freebl/nsslowhash.c
-+++ b/nss/lib/freebl/nsslowhash.c
-@@ -26,7 +26,7 @@ struct NSSLOWHASHContextStr {
- static int
- nsslow_GetFIPSEnabled(void)
- {
--#ifdef LINUX
-+#if defined LINUX && defined NSS_FORCE_FIPS
-     FILE *f;
-     char d;
-     size_t size;
-diff --git a/nss/lib/pk11wrap/pk11util.c b/nss/lib/pk11wrap/pk11util.c
-index 502c4d0..cd86270 100644
---- a/nss/lib/pk11wrap/pk11util.c
-+++ b/nss/lib/pk11wrap/pk11util.c
-@@ -98,7 +98,7 @@ SECMOD_Shutdown()
- int
- secmod_GetSystemFIPSEnabled(void)
- {
--#ifdef LINUX
-+#if defined LINUX && defined NSS_FORCE_FIPS
-     FILE *f;
-     char d;
-     size_t size;
-diff --git a/nss/lib/sysinit/nsssysinit.c b/nss/lib/sysinit/nsssysinit.c
-index bd0fac2..5c09e8d 100644
---- a/nss/lib/sysinit/nsssysinit.c
-+++ b/nss/lib/sysinit/nsssysinit.c
-@@ -168,6 +168,7 @@ getFIPSEnv(void)
- static PRBool
- getFIPSMode(void)
- {
-+#ifdef NSS_FORCE_FIPS
-     FILE *f;
-     char d;
-     size_t size;
-@@ -186,6 +187,9 @@ getFIPSMode(void)
-     if (d != '1')
-         return PR_FALSE;
-     return PR_TRUE;
-+#else
-+    return PR_FALSE;
-+#endif
- }
- 
- #define NSS_DEFAULT_FLAGS "flags=readonly"
--- 
-2.7.4
-
diff --git a/recipes-support/nss/nss_3.%.bbappend b/recipes-support/nss/nss_3.%.bbappend
deleted file mode 100644
index 9608ca3..0000000
--- a/recipes-support/nss/nss_3.%.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-FIPSINC = ""
-FIPSINC_class-target = "${@'' if d.getVar('OPENSSL_FIPS_ENABLED', True) != '1' else 'nss_fips.inc'}"
-
-require ${FIPSINC}
diff --git a/recipes-support/nss/nss_fips.inc b/recipes-support/nss/nss_fips.inc
deleted file mode 100644
index b183f55..0000000
--- a/recipes-support/nss/nss_fips.inc
+++ /dev/null
@@ -1,4 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/nss:"
-SRC_URI += " \
-    file://0001-conditionally-enable-fips.patch \
-"
-- 
2.17.1

