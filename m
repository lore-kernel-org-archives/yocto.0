Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12323C74A5B
	for <webhook@archiver.kernel.org>; Tue, 21 Mar 2023 06:34:25 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web11.6797.1679380460513594346
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Mar 2023 23:34:21 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: lakka.kapsi.fi, ip: 91.232.154.25, mailfrom: mcfrisk@lakka.kapsi.fi)
Received: from kapsi.fi ([2001:67c:1be8::11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1peVZZ-00CJdZ-2T; Tue, 21 Mar 2023 08:34:17 +0200
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1peVZY-00GxtR-Q8; Tue, 21 Mar 2023 08:34:16 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [meta-security][PATCH] ima-evm-utils: disable documentation from build
Date: Tue, 21 Mar 2023 08:34:09 +0200
Message-Id: <20230321063409.4037458-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspam-Score: -1.4 (-)
X-Rspam-Report: Action: no action
 Symbol: ARC_NA(0.00)
 Symbol: DMARC_POLICY_SOFTFAIL(0.10)
 Symbol: FROM_HAS_DN(0.00)
 Symbol: TO_DN_SOME(0.00)
 Symbol: R_MISSING_CHARSET(0.50)
 Symbol: R_SPF_ALLOW(-0.20)
 Symbol: MIME_GOOD(-0.10)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: RCVD_TLS_LAST(0.00)
 Symbol: RCPT_COUNT_TWO(0.00)
 Symbol: MID_CONTAINS_FROM(1.00)
 Symbol: NEURAL_HAM(-0.00)
 Symbol: FORGED_SENDER(0.30)
 Symbol: R_DKIM_NA(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: ASN(0.00)
 Symbol: FROM_NEQ_ENVFROM(0.00)
 Symbol: BAYES_HAM(-3.00)
 Symbol: RCVD_COUNT_TWO(0.00)
 Message-ID: 20230321063409.4037458-1-mikko.rapeli@linaro.org
X-SA-Exim-Connect-IP: 2001:67c:1be8::11
X-SA-Exim-Mail-From: mcfrisk@lakka.kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Mar 2023 06:34:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59479

Building documentation fails due to missing asciidoc, xsltproc etc
so it's better to just disable building them by default.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb
index 4f1d1a3..873aeeb 100644
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb
@@ -14,6 +14,7 @@ inherit pkgconfig autotools features_check
 REQUIRED_DISTRO_FEATURES = "ima"
 REQUIRED_DISTRO_FEATURES:class-native = ""
 
+EXTRA_OECONF += "MANPAGE_DOCBOOK_XSL=0"
 EXTRA_OECONF:append:class-target = " --with-kernel-headers=${STAGING_KERNEL_BUILDDIR}"
 
 # blkid is called by evmctl when creating evm checksums.
-- 
2.34.1


