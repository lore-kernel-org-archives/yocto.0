Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D65AFC54EAA
	for <webhook@archiver.kernel.org>; Tue, 24 Jan 2023 17:30:20 +0000 (UTC)
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by mx.groups.io with SMTP id smtpd.web10.21717.1674581413449122554
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Jan 2023 09:30:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=A6y59hk4;
 spf=pass (domain: bootlin.com, ip: 217.70.178.231, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id AD347100011;
	Tue, 24 Jan 2023 17:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1674581412;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VurhaKUgO6RioXU9lh3dsiTVfz4fhnavENsn7/i2svI=;
	b=A6y59hk4ClIpa0rZbWfV1zOTP0fg0U09I+AmPHBxDpGHuEzJiUwhNaNTEWx7IpgzaiH/0U
	1fWrN+mqMZF0cqJ3dqrPsX+dZwax0hxPuG75Z/lF2u5mO2mThdXtvPK1wL8pVrXL520fVE
	0mGiiA1P6UzoXcXR8rZVmcOtwlPTiniL77Fm4+gERkkNt5Zs9AZrbNu+yftuG7ktL9Outk
	gKgO9yIWED7pRAIgLpJ0wl87tuYBOFM8i1EX2I8cYj6X8dvvkCPEMrjDM+v4SYVQIFgmEp
	n5mqYrvrXizc9OQFT+ITl8rFX2nvpGWQUVRCHrfmVvBD+MV5ymafSw2kgEAe9Q==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com,
	=?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
Subject: [autobuilder][PATCH v3 5/5] scripts/send-qa-email: add symlink to preserve compatibility with autobuilder
Date: Tue, 24 Jan 2023 18:30:17 +0100
Message-Id: <20230124173017.134017-6-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230124173017.134017-1-alexis.lothore@bootlin.com>
References: <20230124173017.134017-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Jan 2023 17:30:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59051

Merely renaming send-qa-email to send_qa_email.py would imply to update
yocto-autobuilder2 scripts, which can be daunting. In order to preserve
compatibility with current configuration, add a symlink pointing to the
new script

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send-qa-email | 1 +
 1 file changed, 1 insertion(+)
 create mode 120000 scripts/send-qa-email

diff --git a/scripts/send-qa-email b/scripts/send-qa-email
new file mode 120000
index 0000000..d82d07f
--- /dev/null
+++ b/scripts/send-qa-email
@@ -0,0 +1 @@
+send_qa_email.py
\ No newline at end of file
-- 
2.39.0


