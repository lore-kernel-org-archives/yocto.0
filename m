Return-Path: <benjamin.esquivel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670F0C6FA90
	for <webhook@archiver.kernel.org>; Thu, 22 Sep 2022 02:40:23 +0000 (UTC)
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web11.2954.1663814415311937430
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 19:40:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mSxlu25c;
 spf=pass (domain: gmail.com, ip: 209.85.210.175,
 mailfrom: benjamin.esquivel@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id e68so7916590pfe.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 19:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=ZiFaPAaSeYEXsRcRK/apy6+Kjk1Kdz9V2J9tIceqYEs=;
        b=mSxlu25cv++w4lqGXIRjNYRwReUoMSDkAsBSSB9Vmo93QglxI08N+Dp8alAuaUI0MU
         D1ObJpyrG11QeXH96di/yzo5O+2BcQuoeomzDCpXGXAEHsEg7HBR4USvswMM2FSjzdoN
         k769PTNKT96Ovacj9VEwuW0n9q7Fa0+divSOY7+vogjo74QH7VcbYY5Vgo0w5jMsigB+
         8ROQS3IY2iDmuEPWf6dzEArNx77XbDE+u50rcRbZodts6dx6pXCfttojpkj9uNuJiRGr
         wTu42/vcLig5lUheFuVieHra0zEhKuWGkO5CFPX4oEgdZXVlUztlKAzXLkxbhe6vp60j
         vvdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=ZiFaPAaSeYEXsRcRK/apy6+Kjk1Kdz9V2J9tIceqYEs=;
        b=EtCG3SXBmNCm9oKbMPKPr7sdEsEs9v0o8UeolkLU79qK7abwBr9W4KZ9IPfakOxXBm
         XN8O7Gz/JfCrwI/ebZzYFgbUqmv3qg3LYGtmQCJHI0Tz0b0o6RLZi4OsgB51vlsHsfF/
         Z3t8agEYmQIdkBnSxQ/MIwUyaXPwFQsc/tumBD/aInlSgPPKHFXKIhkMWb1lXg5yDjk2
         HP9tDj5SWOxBwkF/7RscaABnK/bZYB5QZ23B9o/4GXEeBHGVbkZUesvyc9dP7a8xCaWa
         ik7/YRhoprAFxV2aUSm+e8fCGaBC/bMIDFxE4O/8WafStw7EvYvJXtue2S2fdr9i7vMK
         EMBQ==
X-Gm-Message-State: ACrzQf2wb5XepOSt5ojOt83D2OLnnHu8guxwEQ1DGaLbmpydhQGZnwxo
	/+1LAE7K4MVIpXcbDomVteKrBXT+uDo/dw==
X-Google-Smtp-Source: 
 AMsMyM4v/qffNxSvntvnX5AmJjufyn5mSHfEfAt4wMqyu12RqVR0zsF2Q1umTmCG89k60R+ocKNTRQ==
X-Received: by 2002:a65:42cc:0:b0:431:af8c:77e1 with SMTP id
 l12-20020a6542cc000000b00431af8c77e1mr1121575pgp.308.1663814414174;
        Wed, 21 Sep 2022 19:40:14 -0700 (PDT)
Received: from machine.hsd1.wa.comcast.net ([24.16.138.215])
        by smtp.gmail.com with ESMTPSA id
 k7-20020aa79727000000b005484d133127sm2890966pfg.129.2022.09.21.19.40.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 19:40:13 -0700 (PDT)
From: benjamin.esquivel@gmail.com
To: yocto@lists.yoctoproject.org
Cc: tarxf@esquibits.com,
	Benjamin Esquivel <benjamin.esquivel@gmail.com>
Subject: [yocto-autobuilder-helper][PATCH] prepare-shared-repos: create
 missing dirs
Date: Wed, 21 Sep 2022 19:39:48 -0700
Message-Id: <20220922023948.387053-1-benjamin.esquivel@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Sep 2022 02:40:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58127

From: Benjamin Esquivel <benjamin.esquivel@gmail.com>

on new autobuilder setups, the tmp and destination tar repo dir are
not created anywhere and this makes the step fail.

also a forward looking change to remove /home/pokybuild* instances in
the script to reduce maintenance while getting these paths from
config.

Signed-off-by: Benjamin Esquivel <benjamin.esquivel@gmail.com>
---
 config.json                     |  2 ++
 scripts/prepare-shared-repos    |  8 ++++++--
 scripts/summarize_top_output.py | 13 +++++++++----
 3 files changed, 17 insertions(+), 6 deletions(-)

diff --git a/config.json b/config.json
index 9dcc1db..cee0675 100644
--- a/config.json
+++ b/config.json
@@ -24,6 +24,8 @@
     "BUILDPERF_STATEDIR" : "${BASE_HOMEDIR}/buildperf",
     "BUILDPERF_RESULTSDIR" : "${BASE_HOMEDIR}/buildperf-results",
 
+    "WORKER_DIR" : "${BASE_HOMEDIR}/yocto-worker",
+
     "defaults" : {
         "NEEDREPOS" : ["poky"],
         "DISTRO" : "poky",
diff --git a/scripts/prepare-shared-repos b/scripts/prepare-shared-repos
index b855d18..e8b123d 100755
--- a/scripts/prepare-shared-repos
+++ b/scripts/prepare-shared-repos
@@ -35,8 +35,12 @@ with open(args.repojson) as f:
     repos = json.load(f)
 
 stashdir = utils.getconfig("REPO_STASH_DIR", ourconfig)
+basetmpdir = os.path.join(utils.getconfig("BASE_HOMEDIR", ourconfig), "tmp")
+sharedsrcdir = os.path.abspath(args.sharedsrcdir)
+utils.mkdir(basetmpdir)
+utils.mkdir(sharedsrcdir)
 
-with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/home/pokybuild/tmp") as tempdir:
+with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir=basetmpdir) as tempdir:
     for repo in sorted(repos.keys()):
         utils.printheader("Intially fetching repo %s" % repo)
         # shallow clones disabled as it doesn't work correctly with revision numbers in the result repo leading to release build failures.
@@ -48,4 +52,4 @@ with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/home/pokybuil
             utils.publishrepo(tempdir, repo, args.publish_dir)
 
     utils.printheader("Creating shared src tarball")
-    subprocess.check_call("tar -I zstd -cf " + args.sharedsrcdir.rstrip("/") + ".tar.zst ./*", shell=True, cwd=tempdir)
+    subprocess.check_call("tar -I zstd -cf " + sharedsrcdir + ".tar.zst ./*", shell=True, cwd=tempdir)
diff --git a/scripts/summarize_top_output.py b/scripts/summarize_top_output.py
index 618cde1..a0c039c 100755
--- a/scripts/summarize_top_output.py
+++ b/scripts/summarize_top_output.py
@@ -5,8 +5,13 @@
 
 import os, sys, glob
 
+import utils
+
+ourconfig = utils.loadconfig()
+
 # constants
-HOME = "/home/pokybuild/yocto-worker/"
+
+workerdir = utils.getconfig("WORKER_DIR", ourconfig)
 top_header = 7
 max_cols = 11
 cpu_hoggers = 5
@@ -18,7 +23,7 @@ special_cmds = ["rm", "tar", "qemu"]
 
 # string substitution to make things easier to read
 subs = {
-    "/home/pokybuild/yocto-worker/" : "~/",
+    workerdir : "~/",
     "/build/build/tmp/work/" : "/...WORK_DIR.../"
 }
 
@@ -64,8 +69,8 @@ def summarize_top(top_outs, target):
         short_summary = top_out[:top_header + cpu_hoggers]
         for line in top_out[top_header:]:
             cmd = line.split(maxsplit=max_cols)[-1]
-            if cmd.startswith(HOME):
-                b = cmd.split(HOME)[1].split("/")[0]
+            if cmd.startswith(workerdir):
+                b = cmd.split(workerdir)[1].split("/")[0]
                 if b not in other_builds:
                     other_builds.append(b)
             if cmd[0] == "[" and cmd[-1] == "]":    # kernel processes
-- 
2.30.2


