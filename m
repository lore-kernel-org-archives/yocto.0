Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD65AC35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 11:17:34 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web10.41549.1702898248381403031
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 03:17:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=i24vq8TN;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5E216E000D;
	Mon, 18 Dec 2023 11:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702898246;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/DjGolqJCQ4zMj/1A1aXW2xV0CkygKpTGFMehsIcU0E=;
	b=i24vq8TNAMJSn9sO5FgqsTm4Noiiro41GyRC0nhY5KJY2TdRiUude/ijiO75YYBlxlThaP
	DBboHE6h6axLtbe+3crAGoV//blQ6uDsRsi4Rfag7j9uXNw6en55gBqCqBmGZlHcq+11Ra
	WwDwZmmGBeY0aDEwTGWCEN+yzyvq+zrb5gAn32hJzh6NXKfBs0rwGpUsQs7O0FQ34Pt1Cz
	W8vGYIB+5aMzwOtXCZ5IjfwkAhxImVxthuzFZ/NOGH/HNTlmdAlXJrkajQIquWE9wBLQDL
	KWBX2bJNVgd/8z/4sYGT/Q+W5t4mCqzRlhvmFg0PEb15HAP50zcKpGi8RhhFdw==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH v2 1/1] scripts: send_qa_email: add dry-run mode
Date: Mon, 18 Dec 2023 12:17:21 +0100
Message-ID: <20231218111721.45408-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.42.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexis.lothore@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 11:17:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61959

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Add a dry-run mode to be able to run send_qa_email locally but disabling
any output (no commit or tag pushed upstream, no mail sent). This eases
all release-related debugging. This dry-run mode is enabled by the
following changes:
- add a -d/--dry-run parameter to send_qa_email
- update test_results url to allow cloning test_results repository without
  having its public key registered upstream
- skip test results storage
- do not erase test results temp dir
- skip email sending (but still generate it)

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
Changes in v2:
- add missing signed-off-by

