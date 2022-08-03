Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BB96C19F28
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 13:38:23 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.8596.1659533894721748011
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 06:38:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C08913D5;
	Wed,  3 Aug 2022 06:38:15 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.84.163])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5ED653F70D;
	Wed,  3 Aug 2022 06:38:13 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Diego.Sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH] Add a .gitignore file
Date: Wed,  3 Aug 2022 14:38:00 +0100
Message-Id: <20220803133800.3823743-1-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 13:38:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57766

From: Peter Hoyes <Peter.Hoyes@arm.com>

The oeqa code in meta-zephyr-core/lib/ generates __pycache__ files which
pollute the development environment. Add a .gitignore file to
automatically exclude these files from commits.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .gitignore | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 0000000..bee8a64
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1 @@
+__pycache__
--=20
2.25.1


