Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DD7DC433FE
	for <webhook@archiver.kernel.org>; Fri, 11 Nov 2022 15:41:54 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.6834.1668181309738538931
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Nov 2022 07:41:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 62CF01FB;
	Fri, 11 Nov 2022 07:41:55 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B6E4F3F73D;
	Fri, 11 Nov 2022 07:41:48 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper] config: set MACHINE=qemuarm64 for oe-selftest-armhost
Date: Fri, 11 Nov 2022 15:41:44 +0000
Message-Id: <20221111154144.104128-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Nov 2022 15:41:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58543

Many of the oe-selftest test cases boot up an image in qemu, but if the
host can't use KVM to accelerate the guest then the tests take a lot
longer and may randomly timeout.

Now that oe-selftest can run for qemuarm64[1], switch the
oe-selftest-armhost to use qemuarm64 so that KVM can be used. This
should mean faster and more reliable tests, which also cover another
architecture.

[1] oe-core 87fcee9fed915ff3af528b976d7d44737f9f1a95

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index 24988f0..713afe5 100644
--- a/config.json
+++ b/config.json
@@ -873,6 +873,7 @@
             "TEMPLATE" : "selftest"
         },
         "oe-selftest-armhost" : {
+            "MACHINE": "qemuarm64",
             "SDKMACHINE": "aarch64",
             "TEMPLATE" : "selftest"
         },
--=20
2.34.1


