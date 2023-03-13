Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 773E3C6FD1F
	for <webhook@archiver.kernel.org>; Mon, 13 Mar 2023 14:52:05 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web11.22129.1678719122547858177
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Mar 2023 07:52:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=dGGjbcTw;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id D1FD4E0003;
	Mon, 13 Mar 2023 14:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1678719121;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/nnkd+VU2Ocz58gB1r8W73R3FNEEeRHv4VsILsS8LMU=;
	b=dGGjbcTw1YFeo0JEADjVh/yo/lCnh/jKx+tQ0Z5y9XXUP9UhMj9pMnsQ8KBf3EsFTHJ2yQ
	t/bt2JXI8RMFFjTJlSRUZ0JR+clDtS1JPt8g3r6epaYB1YuLiPWJZsI3teydn8lvlsnn5n
	RLyVESYLztSAn/KW44i6iI+MFh9xXvhTXfUn9k9ual3poDQdYiX+I2v7WjCNj+4VTo17kS
	SlPfq3uVRHPupVyCMcqft6JNKHo2oXTt+ILaDiKg0S8DAllXTJ+hsDD5JQRBEB7uEz8LPR
	qXTXtbcC8tUtfeYzZhHWZ9iLCPeJzFKvS02Wm0w0gFLL+B84U9VT4EVMtIf4DQ==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org,
	alexandre.belloni@bootlin.com
Cc: thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 2/8] scripts/send-qa-email: remove unused variable
Date: Mon, 13 Mar 2023 15:51:39 +0100
Message-Id: <20230313145145.2574842-3-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230313145145.2574842-1-alexis.lothore@bootlin.com>
References: <20230313145145.2574842-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Mar 2023 14:52:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59409

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py | 1 -
 1 file changed, 1 deletion(-)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index 7999c1b..96225a8 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -83,7 +83,6 @@ def send_qa_email():
 
     args = parser.parse_args()
 
-    scriptsdir = os.path.dirname(os.path.realpath(__file__))
     ourconfig = utils.loadconfig()
 
     with open(args.repojson) as f:
-- 
2.39.2


