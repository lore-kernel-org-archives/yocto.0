Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web08.1531.1616688213208681573
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 09:03:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=f5uVcH+1;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.171, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f171.google.com with SMTP id j25so2533904pfe.2
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 09:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=LJXDBmOii2GzJQ/rOj4h2K9zJf4HfWPBuODh0u2Le4s=;
        b=f5uVcH+1v5IVSpFwuEfcHJeYMzd2uUQ7SXsZPFR51v+85FEs9SSTbiKW+xzw1gS9AY
         305QTYPyR5DWOwOd8c/wBHGTzNuLb5FlyylBmebOSVZPGHibKhT36Myo+ufvOt6MP7qJ
         Ta7jnODB353K1Ybc7Em86uoFKkKjPzZUGP94wGb+iXSQE/xy8NuMN7vik9lNz1VuhQCM
         JEGf6t9fcooFqLXAX/LRvI3GSsPBg8+VCIRX+Hqywnb2KkFOhF//LDjtKWXNIhOFAe4E
         onXVuJ5dNYDq1zuL8tDofikuQFepDSG81tAPqAuLZ8IV2YKr8z68K9DZGGt1T76Ajb32
         7P1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LJXDBmOii2GzJQ/rOj4h2K9zJf4HfWPBuODh0u2Le4s=;
        b=opBOC5Q8EMUBzGvdEo2w47h3aUqt8e/W35+Gj8AFT04wAqRc/Ykrd1xlwefif4ZrRb
         fGNDViQ02WmKrcIxRqnQMJ6OQF/b9f3X7JUVixfE8URgNPEJSUO7Tqg1HvDqWnlWXeKq
         2U7T1uHzb8UiUyE86pnQTaGGqdBj+rEhtccn2ruRuBEbHWjk4aCHTbSQdd9jLnAMC7mc
         wlJE3HXhughOioMchjjWzf+b+BixYyOwab7t+FufBoue63p+Kkl3HBKfw9imMJCikugB
         ITKr5KEB8LgsRMkqvWIDA+fOCCq5yBF71PUQj1C+QpZmjEv8/RnnwJEYGVYLhd+a9nap
         pxeA==
X-Gm-Message-State: AOAM5326ayg8acTJpyC5IryXAj+CJan/TifCM+5d7x+lYbvPfIkFr7Q0
	GY5BnZbqV9AevC1reZVLw9e0h2AlVZxxC039
X-Google-Smtp-Source: ABdhPJyULx7Egnsj4MUkRMi4d2wNry00F/mRWlL2IdHaKXbAt6ylcO0nkzKThCl+9O05Y16FUCjq1w==
X-Received: by 2002:a17:902:c389:b029:e7:1029:8ba5 with SMTP id g9-20020a170902c389b02900e710298ba5mr9826586plg.55.1616688212231;
        Thu, 25 Mar 2021 09:03:32 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id t18sm6290054pfh.57.2021.03.25.09.03.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:03:31 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell V2 07/15] config.json/run-config: Add human readable descriptions of steps
Date: Thu, 25 Mar 2021 06:02:13 -1000
Message-Id: <2a4a2dd123c5323ec6b34492998b4fec5f3ee766.1616687842.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616687842.git.steve@sakoman.com>
References: <cover.1616687842.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit ce63e8f024834a670cea660c61be632191aed9b9)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json        |  6 ++++++
 scripts/run-config | 30 +++++++++++++++++-------------
 2 files changed, 23 insertions(+), 13 deletions(-)

