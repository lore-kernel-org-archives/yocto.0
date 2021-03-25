Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web08.1524.1616688197897556599
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 09:03:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=Ij3yWt+k;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.172, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f172.google.com with SMTP id r17so2283977pgi.0
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 09:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=QYUIUVDiMVo6j3ItCO/HJWWlfClQmPd7m4IczTFt9ps=;
        b=Ij3yWt+kMFnVibh2+ERC8QBn0eC9aVbNSNT4euRbDO7B4NDjNIp5it/MYzBEAu/d/e
         skQGOZPkvCRWUlYLG/vA8MvNJv+Fv5xIIW5WnYA8kKbQrtoEpHS/NKcmdhTCeJer2z8o
         pKO4e52mM7XDFnNbUb7oNf7OfXjrs4fWKaxfhj/VCjFFcfcUJ1A7H3npMicnquiD890c
         ADawcgfgHC5u8rlXlq2B8QhREhKFGB2fO20jShZNCTGSOOgSrJuLeZDJwLIxMZBSngbz
         W3DLeDcAaDH8sZwTsCL4WYK+gLV6yWAExtIJXBpU9e4TF6qPqfn04iMa08V3Y3UCUHFc
         mxyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QYUIUVDiMVo6j3ItCO/HJWWlfClQmPd7m4IczTFt9ps=;
        b=RzNyXtlNTPow1Qj0MqNxVr+mGcz/nBF2Pl5sx8VX8ntnOHwGTIitndHzWdVILoyF7o
         X2YVplDu+Q0qkqqoxiOGXjAfpJK9lC2ZqKX+dGq+P1jROrVJOfixmm2JFZu5e1bYT02e
         ugUZrpAXz2nGGGiv5TQZniMezyob1l1ECtR/NhUOfyGxhRV/rYO4ekeAaGTqVlAK1pHo
         R8hMsnOSYvER+OmnCKANT7XlSeI0xkjwodXq16zt54TNaID4rEeL2KznPZqkW+N5DCid
         BoV7on20gxQJ8Mrgo17mcRRF71hsEcqvSDgn1iF+ax2KUBm0I17S6AUxkqwXBVhnSXcR
         qSFA==
X-Gm-Message-State: AOAM533tQkmNI+GhIvLFMnZDg7uKJ4zwPG+G0nGDlsrkyp22dMGeLM7r
	l/R4T7HMc0QNzbxP4yNkRo3NvjARYBDbvzIE
X-Google-Smtp-Source: ABdhPJwT5+75I6m1gIBdcMv4dotkci9H8g8HDP6uBdig77fOxmFdWYyjcL/AXomXJ60fHHygdBkWKQ==
X-Received: by 2002:a63:2e87:: with SMTP id u129mr8304386pgu.107.1616688196785;
        Thu, 25 Mar 2021 09:03:16 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id t18sm6290054pfh.57.2021.03.25.09.03.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:03:16 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell V2 04/15] run-config: Adapt to two pass execution
Date: Thu, 25 Mar 2021 06:02:10 -1000
Message-Id: <365ff2a1f513cd69d3ac9efd58e41e0844d136b2.1616687842.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616687842.git.steve@sakoman.com>
References: <cover.1616687842.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 23d65680f8019bccc3fce20381dfcf49f265f601)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/run-config | 171 +++++++++++++++++++++++++++++++++------------
 scripts/utils.py   |   5 +-
 2 files changed, 130 insertions(+), 46 deletions(-)

diff --git a/scripts/run-config b/scripts/run-config
index 0b663df..116dd49 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -52,6 +52,19 @@ parser.add_argument('--workername',
                     action='store',
                     default=None,
                     help="the name of the worker the build is running on")
+parser.add_argument('-j', '--json-outputfile',
+                    action='store',
+                    default="",
+                    help="the file to store json information about the build in")
+parser.add_argument('--stepname',
+                    action='store',
+                    default=None,
+                    help="the name of the step to run")
+parser.add_argument('--phase',
+                    action='store',
+                    default=None,
+                    help="the phase of the step to run")
+
 
 
 args = parser.parse_args()
