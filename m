Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0BEDEE14D8
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 09:24:08 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.14346.1696411445703741769
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 02:24:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=CTCUVcLH;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 05EEE40006;
	Wed,  4 Oct 2023 09:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696411444;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rlUHSiGWc3LqEA2ELJmflsLR4tw2LNf1x4mH+tfDWAY=;
	b=CTCUVcLH9WUMG1FnHwVRiinoHmJghcfYhdtDUwOeJLMpeNCD1/BL1CdjXzHKdJtFY//pJj
	45KJ2HaKvCYjBrB5r+ECryL1alS72OMxRb7rhT7YaF7GTBjXu2yWKM2Rs10XeOG/nGeV0Y
	sV2Fik7VviO76TSrbFPkhjkhsqEVG5TTfSXPp8YKeHAsoOyf5qkruj9wxArPBiS5z7kQR8
	d4RITzZZcCVG/512UCpkl2yDgEgx1w8zpvHKijYyx7GrDTrZlbA0T4mXp8EOB0hQjd2nco
	/4sSB24TpJSCEAz3AvoeSKLrYiDuyFd7uNf/FLVSbEUX/Cy8r6B0MF+F8OfVRw==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 3/3] scripts/send_qa_email: guess latest tested revision when dealing with branch
Date: Wed,  4 Oct 2023 11:25:06 +0200
Message-ID: <20231004092506.25365-4-alexis.lothore@bootlin.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61233

From: Alexis Lothoré <alexis.lothore@bootlin.com>

It has been observed that some regression reports generation may failed
when the comparision base is a branch (e.g master) because we can not find
any test results associated to the branch HEAD. This is especially true for
branches which often change, because not all revisions on those branch are
subject to CI tests.

To fix that, whenever we are not dealing with a release, parse the latest
tested revision in test results repository on target branch in order to
guess the corresponding revision in poky repository, so we are sure that
revisions passed to yocto_testresults_query are indeed tested and
regression report can be generated

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py      | 22 +++++++++++++++++-----
 scripts/test_send_qa_email.py | 11 +++++++----
 2 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index ac8b4716f07b..14446a274e90 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -53,7 +53,17 @@ def get_previous_tag(targetrepodir, version):
     defaultbaseversion, _, _ = utils.get_version_from_string(subprocess.check_output(["git", "describe", "--abbrev=0"], cwd=targetrepodir).decode('utf-8').strip())
     return utils.get_tag_from_version(defaultbaseversion, None)
 
-def get_regression_base_and_target(targetbranch, basebranch, release, targetrepodir):
+def get_last_tested_rev_on_branch(branch, log):
+    # Fetch latest test results revision on corresponding branch in test
+    # results repository
+    tags_list = subprocess.check_output(["git", "ls-remote", "--refs", "-t", TEST_RESULTS_REPOSITORY_URL, "refs/tags/" + branch + "/*"]).decode('utf-8').strip()
+    latest_test_tag=tags_list.splitlines()[-1].split()[1]
+    # From test results tag, extract Poky revision
+    tested_revision = re.match('refs\/tags\/.*\/\d+-g([a-f0-9]+)\/\d', latest_test_tag).group(1)
+    log.info(f"Last tested revision on branch {branch} is {tested_revision}")
+    return tested_revision
+
+def get_regression_base_and_target(targetbranch, basebranch, release, targetrepodir, log):
     if not targetbranch:
         # Targetbranch/basebranch is an arbitrary configuration (not defined in config.json): do not run regression reporting
         return None, None
@@ -63,9 +73,11 @@ def get_regression_base_and_target(targetbranch, basebranch, release, targetrepo
         # regression reporting must be done against previous tag
         return get_previous_tag(targetrepodir, release), targetbranch
     elif basebranch:
-        # Targetbranch/basebranch is defined in config.json: regression
-        # reporting must be done against branches as defined in config.json
-        return basebranch, targetbranch
+        # Basebranch/targetbranch are defined in config.json: regression
+        # reporting must be done between latest test result available on base branch
+        # and latest result on targetbranch
+        latest_tested_rev_on_basebranch = get_last_tested_rev_on_branch(basebranch, log)
+        return latest_tested_rev_on_basebranch, targetbranch
 
     #Default case: return previous tag as base
     return get_previous_tag(targetrepodir, release), targetbranch
@@ -177,7 +189,7 @@ def send_qa_email():
                 log.warning("Test results not published on release version. Faulty AB configuration ?")
 
             utils.printheader("Processing regression report")
-            regression_base, regression_target = get_regression_base_and_target(targetbranch, basebranch, args.release, targetrepodir)
+            regression_base, regression_target = get_regression_base_and_target(targetbranch, basebranch, args.release, targetrepodir, log)
             if regression_base and regression_target:
                 generate_regression_report(querytool, targetrepodir, regression_base, regression_target, tempdir, args.results_dir, log)
 
diff --git a/scripts/test_send_qa_email.py b/scripts/test_send_qa_email.py
index 74d60d55655d..5509b3c2510e 100755
--- a/scripts/test_send_qa_email.py
+++ b/scripts/test_send_qa_email.py
@@ -11,7 +11,10 @@ import os
 import sys
 import unittest
 import send_qa_email
+import logging
 
+logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")
+log = logging.getLogger('send-qa-email')
 
 class TestVersion(unittest.TestCase):
     test_data_get_version = [
@@ -45,9 +48,9 @@ class TestVersion(unittest.TestCase):
         {"name": "Older release", "input": {"targetbranch": "kirkstone",
                                             "basebranch": None, "release": "yocto-4.0.8.rc2"}, "expected": ("yocto-4.0.7", "kirkstone")},
         {"name": "Master Next", "input": {"targetbranch": "master-next",
-                                          "basebranch": "master", "release": None}, "expected": ("master", "master-next")},
+                                          "basebranch": "master", "release": None}, "expected": ("LAST_TESTED_REV", "master-next")},
         {"name": "Fork Master Next", "input": {"targetbranch": "ross/mut",
-                                               "basebranch": "master", "release": None}, "expected": ("master", "ross/mut")},
+                                               "basebranch": "master", "release": None}, "expected": ("LAST_TESTED_REV", "ross/mut")},
         {"name": "Nightly a-quick", "input": {"targetbranch": "master",
                                                "basebranch": None, "release": "20230322-2"}, "expected": ("LAST_TAG", "master")},
     ]
@@ -68,11 +71,11 @@ class TestVersion(unittest.TestCase):
         for data in self.regression_inputs:
             with self.subTest(data['name']):
                 base, target = send_qa_email.get_regression_base_and_target(
-                    data['input']['targetbranch'], data['input']['basebranch'], data['input']['release'], os.environ.get("POKY_PATH"))
+                    data['input']['targetbranch'], data['input']['basebranch'], data['input']['release'], os.environ.get("POKY_PATH"), log)
                 expected_base, expected_target = data["expected"]
                 # The comparison base can not be set statically in tests when it is supposed to be the previous tag,
                 # since the result will depend on current tags
-                if expected_base == "LAST_TAG":
+                if expected_base == "LAST_TAG" or expected_base == "LAST_TESTED_REV":
                     self.assertIsNotNone(base)
                 else:
                     self.assertEqual(base, expected_base)
-- 
2.42.0


