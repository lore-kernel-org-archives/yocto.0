Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web12.20512.1599740781545811965
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=g8jMP3lA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id z9so5612333wmk.1
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=zy3AonLLPauy6qpSSIIZjEkEu67eVFNLYhuRx6Ujb6o=;
        b=g8jMP3lAv+Z2WV+XyVVcwutVmtJU1R5HfDpcfop0tlXjA2CV+8rX74uuJiRnDYoVFO
         K8AHpc9n3jpEISXWPaL56K7gI/v6t0damVG61w3GskIbxSY9wUlkwPBCfUlK/vQpWTJg
         6HoZGwNTpagqWtqkayofYaryXsK6uFuOgc88I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zy3AonLLPauy6qpSSIIZjEkEu67eVFNLYhuRx6Ujb6o=;
        b=gHmEzJpzQcpQDzZOzM83fYKXSnxcMsCKAc/pMANZE+Uj7r7UCdVtKYyfxqQWMXsr7b
         yWS2DA5XLD7bX+JFxXMi76w+3d7GsGzzxWUJCKq8AXIx6N56eBYeBG32HZvBpCoOyDpf
         IWrScEiLGbSjhvLncAAA+sP0RXjs894EbFigdYbShE8j+GG0pob8hUUtdRbVz6wWMxJM
         BAj29YcSKXw5EmAaRWX8rLswT7+/plJES5eRa5BWcEZ2UYMAlehwfyhLnmIq0ic2jhuU
         xUDfeP6XHTPTZbSMEOHhlDnitc7p6s8H1U2HDtGIcPFqrZCUSrSbvAvic43UAkA4zhpm
         RtrQ==
X-Gm-Message-State: AOAM531ieps4LzbxCTM0sz3YixZZDsy/AEpJlaCexL35/PywrXNAwJ9r
	eSUxthbL2Vpm5nCFpw74RSCMTRjOycjBUg==
X-Google-Smtp-Source: ABdhPJwROGAmEZg2B/Y6h5FfSk2TzU6rhTBsxWKrmWtR7StxdAFVbiMbXrhNOZyWM0hqgxBc/TnJzg==
X-Received: by 2002:a05:600c:2283:: with SMTP id 3mr7901995wmf.37.1599740779695;
        Thu, 10 Sep 2020 05:26:19 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:19 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 27/41] scripts/run-config: Share buildtools setup code with shared-repo-unpack
Date: Thu, 10 Sep 2020 13:25:39 +0100
Message-Id: <20200910122553.2040430-27-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
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

