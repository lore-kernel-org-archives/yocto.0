Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB9C1C77B60
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 10:24:45 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web10.97959.1679653476634377335
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 03:24:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=BBk4NJus;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id F12281BF21C;
	Fri, 24 Mar 2023 10:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679653475;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pnRIl36XP6lBBQGVF+vsrdaGMXQhWs1eQFyctnij1rQ=;
	b=BBk4NJusFBvE5J9vBBrP7/CXitoEpnPbkMlW9RLcO58sFnsojcnQ/yb/hfj45OFoFpZxj9
	K5KOyUm0JZqIJn+OH6KP66RaIhh6SKrcOHzN8QcgM5iS+dDosMsVK0z7/eyYEO3mCx+Jd0
	sKGTM+9uoPTQY7s1nX99zSiaSAT7W/Kqdo7XpEm3yA/lAvsEo6XVzJ7goOoVnUz2KWP/ee
	LBAxFzU2yP5S1XtULruNPZJOsg/64EbElHNbJx/cmTbgcyidsFNZHL+4RKsf6b+CUNwhTE
	4YSTpLNUrusMGopGOWhJckMsE56Sc4AgbQa8d8jObj5sCNsSodRXzV7NYQ2oRg==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH v2 2/2]  scripts/generate-testresult-index.py: expose regression reports on web page
Date: Fri, 24 Mar 2023 11:24:07 +0100
Message-Id: <20230324102407.35348-3-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230324102407.35348-1-alexis.lothore@bootlin.com>
References: <20230324102407.35348-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 10:24:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59512

From: Alexis Lothoré <alexis.lothore@bootlin.com>

When available, expose tesresult-regressions-report.txt on non-release web page,
as it is done for many other artifacts currently

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/generate-testresult-index.py | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/scripts/generate-testresult-index.py b/scripts/generate-testresult-index.py
index 09d2edb..29a6900 100755
--- a/scripts/generate-testresult-index.py
+++ b/scripts/generate-testresult-index.py
@@ -42,7 +42,10 @@ index_template = """
    <td><a href="{{entry[1]}}">{{entry[0]}}</a></td>
    <td>{% if entry[2] %} {{entry[2]}}{% endif %}</td>
    <td>{% if entry[4] %} {{entry[4]}}{% endif %}</td>
-   <td> {% if entry[3] %}<a href="{{entry[3]}}">Report</a>{% endif %} </td>
+   <td>
+     {% if entry[3] %}<a href="{{entry[3]}}">Report</a>{% endif -%}
+     {% if entry[9] %}<br><a href="{{entry[9]}}">Regressions</a>{% endif %}
+   </td>
    <td>
    {% for perfrep in entry[6] %}
      <a href="{{perfrep[0]}}">{{perfrep[1]}}</a>
@@ -129,6 +132,10 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
     if os.path.exists(buildpath + "/testresult-report.txt"):
         testreport = reldir + "testresults/testresult-report.txt"
 
+    regressionreport = ""
+    if os.path.exists(buildpath + "/testresult-regressions-report.txt"):
+        regressionreport = reldir + "testresults/testresult-regressions-report.txt"
+
     ptestlogs = []
     ptestseen = []
     for p in glob.glob(buildpath + "/*-ptest/*.log"):
@@ -165,7 +172,7 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
 
     branch = get_build_branch(buildpath)
 
-    entries.append((build, reldir, btype, testreport, branch, buildhistory, perfreports, ptestlogs, hd))
+    entries.append((build, reldir, btype, testreport, branch, buildhistory, perfreports, ptestlogs, hd, regressionreport))
 
     # Also ensure we have saved out log data for ptest runs to aid debugging
     if "ptest" in btype or btype in ["full", "quick"]:
-- 
2.40.0


