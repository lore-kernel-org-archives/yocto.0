Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 727F1C4332F
	for <webhook@archiver.kernel.org>; Thu,  8 Dec 2022 07:53:23 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web11.8182.1670485999745911207
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Dec 2022 23:53:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Rphn+0P3;
 spf=pass (domain: bootlin.com, ip: 217.70.178.230, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 9500424000A;
	Thu,  8 Dec 2022 07:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1670485996;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=eSPJxXIo3My66IHBDVRFnJ6lmMWmYfPYSPpQHRAcecA=;
	b=Rphn+0P3YMByfCpA0neLNtECeo+0qXulqlJKZ9NBBOzmB1f/BAGxKLD+jGxKyP5IgO5kgA
	3pT4q2ahMqowfIeFC1Ql1+H6qIyWguxJbOVl4UXTYj9TWo3N1k0D9HAHBbkWVKrNpNJQ1a
	xmCpJgtyjs2UyJliKDjDh9AxDfadBVO1d+Y6TUCC/EHbtmMH1wcbAOgqtwopT5OnB8faxG
	g6r65r7BHX53kyGhbngcNXcVj7jXDSuzILzxN1kh1P2bBYnziTwt5hMUi/tQv5GKmnIfAN
	ttMKOspjKhW1zcltJFEY9xP+7IlArs/nqjmzxht+nKhJuYhKMNrG9kg8+AEQww==
From: alexandre.belloni@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH] schedulers: Fix meta-agl branches
Date: Thu,  8 Dec 2022 08:53:03 +0100
Message-Id: <20221208075303.273929-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 07:53:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58755

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 schedulers.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/schedulers.py b/schedulers.py
index 803b83ccf52d..6acb7415a1c4 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -59,7 +59,7 @@ branchdefaults = {
         'branch_poky': 'langdale',
         'branch_bitbake': '2.2',
         'branch_meta-arm': 'langdale',
-        'branch_meta-agl': 'master',
+        'branch_meta-agl': 'next',
         'branch_meta-aws': 'langdale',
         'branch_meta-gplv2': 'master',
         'branch_meta-intel': 'langdale',
@@ -131,6 +131,7 @@ branchdefaults = {
         'branch_poky': 'dunfell',
         'branch_bitbake': '1.46',
         'branch_meta-arm': 'dunfell',
+        'branch_meta-agl': 'lamprey',
         'branch_meta-aws': 'dunfell',
         'branch_meta-gplv2': 'dunfell',
         'branch_meta-intel': 'dunfell',
-- 
2.38.1


