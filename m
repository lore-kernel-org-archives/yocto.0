Return-Path: <jonas.brich@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D87D8C433F5
	for <webhook@archiver.kernel.org>; Fri, 15 Oct 2021 13:10:12 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web11.8902.1634303411173705145
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Oct 2021 06:10:11 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: lakka.kapsi.fi, ip: 91.232.154.25,
 mailfrom: mcfrisk@lakka.kapsi.fi)
Received: from kapsi.fi ([2001:67c:1be8::11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1mbMyG-0001I2-1o; Fri, 15 Oct 2021 16:10:02 +0300
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.92)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1mbMyG-0007PF-0S; Fri, 15 Oct 2021 16:10:00 +0300
From: Jonas Brich <Jonas.Brich@bmw.de>
To: yocto@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@bmw.de>,
	Jonas Brich <Jonas.Brich@bmw.de>
Subject: [PATCH][meta-selinux][dunfell] libselinux: Backport NULL pointer fix
 from 3.1
Date: Fri, 15 Oct 2021 16:09:09 +0300
Message-Id: <20211015130909.26804-1-Jonas.Brich@bmw.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspam-Score: 2.3 (++)
X-Rspam-Report: Action: no action
 Symbol: RCVD_TLS_LAST(0.00)
 Symbol: ARC_NA(0.00)
 Symbol: DMARC_POLICY_SOFTFAIL(0.10)
 Symbol: FROM_HAS_DN(0.00)
 Symbol: RCPT_COUNT_THREE(0.00)
 Symbol: R_MISSING_CHARSET(2.50)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: MIME_GOOD(-0.10)
 Symbol: BROKEN_CONTENT_TYPE(1.50)
 Symbol: TO_DN_SOME(0.00)
 Symbol: MID_CONTAINS_FROM(1.00)
 Symbol: R_SPF_NA(0.00)
 Symbol: FORGED_SENDER(0.30)
 Symbol: R_DKIM_NA(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: ASN(0.00)
 Symbol: FROM_NEQ_ENVFROM(0.00)
 Symbol: BAYES_HAM(-3.00)
 Symbol: RCVD_COUNT_TWO(0.00)
 Message-ID: 20211015130909.26804-1-Jonas.Brich@bmw.de
X-SA-Exim-Connect-IP: 2001:67c:1be8::11
X-SA-Exim-Mail-From: mcfrisk@lakka.kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Oct 2021 13:10:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55083

From: Mikko Rapeli <mikko.rapeli@bmw.de>

From: Jonas Brich <Jonas.Brich@bmw.de>

Using function restorecon_init inside selinux_restorecon.c can
result in a NULL pointer. This happens because function
selinux_restorecon_set_sehandle can return a NULL pointer. But
it is not checked and directly given to the next function.

This problem is already fixed in libselinux 3.1 and above.
Therefore backport this fix.

Signed-off-by: Jonas Brich <Jonas.Brich@bmw.de>
---
 ...e-in-selinux_restorecon_set_sehandle.patch | 32 +++++++++++++++++++
 recipes-security/selinux/libselinux_3.0.bb    |  1 +
 2 files changed, 33 insertions(+)
 create mode 100644 recipes-security/selinux/libselinux/0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch

diff --git a/recipes-security/selinux/libselinux/0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch b/recipes-security/selinux/libselinux/0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch
new file mode 100644
index 0000000..f12164f
--- /dev/null
+++ b/recipes-security/selinux/libselinux/0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch
@@ -0,0 +1,32 @@
+From 08f5e30177218fae7ce9f5c8d6856690126b2b30 Mon Sep 17 00:00:00 2001
+From: Ji Qin <jiqin.ji@huawei.com>
+Date: Sun, 14 Jun 2020 21:20:23 -0400
+Subject: [PATCH] libselinux: Fix NULL pointer use in
+ selinux_restorecon_set_sehandle
+
+error occur when selinux_restorecon_default_handle return NULL in
+restorecon_init.
+
+fixes: https://github.com/SELinuxProject/selinux/issues/249
+
+Signed-off-by: Ji Qin <jiqin.ji@huawei.com>
+Acked-by: Stephen Smalley <stephen.smalley.work@gmail.com>
+---
+ libselinux/src/selinux_restorecon.c | 2 ++
+ 1 file changed, 2 insertions(+)
+
+Upstream-Status: Backport [https://github.com/SELinuxProject/selinux/commit/08f5e30177218fae7ce9f5c8d6856690126b2b30]
+
+diff --git libselinux/src/selinux_restorecon.c libselinux/src/selinux_restorecon.c
+index d1ce830c5..6993be6fd 100644
+--- libselinux/src/selinux_restorecon.c
++++ libselinux/src/selinux_restorecon.c
+@@ -1154,6 +1154,8 @@ void selinux_restorecon_set_sehandle(struct selabel_handle *hndl)
+ 	size_t num_specfiles, fc_digest_len;
+ 
+ 	fc_sehandle = (struct selabel_handle *) hndl;
++	if (!fc_sehandle)
++		return;
+ 
+ 	/* Check if digest requested in selabel_open(3), if so use it. */
+ 	if (selabel_digest(fc_sehandle, &fc_digest, &fc_digest_len,
diff --git a/recipes-security/selinux/libselinux_3.0.bb b/recipes-security/selinux/libselinux_3.0.bb
index 17a25a9..01f9b7b 100644
--- a/recipes-security/selinux/libselinux_3.0.bb
+++ b/recipes-security/selinux/libselinux_3.0.bb
@@ -13,4 +13,5 @@ SRC_URI += "\
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
         file://0001-Fix-building-against-musl-and-uClibc-libc-libraries.patch \
         file://0001-libselinux-export-flush_class_cache-call-it-on-polic.patch \
+        file://0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch \
         "
-- 
2.20.1


