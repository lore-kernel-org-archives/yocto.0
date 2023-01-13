Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618C3C61DB3
	for <webhook@archiver.kernel.org>; Fri, 13 Jan 2023 15:06:46 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web11.89219.1673622402034411648
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Jan 2023 07:06:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=AennB8q5;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 6485A1C0005;
	Fri, 13 Jan 2023 15:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1673622400;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PmgMtyyOijW6ksgYN4qnXzD6DTX6RELPEt8SWaP5wvo=;
	b=AennB8q5StRPPyMz/+kKyUwrRZR/+JCtGcDrzragsTM5xkWXmtNJMriQgq53DXfhEpqvhW
	/uMgPh9XxpC31qNWTaFP+yhofV7fd/zCbJT935Fu3CAH/lET9RpTgK+eVZUEI/OE8iasgH
	VhZgsynEwO1OcFjY3rUla5y+6y5UrAwDi5LgEH7tlJ4mwVknMqlQeT9i+aYR8ZYTZwc4h6
	OeMN4a4R74MMWtzggdCi/L+McmVhPfjz8Zi1AORutXq6PInAL9f/IxKb1blPOmyY7uaiFA
	MJzL18xJor3N44MBZr5vW1t9zRXng+xWp+jfV7GgFWhUc41yTQWAyiwqaY8pyQ==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	=?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
Subject: [autobuilder][PATCH 1/2] scripts/send-qa-email : clone older history to allow comparing against older releases
Date: Fri, 13 Jan 2023 16:06:45 +0100
Message-Id: <20230113150646.44144-2-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230113150646.44144-1-alexis.lothore@bootlin.com>
References: <20230113150646.44144-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 15:06:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58977

In order to generate relevant regression reports, we need to use resulttool
against taggued releases, which can be way older than the last five previous
commits

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send-qa-email | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/send-qa-email b/scripts/send-qa-email
index d2f63dc..c2c5a4b 100755
--- a/scripts/send-qa-email
+++ b/scripts/send-qa-email
@@ -78,10 +78,10 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
         elif basebranch:
             cloneopts = ["--branch", basebranch]
         try:
-            subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"] + cloneopts)
+            subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir] + cloneopts)
         except subprocess.CalledProcessError:
             print("No comparision branch found, falling back to master")
-            subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"])
+            subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir])
 
         # If the base comparision branch isn't present regression comparision won't work
         # at least until we can tell the tool to ignore internal branch information
-- 
2.39.0


