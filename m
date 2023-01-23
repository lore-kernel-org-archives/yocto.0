Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88DC0C38142
	for <webhook@archiver.kernel.org>; Mon, 23 Jan 2023 12:31:09 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.41222.1674477064415534260
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Jan 2023 04:31:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=QP9D5mw2;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id AA7764000A;
	Mon, 23 Jan 2023 12:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1674477063;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=scLRPPhNoq2NH4vsF/JuTur6g3LDUTeuH8fwBb8q3Jk=;
	b=QP9D5mw2crmqm0Kwd2uGhKoWs7d/HTzZcDXEi+QEEmqbtyEh2fm9fRxNTltF2xu3T/3jzc
	oA10Hi7aoneEmp4oBLzmA0cMXDiaF2e1OLC4i+DE3f7F+XTyUCRscKKBVqpSXemNAlJF0q
	rM6JVvASm+f1Ah9jF4NP0HiWuK6DaIEtufxnC5Z6XwAvF8+3dLWvc7YqRewUmCNfJdTbcw
	AGcJozSA5uDVKsfp1LG1eoCCeiyTs0PZLHh3ZBDIJ9cbBg/UPnfjrk8HfCpBYehucwtFke
	1YZN5xyhw8eL/veT+QS6m4k/IpJjMIWkMHj8DnZYO/PTJ+QJBp6OLSi6GesHcg==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com,
	=?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
Subject: [autobuilder][PATCH v2 3/4] scripts/send-qa-email: Generate regression reports against most relevant release
Date: Mon, 23 Jan 2023 13:31:10 +0100
Message-Id: <20230123123111.37665-4-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230123123111.37665-1-alexis.lothore@bootlin.com>
References: <20230123123111.37665-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Jan 2023 12:31:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59033

Instead of only generating regressions reports against HEAD of relevant branch, compute
most relevant tag (ie : release) against which we can check for regressions. General rules
introduced are the following :
- milestone release is checked against previous milestone if possible, otherwise
  against major release
- point release  is checked against previous point release if possible,
  otherwise against major release
- major release is checked against previous major release
- a non release build is checked against base branch
Examples :
- 4.1.2.rc1 is checked against yocto-4.1.1
- 4.1.2 is checked against yocto-4.1.1
- 4.1.1.rc1 is checked against yocto-4.1
- 4.1.1 is checked against yocto-4.1
- 4.1 is checked against yocto-4.0
- 4.1.rc4 is checked against yocto-4.0
- 4.1_M2.rc1 is checked against 4.1_M1
- 4.1_M2 is checked against 4.1_M1
- 4.1_M1.rc1 is checked against yocto-4.0
- 4.1_M1 is checked against yocto-4.0

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py | 86 +++++++++++++++++++++++++++++++++-------
 scripts/utils.py         | 47 ++++++++++++++++++++++
 2 files changed, 118 insertions(+), 15 deletions(-)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index 4023918..199fe4e 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -9,11 +9,79 @@ import json
 import os
 import sys
 import subprocess
-import errno
 import tempfile
+import re
 
 import utils
 
+def is_non_release_version(version):
+    p = re.compile('\d{8}-\d+')
+    return p.match(version) is not None
+
+def get_previous_tag(targetrepodir, version):
+    previousversion = None
+    previousmilestone = None
+    if version:
+        if is_non_release_version(version):
+            return subprocess.check_output(["git", "describe", "--abbrev=0"], cwd=targetrepodir).decode('utf-8').strip()
+        compareversion, comparemilestone, _ = utils.get_version_from_string(version)
+        compareversionminor = compareversion[-1]
+        # After ignoring rc part, if we get a minor to 0 on point release (e.g 4.0.0),
+        # reject last digit since such versions do not exist
+        if len(compareversion) == 3 and compareversionminor == 0:
+            compareversion = compareversion[:-1]
+
+        # Process milestone if not first in current release
+        if comparemilestone and comparemilestone > 1:
+            previousversion = compareversion
+            previousmilestone = comparemilestone-1
+        # Process first milestone or release if not first in major release
+        elif compareversionminor > 0:
+            previousversion = compareversion[:-1] + [compareversion[-1] - 1]
+        # Otherwise : format it as tag (which must exist) and search previous tag
+        else:
+            comparetagstring = utils.get_tag_from_version(compareversion, comparemilestone)
+            return subprocess.check_output(["git", "describe", "--abbrev=0", comparetagstring + "^"], cwd=targetrepodir).decode('utf-8').strip()
+
+        return utils.get_tag_from_version(previousversion, previousmilestone)
+
+    # All other cases : merely check against latest tag reachable
+    defaultbaseversion, _, _ = utils.get_version_from_string(subprocess.check_output(["git", "describe", "--abbrev=0"], cwd=targetrepodir).decode('utf-8').strip())
+    return utils.get_tag_from_version(defaultbaseversion, None)
+
+def get_sha1(targetrepodir, revision):
+    return subprocess.check_output(["git", "rev-list", "-n", "1", revision], cwd=targetrepodir).decode('utf-8').strip()
+
+def fetch_testresults(resultdir, revision):
+    rawtags = subprocess.check_output(["git", "ls-remote", "--refs", "--tags", "origin", f"*{revision}*"], cwd=resultdir).decode('utf-8').strip()
+    if not rawtags:
+        raise Exception(f"No reference found for commit {revision} in {resultdir}")
+    for ref in [rawtag.split()[1] for rawtag in rawtags.splitlines()]:
+        print(f"Fetching matching revisions: {ref}")
+        subprocess.check_call(["git", "fetch", "--depth", "1", "origin", f"{ref}:{ref}"], cwd=resultdir)
+
+
+def generate_regression_report(resulttool, targetrepodir, basebranch, resultdir, outputdir, yoctoversion):
+    baseversion = get_previous_tag(targetrepodir, yoctoversion)
+    baserevision = get_sha1(targetrepodir, baseversion)
+    comparerevision = get_sha1(targetrepodir, basebranch)
+    print(f"Compare version : {basebranch} ({comparerevision})")
+    print(f"Base tag : {baseversion} ({baserevision})")
+
+    try:
+        """
+        Results directory is likely a shallow clone :
+        we need to fetch results corresponding to base revision before
+        running resulttool
+        """
+        fetch_testresults(resultdir, baserevision)
+        regreport = subprocess.check_output([resulttool, "regression-git", "-B", basebranch, "--commit", baserevision, "--commit2", comparerevision, resultdir])
+        with open(outputdir + "/testresult-regressions-report.txt", "wb") as f:
+           f.write(regreport)
+    except subprocess.CalledProcessError as e:
+        error = str(e)
+        print(f"Error while generating report between {baserevision} and {comparerevision} : {error}")
+
 
 def send_qa_email():
     parser = utils.ArgParser(description='Process test results and optionally send an email about the build to prompt QA to begin testing.')
