Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.20813.1599740765728392859
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UVVBg93/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id s13so5446104wmh.4
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=z3wOY1pg8yPBV1nVKFSzcyCiyHfZpXL5axp7vQ+4kB4=;
        b=UVVBg93/9n9mZBG+QDZgQariRVe5cOWWxefotaaw8rBTPzQHrDvNBuim+ENj+nzRjS
         jIDi86kQAkWq3i2CNpLvg/57LJnJzx+7c4h7L+VZQGcfKMA2QaxezE0+8dyjUDolsb8a
         bLowVRwlsDqYt9gBjdAje5Uz3/saoT8m7jzPU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z3wOY1pg8yPBV1nVKFSzcyCiyHfZpXL5axp7vQ+4kB4=;
        b=m9oQCzNfVywlFCqydfy0B0IRmDe61APf0Z5bPrrZqtls1CSo9oj01lqBqGud40kpHj
         nNXYq9K8ox9+Qlmy9A5B208n3jAVZv9zyIaX1T1iXABeW1Nyh52XQWgp4jGAdQXkHYm9
         Q0n7RyD3ExMHwV1aD+RaMkmOMWXCwljKgtwe/YhMo0Qhk4Fvze9jD/Pa//LQYeTGju82
         WvamKQnqT/T7PSnfClvnnEk90kozMM514drQ5abhmsjZg2aDcEnw53eOzmV2mzgzpI8k
         cLmqXkT7F1zC66H14l4wIImIVEjfu0LaudkKMu+K/jVTgWFZMh+eaPjEJCqIMvyAvImI
         F3Tg==
X-Gm-Message-State: AOAM533MYVqRYGW4yszl50VKGVJyZxKZeieNaBPfmmFstT3xvk39ozmz
	gR1GTlUgttyEPyw0e92AbTlf9K/0ouWxOQ==
X-Google-Smtp-Source: ABdhPJyvsbAJaCwMx1AP1bNdgkKklvO/+iPiO9sq6+xi8rFrnxg/ilaCeFKpsTCpcbEKrE9EmGUcNA==
X-Received: by 2002:a7b:c84a:: with SMTP id c10mr8251212wml.139.1599740764004;
        Thu, 10 Sep 2020 05:26:04 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:03 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 12/41] run-config: Add support for wrapping builds in a buildtools tarball
Date: Thu, 10 Sep 2020 13:25:24 +0100
Message-Id: <20200910122553.2040430-12-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
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

