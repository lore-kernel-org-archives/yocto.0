Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0F2C7EE26
	for <webhook@archiver.kernel.org>; Tue, 23 May 2023 12:14:59 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web11.20506.1684844098421666210
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 May 2023 05:14:59 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: lakka.kapsi.fi, ip: 91.232.154.25, mailfrom: mcfrisk@lakka.kapsi.fi)
Received: from kapsi.fi ([91.232.154.11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1q1Quk-00DvSw-3Z; Tue, 23 May 2023 15:14:54 +0300
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1q1Quj-003IF1-RN; Tue, 23 May 2023 15:14:53 +0300
From: mikko.rapeli@linaro.org
To: yocto@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [meta-tpm][PATCH 1/2] linux-yocto: support tpm and tpm2 on all architectures
Date: Tue, 23 May 2023 15:14:43 +0300
Message-Id: <20230523121444.784305-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspam-Score: -1.4 (-)
X-Rspam-Report: Action: no action
 Symbol: ARC_NA(0.00)
 Symbol: DMARC_POLICY_SOFTFAIL(0.10)
 Symbol: RCVD_TLS_LAST(0.00)
 Symbol: TO_DN_SOME(0.00)
 Symbol: R_MISSING_CHARSET(0.50)
 Symbol: R_SPF_ALLOW(-0.20)
 Symbol: MIME_GOOD(-0.10)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: BLOCKLISTDE_FAIL(0.00)
 Symbol: RCPT_COUNT_TWO(0.00)
 Symbol: FROM_NO_DN(0.00)
 Symbol: MID_CONTAINS_FROM(1.00)
 Symbol: FORGED_SENDER(0.30)
 Symbol: R_DKIM_NA(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: ASN(0.00)
 Symbol: FROM_NEQ_ENVFROM(0.00)
 Symbol: BAYES_HAM(-3.00)
 Symbol: RCVD_COUNT_TWO(0.00)
 Message-ID: 20230523121444.784305-1-mikko.rapeli@linaro.org
X-SA-Exim-Connect-IP: 91.232.154.11
X-SA-Exim-Mail-From: mcfrisk@lakka.kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 12:14:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60097

From: Mikko Rapeli <mikko.rapeli@linaro.org>

arm, arm64 and other machines can also have tpm and tpm2 devices
and the config snippets tpm.scc and tpm2.scc work there too.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-tpm/recipes-kernel/linux/linux-yocto_tpm.inc | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_tpm.inc b/meta-tpm/recipes-kernel/linux/linux-yocto_tpm.inc
index 909c42d..7a27683 100644
--- a/meta-tpm/recipes-kernel/linux/linux-yocto_tpm.inc
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto_tpm.inc
@@ -1,17 +1,8 @@
 FILESEXTRAPATHS:prepend := "${THISDIR}/linux-yocto:"
 
-# Enable tpm in kernel 
-SRC_URI:append:x86 = " \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'file://tpm2.scc', '', d)} \
-    "
-
-SRC_URI:append:x86-64 = " \
+SRC_URI += " \
     ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
     ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'file://tpm2.scc', '', d)} \
-    "
-
-SRC_URI += " \
     ${@bb.utils.contains('MACHINE_FEATURES', 'tpm_i2c', 'file://tpm_i2c.scc', '', d)} \
     ${@bb.utils.contains('MACHINE_FEATURES', 'vtpm', 'file://vtpm.scc', '', d)} \
     "
-- 
2.34.1