@@ -57,16 +125,7 @@ def send_qa_email():
         branch = repos['poky']['branch']
         repo = repos['poky']['url']
 
-        extraopts = None
         basebranch, comparebranch = utils.getcomparisonbranch(ourconfig, repo, branch)
-        if basebranch:
-            extraopts = " --branch %s --commit %s" % (branch, revision)
-        if comparebranch:
-            extraopts = extraopts + " --branch2 %s" % (comparebranch)
-        elif basebranch:
-            print("No comparision branch found, comparing to %s" % basebranch)
-            extraopts = extraopts + " --branch2 %s" % basebranch
-
         report = subprocess.check_output([resulttool, "report", args.results_dir])
         with open(args.results_dir + "/testresult-report.txt", "wb") as f:
             f.write(report)
@@ -95,7 +154,6 @@ def send_qa_email():
                     subprocess.check_call(["git", "checkout", "master"], cwd=tempdir)
                     subprocess.check_call(["git", "branch", basebranch], cwd=tempdir)
                     subprocess.check_call(["git", "checkout", basebranch], cwd=tempdir)
-                    extraopts = None
 
             subprocess.check_call([resulttool, "store", args.results_dir, tempdir])
             if comparebranch:
@@ -105,10 +163,8 @@ def send_qa_email():
                 subprocess.check_call(["git", "push", "--all"], cwd=tempdir)
                 subprocess.check_call(["git", "push", "--tags"], cwd=tempdir)
 
-            if extraopts:
-                regreport = subprocess.check_output([resulttool, "regression-git", tempdir] + extraopts.split())
-                with open(args.results_dir + "/testresult-regressions-report.txt", "wb") as f:
-                    f.write(regreport)
+            if basebranch:
+                generate_regression_report(resulttool, targetrepodir, basebranch, tempdir, args.results_dir, args.release)
 
         finally:
             subprocess.check_call(["rm", "-rf",  tempdir])
diff --git a/scripts/utils.py b/scripts/utils.py
index c0ad14e..444b3ab 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -478,3 +478,50 @@ def setup_buildtools_tarball(ourconfig, workername, btdir, checkonly=False):
                     pass
             subprocess.check_call(["bash", btdlpath, "-d", btdir, "-y"])
         enable_buildtools_tarball(btdir)
+
+def get_string_from_version(version, milestone=None, rc=None):
+    """ Point releases finishing by 0 (e.g 4.0.0, 4.1.0) do no exists,
+    those are major releases
+    """
+    if len(version) == 3 and version[-1] == 0:
+        version = version[:-1]
+
+    result = ".".join(list(map(str, version)))
+    if milestone:
+        result += "_M" + str(milestone)
+    if rc:
+        result += ".rc" + str(rc)
+    return result
+
+def get_tag_from_version(version, milestone):
+    if not milestone:
+        return "yocto-" + get_string_from_version(version, milestone)
+    return get_string_from_version(version, milestone)
+
+
+def get_version_from_string(raw_version):
+    """ Get version as list of int from raw_version.
+
+    Raw version _can_ be prefixed by "yocto-",
+    Raw version _can_ be suffixed by "_MX"
+    Raw version _can_ be suffixed by ".rcY"
+    """
+    version = None
+    milestone = None
+    rc = None
+    if raw_version[:6] == "yocto-":
+        raw_version = raw_version[6:]
+    raw_version = raw_version.split(".")
+    if raw_version[-1][:2] == "rc":
+        rc = int(raw_version[-1][-1])
+        raw_version = raw_version[:-1]
+    if raw_version[-1][-3:-1] == "_M":
+        milestone = int(raw_version[-1][-1])
+        raw_version = raw_version[:-1] + [raw_version[-1][:-3]]
+    version = list(map(int, raw_version))
+    """ Point releases finishing by 0 (e.g 4.0.0, 4.1.0) do no exists,
+    those are major releases
+    """
+    if len(version) == 3 and version[-1] == 0:
+        version = version[:-1]
+    return version, milestone, rc
\ No newline at end of file
-- 
2.39.0


