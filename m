Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web11.1552.1616688202687842893
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 09:03:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=C0RpJYF+;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.180, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f180.google.com with SMTP id j25so2533312pfe.2
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 09:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=XTT4wPdLmNq2khuLBaxLzvNPqQukJWdTRwWjB5ndjUM=;
        b=C0RpJYF+JKGy6wvD2dEglqLFyWFG45tH7YgLCBxWa1GT4eSRvecZlIKI24m4olMchp
         tlIPoX7rmHldTL9KZWBbCQ5Lb48BrLvUKX9e6xDs3i48vlRjZJrgrs1LTcdtRcrVvoo4
         6RPLrDOAxn0zWYyk8YfvtDuzv4OAmeyCTt0lHwBhmYozpQvgAkIKXRjpsqIU2O/E6w51
         bYdh/4oWE9PUlIuYHEKJcUOjZue4gy5qmWF/A+y4nyeyrWKDmW0aQiRqnfqBxFwAhGVW
         C2exPmvaXPwiARuPGXxFpGfVrHMQZoBNFEGNI/1M79AvJdPMZtUkfqktkf97j6SqOq+b
         j0Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XTT4wPdLmNq2khuLBaxLzvNPqQukJWdTRwWjB5ndjUM=;
        b=WocV12+dwWRPoN5b3PiUzdoXgnn7qhP4A+/Wnzp9lOCTySG4s/DOKprBd4MvdLqO/B
         vcMb02ZwE7m8nD0waoDR8w+TCDygUtKi5AOMXMJA/LwcXjEX871j8AJk9hIhsqGFi57I
         rcm4aNuDkfhsQtgUeSMNW5SepIN0gwhxTo8KLrX3RoJQ/dPHNmE5qSVcJOlfqEckunO4
         KjjHofIosoweQRkf81gJBvAgbZOkQyDRfICBCan3iopeBev9CWBfh2Arm6hGTV8rI7ef
         6BK3aqJeXxrpIPBWT3aGaB6FaKyZxeipmqxDuuze1pZ8JkGrtB+blrVUGlJIL0Z9wyF2
         nmCg==
X-Gm-Message-State: AOAM530TmpW0UW7RS9xzP+MAei/uB+zOXnYVMsp7K8hGmGz3Y2qcMRXb
	6xqNl65xrZ9E9csUvDUmc8tqYEtWDx9WMeEX
X-Google-Smtp-Source: ABdhPJzYoJK/w90wu6CNw8C8t++Dx9TDlcgduAGuiOJWMWmMAIDZQwRP/JTOVFew6rD9oYmm9LEzDg==
X-Received: by 2002:a63:485b:: with SMTP id x27mr2263719pgk.0.1616688201747;
        Thu, 25 Mar 2021 09:03:21 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id t18sm6290054pfh.57.2021.03.25.09.03.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:03:21 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell V2 05/15] scripts/run-config: Improve logfile naming
Date: Thu, 25 Mar 2021 06:02:11 -1000
Message-Id: <b21aabbf2ab5fde1b5d89ace0ab1dc485c4a6088.1616687842.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616687842.git.steve@sakoman.com>
References: <cover.1616687842.git.steve@sakoman.com>
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

