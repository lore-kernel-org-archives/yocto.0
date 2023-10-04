Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEFBAE784A9
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 09:24:08 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.14345.1696411445526589469
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 02:24:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=BrtbbqVo;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 051BF40015;
	Wed,  4 Oct 2023 09:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696411443;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=e6bEPIspPQf8/fmyIoU26vuSk59tA8CwAXHsrvZwiBo=;
	b=BrtbbqVoDmX2c9Y3sIU3DPH9j1G5fSdhMSMtZY/0pbGfOIxjHbLqk/k32lwG55HrkgaXwQ
	rCMdE4w3sxxW1ha40SrMl6hHW9AfMCaDKWsaBQl3qM1yuamesfe+vYi/MRlt5Jkm53MN95
	QbUonYVN+u3ULjvv36+0HOk71nhHXSPi0F5thLQxGvkkcc9aLHZSe1P0HtiX6hhX/4GfH1
	4arvQFIPi6nzP9zdCOL+H9I++9PDsQIAaWuKDKn/ygUJp2jD1uHF/KnSFKHEPRZQiHdvCY
	WqcV8Zl7EUf5GDzPXWyEnTCZX8IB/ME1qbJn5fLqi6f7J2xcZB2ZapmnW7OEmg==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 1/3] scripts/send_qa_email: re-clarify base and target revisions
Date: Wed,  4 Oct 2023 11:25:04 +0200
Message-ID: <20231004092506.25365-2-alexis.lothore@bootlin.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61232

From: Alexis Lothoré <alexis.lothore@bootlin.com>

There are some inversions in words used to describe elements of comparison
for regression reporting: the main function of send_qa_email starts using
"base" to talk about the target revision and "compare" to talk about the
reference against which it is compared. Then later in the script, the
"base" is used as "base of comparison"/reference revision, while the
"target" branch/revision appears. This becomes quite confusing when we need
to update the script

Re-align wording to avoid confusion:
- always use "target" to talk about current branch/revision of interest
  (the newest)
- always use "base" to talk about the reference branch/revision  (the
  oldest), against which we want to compare the target revision

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
This commit does not change any behavior in the script, it is only about
renaming variables
---
 scripts/send_qa_email.py      | 44 ++++++++++++++++++-----------------
 scripts/test_send_qa_email.py | 26 ++++++++++-----------
 scripts/utils.py              |  6 ++---
 3 files changed, 39 insertions(+), 37 deletions(-)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index 54b701f409bf..f9a982ae9143 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -52,20 +52,22 @@ def get_previous_tag(targetrepodir, version):
     defaultbaseversion, _, _ = utils.get_version_from_string(subprocess.check_output(["git", "describe", "--abbrev=0"], cwd=targetrepodir).decode('utf-8').strip())
     return utils.get_tag_from_version(defaultbaseversion, None)
 
-def get_regression_base_and_target(basebranch, comparebranch, release, targetrepodir):
-    if not basebranch:
-        # Basebranch/comparebranch is an arbitrary configuration (not defined in config.json): do not run regression reporting
+def get_regression_base_and_target(targetbranch, basebranch, release, targetrepodir):
+    if not targetbranch:
+        # Targetbranch/basebranch is an arbitrary configuration (not defined in config.json): do not run regression reporting
         return None, None
 
     if is_release_version(release):
-        # We are on a release: ignore comparebranch (which is very likely None), regression reporting must be done against previous tag
-        return get_previous_tag(targetrepodir, release), basebranch
-    elif comparebranch:
-        # Basebranch/comparebranch is defined in config.json: regression reporting must be done against branches as defined in config.json
-        return comparebranch, basebranch
+        # We are on a release: ignore basebranch (which is very likely None),
+        # regression reporting must be done against previous tag
+        return get_previous_tag(targetrepodir, release), targetbranch
+    elif basebranch:
+        # Targetbranch/basebranch is defined in config.json: regression
+        # reporting must be done against branches as defined in config.json
+        return basebranch, targetbranch
 
     #Default case: return previous tag as base
