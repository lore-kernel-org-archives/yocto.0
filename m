Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8C9C74A5B
	for <webhook@archiver.kernel.org>; Tue, 21 Mar 2023 09:04:25 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web10.8456.1679389458369127633
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Mar 2023 02:04:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=hZQTFCWf;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 2221CE000B;
	Tue, 21 Mar 2023 09:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679389456;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/vgqzxhWO9FSZGkjqoSRPAkssEEXcW/pdn6G60qhVJc=;
	b=hZQTFCWf8y7LnkOxwoSXWwoqoEHPbl4wLA8598sp7yth4FjvVUupcLEnJmiabhFoSHsELL
	Hz70qGwe/RqMNttdlqbK8yPZOJzSRn3qQGgyCCcUPkwrOYZSxlWjZ12BeCIk115uxGT0Nt
	lCPnwCO2YqPYjU4H43myHnmZlTG28vUTdh0xgNHYnIsWot5tph8KxJSTDeCcX3mZOuTkf/
	orNFnazHkX6x8uAdj/g4pgpLpH1a7SHc5EJQh5NS2d6RrUjzBf3TfEoRUbcyVdJeXFbSuH
	OyFPNIIkrVuU1zYElfG46auuNZSHyQ4fdO0eNAFPIAccsHHN3WzF4lBI7l1nZw==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org,
	alexandre.belloni@bootlin.com
Cc: thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 1/1] config.json: fix A. Belloni configuration for regression reporting
Date: Tue, 21 Mar 2023 10:04:05 +0100
Message-Id: <20230321090405.7785-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Mar 2023 09:04:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59480

From: Alexis Lothoré <alexis.lothore@bootlin.com>

There is a typo in BUILD_HISTORY_FORKPUSH, leading to failures on Autobuilder
when trying to generate regression reports:

Traceback (most recent call last):
  File "/home/pokybuild/yocto-worker/a-full/yocto-autobuilder-helper/scripts/send-qa-email", line 213, in <module>
    send_qa_email()
  File "/home/pokybuild/yocto-worker/a-full/yocto-autobuilder-helper/scripts/send-qa-email", line 117, in send_qa_email
    basebranch, comparebranch = utils.getcomparisonbranch(ourconfig, repo, branch)
  File "/home/pokybuild/yocto-worker/a-full/yocto-autobuilder-helper/scripts/utils.py", line 392, in getcomparisonbranch
    comparerepo, comparebranch = base.split(":")
ValueError: not enough values to unpack (expected 2, got 1)

Observed on build a-full/5070

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index fcd0588..51c95e1 100644
--- a/config.json
+++ b/config.json
@@ -6,7 +6,7 @@
     "BUILD_HISTORY_DIR" : "buildhistory",
     "BUILD_HISTORY_REPO" : "ssh://git@push.yoctoproject.org/poky-buildhistory",
     "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:warrior", "poky:zeus", "poky:dunfell", "poky:gatesgarth", "poky:hardknott", "poky:honister", "poky:kirkstone", "poky:langdale", "poky:master"],
-    "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky-contrib:abelloni/master-next": "poky/master", "poky:master-next" : "poky:master"},
+    "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky-contrib:abelloni/master-next": "poky:master", "poky:master-next" : "poky:master"},
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20210214-8/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.2+snapshot-7d38cc8e749aedb8435ee71847e04b353cca541d.sh",
     "BUILDTOOLS_URL_TEMPLOCAL2" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
-- 
2.40.0


