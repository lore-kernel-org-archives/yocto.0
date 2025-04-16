Return-Path: <thomas.perrot@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1786DC369BA
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 17:41:06 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web10.26244.1744825259067141512
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 10:40:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=gdl2CVPf;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: thomas.perrot@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3880343B4E;
	Wed, 16 Apr 2025 17:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1744825257;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=X2rTbTiKorZLzudxBCAaX514slaBngj1Y4DXNuwKr8o=;
	b=gdl2CVPfWkDd03n3FOLF9Eekh/TsQFVIMxghYinjFQDkY1gU7ViViDtKGhST69Utacm/3M
	ntfM7ihHhDel3syS4HBYHtloU11n3tAo7tsv6t7h/WhMm+Cgy7H1WeOGVXxfc/ug28cmpK
	aMST067+9RcwzueeBn8hDesRDFzwquhxM5YdWNAkdsT+W+ThcFog8P2OdHN9Lyv8rUwiPG
	i/OZ3dBkxx8xsZwORkPhhZVvjh+WFVXHTD1P9H5zIpcb9FJUYUYwM+6ex0lgdhrUXqnQcQ
	KUiMXVZMeq5Exz/t96uGmX1ABK7tUHfrSkXKSgaBuvNFniVTr0uvc23Lmr//Fw==
From: thomas.perrot@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: thomas.petazzoni@bootlin.com,
	Thomas Perrot <thomas.perrot@bootlin.com>
Subject: [error-report-web][PATCH] parser: fix f referenced before assignment
Date: Wed, 16 Apr 2025 19:40:54 +0200
Message-ID: <20250416174054.686571-1-thomas.perrot@bootlin.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvvdejtddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpehthhhomhgrshdrphgvrhhrohhtsegsohhothhlihhnrdgtohhmnecuggftrfgrthhtvghrnhepheeiudeigfdvleevveelveehtddufeffjeejvedvfffhiedvhedugfeuudelkeffnecukfhppeeltddrkeelrdduieefrdduvdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepledtrdekledrudeifedruddvjedphhgvlhhopeigphhsudefqdduudeihehgjedrrddpmhgrihhlfhhrohhmpehthhhomhgrshdrphgvrhhrohhtsegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopeefpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdhrtghpthhtohepthhhohhmrghsrdhpvghtrgiiiihonhhisegsohhothhlihhnrdgtohhmpdhrtghpthhtohepthhhohhmrghsrdhpvghrrhhothessghoohhtlhhinhdrtghomh
X-GND-Sasl: thomas.perrot@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 17:41:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65200

From: Thomas Perrot <thomas.perrot@bootlin.com>

These changes fix the following error, which occurs because the
variable "f" can be used without being properly assigned or initialized first:
File "Post/parser.py", line 98, in parse
    num_similar_errors = f.get_similar_fails_count()
UnboundLocalError: local variable 'f' referenced before assignment

Signed-off-by: Thomas Perrot <thomas.perrot@bootlin.com>
---
 Post/parser.py | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Post/parser.py b/Post/parser.py
index 536e87226189..2fedde665042 100644
--- a/Post/parser.py
+++ b/Post/parser.py
@@ -68,6 +68,7 @@ class Parser:
         except Exception as e:
             return { 'error' : "Problem reading json payload, %s" % e.message }
 
+        f = None
         for fail in failures:
             if len(fail) > int(settings.MAX_UPLOAD_SIZE):
                 build_fails_logged.append({ 'id': -1, 'error' : "The size of the upload is too large" })
@@ -95,7 +96,10 @@ class Parser:
 
         build_url = request.build_absolute_uri(reverse('build_errors', args=[b.id]))
 
-        num_similar_errors = f.get_similar_fails_count()
+        if f is not None:
+            num_similar_errors = f.get_similar_fails_count()
+        else:
+            num_similar_errors = 0
 
         result = { 'build_id' : b.id,
                    'build_url' : build_url,
-- 
2.49.0