-    return get_previous_tag(targetrepodir, release), basebranch
+    return get_previous_tag(targetrepodir, release), targetbranch
 
 def generate_regression_report(querytool, targetrepodir, base, target, resultdir, outputdir, log):
     log.info(f"Comparing {target} to {base}")
@@ -130,7 +132,7 @@ def send_qa_email():
         branch = repos['poky']['branch']
         repo = repos['poky']['url']
 
-        basebranch, comparebranch = utils.getcomparisonbranch(ourconfig, repo, branch)
+        targetbranch, basebranch = utils.getcomparisonbranch(ourconfig, repo, branch)
         report = subprocess.check_output([resulttool, "report", args.results_dir])
         with open(args.results_dir + "/testresult-report.txt", "wb") as f:
             f.write(report)
@@ -139,10 +141,10 @@ def send_qa_email():
         try:
             utils.printheader("Importing test results repo data")
             cloneopts = []
-            if comparebranch:
-                cloneopts = ["--branch", comparebranch]
-            elif basebranch:
+            if basebranch:
                 cloneopts = ["--branch", basebranch]
+            elif targetbranch:
+                cloneopts = ["--branch", targetbranch]
             try:
                 subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir, "--depth", "1"] + cloneopts)
             except subprocess.CalledProcessError:
@@ -151,30 +153,30 @@ def send_qa_email():
 
             # If the base comparision branch isn't present regression comparision won't work
             # at least until we can tell the tool to ignore internal branch information
-            if basebranch:
+            if targetbranch:
                 try:
-                    subprocess.check_call(["git", "rev-parse", "--verify", basebranch], cwd=tempdir)
+                    subprocess.check_call(["git", "rev-parse", "--verify", targetbranch], cwd=tempdir)
                 except subprocess.CalledProcessError:
                     # Doesn't exist so base it off master
                     # some older hosts don't have git branch old new
                     subprocess.check_call(["git", "checkout", "master"], cwd=tempdir)
-                    subprocess.check_call(["git", "branch", basebranch], cwd=tempdir)
-                    subprocess.check_call(["git", "checkout", basebranch], cwd=tempdir)
+                    subprocess.check_call(["git", "branch", targetbranch], cwd=tempdir)
+                    subprocess.check_call(["git", "checkout", targetbranch], cwd=tempdir)
 
             utils.printheader("Storing results")
 
             subprocess.check_call([resulttool, "store", args.results_dir, tempdir])
-            if comparebranch:
+            if basebranch:
                 subprocess.check_call(["git", "push", "--all", "--force"], cwd=tempdir)
                 subprocess.check_call(["git", "push", "--tags", "--force"], cwd=tempdir)
-            elif basebranch:
+            elif targetbranch:
                 subprocess.check_call(["git", "push", "--all"], cwd=tempdir)
                 subprocess.check_call(["git", "push", "--tags"], cwd=tempdir)
-            elif is_release_version(args.release) and not comparebranch and not basebranch:
+            elif is_release_version(args.release) and not basebranch and not targetbranch:
                 log.warning("Test results not published on release version. Faulty AB configuration ?")
 
             utils.printheader("Processing regression report")
-            regression_base, regression_target = get_regression_base_and_target(basebranch, comparebranch, args.release, targetrepodir)
+            regression_base, regression_target = get_regression_base_and_target(targetbranch, basebranch, args.release, targetrepodir)
             if regression_base and regression_target:
                 generate_regression_report(querytool, targetrepodir, regression_base, regression_target, tempdir, args.results_dir, log)
 
