Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E7CCC4332F
	for <webhook@archiver.kernel.org>; Fri, 16 Dec 2022 15:41:05 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.16287.1671205263784912251
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Dec 2022 07:41:03 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 343E01042;
	Fri, 16 Dec 2022 07:41:44 -0800 (PST)
Received: from e125920.arm.com (unknown [10.57.88.145])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D6E943F5A1;
	Fri, 16 Dec 2022 07:41:02 -0800 (PST)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 3/5][langdale] CI: Set default branch to langdale
Date: Fri, 16 Dec 2022 15:41:45 +0000
Message-Id: <20221216154147.1524548-3-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221216154147.1524548-1-peter.hoyes@arm.com>
References: <20221216154147.1524548-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 15:41:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58818

From: Peter Hoyes <Peter.Hoyes@arm.com>

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 ci/base.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/ci/base.yml b/ci/base.yml
index 70adac1..7b2203e 100644
--- a/ci/base.yml
+++ b/ci/base.yml
@@ -7,7 +7,7 @@ distro: zephyr
=20
 defaults:
   repos:
-    refspec: master
+    refspec: langdale
=20
 repos:
   meta-zephyr:
--=20
2.25.1


