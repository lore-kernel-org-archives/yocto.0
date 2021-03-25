Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web11.1563.1616688218815478362
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 09:03:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=0ZDTtFar;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.181, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f181.google.com with SMTP id l123so2510931pfl.8
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 09:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=RQ/YoTz3kYww2vNJolt36+TQDXicHE3JSV+EpOUoC6A=;
        b=0ZDTtFar663hZ6+7TUQ+pKtyvStTxBQelnHsFcwh6eJT+iphFY7doeayciTbkvz3sH
         2t5INSpndmONTfdpKa1GTfX22//+rVyYM2q2jiRMQ1+6inS4/JBT2BkZCGbD8Ba8RULR
         KqdANiIYkcUwNGCq7XlA3n1e51ublRhlRuacC5DE/WNCQibnWhEYG+tiowfkrYCd6KtM
         HPIveezsAd8t1kzqv21AMywD0YPsSnYzHNfmYrusZ2JAE8N4k8wIqQMXBEFYg9QYg727
         UdY6SvOXcQ+HDR3lOozuYoSnzvnk2YWrYh6S2M4vTKV4lLWuEWNlra1CZMV1aot49unD
         PWRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RQ/YoTz3kYww2vNJolt36+TQDXicHE3JSV+EpOUoC6A=;
        b=R1C01IPoxbIIaulIN3I/eaqZitY1WxPbAeZCRLjZ2pyjGPKiah/rh0z7GePuOhsV5h
         qu9e3fLjXintUJtXCc9MZPXIoMoPIpmrfGyLPmSYc4kw+rozdDhQQsnHs/i2bsy9VkXW
         AwxPY+SHoF8C9NLe3dbuV7zV2qnJ0ayh9JezIlT5YHusznimVIlAD5DL49d7qFUcO4jq
         2cKUevb5IM3FgpG/XF15QB5qoH9uoBDtPkr1eAJ0t1vj1xev15+oiMelehPaHJXwKosr
         5YEOwuqYb4M+uKJiT3xtaUaZSGcn4NGj9mT4sEVX0gtB4Y33Ib91KJkPSTcv5lgqDGM0
         WQgg==
X-Gm-Message-State: AOAM5338E5S9gkCbVx11wMDlTdg6BZi5ostV4FhfYbo+8916Q3UsSPLy
	xXqAmGHhOKswjZx2OVLo5T71Qz6nutI7FG6Y
X-Google-Smtp-Source: ABdhPJyet/EotrKtvQgHK1BAnpjeNX0MgozRLTHbOCCz2NOSBCdJnQRZ11+0tDc/GC33eov8r0ceDQ==
X-Received: by 2002:a17:903:208a:b029:e6:20c3:2300 with SMTP id d10-20020a170903208ab02900e620c32300mr10230675plc.47.1616688217846;
        Thu, 25 Mar 2021 09:03:37 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id t18sm6290054pfh.57.2021.03.25.09.03.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:03:37 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell V2 08/15] scripts/run-config: Remove redundant boilerplate json
Date: Thu, 25 Mar 2021 06:02:14 -1000
Message-Id: <96a3c8abe32d649ee1889f46344d901f2df1f012.1616687842.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616687842.git.steve@sakoman.com>
References: <cover.1616687842.git.steve@sakoman.com>
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

