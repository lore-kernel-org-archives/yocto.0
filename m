Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C61C2C61DA4
	for <webhook@archiver.kernel.org>; Wed, 22 Feb 2023 20:25:38 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.4100.1677097535424347869
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Feb 2023 12:25:35 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: jon.mason@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B8ABFEC;
	Wed, 22 Feb 2023 12:26:17 -0800 (PST)
Received: from jdm-VirtualBox.lan?044arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1E6163F703;
	Wed, 22 Feb 2023 12:25:34 -0800 (PST)
From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Ross Burton <ross.burton@arm.com>
Subject: [meta-zephyr][PATCH langdale] CI: pin to kas 3.2 as 3.2.1 fails
Date: Wed, 22 Feb 2023 09:23:12 -0500
Message-Id: <20230222142312.423303-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 20:25:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59281

From: Ross Burton <ross.burton@arm.com>

For some reason the kas 3.2.1 container fails:

No such file or directory: '/builds/engineering/yocto/meta-zephyr/ci/ci/b=
ase.yml'

Note the repeated /ci/, which is wrong.

Pin the kas container to 3.2 for now until this is resolved.

Signed-off-by: Ross Burton <ross.burton@arm.com>
Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 .gitlab-ci.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index 7ec0bd0..c7a9191 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -1,4 +1,4 @@
-image: ghcr.io/siemens/kas/kas:latest-release
+image: ghcr.io/siemens/kas/kas:3.2
=20
 variables:
   CPU_REQUEST: ""
--=20
2.25.1