@@ -94,7 +107,19 @@ if args.target in ourconfig['overrides']:
 
 hp.printheader("Target task %s has %d steps" % (args.target, maxsteps))
 
-utils.setup_buildtools_tarball(ourconfig, args.workername, args.builddir + "/../buildtools")
+jcfg = False
+if args.json_outputfile:
+    jsonconfig = []
+    jcfg = True
+
+if jcfg:
+    buildtools = utils.setup_buildtools_tarball(ourconfig, args.workername, None, checkonly=True)
+    if buildtools:
+        jsonconfig.append({"name" : "buildtools", "description" : "Extract and setup buildtools tarball", "phase" : "init"})
+else:
+    utils.setup_buildtools_tarball(ourconfig, args.workername, args.builddir + "/../buildtools")
+    if args.phase == "init" and args.stepname == "buildtools":
+        sys.exit(0)
 
 logconfig = args.builddir + "/../bitbake/contrib/autobuilderlog.json"
 print("Using BB_LOGCONFIG=%s" % logconfig)
@@ -181,70 +206,126 @@ def runcmd(cmd, *args, **kwargs):
 
 bh_path, remoterepo, remotebranch, baseremotebranch = utils.getbuildhistoryconfig(ourconfig, args.builddir, args.target, args.reponame, args.branchname, 1)
 if bh_path:
-    runcmd([os.path.join(scriptsdir, "buildhistory-init"), bh_path, remoterepo, remotebranch, baseremotebranch])
-
-for stepnum in range(1, maxsteps + 1):
+    if jcfg:
+        jsonconfig.append({"name" : "buildhistory-init", "description" : "Initialize buildhistory", "phase" : "init"})
+if args.phase == "init" and args.stepname == "buildhistory-init":
+    if bh_path:
+        runcmd([os.path.join(scriptsdir, "buildhistory-init"), bh_path, remoterepo, remotebranch, baseremotebranch])
+    sys.exit(0)
+
+def handle_stepnum(stepnum):
     # Add any layers specified
     layers = utils.getconfiglist("ADDLAYER", ourconfig, args.target, stepnum)
-    for layer in layers:
-        bitbakecmd(args.builddir, "bitbake-layers add-layer %s" % layer, report, stepnum, 'a')
+    if jcfg:
+        if layers:
+            jsonconfig.append({"name" : "add-layers", "description" : "Adding layers %s" % str(layers), "phase" : str(stepnum)})
+    elif args.stepname == "add-layers":
+        for layer in layers:
+            bitbakecmd(args.builddir, "bitbake-layers add-layer %s" % layer, report, stepnum, 'a')
 
     flush()
+
     # Generate the configuration files needed for this step
     if utils.getconfigvar("WRITECONFIG", ourconfig, args.target, stepnum):
-        runcmd([scriptsdir + "/setup-config", args.target, str(stepnum - 1), args.builddir, args.branchname, args.reponame, "-s", args.sstateprefix, "-b", args.buildappsrcrev])
+        if jcfg:
+            jsonconfig.append({"name" : "write-config", "description" : "Writing configuration files", "phase" : str(stepnum)})
+        elif args.stepname == "write-config":
+            runcmd([scriptsdir + "/setup-config", args.target, str(stepnum - 1), args.builddir, args.branchname, args.reponame, "-s", args.sstateprefix, "-b", args.buildappsrcrev])
 
     # Execute the targets for this configuration
     targets = utils.getconfigvar("BBTARGETS", ourconfig, args.target, stepnum)
     if targets:
