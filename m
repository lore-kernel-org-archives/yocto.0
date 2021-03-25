Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web11.1360.1616632827810051845
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=S+7jMIlD;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.170, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f170.google.com with SMTP id x126so201188pfc.13
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=RQ/YoTz3kYww2vNJolt36+TQDXicHE3JSV+EpOUoC6A=;
        b=S+7jMIlDxza4pKB99dl9uMka/NlcMdNedZeB2OFT8vrhpAZMeIIugOJAmdZM0XZrvA
         WLKEnXxTWWk38FxzO9SqRn37RBk6GfmneEvkbmejUSDdexM65W6afVhdzTW2e3UknXrJ
         gM4DJ+uoxqk9F93EUaY4xXr0YSFF6jd+7VsbD90Dunx8FLrjhHp/hooE87hNC7XSfLG8
         aiVvacYm26vEtrpn1S9u7TAo4NkWeXrRb7A/X6SWqGFySZ2wd4xinVfKBlLjnmvWo6+1
         pVoOmnaT+MZrzk9+PSNX3Rq8FOLaaotGEtuKvMQw1/zj1Xw5umkMcz1SdLWwTkrYFpca
         Hatg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RQ/YoTz3kYww2vNJolt36+TQDXicHE3JSV+EpOUoC6A=;
        b=N3IjASMgoAzySv40SsHnTf79mxiL1sSoxKTfQ/4DMd1baxDgprY2AC7Q9nFGfqkPrZ
         bUqI1J6uDPoHLWPaJl6w2qxNpMHG9UKKOqtluiVFe3FrzZdzzgTy16xZpc5bK/jMEk9p
         PPaE87vF+uNd9WKpw8FohKafaCf9oTdzqPBZmYWrfBDPdW7jVmY6KDghTNRmx31UAm4B
         kNUGtdYC8w5hKT2EEhFGHvfeI0v/TUd5vVk5ryjq5Bb+ADI2434h3OxkC3Z0xTSHVBW8
         r8Rn6+jaQGYENEU+0PmuIN9eJ9SPvrXKbdbtwNFQ7vFhYi2Q2o8yi898U6DmA+wqUeDV
         mQ6A==
X-Gm-Message-State: AOAM531/FnGWsyKIcmQQbmgC3p86hMu/RlzIQRl0O4S5D3Aw0sAlMtLN
	jCnCEN/LMCRJusX84ljqRlxeIgqHSi+QK84j
X-Google-Smtp-Source: ABdhPJxsiziUvqKjKxyGOLhOjDrlhDXiUK9GisGM2hP2/l7iTLgLItNU2opGu2NjS0NG/SU7UMFuGQ==
X-Received: by 2002:a17:902:bd8b:b029:e7:147e:ee5b with SMTP id q11-20020a170902bd8bb02900e7147eee5bmr1202245pls.9.1616632826737;
        Wed, 24 Mar 2021 17:40:26 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:26 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 15/23] scripts/run-config: Remove redundant boilerplate json
Date: Wed, 24 Mar 2021 14:39:24 -1000
Message-Id: <3d357aefa91b00e0917ff4652373c5323423a5af.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 2bb48042438f3154bbfa6fbc7f2c7556bfa7c762)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/run-config | 31 +++++++++++++++++--------------
 1 file changed, 17 insertions(+), 14 deletions(-)

diff --git a/scripts/run-config b/scripts/run-config
index 89506f5..58ce364 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -112,10 +112,13 @@ if args.json_outputfile:
     jsonconfig = []
     jcfg = True
 
+def addentry(name, description, phase):
+    jsonconfig.append({"name" : name, "bbname" : description[:45], "phase" : phase, "description" : description})
+
 if jcfg:
     buildtools = utils.setup_buildtools_tarball(ourconfig, args.workername, None, checkonly=True)
     if buildtools:
-        jsonconfig.append({"name" : "buildtools", "bbname" : "Extract and setup buildtools tarball", "phase" : "init"})
+        addentry("buildtools", "Extract and setup buildtools tarball", "init")
 else:
     utils.setup_buildtools_tarball(ourconfig, args.workername, args.builddir + "/../buildtools")
     if args.phase == "init" and args.stepname == "buildtools":
