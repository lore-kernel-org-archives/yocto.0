Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83E4EC3DA79
	for <webhook@archiver.kernel.org>; Mon, 26 Dec 2022 10:02:09 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.133092.1672048922121795552
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Dec 2022 02:02:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=QXvLwgr6;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 2F16C40006;
	Mon, 26 Dec 2022 10:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1672048920;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=JFopyQjqiWoC7Inu2HMMc2amRFRslf7B6LGH/Fmo/YU=;
	b=QXvLwgr6abSSt3qtQPDWhWbQrF75Uf6MpjIpDFlTKsJShbU71dCPLcslCDKGz/PlpxKtdg
	vNlhoT+MjBQa7cpE+zN+KwroX80ifRPpq+FsBj0aRdvqhDouwEZXP23R4agi4KJlFGNVAx
	ZbhyJBNHDCa/BhIFSYF15nvIV/VvSSCfACPrWZM4ThiPN0mQl5fmXUYCXa7Qt0KhTYDfhc
	gh7QepTNQ941h1gpuJtPEJx1kcZubqT+6NG3WSn3oShMQz03nZf3kYjYjJJ1Nkvp8+PC7v
	iVHV4DCGAzpgMpks7TuyicORklLkO5yMny4biHD1pJPY1HH4elTS1k6m/ZcDig==
From: alexandre.belloni@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: use -a option for oe-selftest
Date: Mon, 26 Dec 2022 11:01:53 +0100
Message-Id: <20221226100154.1381148-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Dec 2022 10:02:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58867

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 298791b694f6..000d331b8eff 100644
--- a/config.json
+++ b/config.json
@@ -196,7 +196,7 @@
                 "extravars" : [
                     "RPM_GPG_SIGN_CHUNK = '1'"
                 ],
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest --skip-tests distrodata.Distrodata.test_checkpkg buildoptions.SourceMirroring.test_yocto_source_mirror -T machine -T toolchain-user -T toolchain-system -j 15"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest -a --skip-tests distrodata.Distrodata.test_checkpkg buildoptions.SourceMirroring.test_yocto_source_mirror -T machine -T toolchain-user -T toolchain-system -j 15"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
             }
         },
@@ -233,7 +233,7 @@
             },
             "step2" : {
                 "shortname" : "OE Selftest",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail/ DISPLAY=:1 oe-selftest --skip-tests distrodata.Distrodata.test_checkpkg buildoptions.SourceMirroring.test_yocto_source_mirror reproducible -T machine -T toolchain-user -T toolchain-system -j 15"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail/ DISPLAY=:1 oe-selftest -a --skip-tests distrodata.Distrodata.test_checkpkg buildoptions.SourceMirroring.test_yocto_source_mirror reproducible -T machine -T toolchain-user -T toolchain-system -j 15"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
             },
             "step3" : {
-- 
2.38.1


