Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web10.22159.1599744668687226414
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CGALpeho;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id y15so70499wmi.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=zy3AonLLPauy6qpSSIIZjEkEu67eVFNLYhuRx6Ujb6o=;
        b=CGALpehoUnM8QUNBzjbJF+L2oXjUU6qmpceVjYQkCzQy3IvE+cZKLLXN0bunBkdZt6
         OHHa0UN6lfDrNtuSY2FZKbnHtpSu0fXUJkEiGgMDXu9s1vlWBnFmnJl0VIdEE9bIjk2e
         Dh0P+sEfD9uUC8lHtyl7ZJ9Le2A5s3vKEndgI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zy3AonLLPauy6qpSSIIZjEkEu67eVFNLYhuRx6Ujb6o=;
        b=UHJpNGkdO872m9iMK+9SfM9gH21A1Tb3Q/okFAnUgQ6P+PWmMl1JjjRr8JSdlmS/FX
         sMk08Yae/CcPwgQp5EYcFHbMjAv3G9CE9FgpYkCoaFmVGoh08D8vc0CVw9inWC0ZquQf
         0QLGPiXDi8kdbh1yR1vyNAGq8RcMZW5Q7YwldvEE1djRfeeY246fcSKhifyJ4UfkNE5v
         M+x0pjMj31lTJyFp6Y/Bj9U7oCLMzf8zFV6FX3wc+q003hS11/8JGeNNQmeX3uUcJ/MZ
         XJ1oBmve8HK4QRpaZajWzJwnuTGNi6ygcG3aveEjLgKk7wCTdnFQMQDZ5HspFmCttcGO
         AacQ==
X-Gm-Message-State: AOAM533mhYOY/HH2KjXJCkRLeiwso+9avHIonaLySxPYjDb1bcUf42Pj
	hs2sI0fIXh+F1eZz3y39FfS2dC/MRKQW7w==
X-Google-Smtp-Source: ABdhPJwCz7AmdY0x4dD7mEZv3mSZ546SU6/rJ8IWA6zidTIpmXsdIrsM2GUpg1FXhuj9+XMgvwrSiw==
X-Received: by 2002:a1c:a444:: with SMTP id n65mr13149wme.122.1599744666842;
        Thu, 10 Sep 2020 06:31:06 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:06 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 29/40] scripts/run-config: Share buildtools setup code with shared-repo-unpack
Date: Thu, 10 Sep 2020 14:30:24 +0100
Message-Id: <20200910133035.2044355-29-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config         | 49 +------------------------------------
 scripts/shared-repo-unpack |  2 ++
 scripts/utils.py           | 50 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 53 insertions(+), 48 deletions(-)

diff --git a/scripts/run-config b/scripts/run-config
index 54d74dc..814f0cc 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -8,9 +8,6 @@ import os
 import sys
 import subprocess
 import errno
-import fnmatch
-import glob
-import fcntl
 
 import utils
 
@@ -83,51 +80,7 @@ if args.target in ourconfig['overrides']:
 
 hp.printheader("Target task %s has %d steps" % (args.target, maxsteps))
 
-bttarball = None
-if "buildtools" in ourconfig and args.workername:
-    btcfg = utils.getconfig("buildtools", ourconfig)
-    for entry in btcfg:
-        if fnmatch.fnmatch(args.workername, entry):
-            bttarball = btcfg[entry]
-            break
-
-btenv = None
-if bttarball:
-    btdir = args.builddir + "/../buildtools"
-    if not os.path.exists(btdir):
-        btdlpath = utils.getconfig("BASE_SHAREDDIR", ourconfig) + "/buildtools/" + os.path.basename(bttarball)
-        print("Extracting buildtools %s" % bttarball)
-        btlock = btdlpath + ".lock"
-        if not os.path.exists(os.path.dirname(btdlpath)):
-            os.makedirs(os.path.dirname(btdlpath), exist_ok=True)
-        while True:
-            try:
-                with open(btlock, 'a+') as lf:
-                    fileno = lf.fileno()
-                    fcntl.flock(fileno, fcntl.LOCK_EX)
-                    if not os.path.exists(btdlpath):
-                        if bttarball.startswith("/"):
-                            subprocess.check_call(["cp", bttarball, btdlpath])
-                        else:
-                            subprocess.check_call(["wget", "-O", btdlpath, bttarball])
-                        os.chmod(btdlpath, 0o775)
-                break
-            except OSError:
-                # We raced with someone else, try again
-                pass
-        subprocess.check_call(["bash", btdlpath, "-d", btdir, "-y"])
-    btenv = glob.glob(btdir + "/environment-setup*")
-    print("Using buildtools %s" % btenv)
-    # We either parse or wrap all our execution calls, rock and a hard place :(
-    with open(btenv[0], "r") as f:
-        for line in f.readlines():
-            if line.startswith("export "):
-                line = line.strip().split(" ", 1)[1].split("=", 1)
-                if "$PATH" in line[1]:
-                    line[1] = line[1].replace("$PATH", os.environ["PATH"])
-                if line[1].startswith(("'", '"')):
-                    line[1] = line[1][1:-1]
-                os.environ[line[0]] = line[1]
+utils.setup_buildtools_tarball(ourconfig, args.workername, args.builddir + "/../buildtools")
 
 finalret = 0
 