@@ -208,14 +211,14 @@ def runcmd(cmd, *args, **kwargs):
 bh_path, remoterepo, remotebranch, baseremotebranch = utils.getbuildhistoryconfig(ourconfig, args.builddir, args.target, args.reponame, args.branchname, 1)
 if bh_path:
     if jcfg:
-        jsonconfig.append({"name" : "buildhistory-init", "bbname" : "Initialize buildhistory", "phase" : "init"})
+        addentry("buildhistory-init", "Initialize buildhistory", "init")
 if args.phase == "init" and args.stepname == "buildhistory-init":
     if bh_path:
         runcmd([os.path.join(scriptsdir, "buildhistory-init"), bh_path, remoterepo, remotebranch, baseremotebranch])
     sys.exit(0)
 
 def handle_stepnum(stepnum):
-    desc = utils.getconfigvar("description", ourconfig, args.target, stepnum)
+    desc = utils.getconfigvar("description", ourconfig, args.target, stepnum) or ""
     if desc:
         desc = desc + ": "
 
@@ -223,7 +226,7 @@ def handle_stepnum(stepnum):
     layers = utils.getconfiglist("ADDLAYER", ourconfig, args.target, stepnum)
     if jcfg:
         if layers:
-            jsonconfig.append({"name" : "add-layers", "bbname" : "%sAdding layers %s" % (desc, str(layers)), "phase" : str(stepnum)})
+            addentry("add-layers", "%sAdding layers %s" % (desc, str(layers)), str(stepnum))
     elif args.stepname == "add-layers":
         for layer in layers:
             bitbakecmd(args.builddir, "bitbake-layers add-layer %s" % layer, report, stepnum, args.stepname)
@@ -233,7 +236,7 @@ def handle_stepnum(stepnum):
     # Generate the configuration files needed for this step
     if utils.getconfigvar("WRITECONFIG", ourconfig, args.target, stepnum):
         if jcfg:
-            jsonconfig.append({"name" : "write-config", "bbname" : "%sWriting configuration files" % desc, "phase" : str(stepnum)})
+            addentry("write-config", "%sWriting configuration files" % desc, str(stepnum))
         elif args.stepname == "write-config":
             runcmd([scriptsdir + "/setup-config", args.target, str(stepnum - 1), args.builddir, args.branchname, args.reponame, "-s", args.sstateprefix, "-b", args.buildappsrcrev])
 
@@ -241,7 +244,7 @@ def handle_stepnum(stepnum):
     targets = utils.getconfigvar("BBTARGETS", ourconfig, args.target, stepnum)
     if targets:
         if jcfg:
-            jsonconfig.append({"name" : "build-targets", "bbname" : "%sBuilding targets %s" % (desc, str(targets)), "phase" : str(stepnum)})
+            addentry("build-targets", "%sBuilding targets %s" % (desc, str(targets)), str(stepnum))
         elif args.stepname == "build-targets":
             hp.printheader("Step %s/%s: Running bitbake %s" % (stepnum, maxsteps, targets))
             bitbakecmd(args.builddir, "bitbake %s -k" % targets, report, stepnum, args.stepname)
@@ -250,7 +253,7 @@ def handle_stepnum(stepnum):
     sanitytargets = utils.getconfigvar("SANITYTARGETS", ourconfig, args.target, stepnum)
     if sanitytargets:
         if jcfg:
-            jsonconfig.append({"name" : "test-targets", "bbname" : "%sRunning OEQA test targets %s" % (desc, str(sanitytargets)), "phase" : str(stepnum)})
+            addentry("test-targets", "%sRunning OEQA test targets %s" % (desc, str(sanitytargets)), str(stepnum))
         elif args.stepname == "test-targets":
             hp.printheader("Step %s/%s: Running bitbake %s" % (stepnum, maxsteps, sanitytargets))
             bitbakecmd(args.builddir, "%s/checkvnc; DISPLAY=:1 bitbake %s -k" % (scriptsdir, sanitytargets), report, stepnum, args.stepname)
