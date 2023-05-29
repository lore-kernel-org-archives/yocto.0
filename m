Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9906DC77B7A
	for <webhook@archiver.kernel.org>; Mon, 29 May 2023 14:51:24 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web11.51202.1685371874742567178
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 May 2023 07:51:16 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: lakka.kapsi.fi, ip: 91.232.154.25, mailfrom: mcfrisk@lakka.kapsi.fi)
Received: from kapsi.fi ([2001:67c:1be8::11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1q3eDG-00AFuR-D3; Mon, 29 May 2023 17:51:11 +0300
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1q3eDG-00464f-3W; Mon, 29 May 2023 17:51:10 +0300
From: mikko.rapeli@linaro.org
To: yocto@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [meta-parsec][PATCH] parsec-service: fix build error
Date: Mon, 29 May 2023 17:51:03 +0300
Message-Id: <20230529145103.975728-1-mikko.rapeli@linaro.org>
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
 Message-ID: 20230529145103.975728-1-mikko.rapeli@linaro.org
X-SA-Exim-Connect-IP: 2001:67c:1be8::11
X-SA-Exim-Mail-From: mcfrisk@lakka.kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 May 2023 14:51:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60137

From: Mikko Rapeli <mikko.rapeli@linaro.org>

After latest changes to ${S}, parsec-service fails to apply systemd.patch:

ERROR: parsec-service-1.2.0-r0 do_patch: Applying patch 'systemd.patch' on target directory '/home/builder/build/tmp_trs-qemuarm64/work/cortexa57-trs-linux/parsec-service/1.2.0-r0/cargo_home/bitbake/parsec-service-1.2.0'
CmdError('quilt --quiltrc /home/builder/build/tmp_qemuarm64/work/cortexa57-linux/parsec-service/1.2.0-r0/recipe-sysroot-native/etc/quiltrc push', 0, "stdout: Applying patch systemd.patch
can't find file to patch at input line 11
Perhaps you used the wrong -p or --strip option?
The text leading up to this was:
--------------------------
|
|Run the Parsec service as parsec user in /var/lib/parsec/ working directory.
|
|Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
|Upstream-Status: Inappropriate [deployment configuration]
|
|diff --git a/systemd-daemon/parsec.service b/systemd-daemon/parsec.service
|index c07c3b9..a6fe6a3 100644
|--- a/systemd-daemon/parsec.service
|+++ b/systemd-daemon/parsec.service
--------------------------
No file to patch.  Skipping patch.
1 out of 1 hunk ignored
Patch systemd.patch does not apply (enforce with -f)

stderr: ")
ERROR: Logfile of failure stored in: /home/builder/build/tmp_qemuarm64/work/cortexa57-linux/parsec-service/1.2.0-r0/temp/log.do_patch.218884

Instead of changing S, it seems to be sufficient to switch build directory B
to ${CARGO_VENDORING_DIRECTORY}/${BP}.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../recipes-parsec/parsec-service/parsec-service_1.2.0.bb       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb
index 1d38dc5..b42b7b4 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb
@@ -14,7 +14,7 @@ SRC_URI += "crate://crates.io/parsec-service/${PV} \
 "
 SRC_URI[parsec-service-1.2.0.sha256sum] = "f58e7ba859c22cc1904dc8298b1a7d94ee1ba3b4d4808f28e4cc0c96ddb149c9"
 
-S = "${CARGO_VENDORING_DIRECTORY}/${BP}"
+B = "${CARGO_VENDORING_DIRECTORY}/${BP}"
 
 PACKAGECONFIG ??= "PKCS11 MBED-CRYPTO"
 have_TPM = "${@bb.utils.contains('DISTRO_FEATURES', 'tpm2', 'TPM', '', d)}"
-- 
2.34.1


