Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 576A3C77B73
	for <webhook@archiver.kernel.org>; Tue, 30 May 2023 06:55:00 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web11.4225.1685429691717931227
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 May 2023 23:54:52 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: lakka.kapsi.fi, ip: 91.232.154.25, mailfrom: mcfrisk@lakka.kapsi.fi)
Received: from kapsi.fi ([2001:67c:1be8::11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1q3tFp-00DPFk-Sq; Tue, 30 May 2023 09:54:49 +0300
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1q3tFp-008tZQ-K1; Tue, 30 May 2023 09:54:49 +0300
From: mikko.rapeli@linaro.org
To: yocto@lists.yoctoproject.org
Cc: Anton Antonov <Anton.Antonov@arm.com>,
	Armin Kuster <akuster808@gmail.com>,
	Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [meta-parsec][PATCH 2/2] parsec-tool: fix build error
Date: Tue, 30 May 2023 09:54:38 +0300
Message-Id: <20230530065438.2118899-2-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230530065438.2118899-1-mikko.rapeli@linaro.org>
References: <20230530065438.2118899-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspam-Score: -1.4 (-)
X-Rspam-Report: Action: no action
 Symbol: ARC_NA(0.00)
 Symbol: DMARC_POLICY_SOFTFAIL(0.10)
 Symbol: BAYES_HAM(-3.00)
 Symbol: RCPT_COUNT_THREE(0.00)
 Symbol: TO_DN_SOME(0.00)
 Symbol: R_MISSING_CHARSET(0.50)
 Symbol: FREEMAIL_ENVRCPT(0.00)
 Symbol: MIME_GOOD(-0.10)
 Symbol: R_SPF_ALLOW(-0.20)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: RCVD_TLS_LAST(0.00)
 Symbol: FROM_NO_DN(0.00)
 Symbol: MID_CONTAINS_FROM(1.00)
 Symbol: FORGED_SENDER(0.30)
 Symbol: R_DKIM_NA(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: ASN(0.00)
 Symbol: FREEMAIL_CC(0.00)
 Symbol: FROM_NEQ_ENVFROM(0.00)
 Symbol: RCVD_COUNT_TWO(0.00)
 Message-ID: 20230530065438.2118899-2-mikko.rapeli@linaro.org
X-SA-Exim-Connect-IP: 2001:67c:1be8::11
X-SA-Exim-Mail-From: mcfrisk@lakka.kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 May 2023 06:55:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60143

From: Mikko Rapeli <mikko.rapeli@linaro.org>

Currently build fails with:

| error: manifest path `/home/builder/build/tmp_qemuarm64/work/cortexa57-linux/parsec-tool/0.6.0-r0/cargo_home/bitbake/parsec-tool-0.6.0//Cargo.toml` does not exist

Normal source directory has Cargo.toml so only set ${B} to the
new path.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.6.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.6.0.bb b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.6.0.bb
index 6095ae1..f3f7486 100644
--- a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.6.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.6.0.bb
@@ -9,7 +9,7 @@ SRC_URI += "crate://crates.io/parsec-tool/${PV} \
 "
 SRC_URI[parsec-tool-0.6.0.sha256sum] = "f51d5d7f0caca1c335324b52482fa5edbf6c9cfd2e6865e5cb22716d52dcb367"
 
-S = "${CARGO_VENDORING_DIRECTORY}/${BP}"
+B = "${CARGO_VENDORING_DIRECTORY}/${BP}"
 
 do_install() {
   install -d ${D}/${bindir}
-- 
2.34.1


