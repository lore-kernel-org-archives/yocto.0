Return-Path: <karl@hiramoto.org>
Received: from homiemail-a31.g.dreamhost.com (ukoto.co.uk [69.163.253.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72122E00921
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 14:03:03 -0800 (PST)
Received: from homiemail-a31.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a31.g.dreamhost.com (Postfix) with ESMTP id F0275202018;
	Tue,  4 Mar 2014 14:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=hiramoto.org; h=from:to:cc
	:subject:date:message-id; s=hiramoto.org; bh=ChQ3f4SktTabYXn0Y4Y
	Vepkznq8=; b=JrAQ3xboWOA1QiUf/ZQoM2AORg9f1HIwJRYRJOX5Z0y2kV0qdU0
	fSXTcY9/QrJpsFn9boaPTeGX2W5Q4F2XkApl/77sRIOW0ldzZ5PG0MRRP09Tf2Df
	Kv/sA8U8LJ07ITRtjkOUrtyy4eeUix/RJNI8Gpi+ApEnwJe7o+Bl22C4=
Received: from smoke (7.Red-83-61-238.dynamicIP.rima-tde.net [83.61.238.7])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: karl@hiramoto.org)
	by homiemail-a31.g.dreamhost.com (Postfix) with ESMTPSA id C4AB1202038; 
	Tue,  4 Mar 2014 14:03:00 -0800 (PST)
Received: by smoke (sSMTP sendmail emulation); Tue, 04 Mar 2014 23:02:18 +0100
From: karl@hiramoto.org
To: yocto@yoctoproject.org
Date: Tue,  4 Mar 2014 23:02:16 +0100
Message-Id: <1393970536-4526-1-git-send-email-karl@hiramoto.org>
X-Mailer: git-send-email 1.8.3.2
Subject: [PATCH] gnutls: CVE-2014-0092 correct return codes
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
X-List-Received-Date: Tue, 04 Mar 2014 22:03:04 -0000

From: Karl Hiramoto <karl@hiramoto.org>

This patch is for the yocto dylan branch   it comes from uptream:

git://gitorious.org/gnutls/gnutls.git
branch: gnutls_2_12_x
commit: 6aa26f78150ccbdf0aec1878a41c17c41d358a3b
Author: Nikos Mavrogiannopoulos <nmav@gnutls.org>
Date:   Thu Feb 27 19:42:26 2014 +0100

For more info see:
http://www.gnutls.org/security.html#GNUTLS-SA-2014-2
http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0092
https://www.gitorious.org/gnutls/gnutls/commit/6aa26f78150ccbdf0aec1878a41c17c41d358a3b

Signed-off-by: Karl Hiramoto <karl@hiramoto.org>
---
 .../CVE-2014-0092-corrected-return-codes.patch     | 102 +++++++++++++++++++++
 meta/recipes-support/gnutls/gnutls_2.12.23.bb      |   1 +
 2 files changed, 103 insertions(+)
 create mode 100644 meta/recipes-support/gnutls/gnutls/CVE-2014-0092-corrected-return-codes.patch

diff --git a/meta/recipes-support/gnutls/gnutls/CVE-2014-0092-corrected-return-codes.patch b/meta/recipes-support/gnutls/gnutls/CVE-2014-0092-corrected-return-codes.patch
new file mode 100644
index 0000000..42e0ea2
--- /dev/null
+++ b/meta/recipes-support/gnutls/gnutls/CVE-2014-0092-corrected-return-codes.patch
@@ -0,0 +1,102 @@
+From 6aa26f78150ccbdf0aec1878a41c17c41d358a3b Mon Sep 17 00:00:00 2001
+From: Nikos Mavrogiannopoulos <nmav@gnutls.org>
+Date: Thu, 27 Feb 2014 19:42:26 +0100
+Subject: [PATCH 1/3] corrected return codes
+
+---
+ lib/x509/verify.c | 16 ++++++++++------
+ 1 file changed, 10 insertions(+), 6 deletions(-)
+
+diff --git a/lib/x509/verify.c b/lib/x509/verify.c
+index c9a6b0d..eef85a8 100644
+--- a/lib/x509/verify.c
++++ b/lib/x509/verify.c
+@@ -141,7 +141,7 @@ check_if_ca (gnutls_x509_crt_t cert, gnutls_x509_crt_t issuer,
+   if (result < 0)
+     {
+       gnutls_assert ();
+-      goto cleanup;
++      goto fail;
+     }
+ 
+   result =
+@@ -150,7 +150,7 @@ check_if_ca (gnutls_x509_crt_t cert, gnutls_x509_crt_t issuer,
+   if (result < 0)
+     {
+       gnutls_assert ();
+-      goto cleanup;
++      goto fail;
+     }
+ 
+   result =
+@@ -158,7 +158,7 @@ check_if_ca (gnutls_x509_crt_t cert, gnutls_x509_crt_t issuer,
+   if (result < 0)
+     {
+       gnutls_assert ();
+-      goto cleanup;
++      goto fail;
+     }
+ 
+   result =
+@@ -166,7 +166,7 @@ check_if_ca (gnutls_x509_crt_t cert, gnutls_x509_crt_t issuer,
+   if (result < 0)
+     {
+       gnutls_assert ();
+-      goto cleanup;
++      goto fail;
+     }
+ 
+   /* If the subject certificate is the same as the issuer
+@@ -206,6 +206,7 @@ check_if_ca (gnutls_x509_crt_t cert, gnutls_x509_crt_t issuer,
+   else
+     gnutls_assert ();
+ 
++fail:
+   result = 0;
+ 
+ cleanup:
+@@ -330,7 +331,7 @@ _gnutls_verify_certificate2 (gnutls_x509_crt_t cert,
+   gnutls_datum_t cert_signed_data = { NULL, 0 };
+   gnutls_datum_t cert_signature = { NULL, 0 };
+   gnutls_x509_crt_t issuer = NULL;
+-  int issuer_version, result;
++  int issuer_version, result = 0;
+ 
+   if (output)
+     *output = 0;
+@@ -363,7 +364,7 @@ _gnutls_verify_certificate2 (gnutls_x509_crt_t cert,
+   if (issuer_version < 0)
+     {
+       gnutls_assert ();
+-      return issuer_version;
++      return 0;
+     }
+ 
+   if (!(flags & GNUTLS_VERIFY_DISABLE_CA_SIGN) &&
+@@ -385,6 +386,7 @@ _gnutls_verify_certificate2 (gnutls_x509_crt_t cert,
+   if (result < 0)
+     {
+       gnutls_assert ();
++      result = 0;
+       goto cleanup;
+     }
+ 
+@@ -393,6 +395,7 @@ _gnutls_verify_certificate2 (gnutls_x509_crt_t cert,
+   if (result < 0)
+     {
+       gnutls_assert ();
++      result = 0;
+       goto cleanup;
+     }
+ 
+@@ -410,6 +413,7 @@ _gnutls_verify_certificate2 (gnutls_x509_crt_t cert,
+   else if (result < 0)
+     {
+       gnutls_assert();
++      result = 0;
+       goto cleanup;
+     }
+ 
+-- 
+1.8.3.2
+
diff --git a/meta/recipes-support/gnutls/gnutls_2.12.23.bb b/meta/recipes-support/gnutls/gnutls_2.12.23.bb
index 1575d2c..e26b154 100644
--- a/meta/recipes-support/gnutls/gnutls_2.12.23.bb
+++ b/meta/recipes-support/gnutls/gnutls_2.12.23.bb
@@ -6,6 +6,7 @@ SRC_URI += "file://gnutls-openssl.patch \
             file://correct_rpl_gettimeofday_signature.patch \
             file://configure-fix.patch \
             file://avoid_AM_PROG_MKDIR_P_warning_error_with_automake_1.12.patch \
+	    file://CVE-2014-0092-corrected-return-codes.patch \
             ${@['', 'file://fix-gettext-version.patch'][bb.data.inherits_class('native', d) or (not ((d.getVar("INCOMPATIBLE_LICENSE", True) or "").find("GPLv3") != -1))]} \
            "
 
-- 
1.8.3.2


