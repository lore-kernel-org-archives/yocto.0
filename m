Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web09.1471.1616632834242231901
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=ddlOj6L+;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.182, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f182.google.com with SMTP id q5so218048pfh.10
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=DOVDCiTz6UTOq72ne4mTeZZuawFs5FJI+9oSVV9cc5s=;
        b=ddlOj6L+z6aVx4PdvbcKeTQk+Y1NfZvFt98yEvf/n4Xdv5DZaWre13dJf2aJS+hUIF
         aVzlRshanacjUAiS9/UsXVYCuRPNCoKFwJJZgN744suwGT9Ou9RwvUmLXgJUjOwXj/Tz
         63JwblUtHfQHHcSAWCTJCA+Z2s2UiI21N0hsh7lISh+F19kXCeeSRGYwmflZ7uF0br90
         94KmBIBvryYUObZTX7Da/wDOMl6iX5IisvYRupJyR6LgyP0Wj3XEuFVqbyiFLqBkSb1v
         r3E8eMh0/0Zkif7QzhxoQ+OZk7bHwlRLG0syiVzBPTexlYPpyiA61cd+Ju7GJRf1wcCf
         ye/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DOVDCiTz6UTOq72ne4mTeZZuawFs5FJI+9oSVV9cc5s=;
        b=GSemmSsi/j1l8EPZ+ZILhaXiKCWfnEB1b10OdcvwNzQNQadZfw9oFX7snesByMH33H
         7TkyhBGZMHFUwhAG4zhym2d10EapJ5iP+nzGtCzYD7puyoZYU1v5+sDuIH1b9gffLxcZ
         20rB3j0Q0G3l65AiajYYRofmrjfC5uuImtH+RK/PxxrdbTcfctKIqf59Xv5jxd1/aX6O
         8ZOBLNw0BfQQQqd1JAR3gsmVymlolGXFZ8I3d/9+4yJOMRKo9C+WfhZ5Yx72hORwA4sX
         +mwnCuR/wEzk/Fe9/qAajqSXfcrc9mceXMWZ8LQAWnGXCGjdK10LehGS9f4QUIzpA0xM
         2hYQ==
X-Gm-Message-State: AOAM532DdpMbplNeJkk0xrFtlEFR2k5z3fbvVjTToLmBP1+fcWpGKJy+
	7msPD8Py6FDBkcTD6npx9WNR7jSSSFNIaiKC
X-Google-Smtp-Source: ABdhPJzk+UekWbTEBI1bHqpJmhaYV7gvNsj4Re+de7xTI3sfj0SndYGU9Cg5H+DP1qYjKkeuck/LMg==
X-Received: by 2002:a62:8103:0:b029:1ef:26e4:494f with SMTP id t3-20020a6281030000b02901ef26e4494fmr5287254pfd.41.1616632833222;
        Wed, 24 Mar 2021 17:40:33 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.31
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:32 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 17/23] config.json/run-config: Add support for shortnames and descriptions
Date: Wed, 24 Mar 2021 14:39:26 -1000
Message-Id: <0ddf6fcc57ed9a5bd1bf50577ef4604801cbaa62.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Learn from the previous experiments and add meaninful shortnames and
descriptions to work around the 50 char name limit.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit bceb63fb7952c6ed289733471a0177cfbc365a1e)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json        | 16 +++++++++++-----
 scripts/run-config | 34 +++++++++++++++++++++++-----------
 2 files changed, 34 insertions(+), 16 deletions(-)

