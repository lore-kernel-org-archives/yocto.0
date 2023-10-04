Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D092FE82CAC
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 09:24:08 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.14241.1696411445436379644
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 02:24:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=a1T6dPwz;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 980514000E;
	Wed,  4 Oct 2023 09:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696411443;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iDKUJIG9GxQzpSHsGLPRo3CpNnnlgJXYEy8VKk2TIls=;
	b=a1T6dPwz9rmaokNesEgAuoLuuy8TI6wn5Re4vxlDWUx8//CbpiB0FcAXSJLGgxpra/lmK9
	HHkegNz9E/rNkt14Ye0MmsmaZKE0TQ8pICjowLyqPoCvOEI9P2H2RrPQ9HyvtUBNwrsuny
	swyjlodKdD2dj6fjoYxHa1ZCiVGhfpq4uIJI8awsj+0Wd5CevKKM5bZhX+FQ7uWEYg1Q60
	FHHRap8Cw85+QxG5q3+h0MDsBrrxlMgBbjZ0spcKqFCyNr+XtcnLXMj/coS2DHj5qpxY0r
	mb0GzEK0C9DVorWHkQJjwIUiV8uehTeQJefQB1z+6d4G2IWYIoOVGY9Y/OKuDQ==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 2/3] scripts/send-qa-email: define tests results repository url only once
Date: Wed,  4 Oct 2023 11:25:05 +0200
Message-ID: <20231004092506.25365-3-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231004092506.25365-1-alexis.lothore@bootlin.com>
References: <20231004092506.25365-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexis.lothore@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 09:24:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61231

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Test results repository url is used at least twice, so define a constant
holding the url instead of hardcoding it multiple times

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index f9a982ae9143..ac8b4716f07b 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -15,6 +15,7 @@ import logging
 
 import utils
 
+TEST_RESULTS_REPOSITORY_URL="git@push.yoctoproject.org:yocto-testresults"
 exitcode = 0
 
 def is_release_version(version):
@@ -146,10 +147,10 @@ def send_qa_email():
             elif targetbranch:
                 cloneopts = ["--branch", targetbranch]
             try:
-                subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir, "--depth", "1"] + cloneopts)
+                subprocess.check_call(["git", "clone", TEST_RESULTS_REPOSITORY_URL, tempdir, "--depth", "1"] + cloneopts)
             except subprocess.CalledProcessError:
                 log.info("No comparision branch found, falling back to master")
-                subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir, "--depth", "1"])
+                subprocess.check_call(["git", "clone", TEST_RESULTS_REPOSITORY_URL, tempdir, "--depth", "1"])
 
             # If the base comparision branch isn't present regression comparision won't work
             # at least until we can tell the tool to ignore internal branch information
-- 
2.42.0


