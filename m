Return-Path: <mikko.rapeli@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16CC9C433EF
	for <webhook@archiver.kernel.org>; Fri, 15 Oct 2021 13:18:19 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web08.9180.1634303897844294780
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Oct 2021 06:18:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: lakka.kapsi.fi, ip: 91.232.154.25,
 mailfrom: mcfrisk@lakka.kapsi.fi)
Received: from kapsi.fi ([2001:67c:1be8::11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1mbN6D-0003Fy-2m; Fri, 15 Oct 2021 16:18:13 +0300
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.92)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1mbN6D-0004BY-1Q; Fri, 15 Oct 2021 16:18:13 +0300
From: Mikko Rapeli <mikko.rapeli@bmw.de>
To: yocto@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@bmw.de>,
	Armin Kuster <akuster808@gmail.com>,
	Joe MacDonald <joe@deserted.net>
Subject: [PATCH][meta-selinux][dunfell] MAINTAINERS: update email address
Date: Fri, 15 Oct 2021 16:18:05 +0300
Message-Id: <20211015131805.15295-1-mikko.rapeli@bmw.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspam-Score: 2.3 (++)
X-Rspam-Report: Action: no action
 Symbol: RCVD_TLS_LAST(0.00)
 Symbol: ARC_NA(0.00)
 Symbol: RCVD_COUNT_TWO(0.00)
 Symbol: FROM_HAS_DN(0.00)
 Symbol: RCPT_COUNT_THREE(0.00)
 Symbol: R_MISSING_CHARSET(2.50)
 Symbol: FREEMAIL_ENVRCPT(0.00)
 Symbol: MIME_GOOD(-0.10)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: BROKEN_CONTENT_TYPE(1.50)
 Symbol: TO_DN_SOME(0.00)
 Symbol: DMARC_POLICY_SOFTFAIL(0.10)
 Symbol: MID_CONTAINS_FROM(1.00)
 Symbol: R_SPF_NA(0.00)
 Symbol: FORGED_SENDER(0.30)
 Symbol: R_DKIM_NA(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: ASN(0.00)
 Symbol: FROM_NEQ_ENVFROM(0.00)
 Symbol: BAYES_HAM(-3.00)
 Symbol: FREEMAIL_CC(0.00)
 Message-ID: 20211015131805.15295-1-mikko.rapeli@bmw.de
X-SA-Exim-Connect-IP: 2001:67c:1be8::11
X-SA-Exim-Mail-From: mcfrisk@lakka.kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Oct 2021 13:18:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55084

From: Armin Kuster <akuster808@gmail.com>

Include example send-email

Signed-off-by: Armin Kuster <akuster808@gmail.com>
Signed-off-by: Joe MacDonald <joe@deserted.net>
(cherry picked from commit 48038b45dc114592991c069eb66d174820c0701d)
---
 MAINTAINERS | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 36c451f..0dc492e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1,7 +1,14 @@
 This file contains a list of maintainers for the meta-selinux layer.
 
 Please submit any patches against meta-selinux to the Yocto Project mailing
-list (yocto@yoctoproject.org).
+list (yocto@lists.yoctoproject.org).
+
+git send-email -1 --to yocto@lists.yoctoproject.org --subject-prefix=meta-selinux][PATCH
+
+These values can be set as defaults for this repository:
+
+$ git config sendemail.to yocto@lists.yoctoproject.org
+$ git config format.subjectPrefix meta-selinux][PATCH
 
 You may also contact the maintainers directly.
 
-- 
2.20.1