diff --git a/scripts/test_send_qa_email.py b/scripts/test_send_qa_email.py
index 974112a371f2..74d60d55655d 100755
--- a/scripts/test_send_qa_email.py
+++ b/scripts/test_send_qa_email.py
@@ -38,18 +38,18 @@ class TestVersion(unittest.TestCase):
     # This data represent real data returned by utils.getcomparisonbranch
     # and the release argument passed to send-qa-email script
     regression_inputs = [
-        {"name": "Arbitrary branch", "input": {"basebranch": None,
-                                               "comparebranch": None, "release": None}, "expected": (None, None)},
-        {"name": "Master release", "input": {"basebranch": "master",
-                                             "comparebranch": None, "release": "yocto-4.2_M3.rc1"}, "expected": ("4.2_M2", "master")},
-        {"name": "Older release", "input": {"basebranch": "kirkstone",
-                                            "comparebranch": None, "release": "yocto-4.0.8.rc2"}, "expected": ("yocto-4.0.7", "kirkstone")},
-        {"name": "Master Next", "input": {"basebranch": "master-next",
-                                          "comparebranch": "master", "release": None}, "expected": ("master", "master-next")},
-        {"name": "Fork Master Next", "input": {"basebranch": "ross/mut",
-                                               "comparebranch": "master", "release": None}, "expected": ("master", "ross/mut")},
-        {"name": "Nightly a-quick", "input": {"basebranch": "master",
-                                               "comparebranch": None, "release": "20230322-2"}, "expected": ("LAST_TAG", "master")},
+        {"name": "Arbitrary branch", "input": {"targetbranch": None,
+                                               "basebranch": None, "release": None}, "expected": (None, None)},
+        {"name": "Master release", "input": {"targetbranch": "master",
+                                             "basebranch": None, "release": "yocto-4.2_M3.rc1"}, "expected": ("4.2_M2", "master")},
+        {"name": "Older release", "input": {"targetbranch": "kirkstone",
+                                            "basebranch": None, "release": "yocto-4.0.8.rc2"}, "expected": ("yocto-4.0.7", "kirkstone")},
+        {"name": "Master Next", "input": {"targetbranch": "master-next",
+                                          "basebranch": "master", "release": None}, "expected": ("master", "master-next")},
+        {"name": "Fork Master Next", "input": {"targetbranch": "ross/mut",
+                                               "basebranch": "master", "release": None}, "expected": ("master", "ross/mut")},
+        {"name": "Nightly a-quick", "input": {"targetbranch": "master",
+                                               "basebranch": None, "release": "20230322-2"}, "expected": ("LAST_TAG", "master")},
     ]
 
     def test_versions(self):
@@ -68,7 +68,7 @@ class TestVersion(unittest.TestCase):
         for data in self.regression_inputs:
             with self.subTest(data['name']):
                 base, target = send_qa_email.get_regression_base_and_target(
-                    data['input']['basebranch'], data['input']['comparebranch'], data['input']['release'], os.environ.get("POKY_PATH"))
+                    data['input']['targetbranch'], data['input']['basebranch'], data['input']['release'], os.environ.get("POKY_PATH"))
                 expected_base, expected_target = data["expected"]
                 # The comparison base can not be set statically in tests when it is supposed to be the previous tag,
                 # since the result will depend on current tags
diff --git a/scripts/utils.py b/scripts/utils.py
index 36b3e81bfc94..03c879921b1d 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -398,9 +398,9 @@ def getcomparisonbranch(ourconfig, reponame, branchname):
     if (reponame + ":" + branchname) in getconfig("BUILD_HISTORY_FORKPUSH", ourconfig):
         base = getconfig("BUILD_HISTORY_FORKPUSH", ourconfig)[reponame + ":" + branchname]
         if base:
-            comparerepo, comparebranch = base.split(":")
-            print("Comparing to %s\n" % (comparebranch))
-            return branchname, comparebranch
+            baserepo, basebranch = base.split(":")
+            print("Comparing to %s\n" % (basebranch))
+            return branchname, basebranch
     if is_a_main_branch(reponame, branchname):
         return branchname, None
     return None, None
-- 
2.42.0


