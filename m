Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2034EC636D6
	for <webhook@archiver.kernel.org>; Tue,  7 Feb 2023 15:29:52 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web11.86371.1675783781958752254
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Feb 2023 07:29:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=gAJovxx1;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 0D16E1C0007;
	Tue,  7 Feb 2023 15:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1675783780;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7MtPAxL/l/W4hudxqsOc2+kd8n/xVOV3CSNdRfIn3Iw=;
	b=gAJovxx1pH2yQ3yxuHWqRVeCl3Y1/QzbAMciIQYcIIZ4DeJ8Jyk2pAtXEwssybdtf0LIx8
	Fylo3D9NJleuFfwoBwQbMuyqk1MO5F5dlEzsF+jV3XevHwAzHoNgdg3RDx2AAa74H+Wf0n
	vEuOzbZiJG42ebvjHwXs7PPQIsE+9diN5nm2ZUVpJB11JogPyh3kbiCGCzVH5gTxfFdHyQ
	6w14mUI31vGswWbnVpWwxnKdiUNBB6KmptFuEMsZZBh+xCnc070lPnGDpEFPlXtHn+0Ca9
	TvYSLKQhFIkSLnf3ymEa47d/YIc8/sZ1BkV8b6LNwJjDJjUkwNoIRbx4bT0p6g==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [autobuilder][PATCH v2 2/3] scripts/send-qa-email: reduce testresults shallow clone depth
Date: Tue,  7 Feb 2023 16:29:48 +0100
Message-Id: <20230207152949.43487-3-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230207152949.43487-1-alexis.lothore@bootlin.com>
References: <20230207152949.43487-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Feb 2023 15:29:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59197

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Since we are now force-fetching base revisions and target revisions for
regression report generation, we can make testresults clone even more "shallow"
to increase clone speed in CI pipelines

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index f8ebe34..b87e822 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -139,10 +139,10 @@ def send_qa_email():
             elif basebranch:
                 cloneopts = ["--branch", basebranch]
             try:
-                subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"] + cloneopts)
+                subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir, "--depth", "1"] + cloneopts)
             except subprocess.CalledProcessError:
                 print("No comparision branch found, falling back to master")
-                subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"])
+                subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir, "--depth", "1"])
 
             # If the base comparision branch isn't present regression comparision won't work
             # at least until we can tell the tool to ignore internal branch information
-- 
2.39.1


