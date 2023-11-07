Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E705C4332F
	for <webhook@archiver.kernel.org>; Tue,  7 Nov 2023 11:35:43 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.8201.1699356935543865886
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Nov 2023 03:35:35 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E958D1007;
	Tue,  7 Nov 2023 03:36:18 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C80F23F6C4;
	Tue,  7 Nov 2023 03:35:33 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper] config.json: add qemu-lite builder for qemuarmv5
Date: Tue,  7 Nov 2023 11:35:32 +0000
Message-Id: <20231107113532.3405278-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Nov 2023 11:35:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61632

From: Ross Burton <ross.burton@arm.com>

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/config.json b/config.json
index ee13bcf..3828394 100644
--- a/config.json
+++ b/config.json
@@ -513,6 +513,10 @@
             "MACHINE" : "qemuarm",
             "TEMPLATE" : "altcfg-qemu"
         },
+        "qemuarmv5" : {
+            "MACHINE" : "qemuarm",
+            "TEMPLATE" : "arch-qemu-lite"
+        },
         "beaglebone" : {
             "MACHINE" : "beaglebone-yocto",
             "TEMPLATE" : "arch-hw",
--=20
2.34.1


