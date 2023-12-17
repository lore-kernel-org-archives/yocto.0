Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DFECC46CD4
	for <webhook@archiver.kernel.org>; Sun, 17 Dec 2023 13:30:38 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.18344.1702819837124965038
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Dec 2023 05:30:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=HejUOAzo;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5B47260007;
	Sun, 17 Dec 2023 13:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702819835;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o4pIJPFIEIFz+lxd/CfM1g4THMKSyRu9/w6yf8NDrws=;
	b=HejUOAzov1G2g1mfsN2vFLtJxUcmTFEaoMJFBK5I1Bs9TTo5tbOPWMajG+2nxRbDUMoPvy
	8D9WqrYRrfu4S0ZwspnXGGdZ2LrBUb9wf8DuGGvdfy5XfOlEcUjTmsQ5s9lsEBEhvsqdEL
	65llzwFEV8YmmUJNdACMobAdxJFA+JjHN8kKl9FOB1xs+tr6l3AHwBTsK6UJdldt/glfvQ
	UfaPRwWN0wG704HjXgWQzoY55me8MGwlpj9BJFE8q9OTkaLBv1W8HNyfEctLTlNGJFtMAh
	eoRNbM8VsY5NZQ85PIQFWL/TMS367x4ul3XAx4cQyAUyf6hddMOnAVmCecF/rw==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 3/4] scripts: send_qa_email: properly compute previous tag for new major release tag
Date: Sun, 17 Dec 2023 14:30:31 +0100
Message-ID: <20231217133032.27231-4-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231217133032.27231-1-alexis.lothore@bootlin.com>
References: <20231217133032.27231-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexis.lothore@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Dec 2023 13:30:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61946

From: Alexis Lothoré <alexis.lothore@bootlin.com>

send_qa_email currently fails when dealing with release version starting a
new major, for example 5.0. This has been observed for example when trying
to generate 5.0_M1.rc1

This specific versioning makes previous tag computation method fall through
last branch which currently expects that the current release tag indeed
exists (5.0_M1), which is true when checking regression reports a
posteriori, but not in an autobuilder run (tag is added only when the
release has been "validated")

Fix tag computation for this case by getting previous release tag with git
ls-remote, instead of relying on git describe with a possibly non-existing
tag. While doing so, add a few tests about this specific case.

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py      | 9 +++++++--
 scripts/test_send_qa_email.py | 5 ++++-
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index 232f360621fe..8422e4937102 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -42,10 +42,15 @@ def get_previous_tag(targetrepodir, version):
         # Process first milestone or release if not first in major release
         elif compareversionminor > 0:
             previousversion = compareversion[:-1] + [compareversion[-1] - 1]
-        # Otherwise : format it as tag (which must exist) and search previous tag
+        # Otherwise : compare against last release on previous major. This can
+        # not be computed: we need to retrieve the exact tag from remote
         else:
             comparetagstring = utils.get_tag_from_version(compareversion, comparemilestone)
-            return subprocess.check_output(["git", "describe", "--abbrev=0", comparetagstring + "^"], cwd=targetrepodir).decode('utf-8').strip()
+            previous_major = compareversion[0] - 1
+            tags_list = subprocess.check_output(["git", "ls-remote", "--refs", "-t", "origin", f"refs/tags/yocto-{previous_major}*"], cwd=targetrepodir).decode('utf-8').strip()
+            # Get last tag from list, pick only the tag part, and remove the
+            # "refs/tags/" part
+            return tags_list.splitlines()[-1].split()[1].split('/')[-1]
 
         return utils.get_tag_from_version(previousversion, previousmilestone)
 
diff --git a/scripts/test_send_qa_email.py b/scripts/test_send_qa_email.py
index 2dd946f32bf1..415d8cbbbccd 100755
--- a/scripts/test_send_qa_email.py
+++ b/scripts/test_send_qa_email.py
@@ -30,7 +30,10 @@ class TestVersion(unittest.TestCase):
         {"input": {"version": "4.1_M3.rc4"}, "expected": "4.1_M2"},
         {"input": {"version": "4.1_M1.rc1"}, "expected": "yocto-4.0"},
         {"input": {"version": "4.1_M1.rc4"}, "expected": "yocto-4.0"},
-        {"input": {"version": "4.1.rc4"}, "expected": "yocto-4.0"}
+        {"input": {"version": "4.1.rc4"}, "expected": "yocto-4.0"},
+        {"input": {"version": "yocto-5.0_M1.rc1"}, "expected": "yocto-4.3(\.\d)?"},
+        {"input": {"version": "yocto-5.0_M1.rc2"}, "expected": "yocto-4.3(\.\d)?"},
+        {"input": {"version": "yocto-5.0_M2.rc1"}, "expected": "5.0_M1"},
     ]
 
     test_data_is_release_version = [
-- 
2.42.1


