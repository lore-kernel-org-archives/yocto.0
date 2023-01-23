Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A5E9C38142
	for <webhook@archiver.kernel.org>; Mon, 23 Jan 2023 12:33:49 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.40804.1674477224328735719
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Jan 2023 04:33:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=owRRmETa;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id A15836000C;
	Mon, 23 Jan 2023 12:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1674477223;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0lJLYhScDlM/AbCNJFL2YT5c3dTNyRjUSG4opOaGV7o=;
	b=owRRmETagbvxWS07b8TXi2AQOFxfehB2MJoQB1NM46WglcYa7kJrSRupPre5dsJ7w0gpUt
	INuccznyQ7RGJ3RyOIuxZjllrG0dNuoBC1UTEH7Oij3XCjBwFDHJwOolW8x9vq+9MwpBGV
	3oVz7tKemBc3GIjjLAu8ZP61EaF93Lkqh9roAEphYl0mAT/d+NmKfI9o4pTn3QmFYBludJ
	i1P8Lpk9Xhmy8aajlpETMmuP69BzS1I1R9X7TTgwMhbH3rafISDzZVGyFg2t/SRngM83B9
	KW3GdYPjXD/vV0/tdnRWhGaXVWG16UgC5nuV43pHCFmMpswM5tW761qkHBOu7Q==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com,
	=?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
Subject: [autobuilder][PATCH v2 1/1] builders: update send-qa-email name
Date: Mon, 23 Jan 2023 13:33:43 +0100
Message-Id: <20230123123343.37841-2-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230123123343.37841-1-alexis.lothore@bootlin.com>
References: <20230123123343.37841-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Jan 2023 12:33:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59036

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 builders.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/builders.py b/builders.py
index d942346..b052f71 100644
--- a/builders.py
+++ b/builders.py
@@ -322,7 +322,7 @@ def create_parent_builder_factory(buildername, waitname):
 
     factory.addStep(steps.ShellCommand(
         command=[
-            util.Interpolate("%(prop:builddir)s/yocto-autobuilder-helper/scripts/send-qa-email"),
+            util.Interpolate("%(prop:builddir)s/yocto-autobuilder-helper/scripts/send_qa_email.py"),
             util.Property("send_email"),
             util.Interpolate("%(prop:builddir)s/layerinfo.json"),
             util.Interpolate("%(prop:sharedrepolocation)s"),
-- 
2.39.0