This feature is basically a translation of a "stub" commit I have been
maintaining locally for a few months. Being able to execute send_qa_email
locally is a big enabler to allow debugging autobuilder issues. The
corresponding workflow then looks like the following, when replaying
locally a failed build:
- retrieve, from autobuilder logs, the failed job layer.json (see "Write
  main layerinfo.json" step logs) and create a local copy
- retrieve release number, if it was a release job
- in the directory containing your layer.json, create tree "build/repos".
  In there, clone all components mentioned in layer.json as poky, oe-core,
  vendor metas, etc (this is how autobuilder organizes sources)
- run send_qa_email in dry run mode:
  ./scripts/send_qa_email.py -d True layer.json fakesharedrepodir \
  --url 'https://foo.bar' -p fakepublishdir -r <version> -R \
  faketestresultsdir

There is likely even more automation to add to this new dry-run mode, but
that's a start

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py | 55 +++++++++++++++++++++++++++-------------
 1 file changed, 37 insertions(+), 18 deletions(-)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index cfbbf62a9910..f0d8aa2339b9 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -16,6 +16,7 @@ import logging
 import utils
 
 TEST_RESULTS_REPOSITORY_URL="git@push.yoctoproject.org:yocto-testresults"
+TEST_RESULTS_DRY_RUN_REPOSITORY_URL="git://git.yoctoproject.org/yocto-testresults"
 
 def is_release_version(version):
     p = re.compile('\d{8}-\d+')
@@ -57,17 +58,17 @@ def get_previous_tag(targetrepodir, version):
     defaultbaseversion, _, _ = utils.get_version_from_string(subprocess.check_output(["git", "describe", "--abbrev=0"], cwd=targetrepodir).decode('utf-8').strip())
     return utils.get_tag_from_version(defaultbaseversion, None)
 
-def get_last_tested_rev_on_branch(branch, log):
+def get_last_tested_rev_on_branch(branch, test_results_url, log):
     # Fetch latest test results revision on corresponding branch in test
     # results repository
-    tags_list = subprocess.check_output(["git", "ls-remote", "--refs", "-t", TEST_RESULTS_REPOSITORY_URL, "refs/tags/" + branch + "/*"]).decode('utf-8').strip()
+    tags_list = subprocess.check_output(["git", "ls-remote", "--refs", "-t", test_results_url, "refs/tags/" + branch + "/*"]).decode('utf-8').strip()
     latest_test_tag=tags_list.splitlines()[-1].split()[1]
     # From test results tag, extract Poky revision
     tested_revision = re.match('refs\/tags\/.*\/\d+-g([a-f0-9]+)\/\d', latest_test_tag).group(1)
     log.info(f"Last tested revision on branch {branch} is {tested_revision}")
     return tested_revision
 
-def get_regression_base_and_target(targetbranch, basebranch, release, targetrepodir, log):
+def get_regression_base_and_target(targetbranch, basebranch, release, targetrepodir, test_results_url, log):
     if not targetbranch:
         # Targetbranch/basebranch is an arbitrary configuration (not defined in config.json): do not run regression reporting
         return None, None
@@ -80,7 +81,7 @@ def get_regression_base_and_target(targetbranch, basebranch, release, targetrepo
         # Basebranch/targetbranch are defined in config.json: regression
         # reporting must be done between latest test result available on base branch
         # and latest result on targetbranch
-        latest_tested_rev_on_basebranch = get_last_tested_rev_on_branch(basebranch, log)
+        latest_tested_rev_on_basebranch = get_last_tested_rev_on_branch(basebranch, test_results_url, log)
         return latest_tested_rev_on_basebranch, targetbranch
 
     #Default case: return previous tag as base
@@ -119,6 +120,9 @@ def send_qa_email():
     parser.add_argument('--url',
                         action='store',
                         help="The url for the build")
+    parser.add_argument('-d', '--dry-run',
+                        action='store_true',
+                        help="Do not generate any commit, tag or mail: just simulate the release process")
 
     args = parser.parse_args()
 
@@ -136,6 +140,12 @@ def send_qa_email():
 
     repodir = os.path.dirname(args.repojson) + "/build/repos"
 
+    if args.dry_run:
+        log.info("Running in dry-run mode")
+        test_results_url = TEST_RESULTS_DRY_RUN_REPOSITORY_URL
+    else:
+        test_results_url = TEST_RESULTS_REPOSITORY_URL
+
     if 'poky' in repos and os.path.exists(resulttool) and os.path.exists(querytool) and args.results_dir:
         utils.printheader("Processing test report")
         # Need the finalised revisions (not 'HEAD')
@@ -158,10 +168,10 @@ def send_qa_email():
             elif targetbranch:
                 cloneopts = ["--branch", targetbranch]
             try:
-                subprocess.check_call(["git", "clone", TEST_RESULTS_REPOSITORY_URL, tempdir, "--depth", "1"] + cloneopts)
+                subprocess.check_call(["git", "clone", test_results_url, tempdir, "--depth", "1"] + cloneopts)
             except subprocess.CalledProcessError:
                 log.info("No comparision branch found, falling back to master")
-                subprocess.check_call(["git", "clone", TEST_RESULTS_REPOSITORY_URL, tempdir, "--depth", "1"])
+                subprocess.check_call(["git", "clone", test_results_url, tempdir, "--depth", "1"])
 
             # If the base comparision branch isn't present regression comparision won't work
             # at least until we can tell the tool to ignore internal branch information
@@ -177,19 +187,22 @@ def send_qa_email():
 
             utils.printheader("Storing results")
 
-            subprocess.check_call([resulttool, "store", args.results_dir, tempdir])
-            if basebranch:
-                subprocess.check_call(["git", "push", "--all", "--force"], cwd=tempdir)
-                subprocess.check_call(["git", "push", "--tags", "--force"], cwd=tempdir)
-            elif targetbranch:
-                subprocess.check_call(["git", "push", "--all"], cwd=tempdir)
-                subprocess.check_call(["git", "push", "--tags"], cwd=tempdir)
-            elif is_release_version(args.release) and not basebranch and not targetbranch:
-                log.warning("Test results not published on release version. Faulty AB configuration ?")
+            if not args.dry_run:
+                subprocess.check_call([resulttool, "store", args.results_dir, tempdir])
+                if basebranch:
+                    subprocess.check_call(["git", "push", "--all", "--force"], cwd=tempdir)
+                    subprocess.check_call(["git", "push", "--tags", "--force"], cwd=tempdir)
+                elif targetbranch:
+                    subprocess.check_call(["git", "push", "--all"], cwd=tempdir)
+                    subprocess.check_call(["git", "push", "--tags"], cwd=tempdir)
+                elif is_release_version(args.release) and not basebranch and not targetbranch:
+                    log.warning("Test results not published on release version. Faulty AB configuration ?")
+            else:
+                log.info(f"[SKIP] store results (base {basebranch}, compare {targetbranch})")
 
             utils.printheader("Processing regression report")
             try:
-                regression_base, regression_target = get_regression_base_and_target(targetbranch, basebranch, args.release, targetrepodir, log)
+                regression_base, regression_target = get_regression_base_and_target(targetbranch, basebranch, args.release, targetrepodir, test_results_url, log)
                 log.info(f"Generating regression report between {regression_base} and {regression_target}")
                 generate_regression_report(querytool, targetrepodir, regression_base, regression_target, tempdir, args.results_dir, log)
             except subprocess.CalledProcessError as e:
@@ -199,8 +212,10 @@ def send_qa_email():
 
 
         finally:
-            subprocess.check_call(["rm", "-rf",  tempdir])
-            pass
+            if not args.dry_run:
+                subprocess.check_call(["rm", "-rf",  tempdir])
+            else:
+                log.info(f"[SKIP] delete {tempdir}")
 
     if args.send.lower() != 'true' or not args.publish_dir or not args.release:
         utils.printheader("Not sending QA email")
@@ -248,6 +263,10 @@ def send_qa_email():
     with open(os.path.join(args.publish_dir, "qa-email"), "wb") as qa_email:
         qa_email.write(email.encode('utf-8'))
 
+    if args.dry_run:
+        log.info("[SKIP] generate and send email")
+        sys.exit(exitcode)
+
     utils.printheader("Sending QA email")
     env = os.environ.copy()
     # Many distros have sendmail in */sbin
-- 
2.42.1


