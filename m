Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web09.1466.1616632821318739567
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=hi21Y4H8;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.172, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f172.google.com with SMTP id f10so84074pgl.9
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=XTT4wPdLmNq2khuLBaxLzvNPqQukJWdTRwWjB5ndjUM=;
        b=hi21Y4H8X9rHUrcD3gdhGSsWO5p9y8cM85uA34w3Uc1Ux77dUT+MVudYz3uA8GdCSa
         xcwpOB1MU7LrOwQuW44hyhGR/SIeAc1tjbumS+oOCuTF2pk72wap87+5Dztu2xxDPyPl
         +k5iq3OrYQ2c8QNi+SW3xNFKVFwTBf6l+6QKKC/b2lLdzknXqZDJuQQXbY+52cwRGc9R
         5vp/VPzdWEl0ouqqioOfCR1cdnqeh9Cwhrs4rXBpWFNEobMXI9GO6hAmZsGmwfAbylLX
         +2a7Naoj9bqagLfd9lElVaFBoI0GlqYkPvkHu+T1bY0BCdzF7iSRXwDJjM0/RenVxwYo
         KgOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XTT4wPdLmNq2khuLBaxLzvNPqQukJWdTRwWjB5ndjUM=;
        b=rCUcR6xi5ilOWDcetMeWCAasf5i1MHsUKaK/twVXgWHt4KeyOXhQJoPsTTJ2bMakV6
         OtsScil0LFUpn6zHmp/RWssLgUkhQez/hu/b6oY3oayfG+OTA8Jc6jR+6gPJa9mgI131
         mzd3lo6v5q8bG1wnsMo7cm+zgV90/3sAHgMB1DVMhVVMtwJ/qrqiZYtNkVdUMPtBTk0R
         JGzoh8TUMY3M/IyE4xwSuVyd0W7KPeQ+Sojo0zEYDuQr2XjH4O5vBcCbxJROdi8sqYYn
         mzRY+XohNOEdDbmPu78OZP+ZZTd7JUG1Th0XCmFSIyNX/A3K9n+CGdUK1+RRVHMstRYD
         g/zA==
X-Gm-Message-State: AOAM533V12v21lGgXMKY2P6leWVlpqi0ZC0TW1TVyAP/CYzAxzR1Cdzr
	DLj+gaQ5SlQgHEz7OzX6w1t4/Ssybw9aOAWQ
X-Google-Smtp-Source: ABdhPJzRXu2sus2KGI6KwHXEI+QK8icSj/G322AH2tKPjQsZ8HAu6qXe5Hv560ln7bOmL7Yo6AazIQ==
X-Received: by 2002:a62:1913:0:b029:20f:eadf:28c1 with SMTP id 19-20020a6219130000b029020feadf28c1mr5485150pfz.58.1616632820284;
        Wed, 24 Mar 2021 17:40:20 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:19 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 12/23] scripts/run-config: Improve logfile naming
Date: Wed, 24 Mar 2021 14:39:21 -1000
Message-Id: <0f8fe3adac44ef539c05ea503c9504a26b421984.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 4a4c888f6618c3a7273c6dfe30b640e75e2b0de8)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/run-config | 28 ++++++++++++----------------
 1 file changed, 12 insertions(+), 16 deletions(-)

diff --git a/scripts/run-config b/scripts/run-config
index 116dd49..25a4296 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -131,11 +131,8 @@ def flush():
     sys.stdout.flush()
     sys.stderr.flush()
 
-lognum = 0
-def logname(path, stepnum, logsuffix):
-    global lognum
-    lognum += 1
-    return path + "/command.log.%s%s" % (stepnum, logsuffix)
+def logname(path, stepnum, stepname):
+    return path + "/command-%s-%s.log" % (stepnum, stepname)
 
 utils.mkdir(args.builddir)
 
@@ -146,10 +143,10 @@ utils.mkdir(errordir)
 
 errorlogs = set()
 
-def bitbakecmd(builddir, cmd, report, stepnum, logsuffix, oeenv=True):
+def bitbakecmd(builddir, cmd, report, stepnum, stepname, oeenv=True):
     global finalret
     flush()
-    log = logname(builddir, stepnum, logsuffix)
+    log = logname(builddir, stepnum, stepname)
     errordir = utils.errorreportdir(builddir)
     try:
         numreports = len(os.listdir(errordir))