-        hp.printheader("Step %s/%s: Running bitbake %s" % (stepnum, maxsteps, targets))
-        bitbakecmd(args.builddir, "bitbake %s -k" % targets, report, stepnum, 'b')
+        if jcfg:
+            jsonconfig.append({"name" : "build-targets", "description" : "Building targets %s" % str(targets), "phase" : str(stepnum)})
+        elif args.stepname == "build-targets":
+            hp.printheader("Step %s/%s: Running bitbake %s" % (stepnum, maxsteps, targets))
+            bitbakecmd(args.builddir, "bitbake %s -k" % targets, report, stepnum, 'b')
 
     # Execute the sanity targets for this configuration
     sanitytargets = utils.getconfigvar("SANITYTARGETS", ourconfig, args.target, stepnum)
     if sanitytargets:
-        hp.printheader("Step %s/%s: Running bitbake %s" % (stepnum, maxsteps, sanitytargets))
-        bitbakecmd(args.builddir, "%s/checkvnc; DISPLAY=:1 bitbake %s -k" % (scriptsdir, sanitytargets), report, stepnum, 'c')
+        if jcfg:
+            jsonconfig.append({"name" : "test-targets", "description" : "Running OEQA test targets %s" % str(sanitytargets), "phase" : str(stepnum)})
+        elif args.stepname == "test-targets":
+            hp.printheader("Step %s/%s: Running bitbake %s" % (stepnum, maxsteps, sanitytargets))
+            bitbakecmd(args.builddir, "%s/checkvnc; DISPLAY=:1 bitbake %s -k" % (scriptsdir, sanitytargets), report, stepnum, 'c')
 
     # Run any extra commands specified
     cmds = utils.getconfiglist("EXTRACMDS", ourconfig, args.target, stepnum)
-    for cmd in cmds:
-        hp.printheader("Step %s/%s: Running command %s" % (stepnum, maxsteps, cmd))
-        bitbakecmd(args.builddir, cmd, report, stepnum, 'd')
+    if jcfg:
+        if cmds:
+            jsonconfig.append({"name" : "cmds", "description" : "Running bitbake environment commands %s" % str(cmds), "phase" : str(stepnum)})
+    elif args.stepname == "cmds":
+        for cmd in cmds:
+            hp.printheader("Step %s/%s: Running command %s" % (stepnum, maxsteps, cmd))
+            bitbakecmd(args.builddir, cmd, report, stepnum, 'd')
+
     cmds = utils.getconfiglist("EXTRAPLAINCMDS", ourconfig, args.target, stepnum)
