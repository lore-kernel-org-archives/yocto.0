Return-Path: <thomas.perrot@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73E7C369BD
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 13:18:44 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web11.19025.1744809517613671567
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 06:18:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=pACBocWU;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: thomas.perrot@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id A81D31FCEA;
	Wed, 16 Apr 2025 13:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1744809515;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=J4R6nzorPqVSKuobKy0Z4Ae3wgsp7ppfLdKbwLYdJ2M=;
	b=pACBocWUHeSbCfItGv6YZUXxkYP/ftsH5z5cJmF9w+ZbO7APLb8TidUkbCMc1TLy5Xmli2
	PQvLHzvmzagJkglj6xf3C7ZlGSFbpDPeRCWyAaUTjHjICaePBurDDCbjuXMjtfiO/p94ck
	fjfBN9+2y/blej7iEXZPF9O6r/tQir141+2bMmos5md+CIM1WRpa8MledSryh94YMigFOo
	3wJZVAjlyoDVtSNtCn8nVOpoe/oG0OKU6gpLDdjH/o07o20lS/2DoTYfEjN0YBGlXChzZR
	R2mztM3cSo747fNeTNDQPQYWd5D5QrbMBmmcoTXSunVmYzK1Z7toevIPjLbInA==
From: thomas.perrot@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: Thomas Perrot <thomas.perrot@bootlin.com>
Subject: [error-report-web][PATCH] view: fix unquote_plus import
Date: Wed, 16 Apr 2025 15:18:28 +0200
Message-ID: <20250416131828.441127-1-thomas.perrot@bootlin.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvvdeigeejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpehthhhomhgrshdrphgvrhhrohhtsegsohhothhlihhnrdgtohhmnecuggftrfgrthhtvghrnhepheeiudeigfdvleevveelveehtddufeffjeejvedvfffhiedvhedugfeuudelkeffnecukfhppeeltddrkeelrdduieefrdduvdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepledtrdekledrudeifedruddvjedphhgvlhhopeigphhsudefqdduudeihehgjedrrddpmhgrihhlfhhrohhmpehthhhomhgrshdrphgvrhhrohhtsegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopedvpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdhrtghpthhtohepthhhohhmrghsrdhpvghrrhhothessghoohhtlhhinhdrtghomh
X-GND-Sasl: thomas.perrot@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 13:18:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65188

From: Thomas Perrot <thomas.perrot@bootlin.com>

The "unquote_plus" function is provided by the "urllib.parse"
module in Python 3.

Signed-off-by: Thomas Perrot <thomas.perrot@bootlin.com>
---
 Post/views.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Post/views.py b/Post/views.py
index 3575c1da9854..c0538fd4927e 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -57,7 +57,7 @@ def addData(request, return_json=False):
             # Backward compatibility with send-error-report < 0.3
             # The json is url encoded so we need to undo this here.
             data = request.body[len('data='):]
-            data = urllib.unquote_plus(data)
+            data = urllib.parse.unquote_plus(data)
 
         p = Parser(data)
         result = p.parse(request)
@@ -96,7 +96,7 @@ def apply_filter(context, items, name, value):
         if ':' in value:
             recipe = value.split(':')[0].strip()
             task = value.split(':')[1].strip()
-            filters.append(('TASK', task)) 
+            filters.append(('TASK', task))
             filters.append(('RECIPE', recipe))
         else:
             filters.append(('TASK', value))
-- 
2.49.0


