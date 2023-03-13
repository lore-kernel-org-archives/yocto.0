Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79B55C61DA4
	for <webhook@archiver.kernel.org>; Mon, 13 Mar 2023 14:52:05 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web11.22132.1678719124465404829
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Mar 2023 07:52:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=RG6evm43;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id D07CDE000F;
	Mon, 13 Mar 2023 14:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1678719123;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NgHgdFvFMnDZq/Igt7oZ45kVbZC117n5yb0c2tGOwMo=;
	b=RG6evm43HV8VbnkBkjsK5g4lOBSuQD0zVV4ou/LTxsBkfI1UVaqmb+EGqVPTM2dhwwLFek
	PeDghKlMHivBFBgrLQGhFLgvNuOknJq+/njIXuSE9iHiVvBdDpixg1ORVKg3sEUc4Nxf0O
	ghKcbXldh2Qwa4esed0e6McYtcFpHyQVQJpMoh6Diu+PZNWBHSLYsMcDsKVJz7+fl5NDCO
	/dnbjd6P36J0bu3K/GL07K64j2XLQtrW2IEDf2uapkSY1wqiDiDf6aG32MNjoxPwBQU4n/
	sxztspD+ffqaQa+uIkA0FozRNS7sPQJ33QjLqswGUwzE5XybqPOXHSdB394OTw==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org,
	alexandre.belloni@bootlin.com
Cc: thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 6/8] scripts/send-qa-email: fix testing branches regression reporting
Date: Mon, 13 Mar 2023 15:51:43 +0100
Message-Id: <20230313145145.2574842-7-alexis.lothore@bootlin.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59415

From: Alexis Lothoré <alexis.lothore@bootlin.com>

d6018b891a3b7c62c7a2883c7fb9ae55e66f1363 broke regression reporting for testing
branches (e.g: master-next in poky, ross/mut in poky-contrib) by ignoring the comparebranch returned by
utils.getcomparison branch

Fix regression reporting for those branches by using comparebranch again. The
fix also refactor/add a intermediary step to guess base and target for
regression reporting, to isolate a bit the logic and make it easier later to add
multiple base/target couples

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py | 27 +++++++++++++++++++--------
 1 file changed, 19 insertions(+), 8 deletions(-)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index 540eb94..78e051a 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -49,18 +49,28 @@ def get_previous_tag(targetrepodir, version):
     defaultbaseversion, _, _ = utils.get_version_from_string(subprocess.check_output(["git", "describe", "--abbrev=0"], cwd=targetrepodir).decode('utf-8').strip())
     return utils.get_tag_from_version(defaultbaseversion, None)
 
-def generate_regression_report(querytool, targetrepodir, basebranch, resultdir, outputdir, yoctoversion):
-    baseversion = get_previous_tag(targetrepodir, yoctoversion)
-    print(f"Comparing {basebranch} to {baseversion}")
+def get_regression_base_and_target(basebranch, comparebranch, release, targetrepodir):
+    if not basebranch:
+        # Basebranch/comparebranch is an arbitrary configuration (not defined in config.json): do not run regression reporting
+        return None, None
+
+    if is_release_version(release):
+        # We are on a release: ignore comparebranch (which is very likely None), regression reporting must be done against previous tag
+        return get_previous_tag(targetrepodir, release), basebranch
+    elif comparebranch:
+        # Basebranch/comparebranch is defined in config.json: regression reporting must be done against branches as defined in config.json
+        return comparebranch, basebranch
+
+def generate_regression_report(querytool, targetrepodir, base, target, resultdir, outputdir):
+    print(f"Comparing {target} to {base}")
 
     try:
-        regreport = subprocess.check_output([querytool, "regression-report", baseversion, basebranch, '-t', resultdir])
+        regreport = subprocess.check_output([querytool, "regression-report", base, target, '-t', resultdir])
         with open(outputdir + "/testresult-regressions-report.txt", "wb") as f:
            f.write(regreport)
     except subprocess.CalledProcessError as e:
         error = str(e)
-        print(f"Error while generating report between {basebranch} and {baseversion} : {error}")
-
+        print(f"Error while generating report between {target} and {base} : {error}")
 
 def send_qa_email():
     parser = utils.ArgParser(description='Process test results and optionally send an email about the build to prompt QA to begin testing.')
@@ -142,8 +152,9 @@ def send_qa_email():
                 subprocess.check_call(["git", "push", "--all"], cwd=tempdir)
                 subprocess.check_call(["git", "push", "--tags"], cwd=tempdir)
 
-            if basebranch:
-                generate_regression_report(querytool, targetrepodir, basebranch, tempdir, args.results_dir, args.release)
+            regression_base, regression_target = get_regression_base_and_target(basebranch, comparebranch, args.release, targetrepodir)
+            if regression_base and regression_target:
+                generate_regression_report(querytool, targetrepodir, regression_base, regression_target, tempdir, args.results_dir)
 
         finally:
             subprocess.check_call(["rm", "-rf",  tempdir])
-- 
2.39.2


