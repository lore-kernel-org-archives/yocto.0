Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web11.22169.1599744656513051465
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=cOqOjbgK;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id m6so6758536wrn.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=z3wOY1pg8yPBV1nVKFSzcyCiyHfZpXL5axp7vQ+4kB4=;
        b=cOqOjbgKoaosQNDkv581Y2dVXb2DGjMGI0vywRXi0LLlNIOsu1m9cBPt7Fc5kRsl67
         tlHjRSZFeEwHWifv+FhFHeZiCUheVQQiMRmJQl5s/CyLgU/luriEbOEKnE6dpr8YAEDa
         sB2e9/vzPWwhjga//WMjQKgrkBZURS0aNW4qg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z3wOY1pg8yPBV1nVKFSzcyCiyHfZpXL5axp7vQ+4kB4=;
        b=k9gWV6W6tWtJm/a8SGXKIr9WJ/PM0SBwzIZ+liL5FvtYqKNKK4pVGVANmF82swf4/O
         vlankwx1MtXbQxdJDW+PwG4XHiy96Hl4AoFjBjBKY8tZPmZxcFpMGRUpL3OVNGTwdZiC
         VUTea9chNuG/LkshMOIvI9/zZ2WINFeyZg7hWcPvt2X70aYHq0RqyJjua63KBh4S594s
         bujnO0tVRRoQepxZL0mx9pRYFWYr1T5bziPc+xm4TonQLxZ7paz3aGJZvFNdvGLbqP/t
         a0FkFN51pBiyO0sPFSa2jZaJb1KpSSIuBU9L2/Yt1nEMvab+UT3r/zHwCDO6OF/nLST2
         yI/w==
X-Gm-Message-State: AOAM531zO1GiwQ6HryFV9+CegTs321ZYk88zMwPYJCfY45zTbplwBikx
	w1VS9NRaPgXuUVtBfd6yo07rthAC6RdHMA==
X-Google-Smtp-Source: ABdhPJxPMA1uyjPyRpDQ9JSueJe0FHbzVcky1xhdKamiB7XIzwotwTmAioYDg7ZWcE9MRAjHOmg1rg==
X-Received: by 2002:a5d:5042:: with SMTP id h2mr9101549wrt.409.1599744654474;
        Thu, 10 Sep 2020 06:30:54 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:53 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 18/40] run-config: Add support for wrapping builds in a buildtools tarball
Date: Thu, 10 Sep 2020 14:30:13 +0100
Message-Id: <20200910133035.2044355-18-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/scripts/run-config b/scripts/run-config
index b7540a5..e946e90 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -8,6 +8,8 @@ import os
 import sys
 import subprocess
 import errno
+import fnmatch
+import glob
 
 import utils
 
@@ -80,6 +82,34 @@ if args.target in ourconfig['overrides']:
 
 hp.printheader("Target task %s has %d steps" % (args.target, maxsteps))
 
+bttarball = None
+if "buildtools" in ourconfig and args.workername:
+    btcfg = utils.getconfig("buildtools", ourconfig)
+    for entry in btcfg:
+        if fnmatch.fnmatch(args.workername, entry):
+            bttarball = btcfg[entry]
+            break
+
+btenv = None
+if bttarball:
+    btdir = args.builddir + "../buildtools"
+    if not os.path.exists(btdir):
+        btdlpath = utils.getconfig("BASE_SHAREDDIR", ourconfig) + "/buildtools/" + os.path.basename(bttarball)
+        if not os.path.exists(btdlpath):
+            os.makedirs(os.path.dirname(btdlpath), exist_ok=True)
+            subprocess.check_call(["wget", "-O", btdlpath, bttarball])
+            os.chmod(btdlpath, 0o775)
+        subprocess.check_call(["bash", btdlpath, "-d", btdir, "-y"])
+    btenv = glob.glob(btdir + "/environment-setup*")
+    # We either parse or wrap all our execution calls, rock and a hard place :(
+    with open(btenv[0], "r") as f:
+        for line in f.readlines():
+            if line.startswith("export "):
+                line = line.split(" ", 1)[1].split("=", 1)
+                if "$PATH" in line[1]:
+                    line[1] = line[1].replace("$PATH", os.environ["PATH"])
+                os.environ[line[0]] = line[1]
+
 finalret = 0
 
 def flush():
-- 
2.25.1

