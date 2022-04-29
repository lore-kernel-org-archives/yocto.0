Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B91C433F5
	for <webhook@archiver.kernel.org>; Fri, 29 Apr 2022 13:14:18 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.9951.1651238044799464546
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 06:14:05 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F9B11063;
	Fri, 29 Apr 2022 06:14:03 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1F7F83F5A1;
	Fri, 29 Apr 2022 06:14:03 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper] config.json: also build meta-virt
 for qemuarm
Date: Fri, 29 Apr 2022 14:13:59 +0100
Message-Id: <20220429131359.2288155-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 13:14:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56959

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/config.json b/config.json
index dc59d7f..afae5e9 100644
--- a/config.json
+++ b/config.json
@@ -954,6 +954,11 @@
                 "shortname": "Xen for qemuarm64",
                 "MACHINE": "qemuarm64",
                 "BBTARGETS" : "xen-image-minimal"
+            },
+            "step3" : {
+                "shortname": "Xen for qemuarm",
+                "MACHINE": "qemuarm",
+                "BBTARGETS" : "xen-image-minimal"
             }
         },
         "qa-extras" : {
--=20
2.25.1


