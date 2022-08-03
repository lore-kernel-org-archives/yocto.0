Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A9BDC19F28
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 13:37:23 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web08.8573.1659533839900113289
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 06:37:20 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1B71211FB;
	Wed,  3 Aug 2022 06:37:20 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.84.163])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 937853F70D;
	Wed,  3 Aug 2022 06:37:18 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Diego.Sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 3/3] CI: Build zephyr-synchronization in base.yml
Date: Wed,  3 Aug 2022 14:35:31 +0100
Message-Id: <20220803133531.3823518-3-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220803133531.3823518-1-peter.hoyes@arm.com>
References: <20220803133531.3823518-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 13:37:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57765

From: Peter Hoyes <Peter.Hoyes@arm.com>

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 ci/base.yml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/ci/base.yml b/ci/base.yml
index f85d780..70adac1 100644
--- a/ci/base.yml
+++ b/ci/base.yml
@@ -36,3 +36,4 @@ target:
   - zephyr-helloworld
   - zephyr-kernel-test-all
   - zephyr-philosophers
+  - zephyr-synchronization
--=20
2.25.1