diff --git a/config.json b/config.json
index b67ef03..1fcc45d 100644
--- a/config.json
+++ b/config.json
@@ -453,6 +453,7 @@
             "MACHINE" : "qemux86-64",
             "SDKMACHINE" : "x86_64",
             "step1" : {
+                "description" : "x86_64 32bit multilib image with rpm",
                 "BBTARGETS" : "lib32-core-image-minimal",
                 "SANITYTARGETS" : "lib32-core-image-minimal:do_testimage",
                 "extravars" : [
@@ -463,6 +464,7 @@
                 ]
             },
             "step2" : {
+                "description" : "x86_64 32bit multilib image with ipk",
                 "PACKAGE_CLASSES" : "package_ipk",
                 "BBTARGETS" : "lib32-core-image-minimal",
                 "SANITYTARGETS" : "lib32-core-image-minimal:do_testimage",
@@ -474,6 +476,7 @@
                 ]
             },
             "step3" : {
+                "description" : "x86_64 64bit image and 32 bit multilibs with rpm",
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
@@ -486,6 +489,7 @@
                 ]
             },
             "step4" : {
+                "description" : "x86_64 64bit image and 32 bit multilibs with ipk",
                 "PACKAGE_CLASSES" : "package_ipk",
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
@@ -499,6 +503,7 @@
                 ]
             },
             "step5" : {
+                "description" : "x86 building 64bit multilib image",
                 "MACHINE" : "qemux86",
                 "SDKMACHINE" : "i686",
                 "BBTARGETS" : "lib64-core-image-sato lib64-core-image-sato-sdk",
@@ -509,6 +514,7 @@
                 ]
             },
             "step6" : {
+                "description" : "mips64 image using n32 as default",
                 "MACHINE" : "qemumips64",
                 "BBTARGETS" : "core-image-minimal core-image-minimal:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-minimal:do_testsdk",
diff --git a/scripts/run-config b/scripts/run-config
index 05c0579..89506f5 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -115,7 +115,7 @@ if args.json_outputfile:
 if jcfg:
     buildtools = utils.setup_buildtools_tarball(ourconfig, args.workername, None, checkonly=True)
     if buildtools:
-        jsonconfig.append({"name" : "buildtools", "description" : "Extract and setup buildtools tarball", "phase" : "init"})
+        jsonconfig.append({"name" : "buildtools", "bbname" : "Extract and setup buildtools tarball", "phase" : "init"})
 else:
     utils.setup_buildtools_tarball(ourconfig, args.workername, args.builddir + "/../buildtools")
     if args.phase == "init" and args.stepname == "buildtools":
@@ -208,18 +208,22 @@ def runcmd(cmd, *args, **kwargs):
 bh_path, remoterepo, remotebranch, baseremotebranch = utils.getbuildhistoryconfig(ourconfig, args.builddir, args.target, args.reponame, args.branchname, 1)
 if bh_path:
     if jcfg:
-        jsonconfig.append({"name" : "buildhistory-init", "description" : "Initialize buildhistory", "phase" : "init"})
+        jsonconfig.append({"name" : "buildhistory-init", "bbname" : "Initialize buildhistory", "phase" : "init"})
 if args.phase == "init" and args.stepname == "buildhistory-init":
     if bh_path:
         runcmd([os.path.join(scriptsdir, "buildhistory-init"), bh_path, remoterepo, remotebranch, baseremotebranch])
     sys.exit(0)
 
 def handle_stepnum(stepnum):
+    desc = utils.getconfigvar("description", ourconfig, args.target, stepnum)
+    if desc:
+        desc = desc + ": "
+
     # Add any layers specified
     layers = utils.getconfiglist("ADDLAYER", ourconfig, args.target, stepnum)
     if jcfg:
         if layers:
-            jsonconfig.append({"name" : "add-layers", "description" : "Adding layers %s" % str(layers), "phase" : str(stepnum)})
+            jsonconfig.append({"name" : "add-layers", "bbname" : "%sAdding layers %s" % (desc, str(layers)), "phase" : str(stepnum)})
     elif args.stepname == "add-layers":
         for layer in layers:
             bitbakecmd(args.builddir, "bitbake-layers add-layer %s" % layer, report, stepnum, args.stepname)
@@ -229,7 +233,7 @@ def handle_stepnum(stepnum):
     # Generate the configuration files needed for this step
     if utils.getconfigvar("WRITECONFIG", ourconfig, args.target, stepnum):
         if jcfg:
-            jsonconfig.append({"name" : "write-config", "description" : "Writing configuration files", "phase" : str(stepnum)})
+            jsonconfig.append({"name" : "write-config", "bbname" : "%sWriting configuration files" % desc, "phase" : str(stepnum)})
         elif args.stepname == "write-config":
             runcmd([scriptsdir + "/setup-config", args.target, str(stepnum - 1), args.builddir, args.branchname, args.reponame, "-s", args.sstateprefix, "-b", args.buildappsrcrev])
 
@@ -237,7 +241,7 @@ def handle_stepnum(stepnum):
     targets = utils.getconfigvar("BBTARGETS", ourconfig, args.target, stepnum)
     if targets:
         if jcfg:
-            jsonconfig.append({"name" : "build-targets", "description" : "Building targets %s" % str(targets), "phase" : str(stepnum)})
+            jsonconfig.append({"name" : "build-targets", "bbname" : "%sBuilding targets %s" % (desc, str(targets)), "phase" : str(stepnum)})
         elif args.stepname == "build-targets":
             hp.printheader("Step %s/%s: Running bitbake %s" % (stepnum, maxsteps, targets))
             bitbakecmd(args.builddir, "bitbake %s -k" % targets, report, stepnum, args.stepname)
@@ -246,7 +250,7 @@ def handle_stepnum(stepnum):
     sanitytargets = utils.getconfigvar("SANITYTARGETS", ourconfig, args.target, stepnum)
     if sanitytargets:
         if jcfg:
-            jsonconfig.append({"name" : "test-targets", "description" : "Running OEQA test targets %s" % str(sanitytargets), "phase" : str(stepnum)})
+            jsonconfig.append({"name" : "test-targets", "bbname" : "%sRunning OEQA test targets %s" % (desc, str(sanitytargets)), "phase" : str(stepnum)})
         elif args.stepname == "test-targets":
             hp.printheader("Step %s/%s: Running bitbake %s" % (stepnum, maxsteps, sanitytargets))
             bitbakecmd(args.builddir, "%s/checkvnc; DISPLAY=:1 bitbake %s -k" % (scriptsdir, sanitytargets), report, stepnum, args.stepname)
@@ -255,7 +259,7 @@ def handle_stepnum(stepnum):
     cmds = utils.getconfiglist("EXTRACMDS", ourconfig, args.target, stepnum)
     if jcfg:
         if cmds:
-            jsonconfig.append({"name" : "cmds", "description" : "Running bitbake environment commands %s" % str(cmds), "phase" : str(stepnum)})
+            jsonconfig.append({"name" : "cmds", "bbname" : "%sRunning bitbake environment commands %s" % (desc, str(cmds)), "phase" : str(stepnum)})
     elif args.stepname == "cmds":
         for cmd in cmds:
             hp.printheader("Step %s/%s: Running command %s" % (stepnum, maxsteps, cmd))
@@ -264,7 +268,7 @@ def handle_stepnum(stepnum):
     cmds = utils.getconfiglist("EXTRAPLAINCMDS", ourconfig, args.target, stepnum)
     if jcfg:
         if cmds:
-            jsonconfig.append({"name" : "plain-cmds", "description" : "Running commands %s" % str(cmds), "phase" : str(stepnum)})
+            jsonconfig.append({"name" : "plain-cmds", "bbname" : "%sRunning commands %s" % (desc, str(cmds)), "phase" : str(stepnum)})
     elif args.stepname == "plain-cmds":
         for cmd in cmds:
             hp.printheader("Step %s/%s: Running 'plain' command %s" % (stepnum, maxsteps, cmd))
@@ -272,7 +276,7 @@ def handle_stepnum(stepnum):
 
     if jcfg:
         if layers:
-            jsonconfig.append({"name" : "remove-layers", "description" : "Removing layers %s" % str(layers), "phase" : str(stepnum)})
+            jsonconfig.append({"name" : "remove-layers", "bbname" : "%sRemoving layers %s" % (desc, str(layers)), "phase" : str(stepnum)})
     elif args.stepname == "remove-layers":
         # Remove any layers we added in a reverse order
         for layer in reversed(layers):
@@ -295,7 +299,7 @@ else:
 
 
 if jcfg:
-    jsonconfig.append({"name" : "publish", "description" : "Publishing artefacts", "phase" : "finish"})
+    jsonconfig.append({"name" : "publish", "bbname" : "Publishing artefacts", "phase" : "finish"})
 elif args.phase == "finish" and args.stepname == "publish":
     if args.publish_dir:
         hp.printheader("Running publish artefacts")
@@ -303,7 +307,7 @@ elif args.phase == "finish" and args.stepname == "publish":
     sys.exit(0)
 
 if jcfg:
-    jsonconfig.append({"name" : "collect-results", "description" : "Collecting result files", "phase" : "finish"})
+    jsonconfig.append({"name" : "collect-results", "bbname" : "Collecting result files", "phase" : "finish"})
 elif args.phase == "finish" and args.stepname == "collect-results":
     if args.results_dir:
         hp.printheader("Running results collection")
@@ -311,7 +315,7 @@ elif args.phase == "finish" and args.stepname == "collect-results":
     sys.exit(0)
 
 if jcfg:
-    jsonconfig.append({"name" : "send-errors", "description" : "Sending error reports", "phase" : "finish"})
+    jsonconfig.append({"name" : "send-errors", "bbname" : "Sending error reports", "phase" : "finish"})
 elif args.phase == "finish" and args.stepname == "send-errors":
     if args.build_url and utils.getconfigvar("SENDERRORS", ourconfig, args.target, stepnum):
         hp.printheader("Sending any error reports")
@@ -319,7 +323,7 @@ elif args.phase == "finish" and args.stepname == "send-errors":
     sys.exit(0)
 
 if jcfg:
-    jsonconfig.append({"name" : "builddir-cleanup", "description" : "Cleaning up build directory", "phase" : "finish"})
+    jsonconfig.append({"name" : "builddir-cleanup", "bbname" : "Cleaning up build directory", "phase" : "finish"})
 elif args.phase == "finish" and args.stepname == "builddir-cleanup":
     if args.builddir and os.path.exists(args.builddir):
         runcmd(["mv", args.builddir, args.builddir + "-renamed"])
-- 
2.25.1

