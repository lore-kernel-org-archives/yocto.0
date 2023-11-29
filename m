Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B06C07CB1
	for <webhook@archiver.kernel.org>; Wed, 29 Nov 2023 20:03:37 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.49128.1701288211579442849
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Nov 2023 12:03:31 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6BC4E2F4;
	Wed, 29 Nov 2023 12:04:17 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DD9C53F5A1;
	Wed, 29 Nov 2023 12:03:29 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Cc: richard.purdie@linuxfoundation.org
Subject: [PATCH][yocto-metrics] Add Nanbield to releases.csv
Date: Wed, 29 Nov 2023 20:03:23 +0000
Message-Id: <20231129200323.2673717-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Nov 2023 20:03:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61774

From: Ross Burton <ross.burton@arm.com>

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 patch-status/releases.csv | 1 +
 1 file changed, 1 insertion(+)

diff --git a/patch-status/releases.csv b/patch-status/releases.csv
index cccb265..6cb5caa 100644
--- a/patch-status/releases.csv
+++ b/patch-status/releases.csv
@@ -1,4 +1,5 @@
 Name,Date
+4.3 (Nanbield),2023-11-14
 4.2 (Mickledore),2023-05-03
 4.1 (Langdale),2022-10-23
 4.0 (Kirkstone),2022-04-27
--=20
2.34.1