@@ -176,10 +173,9 @@ def bitbakecmd(builddir, cmd, report, stepnum, logsuffix, oeenv=True):
 
     with subprocess.Popen(cmd, shell=True, cwd=builddir + "/..", stdout=subprocess.PIPE, stderr=subprocess.STDOUT, bufsize=1) as p, open(log, 'ab') as f:
         for line in p.stdout:
-            if not args.quietlogging:
-                sys.stdout.buffer.write(line)
-                sys.stdout.flush()
+            sys.stdout.buffer.write(line)
             f.write(line)
+            sys.stdout.flush()
             f.flush()
         ret = p.wait()
     if ret:
@@ -221,7 +217,7 @@ def handle_stepnum(stepnum):
             jsonconfig.append({"name" : "add-layers", "description" : "Adding layers %s" % str(layers), "phase" : str(stepnum)})
     elif args.stepname == "add-layers":
         for layer in layers:
-            bitbakecmd(args.builddir, "bitbake-layers add-layer %s" % layer, report, stepnum, 'a')
+            bitbakecmd(args.builddir, "bitbake-layers add-layer %s" % layer, report, stepnum, args.stepname)
 
     flush()
 
@@ -239,7 +235,7 @@ def handle_stepnum(stepnum):
             jsonconfig.append({"name" : "build-targets", "description" : "Building targets %s" % str(targets), "phase" : str(stepnum)})
         elif args.stepname == "build-targets":
             hp.printheader("Step %s/%s: Running bitbake %s" % (stepnum, maxsteps, targets))
-            bitbakecmd(args.builddir, "bitbake %s -k" % targets, report, stepnum, 'b')
+            bitbakecmd(args.builddir, "bitbake %s -k" % targets, report, stepnum, args.stepname)
 
     # Execute the sanity targets for this configuration
     sanitytargets = utils.getconfigvar("SANITYTARGETS", ourconfig, args.target, stepnum)
@@ -248,7 +244,7 @@ def handle_stepnum(stepnum):
             jsonconfig.append({"name" : "test-targets", "description" : "Running OEQA test targets %s" % str(sanitytargets), "phase" : str(stepnum)})
         elif args.stepname == "test-targets":
             hp.printheader("Step %s/%s: Running bitbake %s" % (stepnum, maxsteps, sanitytargets))
-            bitbakecmd(args.builddir, "%s/checkvnc; DISPLAY=:1 bitbake %s -k" % (scriptsdir, sanitytargets), report, stepnum, 'c')
+            bitbakecmd(args.builddir, "%s/checkvnc; DISPLAY=:1 bitbake %s -k" % (scriptsdir, sanitytargets), report, stepnum, args.stepname)
 
     # Run any extra commands specified
     cmds = utils.getconfiglist("EXTRACMDS", ourconfig, args.target, stepnum)
@@ -258,7 +254,7 @@ def handle_stepnum(stepnum):
     elif args.stepname == "cmds":
         for cmd in cmds:
             hp.printheader("Step %s/%s: Running command %s" % (stepnum, maxsteps, cmd))
-            bitbakecmd(args.builddir, cmd, report, stepnum, 'd')
+            bitbakecmd(args.builddir, cmd, report, stepnum, args.stepname)
 
     cmds = utils.getconfiglist("EXTRAPLAINCMDS", ourconfig, args.target, stepnum)
     if jcfg:
@@ -267,7 +263,7 @@ def handle_stepnum(stepnum):
     elif args.stepname == "plain-cmds":
         for cmd in cmds:
             hp.printheader("Step %s/%s: Running 'plain' command %s" % (stepnum, maxsteps, cmd))
-            bitbakecmd(args.builddir, cmd, report, stepnum, 'd', oeenv=False)
+            bitbakecmd(args.builddir, cmd, report, stepnum, args.stepname, oeenv=False)
 
     if jcfg:
         if layers:
@@ -275,7 +271,7 @@ def handle_stepnum(stepnum):
     elif args.stepname == "remove-layers":
         # Remove any layers we added in a reverse order
         for layer in reversed(layers):
-            bitbakecmd(args.builddir, "bitbake-layers remove-layer %s" % layer, report, stepnum, 'a')
+            bitbakecmd(args.builddir, "bitbake-layers remove-layer %s" % layer, report, stepnum, args.stepname)
 
     if not jcfg:
         sys.exit(finalret)
-- 
2.25.1

