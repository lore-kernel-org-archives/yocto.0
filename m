Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90836C7618D
	for <webhook@archiver.kernel.org>; Mon, 13 Mar 2023 14:52:05 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web11.22130.1678719123005430200
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Mar 2023 07:52:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=mlC2HXJg;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 5A7ADE0011;
	Mon, 13 Mar 2023 14:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1678719121;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eTgYnEsjs6YaiFQcT3YY8tq2bgLa2InxQAlOikxZKQ0=;
	b=mlC2HXJg7FkFmHM0fooCsPH7bW1yrdWsJNW/Xn2hxuRuDzRIKFC0ioITT0LyduyrVhJqn1
	7cplEWph0SU95WQbVoi7yas16geLhqphYn68A6wgAohiEK0t08HAz+R+BDuMrbbQkSogtX
	HZvDWotb6n93Ey42rUrwwjErHiNgiQKGPK2IxGYb7dUKdw1a7PK5xhd37/f6Djg4wxU+3U
	mC/6PaMsL+dChM597kLkYHywnW/leVaLJlfZuhDcrfDFQ90IqeQxOM72kqH7f1LeBSP4xO
	/CI9Xpm8QybaOu0IukhpMrgMCC8mIFvF+e3hAcB4bgh/8QPXAIaFhHS047WtMA==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org,
	alexandre.belloni@bootlin.com
Cc: thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 3/8] scripts/send-qa-email: invert boolean logic for release check
Date: Mon, 13 Mar 2023 15:51:40 +0100
Message-Id: <20230313145145.2574842-4-alexis.lothore@bootlin.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59411

From: Alexis Lothoré <alexis.lothore@bootlin.com>

is_non_release_version has an inverted logic which makes its reuse quite
confusing

Transform it as is_release_version and let caller do the negation if needed

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index 96225a8..320ff24 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -14,15 +14,15 @@ import re
 
 import utils
 
-def is_non_release_version(version):
+def is_release_version(version):
     p = re.compile('\d{8}-\d+')
-    return p.match(version) is not None
+    return p.match(version) is None
 
 def get_previous_tag(targetrepodir, version):
     previousversion = None
     previousmilestone = None
     if version:
-        if is_non_release_version(version):
+        if not is_release_version(version):
             return subprocess.check_output(["git", "describe", "--abbrev=0"], cwd=targetrepodir).decode('utf-8').strip()
         compareversion, comparemilestone, _ = utils.get_version_from_string(version)
         compareversionminor = compareversion[-1]
-- 
2.39.2


