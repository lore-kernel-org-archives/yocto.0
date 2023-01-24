Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6CE7C54EB4
	for <webhook@archiver.kernel.org>; Tue, 24 Jan 2023 17:30:20 +0000 (UTC)
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by mx.groups.io with SMTP id smtpd.web11.21807.1674581410995931484
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Jan 2023 09:30:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=TUQJuuw+;
 spf=pass (domain: bootlin.com, ip: 217.70.178.231, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 6D23C100014;
	Tue, 24 Jan 2023 17:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1674581408;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0iqyCglTBYEymg7i9LJt+g77cXOAz9g9NYm0ZGvdJ8M=;
	b=TUQJuuw+Hq6RA7JsbtWwzHsK3qJ/BRp+ggHqCNAgCKzNBa0kWuNah/se5vPS8uU/KyslG5
	XRdlS4xBDovdTwW+noIz3WfL5+akp5nckV11qHH3uu6xSNf7OKHQnzyMFz5pH7wfQL6mGO
	0MMU8lnY8d0SWGPxt+dU60nZWPJlOLMoayKfbUseYCxzczzw8rPMPv58861oq0MQH1fuPb
	/qdFEfxsB35P+MQwbVf6KKXTn4iLCGGV3u6DizP1kope7evUr59ATkOCZegh2N0Ibsc56T
	7eTlobQDIDMlcTPLb618CBl0YO/ZGNBUQvInqzzyMixR0mEmmZ1eJfvVV0hHww==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com,
	=?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
Subject: [autobuilder][PATCH v3 1/5] scripts/send_qa_email.py: Rename send-qa-email to send_qa_email.py
Date: Tue, 24 Jan 2023 18:30:13 +0100
Message-Id: <20230124173017.134017-2-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230124173017.134017-1-alexis.lothore@bootlin.com>
References: <20230124173017.134017-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Jan 2023 17:30:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59047

This rename fixes send-qa-email regarding python guidelines, which allows to
import the script content in another script (for unit testing purpose for
example)

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/{send-qa-email => send_qa_email.py} | 0
 scripts/shared-repo-unpack                  | 2 +-
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename scripts/{send-qa-email => send_qa_email.py} (100%)

diff --git a/scripts/send-qa-email b/scripts/send_qa_email.py
similarity index 100%
rename from scripts/send-qa-email
rename to scripts/send_qa_email.py
diff --git a/scripts/shared-repo-unpack b/scripts/shared-repo-unpack
index b826c87..8e7ec95 100755
--- a/scripts/shared-repo-unpack
+++ b/scripts/shared-repo-unpack
@@ -61,7 +61,7 @@ for repo in sorted(repos.keys()):
         utils.printheader("Copying in repo %s" % repo)
         utils.mkdir(targetsubdir)
         if args.target in ["a-full", "a-quick"]:
-            # full/quick need all repo data due to send-qa-email
+            # full/quick need all repo data due to send_qa_email.py
             subprocess.check_call(["tar", "-I", "zstd", "-C", targetsubdir, "-xf", "%s.tar.zst" % args.cache_dir])
         else:
             subprocess.check_call(["tar", "-I", "zstd", "-C", targetsubdir, "-xf", "%s.tar.zst" % args.cache_dir, "./" + repo])
-- 
2.39.0


