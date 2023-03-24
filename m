Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0127C76195
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 09:00:35 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.96208.1679648428782350223
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 02:00:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=EF79CrM8;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 15D0E1BF21C;
	Fri, 24 Mar 2023 09:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679648427;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GnkCfoytHJdsTsI0Ted3ppCUNHkPqK10FR+hu+MEsRU=;
	b=EF79CrM8r0RhoW6yFCUyoWCJ8Avv5HkY5+cgOuo5P57egeqOhy6dj96sZCmTCr2XilRhk7
	2v8ockpsyI96wrZwlCX+vjRht2HGZ6k3rk8Y4R2l3u2lJSgH8MxhC8tSYp9Upw8eVclDWy
	/EwZsLKmRoMX9ungaoCdyqVJfVFNtM1E1oOWw5eYjLW5jA+ElmJkpcVePwgbg+LT10sQrQ
	g41/jECuI+XVsPxRHK1C2UD6F5DUvodERbuyzQO2ty1S08Lxyhd39Nndcexoj2dEWFMb32
	+gTYhfP6DVt47CBUlxt5f7Q4C0DrDSD3yzZI4OJSF/FvSCfwUis53o/9bhISzA==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 1/2]  scripts/generate-testresult-index.py: fix typo in template var name
Date: Fri, 24 Mar 2023 10:00:24 +0100
Message-Id: <20230324090025.26366-2-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230324090025.26366-1-alexis.lothore@bootlin.com>
References: <20230324090025.26366-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 09:00:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59505

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/generate-testresult-index.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/generate-testresult-index.py b/scripts/generate-testresult-index.py
index 1fc9f41..09d2edb 100755
--- a/scripts/generate-testresult-index.py
+++ b/scripts/generate-testresult-index.py
@@ -12,7 +12,7 @@ import json
 import subprocess
 from jinja2 import Template
 
-index_templpate = """
+index_template = """
 <!DOCTYPE html>
 <html>
 <head>
@@ -181,6 +181,6 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
                     with open(f + "/resulttool-done.log", "a+") as tf:
                         tf.write("\n")
 
-t = Template(index_templpate)
+t = Template(index_template)
 with open(os.path.join(path, "index.html"), 'w') as f:
     f.write(t.render(entries = entries))
-- 
2.40.0


