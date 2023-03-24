Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00F1C6FD1C
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 09:00:35 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.96211.1679648429314539235
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 02:00:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=nDRLd3D8;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 988401BF20F;
	Fri, 24 Mar 2023 09:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679648428;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PEjFcQHpjikt/y4R79SoR/4VK/3OE66gzc9HfhWTF7M=;
	b=nDRLd3D8vboRcfN5k9+Rn44zsqOFT4PNQnky4jpzZyCSjIFabllggMc+nff0fNs8NZvvyp
	/Pl+ndYEAC/Vx/jUyo2r9fd6Yzk0TSsNZMTnOHDk2X88s+pr/EoNBI8SFw5cgEwTNj/RHx
	JU9j0b7o9Oc0EX7DgM0S1J8F6w9XotovN8Jk4Nw1lV+Lqw9k7n0uTsYcQdNFxbNAjLS78U
	z4WlaNCdQ0nxVAmPzdkbCb3j/N3BOt930dKrf2nqk2vSev4hQh5yhO1L1ZMcP6fmcp5tJ2
	oqCrvKq8yp8DfJahGBzckuOek9KO7oZ5UQq1C8AsTbuNvrAijYzUrBan49YviA==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 2/2]  scripts/generate-testresult-index.py: expose regression reports on web page
Date: Fri, 24 Mar 2023 10:00:25 +0100
Message-Id: <20230324090025.26366-3-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230324090025.26366-1-alexis.lothore@bootlin.com>
References: <20230324090025.26366-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 09:00:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59507

From: Alexis Lothoré <alexis.lothore@bootlin.com>

When available, expose tesresult-regressions-report.txt on non-release web page,
as it is done for many other artifacts currently

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/generate-testresult-index.py | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/scripts/generate-testresult-index.py b/scripts/generate-testresult-index.py
index 09d2edb..122bac1 100755
--- a/scripts/generate-testresult-index.py
+++ b/scripts/generate-testresult-index.py
@@ -30,6 +30,7 @@ index_template = """
   <th>Type</th>
   <th>Branch</th>
   <th>Test Results Report</th>
+  <th>Regressions Report</th>
   <th>Performance Reports</th>
   <th>ptest Logs</th>
   <th>Buildhistory</th>
@@ -43,6 +44,7 @@ index_template = """
    <td>{% if entry[2] %} {{entry[2]}}{% endif %}</td>
    <td>{% if entry[4] %} {{entry[4]}}{% endif %}</td>
    <td> {% if entry[3] %}<a href="{{entry[3]}}">Report</a>{% endif %} </td>
+   <td> {% if entry[9] %}<a href="{{entry[9]}}">Report</a>{% endif %} </td>
    <td>
    {% for perfrep in entry[6] %}
      <a href="{{perfrep[0]}}">{{perfrep[1]}}</a>
@@ -129,6 +131,10 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
     if os.path.exists(buildpath + "/testresult-report.txt"):
         testreport = reldir + "testresults/testresult-report.txt"
 
+    regressionreport = ""
+    if os.path.exists(buildpath + "/testresult-regressions-report.txt"):
+        regressionreport = reldir + "testresults/testresult-regressions-report.txt"
+
     ptestlogs = []
     ptestseen = []
     for p in glob.glob(buildpath + "/*-ptest/*.log"):
@@ -165,7 +171,7 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
 
     branch = get_build_branch(buildpath)
 
-    entries.append((build, reldir, btype, testreport, branch, buildhistory, perfreports, ptestlogs, hd))
+    entries.append((build, reldir, btype, testreport, branch, buildhistory, perfreports, ptestlogs, hd, regressionreport))
 
     # Also ensure we have saved out log data for ptest runs to aid debugging
     if "ptest" in btype or btype in ["full", "quick"]:
-- 
2.40.0


