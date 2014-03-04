Return-Path: <karl@hiramoto.org>
Received: from homiemail-a105.g.dreamhost.com (agjbgdcfdbec.dreamhost.com
	[69.163.253.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 700EEE00965
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 14:43:23 -0800 (PST)
Received: from homiemail-a105.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a105.g.dreamhost.com (Postfix) with ESMTP id C888E2005D90C;
	Tue,  4 Mar 2014 14:43:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=hiramoto.org; h=from:to:cc
	:subject:date:message-id; s=hiramoto.org; bh=2grZyKo8eZPVbEihynt
	sNkgFbp0=; b=N5oiEtRnonTgEk9Thdfrj6Cb+BZ2gx3FQnFr6MjKzeV9tfRJzvq
	Z+bYMXkVlh9Xt8ozHUjH0m2IUuUvHrJ6kMH12wLzdlLcgGohVqtLdNZPmt9RyVsY
	t9/PODEwguNtM6NoZhT+68vTuXFIQmsEmNmijndybNRLLVr8LWaGtgZQ=
Received: from smoke (7.Red-83-61-238.dynamicIP.rima-tde.net [83.61.238.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: karl@hiramoto.org)
	by homiemail-a105.g.dreamhost.com (Postfix) with ESMTPSA id
	16DA42005D909; Tue,  4 Mar 2014 14:43:20 -0800 (PST)
Received: by smoke (sSMTP sendmail emulation); Tue, 04 Mar 2014 23:42:39 +0100
From: karl@hiramoto.org
To: yocto@yoctoproject.org
Date: Tue,  4 Mar 2014 23:42:37 +0100
Message-Id: <1393972957-11804-1-git-send-email-karl@hiramoto.org>
X-Mailer: git-send-email 1.8.3.2
Subject: [PATCH] gnutls: Fixed bug that prevented the rejection of v1 intermediate CA certificates.
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
X-List-Received-Date: Tue, 04 Mar 2014 22:43:26 -0000

From: Karl Hiramoto <karl@hiramoto.org>

This patch is for the yocto dylan branch   it comes from uptream:

From 467478d8ff08a3cb4be3034ff04c9d08a0ceba3e
From: Nikos Mavrogiannopoulos <nmav@redhat.com>
Date: Wed, 12 Feb 2014 16:41:33 +0100

For more info see:
http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-1959
http://www.gnutls.org/security.html#GNUTLS-SA-2014-1
https://www.gitorious.org/gnutls/gnutls/commit/467478d8ff08a3cb4be3034ff04c9d08a0ceba3e

Signed-off-by: Karl Hiramoto <karl@hiramoto.org>
---
 ...14-1959-rejection-of-v1-intermediate-cert.patch | 29 ++++++++++++++++++++++
 meta/recipes-support/gnutls/gnutls_2.12.23.bb      |  3 ++-
 2 files changed, 31 insertions(+), 1 deletion(-)
 create mode 100644 meta/recipes-support/gnutls/gnutls/CVE-2014-1959-rejection-of-v1-intermediate-cert.patch

diff --git a/meta/recipes-support/gnutls/gnutls/CVE-2014-1959-rejection-of-v1-intermediate-cert.patch b/meta/recipes-support/gnutls/gnutls/CVE-2014-1959-rejection-of-v1-intermediate-cert.patch
new file mode 100644
index 0000000..fda3839
--- /dev/null
+++ b/meta/recipes-support/gnutls/gnutls/CVE-2014-1959-rejection-of-v1-intermediate-cert.patch
@@ -0,0 +1,29 @@
+From 467478d8ff08a3cb4be3034ff04c9d08a0ceba3e Mon Sep 17 00:00:00 2001
+From: Nikos Mavrogiannopoulos <nmav@redhat.com>
+Date: Wed, 12 Feb 2014 16:41:33 +0100
+Subject: [PATCH 1/5] Fixed bug that prevented the rejection of v1 intermediate
+ CA certificates.
+
+---
+ lib/x509/verify.c | 5 ++++-
+ 1 file changed, 4 insertions(+), 1 deletion(-)
+
+diff --git a/lib/x509/verify.c b/lib/x509/verify.c
+index 2efcebf..c9a6b0d 100644
+--- a/lib/x509/verify.c
++++ b/lib/x509/verify.c
+@@ -645,7 +645,10 @@ _gnutls_x509_verify_certificate (const gnutls_x509_crt_t * certificate_list,
+        * certificates can exist in a supplied chain.
+        */
+       if (!(flags & GNUTLS_VERIFY_ALLOW_ANY_X509_V1_CA_CRT))
+-        flags &= ~(GNUTLS_VERIFY_ALLOW_X509_V1_CA_CRT);
++        {
++          flags &= ~(GNUTLS_VERIFY_ALLOW_X509_V1_CA_CRT);
++          flags |= GNUTLS_VERIFY_DO_NOT_ALLOW_X509_V1_CA_CRT;
++        }
+       if ((ret =
+            _gnutls_verify_certificate2 (certificate_list[i - 1],
+                                         &certificate_list[i], 1, flags,
+-- 
+1.8.3.2
+
diff --git a/meta/recipes-support/gnutls/gnutls_2.12.23.bb b/meta/recipes-support/gnutls/gnutls_2.12.23.bb
index e26b154..04605dd 100644
--- a/meta/recipes-support/gnutls/gnutls_2.12.23.bb
+++ b/meta/recipes-support/gnutls/gnutls_2.12.23.bb
@@ -6,7 +6,8 @@ SRC_URI += "file://gnutls-openssl.patch \
             file://correct_rpl_gettimeofday_signature.patch \
             file://configure-fix.patch \
             file://avoid_AM_PROG_MKDIR_P_warning_error_with_automake_1.12.patch \
-	    file://CVE-2014-0092-corrected-return-codes.patch \
+            file://CVE-2014-1959-rejection-of-v1-intermediate-cert.patch \
+            file://CVE-2014-0092-corrected-return-codes.patch \
             ${@['', 'file://fix-gettext-version.patch'][bb.data.inherits_class('native', d) or (not ((d.getVar("INCOMPATIBLE_LICENSE", True) or "").find("GPLv3") != -1))]} \
            "
 
-- 
1.8.3.2


