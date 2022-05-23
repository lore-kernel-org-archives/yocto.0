Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77574C433F5
	for <webhook@archiver.kernel.org>; Mon, 23 May 2022 12:04:14 +0000 (UTC)
Received: from cam-smtp0.cambridge.arm.com (cam-smtp0.cambridge.arm.com
 [217.140.106.54])
 by mx.groups.io with SMTP id smtpd.web09.26870.1653307450545308541
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 05:04:11 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.106.54, mailfrom: anton.antonov@arm.com)
Received: from atg-devlab-kelpie.cambridge.arm.com
 (atg-devlab-kelpie.cambridge.arm.com [10.2.80.92])
	by cam-smtp0.cambridge.arm.com (8.13.8/8.13.8) with ESMTP id 24NC5WD8000993;
	Mon, 23 May 2022 13:05:32 +0100
From: Anton Antonov <Anton.Antonov@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Anton.Antonov@arm.com
Subject: [meta-security][PATCH] Parsec-service: Fix arm32 build
Date: Mon, 23 May 2022 13:04:03 +0100
Message-Id: <20220523120403.1680130-1-Anton.Antonov@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 May 2022 12:04:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57154

Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
---
 .../recipes-parsec/parsec-service/parsec-service_1.0.0.bb   | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
index ad7e560..84539f9 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
@@ -26,7 +26,11 @@ PARSEC_FEATURES = "${@d.getVar('PACKAGECONFIG_CONFARGS',True).strip().replace('
 CARGO_BUILD_FLAGS += " --features ${PARSEC_FEATURES}"
 
 export BINDGEN_EXTRA_CLANG_ARGS
-BINDGEN_EXTRA_CLANG_ARGS = "--sysroot=${WORKDIR}/recipe-sysroot -I${WORKDIR}/recipe-sysroot/usr/include"
+target = "${@d.getVar('TARGET_SYS',True).replace('-', ' ')}"
+BINDGEN_EXTRA_CLANG_ARGS = "${@bb.utils.contains('target', 'arm', \
+                              '--sysroot=${WORKDIR}/recipe-sysroot -I${WORKDIR}/recipe-sysroot/usr/include -mfloat-abi=hard', \
+                              '--sysroot=${WORKDIR}/recipe-sysroot -I${WORKDIR}/recipe-sysroot/usr/include', \
+                              d)}"
 
 inherit systemd
 SYSTEMD_SERVICE:${PN} = "parsec.service"
-- 
2.25.1


