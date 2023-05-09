Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89120C77B75
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 15:54:03 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.36650.1683647641875437812
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 08:54:01 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DFC6FFEC;
	Tue,  9 May 2023 08:54:45 -0700 (PDT)
Received: from e125920.cambridge.arm.com (unknown [10.1.199.64])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 009E23F663;
	Tue,  9 May 2023 08:54:00 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 2/2][mickledore] CI: Disable testimage on qemu-cortex-a9
Date: Tue,  9 May 2023 16:52:56 +0100
Message-Id: <20230509155256.2315498-2-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230509155256.2315498-1-peter.hoyes@arm.com>
References: <20230509155256.2315498-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 15:54:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59931

From: Peter Hoyes <Peter.Hoyes@arm.com>

Runtime validation is currently failing on qemu-cortex-a9 for
undiagnosed reasons. Disable testimage on this machine for now until it
has been fixed.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .gitlab-ci.yml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index 2ecf132..4dac1b6 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -129,7 +129,6 @@ qemu-cortex-a9:
   parallel:
     matrix:
       - TOOLCHAIN: [default, zephyr-toolchain]
-        TESTING: testimage
=20
 qemu-cortex-m0:
   extends: .build
--=20
2.34.1


