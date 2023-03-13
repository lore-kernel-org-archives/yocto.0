Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA6C74A4B
	for <webhook@archiver.kernel.org>; Mon, 13 Mar 2023 14:52:05 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web11.22131.1678719123494939060
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Mar 2023 07:52:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=jhcjqRzE;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id C67D5E0009;
	Mon, 13 Mar 2023 14:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1678719122;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ijyLnF1OF0IkyaKwouD5l1cEiwjpfraxCgULVans/EU=;
	b=jhcjqRzEO/asrPkA13GoNWySA2C0VlgmtHB4fIo78qnomXsLIBHS4QKEeFs0/4xY+EcyO3
	/wPr89yKboWph3hg2XkARWfZUVbunZqWMFfDk46uRGtszi80zgkwa0af6RQz2eM3JSAVnu
	WZn9Y6Htmz1R0bq4KZrUiolcTBIv6tQxZ1FKCAUIsDzrVQ0oRXxzvLEXy2msvPJy8Rod8t
	1mJhKWNd/JLlSqkSxtqSt8O5KXzKgNJbfHU8YvHs0oOXeH4t0JfSJzrbgS+nu8UYigcJnG
	ddtriD9AIOqXLVhm9IMGkyQeSZEIJjlbha3LnGKRuiT8dlkQlI3DXUPpyPuJuQ==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org,
	alexandre.belloni@bootlin.com
Cc: thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 4/8] scripts/send-qa-email: protect is_release_version from None value
Date: Mon, 13 Mar 2023 15:51:41 +0100
Message-Id: <20230313145145.2574842-5-alexis.lothore@bootlin.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59413

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index 320ff24..540eb94 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -16,7 +16,7 @@ import utils
 
 def is_release_version(version):
     p = re.compile('\d{8}-\d+')
-    return p.match(version) is None
+    return version is not None and p.match(version) is None
 
 def get_previous_tag(targetrepodir, version):
     previousversion = None
-- 
2.39.2