diff --git a/scripts/shared-repo-unpack b/scripts/shared-repo-unpack
index 4a2b1c9..7dc250c 100755
--- a/scripts/shared-repo-unpack
+++ b/scripts/shared-repo-unpack
@@ -61,6 +61,8 @@ for repo in sorted(repos.keys()):
         if args.publish_dir:
             utils.publishrepo(targetsubdir, repo, args.publish_dir)
 
+utils.setup_buildtools_tarball(ourconfig, args.workername, args.abworkdir + "/buildtools")
+
 try:
     subprocess.check_call([scriptsdir + "/layer-config", args.abworkdir, args.target])
 except subprocess.CalledProcessError as e:
diff --git a/scripts/utils.py b/scripts/utils.py
index 5542fe2..d7b9ae7 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -8,6 +8,9 @@ import codecs
 import sys
 import re
 import argparse
+import fnmatch
+import glob
+import fcntl
 
 #
 # Check if config contains all the listed params
@@ -364,3 +367,50 @@ def getcomparisonbranch(ourconfig, reponame, branchname):
     if (reponame + ":" + branchname) in getconfig("BUILD_HISTORY_DIRECTPUSH", ourconfig):
         return branchname, None
     return None, None
+
+def setup_buildtools_tarball(ourconfig, workername, btdir):
+    bttarball = None
+    if "buildtools" in ourconfig and workername:
+        btcfg = getconfig("buildtools", ourconfig)
+        for entry in btcfg:
+            if fnmatch.fnmatch(workername, entry):
+                bttarball = btcfg[entry]
+                break
+
+    btenv = None
+    if bttarball:
+        btdir = os.path.abspath(btdir)
+        if not os.path.exists(btdir):
+            btdlpath = getconfig("BASE_SHAREDDIR", ourconfig) + "/buildtools/" + os.path.basename(bttarball)
+            print("Extracting buildtools %s" % bttarball)
+            btlock = btdlpath + ".lock"
+            if not os.path.exists(os.path.dirname(btdlpath)):
+                os.makedirs(os.path.dirname(btdlpath), exist_ok=True)
+            while True:
+                try:
+                    with open(btlock, 'a+') as lf:
+                        fileno = lf.fileno()
+                        fcntl.flock(fileno, fcntl.LOCK_EX)
+                        if not os.path.exists(btdlpath):
+                            if bttarball.startswith("/"):
+                                subprocess.check_call(["cp", bttarball, btdlpath])
+                            else:
+                                subprocess.check_call(["wget", "-O", btdlpath, bttarball])
+                            os.chmod(btdlpath, 0o775)
+                    break
+                except OSError:
+                    # We raced with someone else, try again
+                    pass
+            subprocess.check_call(["bash", btdlpath, "-d", btdir, "-y"])
+        btenv = glob.glob(btdir + "/environment-setup*")
+        print("Using buildtools %s" % btenv)
+        # We either parse or wrap all our execution calls, rock and a hard place :(
+        with open(btenv[0], "r") as f:
+            for line in f.readlines():
+                if line.startswith("export "):
+                    line = line.strip().split(" ", 1)[1].split("=", 1)
+                    if "$PATH" in line[1]:
+                        line[1] = line[1].replace("$PATH", os.environ["PATH"])
+                    if line[1].startswith(("'", '"')):
+                        line[1] = line[1][1:-1]
+                    os.environ[line[0]] = line[1]
-- 
2.25.1

