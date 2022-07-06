Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5088C433EF
	for <webhook@archiver.kernel.org>; Wed,  6 Jul 2022 14:04:53 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web08.6631.1657116288854912335
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jul 2022 07:04:49 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5C8D106F;
	Wed,  6 Jul 2022 07:04:48 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A37953F792;
	Wed,  6 Jul 2022 07:04:47 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper 2/2] config.json: remove non-gpl3 job
Date: Wed,  6 Jul 2022 15:04:37 +0100
Message-Id: <20220706140437.817618-2-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706140437.817618-1-ross.burton@arm.com>
References: <20220706140437.817618-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Jul 2022 14:04:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57463

meta-gplv2 is deprecated, so remove it from the autobuilder in master.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/config.json b/config.json
index 7f7c2ad..c16812b 100644
--- a/config.json
+++ b/config.json
@@ -753,17 +753,6 @@
                 "BBTARGETS" : "build-appliance-image"
             }
         },
-        "non-gpl3" : {
-            "NEEDREPOS" : ["poky", "meta-gplv2"],
-            "MACHINE" : "qemux86",
-            "BBTARGETS" : "core-image-minimal core-image-full-cmdline",
-            "extravars" : [
-                "require conf/distro/include/disable-gplv3.inc"
-            ],
-            "EXTRACMDS" : [
-                "../../yocto-autobuilder-helper/scripts/check-gplv3"
-            ]
-        },
         "no-x11" : {
             "MACHINE" : "qemux86-64",
             "BBTARGETS" : "core-image-full-cmdline core-image-weston wor=
ld",
--=20
2.25.1


