Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C09BC47073
	for <webhook@archiver.kernel.org>; Tue,  9 Jan 2024 07:58:49 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web11.12076.1704787124443158878
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Jan 2024 23:58:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Oodqaxxg;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: alexandre.belloni@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id A16BBFF80A;
	Tue,  9 Jan 2024 07:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1704787122;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=MVUcGSaJ/SGs3oFAweCRGEoe0ALxWU7UeQYS7WnBC9c=;
	b=OodqaxxgGRvSUmYz2vTFoQZxDp6rOslyUSbB6KlOi1kdHEbKkQK1b2Qa7Vk61B9SgyKB8K
	ObuOod5xcTtizEpfWlkOD619aFGWMeIZVC/L1KyB6AFJ1iTH1AMreBksyFkc9ASySsifyS
	S0mgsMn2Qp9hnIK6iZ2ExTcruoHiXbcK8TTkl0rW0Pkuuyabl96khwUgYFwo6re4qgDZWR
	lNsII2d/fNVK9gQZltylSvCx3isHUNpeZxWzZYZ58Q4TPWvcCI15/JxJ49BNAOa3+J48QJ
	1yXXAiK0IG6T/To4vUHDOTZW2NGV2UNTOtk/PKu2T7vCOFKDgGsNTCr/AaaziQ==
From: alexandre.belloni@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder2][PATCH] schedulers: use proper bitbake repo and branch for abelloni-next
Date: Tue,  9 Jan 2024 08:58:39 +0100
Message-ID: <20240109075839.743568-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexandre.belloni@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 07:58:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62112

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 schedulers.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/schedulers.py b/schedulers.py
index 5c2ba5e1b8bd..c14b7678b5fd 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -45,6 +45,8 @@ branchdefaults = {
         'branch_poky': 'abelloni/master-next',
         'repo_oecore': 'ssh://git@push.openembedded.org/openembedded-core-contrib',
         'branch_oecore': 'abelloni/master-next',
+        'repo_bitbake': 'ssh://git@push.openembedded.org/bitbake-contrib',
+        'branch_bitbake': 'abelloni/master-next',
     },
     'mut': {
         'branch': 'master',
-- 
2.43.0