-    for cmd in cmds:
-        hp.printheader("Step %s/%s: Running 'plain' command %s" % (stepnum, maxsteps, cmd))
-        bitbakecmd(args.builddir, cmd, report, stepnum, 'd', oeenv=False)
-
-    # Remove any layers we added in a reverse order
-    for layer in reversed(layers):
-        bitbakecmd(args.builddir, "bitbake-layers remove-layer %s" % layer, report, stepnum, 'a')
-
-if args.publish_dir:
-    hp.printheader("Running publish artefacts")
-    runcmd([scriptsdir + "/publish-artefacts", args.builddir, args.publish_dir, args.target])
-
-if args.results_dir:
-    hp.printheader("Running results collection")
-    runcmd([scriptsdir + "/collect-results", args.builddir, args.results_dir, args.target])
-
-if args.build_url and utils.getconfigvar("SENDERRORS", ourconfig, args.target, stepnum):
-    hp.printheader("Sending any error reports")
-    runcmd([scriptsdir + "/upload-error-reports", args.builddir, args.build_url])
-
-if args.builddir and os.path.exists(args.builddir):
-    # Clean up our build directory if things were successful and we're not publishing anything
-    # (keep published builds around for longer just in case we need them)
-    if not finalret and not args.publish_dir:
-        runcmd([scriptsdir + "/../janitor/clobberdir", args.builddir])
-    else:
-        # Rename any completed build directory so that other builds can't reference paths within it
+    if jcfg:
+        if cmds:
+            jsonconfig.append({"name" : "plain-cmds", "description" : "Running commands %s" % str(cmds), "phase" : str(stepnum)})
+    elif args.stepname == "plain-cmds":
+        for cmd in cmds:
+            hp.printheader("Step %s/%s: Running 'plain' command %s" % (stepnum, maxsteps, cmd))
+            bitbakecmd(args.builddir, cmd, report, stepnum, 'd', oeenv=False)
+
+    if jcfg:
+        if layers:
+            jsonconfig.append({"name" : "remove-layers", "description" : "Removing layers %s" % str(layers), "phase" : str(stepnum)})
+    elif args.stepname == "remove-layers":
+        # Remove any layers we added in a reverse order
+        for layer in reversed(layers):
+            bitbakecmd(args.builddir, "bitbake-layers remove-layer %s" % layer, report, stepnum, 'a')
+
+    if not jcfg:
+        sys.exit(finalret)
+
+if jcfg:
+    for stepnum in range(1, maxsteps + 1):
+        handle_stepnum(stepnum)
+else:
+    try:
+        stepnum = int(args.phase)
+    except ValueError:
+        stepnum = None
+
+    if stepnum is not None:
+        handle_stepnum(stepnum)
+
+
+if jcfg:
+    jsonconfig.append({"name" : "publish", "description" : "Publishing artefacts", "phase" : "finish"})
+elif args.phase == "finish" and args.stepname == "publish":
+    if args.publish_dir:
+        hp.printheader("Running publish artefacts")
+        runcmd([scriptsdir + "/publish-artefacts", args.builddir, args.publish_dir, args.target])
+    sys.exit(0)
+
+if jcfg:
+    jsonconfig.append({"name" : "collect-results", "description" : "Collecting result files", "phase" : "finish"})
+elif args.phase == "finish" and args.stepname == "collect-results":
+    if args.results_dir:
+        hp.printheader("Running results collection")
+        runcmd([scriptsdir + "/collect-results", args.builddir, args.results_dir, args.target])
+    sys.exit(0)
+
+if jcfg:
+    jsonconfig.append({"name" : "send-errors", "description" : "Sending error reports", "phase" : "finish"})
+elif args.phase == "finish" and args.stepname == "send-errors":
+    if args.build_url and utils.getconfigvar("SENDERRORS", ourconfig, args.target, stepnum):
+        hp.printheader("Sending any error reports")
+        runcmd([scriptsdir + "/upload-error-reports", args.builddir, args.build_url])
+    sys.exit(0)
+
+if jcfg:
+    jsonconfig.append({"name" : "builddir-cleanup", "description" : "Cleaning up build directory", "phase" : "finish"})
+elif args.phase == "finish" and args.stepname == "builddir-cleanup":
+    if args.builddir and os.path.exists(args.builddir):
         runcmd(["mv", args.builddir, args.builddir + "-renamed"])
 
-if finalret:
-    hp.printheader("There were %s failures" % finalret)
-    hp.printheader("Failures in logfiles: %s" % " ".join(errorlogs))
-    sys.exit(1)
+if args.json_outputfile:
+    with open(args.json_outputfile, "w") as f:
+        json.dump(jsonconfig, f, indent=4, sort_keys=True)
 
 sys.exit(0)
 
diff --git a/scripts/utils.py b/scripts/utils.py
index c7eb6c7..bf1d989 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -415,7 +415,7 @@ def enable_buildtools_tarball(btdir):
                 if line in os.environ:
                     del os.environ[line]
 
-def setup_buildtools_tarball(ourconfig, workername, btdir):
+def setup_buildtools_tarball(ourconfig, workername, btdir, checkonly=False):
     bttarball = None
     if "buildtools" in ourconfig and workername:
         btcfg = getconfig("buildtools", ourconfig)
@@ -424,6 +424,9 @@ def setup_buildtools_tarball(ourconfig, workername, btdir):
                 bttarball = btcfg[entry]
                 break
 
+    if checkonly:
+        return bttarball
+
     btenv = None
     if bttarball:
         sha256 = None
-- 
2.25.1