diff --git a/config.json b/config.json
index 1fcc45d..4856507 100644
--- a/config.json
+++ b/config.json
@@ -453,7 +453,8 @@
             "MACHINE" : "qemux86-64",
             "SDKMACHINE" : "x86_64",
             "step1" : {
-                "description" : "x86_64 32bit multilib image with rpm",
+                "shortname" : "x86-64 lib32-img rpm",
+                "description" : "qemux86-64 32bit multilib image with rpm",
                 "BBTARGETS" : "lib32-core-image-minimal",
                 "SANITYTARGETS" : "lib32-core-image-minimal:do_testimage",
                 "extravars" : [
@@ -464,7 +465,8 @@
                 ]
             },
             "step2" : {
-                "description" : "x86_64 32bit multilib image with ipk",
+                "shortname" : "x86-64 lib32-img ipk",
+                "description" : "qemux86-64 32bit multilib image with ipk",
                 "PACKAGE_CLASSES" : "package_ipk",
                 "BBTARGETS" : "lib32-core-image-minimal",
                 "SANITYTARGETS" : "lib32-core-image-minimal:do_testimage",
@@ -476,7 +478,8 @@
                 ]
             },
             "step3" : {
-                "description" : "x86_64 64bit image and 32 bit multilibs with rpm",
+                "shortname" : "x86-64 lib32 rpm",
+                "description" : "qemux86-64 64bit image and 32 bit multilibs with rpm",
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
@@ -489,7 +492,8 @@
                 ]
             },
             "step4" : {
-                "description" : "x86_64 64bit image and 32 bit multilibs with ipk",
+                "shortname" : "x86-64 lib32 ipk",
+                "description" : "qemux86-64 64bit image and 32 bit multilibs with ipk",
                 "PACKAGE_CLASSES" : "package_ipk",
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
@@ -503,6 +507,7 @@
                 ]
             },
             "step5" : {
+                "shortname" : "x86-64 lib64-img",
                 "description" : "x86 building 64bit multilib image",
                 "MACHINE" : "qemux86",
                 "SDKMACHINE" : "i686",
@@ -514,7 +519,8 @@
                 ]
             },
             "step6" : {
-                "description" : "mips64 image using n32 as default",
+                "shortname" : "mip64 n32",
+                "description" : "qemumips64 image using n32 as default",
                 "MACHINE" : "qemumips64",
                 "BBTARGETS" : "core-image-minimal core-image-minimal:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-minimal:do_testsdk",
diff --git a/scripts/run-config b/scripts/run-config
index 58ce364..aab52c1 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -112,13 +112,26 @@ if args.json_outputfile:
     jsonconfig = []
     jcfg = True
 
+# There is a 50 char limit on "bbname" but buildbot may append "_1", "_2" if multiple steps
+# with the same name exist in a build
 def addentry(name, description, phase):
-    jsonconfig.append({"name" : name, "bbname" : description[:45], "phase" : phase, "description" : description})
+    jsonconfig.append({"name" : name, "bbname" : description[:46], "phase" : phase, "description" : description})
+
+def addstepentry(name, taskdesc, shortname, description, detail, phase):
+    bbname = taskdesc
+    if shortname:
+        bbname = shortname + ": " + taskdesc
+    bbdesc = taskdesc
+    if description:
+        bbdesc = description
+    if detail:
+        bbdesc = bbdesc + ": " + detail
+    jsonconfig.append({"name" : name, "bbname" : bbname[:46], "phase" : phase, "description" : bbdesc})
 
 if jcfg:
     buildtools = utils.setup_buildtools_tarball(ourconfig, args.workername, None, checkonly=True)
     if buildtools:
-        addentry("buildtools", "Extract and setup buildtools tarball", "init")
+        addentry("buildtools", "Setup buildtools tarball", "init")
 else:
     utils.setup_buildtools_tarball(ourconfig, args.workername, args.builddir + "/../buildtools")
     if args.phase == "init" and args.stepname == "buildtools":
@@ -218,15 +231,14 @@ if args.phase == "init" and args.stepname == "buildhistory-init":
     sys.exit(0)
 
 def handle_stepnum(stepnum):
+    shortdesc = utils.getconfigvar("shortname", ourconfig, args.target, stepnum) or ""
     desc = utils.getconfigvar("description", ourconfig, args.target, stepnum) or ""
-    if desc:
-        desc = desc + ": "
 
     # Add any layers specified
     layers = utils.getconfiglist("ADDLAYER", ourconfig, args.target, stepnum)
     if jcfg:
         if layers:
-            addentry("add-layers", "%sAdding layers %s" % (desc, str(layers)), str(stepnum))
+            addstepentry("add-layers", "Add layers", shortdesc, desc, str(layers), str(stepnum))
     elif args.stepname == "add-layers":
         for layer in layers:
             bitbakecmd(args.builddir, "bitbake-layers add-layer %s" % layer, report, stepnum, args.stepname)
@@ -236,7 +248,7 @@ def handle_stepnum(stepnum):
     # Generate the configuration files needed for this step
     if utils.getconfigvar("WRITECONFIG", ourconfig, args.target, stepnum):
         if jcfg:
-            addentry("write-config", "%sWriting configuration files" % desc, str(stepnum))
+            addstepentry("write-config", "Write config", shortdesc, desc, None, str(stepnum))
         elif args.stepname == "write-config":
             runcmd([scriptsdir + "/setup-config", args.target, str(stepnum - 1), args.builddir, args.branchname, args.reponame, "-s", args.sstateprefix, "-b", args.buildappsrcrev])
 
@@ -244,7 +256,7 @@ def handle_stepnum(stepnum):
     targets = utils.getconfigvar("BBTARGETS", ourconfig, args.target, stepnum)
     if targets:
         if jcfg:
-            addentry("build-targets", "%sBuilding targets %s" % (desc, str(targets)), str(stepnum))
+            addstepentry("build-targets", "Build targets", shortdesc, desc, str(targets), str(stepnum))
         elif args.stepname == "build-targets":
             hp.printheader("Step %s/%s: Running bitbake %s" % (stepnum, maxsteps, targets))
             bitbakecmd(args.builddir, "bitbake %s -k" % targets, report, stepnum, args.stepname)
@@ -253,7 +265,7 @@ def handle_stepnum(stepnum):
     sanitytargets = utils.getconfigvar("SANITYTARGETS", ourconfig, args.target, stepnum)
     if sanitytargets:
         if jcfg:
-            addentry("test-targets", "%sRunning OEQA test targets %s" % (desc, str(sanitytargets)), str(stepnum))
+            addstepentry("test-targets", "QA targets", shortdesc, desc, str(sanitytargets), str(stepnum))
         elif args.stepname == "test-targets":
             hp.printheader("Step %s/%s: Running bitbake %s" % (stepnum, maxsteps, sanitytargets))
             bitbakecmd(args.builddir, "%s/checkvnc; DISPLAY=:1 bitbake %s -k" % (scriptsdir, sanitytargets), report, stepnum, args.stepname)
@@ -262,7 +274,7 @@ def handle_stepnum(stepnum):
     cmds = utils.getconfiglist("EXTRACMDS", ourconfig, args.target, stepnum)
     if jcfg:
         if cmds:
-            addentry("cmds", "%sRunning bitbake environment commands %s" % (desc, str(cmds)), str(stepnum))
+            addstepentry("cmds", "Run cmds", shortdesc, desc, str(cmds), str(stepnum))
     elif args.stepname == "cmds":
         for cmd in cmds:
             hp.printheader("Step %s/%s: Running command %s" % (stepnum, maxsteps, cmd))
@@ -271,7 +283,7 @@ def handle_stepnum(stepnum):
     cmds = utils.getconfiglist("EXTRAPLAINCMDS", ourconfig, args.target, stepnum)
     if jcfg:
         if cmds:
-            addentry("plain-cmds", "%sRunning commands %s" % (desc, str(cmds)), str(stepnum))
+            addstepentry("plain-cmds", "Run cmds", shortdesc, desc, str(cmds), str(stepnum))
     elif args.stepname == "plain-cmds":
         for cmd in cmds:
             hp.printheader("Step %s/%s: Running 'plain' command %s" % (stepnum, maxsteps, cmd))
@@ -279,7 +291,7 @@ def handle_stepnum(stepnum):
 
     if jcfg:
         if layers:
-            addentry("remove-layers", "%sRemoving layers %s" % (desc, str(layers)), str(stepnum))
+            addstepentry("remove-layers", "Remove layers", shortdesc, desc, str(layers), str(stepnum))
     elif args.stepname == "remove-layers":
         # Remove any layers we added in a reverse order
         for layer in reversed(layers):
-- 
2.25.1

