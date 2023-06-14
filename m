Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22D0EB64DA
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 08:56:13 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.6779.1686732964637174796
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 01:56:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=gloSEUdF;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexis.lothore@bootlin.com)
X-GND-Sasl: alexis.lothore@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1686732963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=af7YHyCAJmHV5L+xpM7L5914imNVsJp1Tq5EbDqwPoo=;
	b=gloSEUdFpJcCmtUp5/4itckkq7i8/dNqi+MmAxfJVVonSerSiuG5C+gp/ey32PsNegr935
	Z/7FAtWW5qldTDkbyDip1XUut4VeLKb8XNPpX1wnPuvVxM4YTTJZMgCCg/4ruieeq7H3M1
	8KaVYz1YCX5hdJ5GSglXeIsR94M+1j39VhunN1uAdwjyeaMPFH/R6X3/cjx6f9DNGt/+Dp
	zXHaUnWvsMiMSnIQ2FwBYcG07iAFEkUb3+3H+OEdi9V6SNFThnr0TgRNGNgB2bmrHCU+bd
	gsYt110ABbipW1sfzPafJkU2/v+Lcj03ZqgPWi8KNwGR6tGvl/2XBcMk3SwB2g==
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id C239760015;
	Wed, 14 Jun 2023 08:56:02 +0000 (UTC)
From: alexis.lothore@bootlin.com
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 1/3] scripts/send-qa-email: use logger instead of raw prints
Date: Wed, 14 Jun 2023 10:56:12 +0200
Message-ID: <20230614085614.27951-2-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230614085614.27951-1-alexis.lothore@bootlin.com>
References: <20230614085614.27951-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 08:56:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60289

From: Alexis Lothoré <alexis.lothore@bootlin.com>

As for other scripts in yocto-autobuilder-helper or oecore, use python
logger class instead of raw print calls to allow log level distinction

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index 4613bff892e0..8a8454d09c2f 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -11,6 +11,7 @@ import sys
 import subprocess
 import tempfile
 import re
+import logging
 
 import utils
 
@@ -64,8 +65,8 @@ def get_regression_base_and_target(basebranch, comparebranch, release, targetrep
     #Default case: return previous tag as base
     return get_previous_tag(targetrepodir, release), basebranch
 
-def generate_regression_report(querytool, targetrepodir, base, target, resultdir, outputdir):
-    print(f"Comparing {target} to {base}")
+def generate_regression_report(querytool, targetrepodir, base, target, resultdir, outputdir, log):
+    log.info(f"Comparing {target} to {base}")
 
     try:
         regreport = subprocess.check_output([querytool, "regression-report", base, target, '-t', resultdir])
@@ -73,9 +74,13 @@ def generate_regression_report(querytool, targetrepodir, base, target, resultdir
            f.write(regreport)
     except subprocess.CalledProcessError as e:
         error = str(e)
-        print(f"Error while generating report between {target} and {base} : {error}")
+        log.error(f"Error while generating report between {target} and {base} : {error}")
 
 def send_qa_email():
+    # Setup logging
+    logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")
+    log = logging.getLogger('send-qa-email')
+
     parser = utils.ArgParser(description='Process test results and optionally send an email about the build to prompt QA to begin testing.')
 
     parser.add_argument('send',
@@ -132,7 +137,7 @@ def send_qa_email():
             try:
                 subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir, "--depth", "1"] + cloneopts)
             except subprocess.CalledProcessError:
-                print("No comparision branch found, falling back to master")
+                log.info("No comparision branch found, falling back to master")
                 subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir, "--depth", "1"])
 
             # If the base comparision branch isn't present regression comparision won't work
@@ -157,7 +162,7 @@ def send_qa_email():
 
             regression_base, regression_target = get_regression_base_and_target(basebranch, comparebranch, args.release, targetrepodir)
             if regression_base and regression_target:
-                generate_regression_report(querytool, targetrepodir, regression_base, regression_target, tempdir, args.results_dir)
+                generate_regression_report(querytool, targetrepodir, regression_base, regression_target, tempdir, args.results_dir, log)
 
         finally:
             subprocess.check_call(["rm", "-rf",  tempdir])
-- 
2.41.0