@@ -259,7 +262,7 @@ def handle_stepnum(stepnum):
     cmds = utils.getconfiglist("EXTRACMDS", ourconfig, args.target, stepnum)
     if jcfg:
         if cmds:
-            jsonconfig.append({"name" : "cmds", "bbname" : "%sRunning bitbake environment commands %s" % (desc, str(cmds)), "phase" : str(stepnum)})
+            addentry("cmds", "%sRunning bitbake environment commands %s" % (desc, str(cmds)), str(stepnum))
     elif args.stepname == "cmds":
         for cmd in cmds:
             hp.printheader("Step %s/%s: Running command %s" % (stepnum, maxsteps, cmd))
@@ -268,7 +271,7 @@ def handle_stepnum(stepnum):
     cmds = utils.getconfiglist("EXTRAPLAINCMDS", ourconfig, args.target, stepnum)
     if jcfg:
         if cmds:
-            jsonconfig.append({"name" : "plain-cmds", "bbname" : "%sRunning commands %s" % (desc, str(cmds)), "phase" : str(stepnum)})
+            addentry("plain-cmds", "%sRunning commands %s" % (desc, str(cmds)), str(stepnum))
     elif args.stepname == "plain-cmds":
         for cmd in cmds:
             hp.printheader("Step %s/%s: Running 'plain' command %s" % (stepnum, maxsteps, cmd))
@@ -276,7 +279,7 @@ def handle_stepnum(stepnum):
 
     if jcfg:
         if layers:
-            jsonconfig.append({"name" : "remove-layers", "bbname" : "%sRemoving layers %s" % (desc, str(layers)), "phase" : str(stepnum)})
+            addentry("remove-layers", "%sRemoving layers %s" % (desc, str(layers)), str(stepnum))
     elif args.stepname == "remove-layers":
         # Remove any layers we added in a reverse order
         for layer in reversed(layers):
@@ -299,7 +302,7 @@ else:
 
 
 if jcfg:
-    jsonconfig.append({"name" : "publish", "bbname" : "Publishing artefacts", "phase" : "finish"})
+    addentry("publish", "Publishing artefacts", "finish")
 elif args.phase == "finish" and args.stepname == "publish":
     if args.publish_dir:
         hp.printheader("Running publish artefacts")
@@ -307,7 +310,7 @@ elif args.phase == "finish" and args.stepname == "publish":
     sys.exit(0)
 
 if jcfg:
-    jsonconfig.append({"name" : "collect-results", "bbname" : "Collecting result files", "phase" : "finish"})
+    addentry("collect-results", "Collecting result files", "finish")
 elif args.phase == "finish" and args.stepname == "collect-results":
     if args.results_dir:
         hp.printheader("Running results collection")
@@ -315,7 +318,7 @@ elif args.phase == "finish" and args.stepname == "collect-results":
     sys.exit(0)
 
 if jcfg:
-    jsonconfig.append({"name" : "send-errors", "bbname" : "Sending error reports", "phase" : "finish"})
+    addentry("send-errors", "Sending error reports", "finish")
 elif args.phase == "finish" and args.stepname == "send-errors":
     if args.build_url and utils.getconfigvar("SENDERRORS", ourconfig, args.target, stepnum):
         hp.printheader("Sending any error reports")
@@ -323,7 +326,7 @@ elif args.phase == "finish" and args.stepname == "send-errors":
     sys.exit(0)
 
 if jcfg:
-    jsonconfig.append({"name" : "builddir-cleanup", "bbname" : "Cleaning up build directory", "phase" : "finish"})
+    addentry("builddir-cleanup", "Cleaning up build directory", "finish")
 elif args.phase == "finish" and args.stepname == "builddir-cleanup":
     if args.builddir and os.path.exists(args.builddir):
         runcmd(["mv", args.builddir, args.builddir + "-renamed"])
-- 
2.25.1

