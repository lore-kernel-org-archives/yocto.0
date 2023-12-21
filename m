Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11AF4C46CD2
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 07:58:08 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web11.46801.1703145479760247811
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 23:58:00 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: lakka.kapsi.fi, ip: 91.232.154.25, mailfrom: mcfrisk@lakka.kapsi.fi)
Received: from kapsi.fi ([2001:67c:1be8::11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1rGDwJ-008V6R-1g;
	Thu, 21 Dec 2023 09:57:55 +0200
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1rGDwJ-000qVA-8z; Thu, 21 Dec 2023 09:57:55 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org
Cc: Erik Schilling <erik.schilling@linaro.org>,
	Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [meta-security][PATCH 1/4] tpm2-tss: support native builds
Date: Thu, 21 Dec 2023 09:57:27 +0200
Message-Id: <20231221075730.201111-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspam-Score: -1.4 (-)
X-Rspam-Report: Action: no action
 Symbol: FROM_HAS_DN(0.00)
 Symbol: FROM_NEQ_ENVFROM(0.00)
 Symbol: RCVD_COUNT_TWO(0.00)
 Symbol: BAYES_HAM(-3.00)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: RCVD_TLS_LAST(0.00)
 Symbol: FUZZY_BLOCKED(0.00)
 Symbol: MIME_GOOD(-0.10)
 Symbol: MID_CONTAINS_FROM(1.00)
 Symbol: DMARC_POLICY_SOFTFAIL(0.10)
 Symbol: R_DKIM_NA(0.00)
 Symbol: NEURAL_HAM(0.00)
 Symbol: R_SPF_ALLOW(-0.20)
 Symbol: ARC_NA(0.00)
 Symbol: ASN(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: TO_DN_SOME(0.00)
 Symbol: FORGED_SENDER(0.30)
 Symbol: RCPT_COUNT_THREE(0.00)
 Symbol: R_MISSING_CHARSET(0.50)
 Message-ID: 20231221075730.201111-1-mikko.rapeli@linaro.org
X-SA-Exim-Connect-IP: 2001:67c:1be8::11
X-SA-Exim-Mail-From: mcfrisk@lakka.kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 07:58:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62007

systemd tool ukify
https://www.freedesktop.org/software/systemd/man/latest/ukify.html
depends on systemd-measure
https://www.freedesktop.org/software/systemd/man/latest/systemd-measure.html
which depends on tpm2-tss. So to support creating UKI
images containing both kernel and initramfs with systemd-native,
tpm2-tss support is needed for native too.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
index 6386105..dceebc2 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
@@ -93,3 +93,5 @@ FILES:${PN} = "\
     ${sysconfdir}/sysusers.d"
 
 RDEPENDS:libtss2 = "libgcrypt"
+
+BBCLASSEXTEND = "native"
-- 
2.34.1


