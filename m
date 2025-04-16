Return-Path: <thomas.perrot@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07E56C369BA
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 17:23:16 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web11.25449.1744824193466010314
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 10:23:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=NIKv4uWh;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: thomas.perrot@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 74A4B43A1C;
	Wed, 16 Apr 2025 17:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1744824191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=LRjsW93HYg2yL6DIRuAjnytcqPoa5OoQmhWBNJ5wLMs=;
	b=NIKv4uWh/669Z7r6OQWojXSgvyXXVs0I4ibslUwK9Z1ITk1pvwnLrHWXQg2BHs1QYYYzlo
	FrBMTqFyYOX9o/2McE79gubVn80WomdepgxJjNS8m3jI5bv+orkg8VmBZ3IS7tm4mYOlKu
	EUHkR2zm8vp1irpl8MuOShBiXzv4m8yZlz7zTvQWVJFm0dRJJmDT+XsiRzFPeh4yL3xEN+
	40AQMe1EdnxFrWpT6S1u+25Q1l7UzhlSSdzTwJqPIJg/p+1Pg2Yw2omoFV0NPpyUITsZeN
	cAJTmN+uLOxlzhjegpj6qVCpYP7SP1pFKl8C9mw7NvgMssYNJKcs/5MVnAiukw==
From: thomas.perrot@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: thomas.petazzoni@bootlin.com,
	Thomas Perrot <thomas.perrot@bootlin.com>
Subject: [error-report-web][PATCH] view: correct the version checker.
Date: Wed, 16 Apr 2025 19:23:09 +0200
Message-ID: <20250416172309.671562-1-thomas.perrot@bootlin.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-State: spam:medium
X-GND-Score: 300
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvvdeileeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecundevohgrshhtrghlucdlfedttddmnecujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomhepthhhohhmrghsrdhpvghrrhhothessghoohhtlhhinhdrtghomhenucggtffrrghtthgvrhhnpefftdduvdeiffevvddtieehhfehhffhvedukeeggeeikefhvedtfedtvedvkeduleenucffohhmrghinhepfehinhhushgvrhgprghgvghnthhvvghrshhiohhnrhgvrdhsvggrrhgthhenucfkphepledtrdekledrudeifedruddvjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeeltddrkeelrdduieefrdduvdejpdhhvghlohepgihpshdufedqudduieehghejrddrpdhmrghilhhfrhhomhepthhhohhmrghsrdhpvghrrhhothessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepfedprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrghdprhgtphhtthhopehthhhomhgrshdrphgvthgriiiiohhnihessghoohhtlhhinhdrtghomhdprhgtphhtthhopehthhhomhgrshdrphgvrhhrohhtsegsohhothhlihhnrdgtohhm
X-GND-Sasl: thomas.perrot@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 17:23:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65199

From: Thomas Perrot <thomas.perrot@bootlin.com>

Otherwise, requests received from the send-error-report with a
version higher than 0.3 are treated as lower than 0.3.

Signed-off-by: Thomas Perrot <thomas.perrot@bootlin.com>
---
 Post/views.py | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Post/views.py b/Post/views.py
index 3575c1da9854..e75f0b8b4715 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -23,6 +23,7 @@ from django.core.exceptions import FieldError, ObjectDoesNotExist
 from django.http import JsonResponse
 from django.db.models import Q
 import json
+import re
 import urllib
 from urllib.parse import urlparse
 
@@ -51,7 +52,9 @@ def addData(request, return_json=False):
     if request.method == 'POST':
         user_agent = request.META.get("HTTP_USER_AGENT", "")
 
-        if "send-error-report/0.3" in user_agent:
+        version = re.search(r"send-error-report/(\d+\.\d+)", user_agent).group(1)
+        version_parts = [int(part) for part in version.split('.')]
+        if version_parts >= [0, 3]:
             data = request.body
         else:
             # Backward compatibility with send-error-report < 0.3
-- 
2.49.0


