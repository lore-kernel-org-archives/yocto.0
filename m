Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CC0CC678D4
	for <webhook@archiver.kernel.org>; Thu,  2 Mar 2023 10:57:59 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web11.12097.1677754678058915903
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Mar 2023 02:57:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=GG5UleOk;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 98A4FFF80E;
	Thu,  2 Mar 2023 10:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1677754675;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=z0f2he1P46f1INkTfLjcmb9sw1UUkF5O7WRjxLx0D1g=;
	b=GG5UleOkHRT8x5SxPDlk0Y2qaNypPf5r2MiVq/v9w7fxwl84dhkGXvlmy+kkf5wR/NNSfT
	JO2n1dr1L3ywxK8Jfu3N4sIh8e6Gst71WTFd6KiEKIXC6H3J0tUFnWEAjskNUgaCwLUxnf
	Pxtw02oSKEVFZU3sLkd+wlj/Njt5xxZFvHXyriDncgW2LxgP+g/G94TZSP3e4xVp9eNEl9
	jkupD4SuJrbIycgxHlkOaX0W3M/CbyX7VI2LDxnBPhfGtjjWC/bVC8t2GyF4zPlGb2LmB4
	18rV9E5OJaPkR2oVpSCyavcCCAAIeuKK5HVVOlAJDvN1aHPnho+4dKrOp+2Hfg==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 1/1] scripts/send-qa-email: use yocto_testresults_query.py for sha1 resolution
Date: Thu,  2 Mar 2023 11:58:06 +0100
Message-Id: <20230302105806.165504-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Mar 2023 10:57:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59332

From: Alexis Lothoré <alexis.lothore@bootlin.com>

A new tool named yocto_testresults_query.py has been integrated in poky as a
thin wrapper between send-qa-email and resulttool. The new tool is in charge of
converting tags/branches names to SHA1 revisions and to call resulttool with
those revisions

Remove any code related to tag/branches conversions to SHA1 and use
yocto_testresults_qery.py instead

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py      | 39 +++++++----------------------------
 scripts/test_send_qa_email.py | 12 -----------
 2 files changed, 7 insertions(+), 44 deletions(-)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index e5a6a08..96225a8 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -49,43 +49,17 @@ def get_previous_tag(targetrepodir, version):
     defaultbaseversion, _, _ = utils.get_version_from_string(subprocess.check_output(["git", "describe", "--abbrev=0"], cwd=targetrepodir).decode('utf-8').strip())
     return utils.get_tag_from_version(defaultbaseversion, None)
 
-def get_sha1(targetrepodir, revision):
-    return subprocess.check_output(["git", "rev-list", "-n", "1", revision], cwd=targetrepodir).decode('utf-8').strip()
-
-def fetch_testresults(resultdir, revision):
-    rawtags = subprocess.check_output(["git", "ls-remote", "--refs", "--tags", "origin", f"*{revision}*"], cwd=resultdir).decode('utf-8').strip()
-    if not rawtags:
-        raise Exception(f"No reference found for commit {revision} in {resultdir}")
-    for ref in [rawtag.split()[1] for rawtag in rawtags.splitlines()]:
-        print(f"Fetching matching revisions: {ref}")
-        subprocess.check_call(["git", "fetch", "--depth", "1", "origin", f"{ref}:{ref}"], cwd=resultdir)
-
-
-def generate_regression_report(resulttool, targetrepodir, basebranch, resultdir, outputdir, yoctoversion):
+def generate_regression_report(querytool, targetrepodir, basebranch, resultdir, outputdir, yoctoversion):
     baseversion = get_previous_tag(targetrepodir, yoctoversion)
-    baserevision = get_sha1(targetrepodir, baseversion)
-    comparerevision = get_sha1(targetrepodir, basebranch)
-    print(f"Compare version : {basebranch} ({comparerevision})")
-    print(f"Base tag : {baseversion} ({baserevision})")
+    print(f"Comparing {basebranch} to {baseversion}")
 
     try:
-        """
-        Results directory is likely a shallow clone :
-        we need to fetch results corresponding to base revision before
-        running resulttool
-        """
-        fetch_testresults(resultdir, baserevision)
-        fetch_testresults(resultdir, comparerevision)
-        regreport = subprocess.check_output([resulttool, "regression-git", "-B", basebranch, "--commit", baserevision, "--commit2", comparerevision, resultdir])
+        regreport = subprocess.check_output([querytool, "regression-report", baseversion, basebranch, '-t', resultdir])
         with open(outputdir + "/testresult-regressions-report.txt", "wb") as f:
-           f.write(str.encode("========================== Regression report ==============================\n"))
-           f.write(str.encode(f'{"=> Target:": <16}{basebranch: <16}({comparerevision})\n'))
-           f.write(str.encode(f'{"=> Base:": <16}{baseversion: <16}({baserevision})\n'))
-           f.write(str.encode("===========================================================================\n\n"))
            f.write(regreport)
     except subprocess.CalledProcessError as e:
         error = str(e)
-        print(f"Error while generating report between {baserevision} and {comparerevision} : {error}")
+        print(f"Error while generating report between {basebranch} and {baseversion} : {error}")
 
 
 def send_qa_email():
@@ -115,6 +89,7 @@ def send_qa_email():
         repos = json.load(f)
 
     resulttool = os.path.dirname(args.repojson) + "/build/scripts/resulttool"
+    querytool = os.path.dirname(args.repojson) + "/build/scripts/yocto_testresults_query.py"
 
     buildtoolsdir = os.path.dirname(args.repojson) + "/build/buildtools"
     if os.path.exists(buildtoolsdir):
@@ -122,7 +97,7 @@ def send_qa_email():
 
     repodir = os.path.dirname(args.repojson) + "/build/repos"
 
-    if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
+    if 'poky' in repos and os.path.exists(resulttool) and os.path.exists(querytool) and args.results_dir:
         # Need the finalised revisions (not 'HEAD')
         targetrepodir = "%s/poky" % (repodir)
         revision = subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=targetrepodir).decode('utf-8').strip()
@@ -168,7 +143,7 @@ def send_qa_email():
                 subprocess.check_call(["git", "push", "--tags"], cwd=tempdir)
 
             if basebranch:
-                generate_regression_report(resulttool, targetrepodir, basebranch, tempdir, args.results_dir, args.release)
+                generate_regression_report(querytool, targetrepodir, basebranch, tempdir, args.results_dir, args.release)
 
         finally:
             subprocess.check_call(["rm", "-rf",  tempdir])
diff --git a/scripts/test_send_qa_email.py b/scripts/test_send_qa_email.py
index 41e895e..c1347fb 100755
--- a/scripts/test_send_qa_email.py
+++ b/scripts/test_send_qa_email.py
@@ -29,11 +29,6 @@ class TestVersion(unittest.TestCase):
         {"input": {"version": "4.1.rc4"}, "expected": "yocto-4.0"}
     ]
 
-    test_data_get_sha1 = [
-        {"input": "yocto-4.0", "expected": "00cfdde791a0176c134f31e5a09eff725e75b905"},
-        {"input": "4.1_M1", "expected": "95066dde6861ee08fdb505ab3e0422156cc24fae"},
-    ]
-
     def test_versions(self):
         for data in self.test_data_get_version:
             test_name = data["input"]["version"]
@@ -41,13 +36,6 @@ class TestVersion(unittest.TestCase):
                 self.assertEqual(send_qa_email.get_previous_tag(os.environ.get(
                     "POKY_PATH"), data["input"]["version"]), data["expected"])
 
-    def test_get_sha1(self):
-        for data in self.test_data_get_sha1:
-            test_name = data["input"]
-            with self.subTest(f"Test SHA1 from {test_name}"):
-                self.assertEqual(send_qa_email.get_sha1(os.environ.get(
-                    "POKY_PATH"), data["input"]), data["expected"])
-
 
 if __name__ == '__main__':
     if os.environ.get("POKY_PATH") is None:
-- 
2.39.2


