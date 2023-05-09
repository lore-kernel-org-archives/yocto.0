Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A69C77B7C
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 15:53:53 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.36643.1683647626839921658
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 08:53:47 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39EAEFEC;
	Tue,  9 May 2023 08:54:30 -0700 (PDT)
Received: from e125920.cambridge.arm.com (unknown [10.1.199.64])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 445003F663;
	Tue,  9 May 2023 08:53:45 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 1/2][mickledore] CI: Update to mickledore
Date: Tue,  9 May 2023 16:52:55 +0100
Message-Id: <20230509155256.2315498-1-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 15:53:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59930

From: Peter Hoyes <Peter.Hoyes@arm.com>

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 ci/base.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/ci/base.yml b/ci/base.yml
index 70adac1..4bf59d1 100644
--- a/ci/base.yml
+++ b/ci/base.yml
@@ -7,7 +7,7 @@ distro: zephyr
=20
 defaults:
   repos:
-    refspec: master
+    refspec: mickledore
=20
 repos:
   meta-zephyr:
--=20
2.34.1


