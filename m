Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2358C25B67
	for <webhook@archiver.kernel.org>; Thu, 26 Oct 2023 15:39:37 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.74137.1698334774322406982
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Oct 2023 08:39:34 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 554D02F4;
	Thu, 26 Oct 2023 08:40:15 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EF8A23F64C;
	Thu, 26 Oct 2023 08:39:32 -0700 (PDT)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder2] config.py: add meta-oe to the metrics build
Date: Thu, 26 Oct 2023 16:39:30 +0100
Message-Id: <20231026153930.81615-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 15:39:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61493

From: Ross Burton <ross.burton@arm.com>

We want to run the metrics target against meta-oe too, so we need to
tell autobuilder2 to clone the repository.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.py b/config.py
index 7ee235c..50945b4 100644
--- a/config.py
+++ b/config.py
@@ -29,6 +29,7 @@ buildertorepos =3D {
     "reproducible-meta-oe": ["poky", "meta-openembedded"],
     "patchtest": ["poky", "meta-patchtest", "meta-openembedded"],
     "meta-oe-mirror":  ["poky", "meta-openembedded"],
+    "metrics":  ["poky", "meta-openembedded"],
     "default": ["poky"]
 }
=20
--=20
2.34.1


