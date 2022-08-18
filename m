Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D195C00140
	for <webhook@archiver.kernel.org>; Thu, 18 Aug 2022 08:09:10 +0000 (UTC)
Received: from cam-smtp0.cambridge.arm.com (cam-smtp0.cambridge.arm.com
 [217.140.106.55])
 by mx.groups.io with SMTP id smtpd.web10.39447.1660810144073072599
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Aug 2022 01:09:04 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.106.55, mailfrom: anton.antonov@arm.com)
Received: from atg-devlab-kelpie.cambridge.arm.com
 (atg-devlab-kelpie.cambridge.arm.com [10.2.80.92])
	by cam-smtp0.cambridge.arm.com (8.13.8/8.13.8) with ESMTP id 27I8B90f019781;
	Thu, 18 Aug 2022 09:11:09 +0100
From: Anton Antonov <Anton.Antonov@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Anton.Antonov@arm.com
Subject: [meta-parsec][PATCH] Use CARGO_TARGET_SUBDIR in do_install
Date: Thu, 18 Aug 2022 09:08:58 +0100
Message-Id: <20220818080858.3439133-1-Anton.Antonov@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Aug 2022 08:09:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57861

Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
---
 .../recipes-parsec/parsec-service/parsec-service_1.0.0.bb       | 2 +-
 meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.bb     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
index 84539f9..2a25178 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
@@ -45,7 +45,7 @@ PARSEC_CONFIG ?= "${S}/config.toml"
 do_install () {
     # Binaries
     install -d -m 700 -o parsec -g parsec "${D}${libexecdir}/parsec"
-    install -m 700 -o parsec -g parsec "${WORKDIR}/build/target/${CARGO_TARGET_SUBDIR}/parsec" ${D}${libexecdir}/parsec/parsec
+    install -m 700 -o parsec -g parsec "${B}/target/${CARGO_TARGET_SUBDIR}/parsec" ${D}${libexecdir}/parsec/parsec
 
     # Config file
     install -d -m 700 -o parsec -g parsec "${D}${sysconfdir}/parsec"
diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.bb b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.bb
index 4b053b9..6ecce8e 100644
--- a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.bb
+++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.bb
@@ -11,7 +11,7 @@ RDEPENDS:${PN} = "openssl-bin"
 
 do_install() {
   install -d ${D}/${bindir}
-  install -m 755 "${B}/target/${TARGET_SYS}/release/parsec-tool" "${D}${bindir}/parsec-tool"
+  install -m 755 "${B}/target/${CARGO_TARGET_SUBDIR}/parsec-tool" "${D}${bindir}/parsec-tool"
   install -m 755 "${S}/tests/parsec-cli-tests.sh" "${D}${bindir}/parsec-cli-tests.sh"
 }
 
-- 
2.25.1


