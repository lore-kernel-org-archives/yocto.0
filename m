Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 224BBC3DA6E
	for <webhook@archiver.kernel.org>; Wed,  3 Jan 2024 13:35:45 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web10.17446.1704288934502404002
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jan 2024 05:35:35 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: lakka.kapsi.fi, ip: 91.232.154.25, mailfrom: mcfrisk@lakka.kapsi.fi)
Received: from kapsi.fi ([91.232.154.11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1rL1P8-001drK-2a;
	Wed, 03 Jan 2024 15:35:31 +0200
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1rL1P8-00CeFH-I3; Wed, 03 Jan 2024 15:35:30 +0200
From: mikko.rapeli@linaro.org
To: yocto@lists.yoctoproject.org
Cc: Anton Antonov <Anton.Antonov@arm.com>,
	Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [meta-parsec][PATCH] parsec-tool: fix serialNumber check
Date: Wed,  3 Jan 2024 15:35:19 +0200
Message-Id: <20240103133519.3013785-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspam-Score: -1.4 (-)
X-Rspam-Report: Action: no action
 Symbol: FROM_NEQ_ENVFROM(0.00)
 Symbol: RCVD_COUNT_TWO(0.00)
 Symbol: MID_CONTAINS_FROM(1.00)
 Symbol: BAYES_HAM(-3.00)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: RCVD_TLS_LAST(0.00)
 Symbol: DMARC_POLICY_SOFTFAIL(0.10)
 Symbol: MIME_GOOD(-0.10)
 Symbol: NEURAL_HAM(0.00)
 Symbol: R_DKIM_NA(0.00)
 Symbol: R_SPF_ALLOW(-0.20)
 Symbol: ARC_NA(0.00)
 Symbol: ASN(0.00)
 Symbol: FROM_NO_DN(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: TO_DN_SOME(0.00)
 Symbol: FORGED_SENDER(0.30)
 Symbol: RCPT_COUNT_THREE(0.00)
 Symbol: R_MISSING_CHARSET(0.50)
 Message-ID: 20240103133519.3013785-1-mikko.rapeli@linaro.org
X-SA-Exim-Connect-IP: 91.232.154.11
X-SA-Exim-Mail-From: mcfrisk@lakka.kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jan 2024 13:35:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62079

From: Mikko Rapeli <mikko.rapeli@linaro.org>

New openssl 3.2.0 version removed spaces around serialNumber in:

Subject: CN=parallaxsecond.com, serialNumber=EZ4U2CIXL

Fixes parsec-service oeqa test on qemu.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 ....sh-adapt-to-new-serialNumber-output.patch | 33 +++++++++++++++++++
 .../parsec-tool/parsec-tool_0.7.0.bb          |  4 ++-
 2 files changed, 36 insertions(+), 1 deletion(-)
 create mode 100644 meta-parsec/recipes-parsec/parsec-tool/files/0001-parsec-cli-tests.sh-adapt-to-new-serialNumber-output.patch

diff --git a/meta-parsec/recipes-parsec/parsec-tool/files/0001-parsec-cli-tests.sh-adapt-to-new-serialNumber-output.patch b/meta-parsec/recipes-parsec/parsec-tool/files/0001-parsec-cli-tests.sh-adapt-to-new-serialNumber-output.patch
new file mode 100644
index 0000000..6c5a94f
--- /dev/null
+++ b/meta-parsec/recipes-parsec/parsec-tool/files/0001-parsec-cli-tests.sh-adapt-to-new-serialNumber-output.patch
@@ -0,0 +1,33 @@
+From b5cbf8635483e2c1254d15af7427696a378dadf7 Mon Sep 17 00:00:00 2001
+From: Mikko Rapeli <mikko.rapeli@linaro.org>
+Date: Wed, 3 Jan 2024 12:30:38 +0000
+Subject: [PATCH] parsec-cli-tests.sh: adapt to new serialNumber output
+
+openssl 3.2.0 from yocto prints serialNumber to output
+without spaces so support both that and the old with
+spaces output to pass the test. Not using regular
+expressions to work on simpler grep implementations.
+
+Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
+---
+ tests/parsec-cli-tests.sh | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+Upstream-Status: Submitted [https://github.com/parallaxsecond/parsec-tool/pull/120]
+
+diff --git a/tests/parsec-cli-tests.sh b/tests/parsec-cli-tests.sh
+index 7693072..4dad2bb 100755
+--- a/tests/parsec-cli-tests.sh
++++ b/tests/parsec-cli-tests.sh
+@@ -225,7 +225,7 @@ test_csr() {
+         run_cmd $OPENSSL req -text -noout -verify -in ${MY_TMP}/${KEY}.csr >${MY_TMP}/${KEY}.txt
+         debug cat ${MY_TMP}/${KEY}.txt
+ 
+-        if ! cat ${MY_TMP}/${KEY}.txt | grep "Subject:" | grep "serialNumber = ${TEST_SERIAL}"; then
++        if ! cat ${MY_TMP}/${KEY}.txt | grep "Subject:" | grep -e "serialNumber = ${TEST_SERIAL}" -e "serialNumber=${TEST_SERIAL}"; then
+             echo "Error: The CSR does not contain the serialNumber field of the Distinguished Name"
+             EXIT_CODE=$(($EXIT_CODE+1))
+         fi
+-- 
+2.34.1
+
diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.7.0.bb b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.7.0.bb
index 26e4d80..af0d362 100644
--- a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.7.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.7.0.bb
@@ -5,7 +5,9 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 
 inherit cargo cargo-update-recipe-crates
 
-SRC_URI += "crate://crates.io/parsec-tool/${PV} \
+SRC_URI += "\
+  crate://crates.io/parsec-tool/${PV} \
+  file://0001-parsec-cli-tests.sh-adapt-to-new-serialNumber-output.patch \
 "
 SRC_URI[parsec-tool-0.7.0.sha256sum] = "76afb4416d04c5af9f81285dfff390b09c6926aabd6b4ee20dc07470a9698732"
 
-- 
2.34.1


