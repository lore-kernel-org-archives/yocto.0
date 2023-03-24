Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB987C761AF
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 10:24:45 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web10.97958.1679653476397275453
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 03:24:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=YVqkBce8;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 461311BF217;
	Fri, 24 Mar 2023 10:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679653474;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GnkCfoytHJdsTsI0Ted3ppCUNHkPqK10FR+hu+MEsRU=;
	b=YVqkBce8F1L6sbk67Po7q2rYE9a3RgU/Ja4DriKf2t90F5dK1cOyFCcxV1CCjrJEUmgsKp
	KXzqL/R1rgRoz5cJSo965CzKv54ud+AnfCpreOvIw+y9JzHYB1gy7EU1Ndc2xWke1oIXug
	WHx5TpILSzvjZt0QX3D2Elcr8IJWJEaRbaOjYZsM+ZXvnntUBQ1TGsiJCsmVl2oP893Jop
	+EkqJb7t9sVwz3kiTvgNyOjHy8gLoyzJ2/1nulzOqxeCqWZwXG9O1/JCDvsrIjPl/S4WnO
	WCRLrHO/q0K1bEA/4SyjZqCs60GW1c+d3Yo2QSMYspJeTX04HKS+7F2NIt5Seg==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH v2 1/2]  scripts/generate-testresult-index.py: fix typo in template var name
Date: Fri, 24 Mar 2023 11:24:06 +0100
Message-Id: <20230324102407.35348-2-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230324102407.35348-1-alexis.lothore@bootlin.com>
References: <20230324102407.35348-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 10:24:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59510

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


