Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69857CD37B0
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:26:13 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3999.1778203567873541322
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:26:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=IMIA8it5;
 spf=pass (domain: konsulko.com, ip: 209.85.214.178, mailfrom: tim.orling@konsulko.com)
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2b9ea536877so10409535ad.1
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203567; x=1778808367; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s0gnjesXBkRgihvb4pMTCD07X8E5Q82+b+cm+vmuixY=;
        b=IMIA8it56dkR7/rahBu2gmTlgCKyzGdIzv8gKi/bmyS9dt24XyByM2fV8wd9Pb66cx
         afLVku0gOMScX4rztWjDjQEyGHT13j+bVR6ZcjTGkyXqTS+DsqzmD6mGnE0f7ZMCV2Af
         5gvxe9KKdbSIE37a0qD0e5pGP//JROaJoiUsY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203567; x=1778808367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=s0gnjesXBkRgihvb4pMTCD07X8E5Q82+b+cm+vmuixY=;
        b=HYkOlYc/OOWqUWkkBEfvNBcEwuacrYWCA6SpPCu+w859ZkMq3VjQqSUK9ZMC367wyT
         YqkEwr1f0Xi7Htqyx7VJtIX3ZJQmZsYLb3Rm/iaaFDSRwKvqVQBxHz3XHpcWys8UJ14K
         tdFO1u/3PYbhmBaMFIYdOUCX0NATcXPKCmCt+Y0DygHEyACrdbbFwVK6+7OKZRJn8J7O
         A52D4tr1Evay6jECTq17RmoCzZGVL0EivdOCCo4eZOiiG22uCLdiPUScMMagtdKhxwdb
         /tstTY15AAbVq/N7xLsx9LSTK0iWxaGOxxzPha19FoIfg3r216pPHgEablerSlozY9n5
         xvwA==
X-Forwarded-Encrypted: i=1; AFNElJ/6L5X2v7AGAgiWHWFSm/Z60CuxfoOwoYee+aQvp7INm+ZXMEqbBkgfh4xaZKQXb7Iy+uj7ow==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxxRECUALg/Uyh+1d/F7r7cKcw7YFqA7xky3edIk9g2iQWvfzIj
	NiR145x025EWzH9cRAh79af6hDqtF8+1JQe8aFzDFTKZWH14uWH280yJqM+VQYeFFPNdogEbY2z
	hfvja
X-Gm-Gg: Acq92OG2/9Zz6C9helaq2gYMwnVFGq2egwSGsLG81O5ig3ngqbCHYlWAtZQ5T/bBem7
	+hQqg5UTFwnEyoZL/xafi8v5ThuxHhC4B0FI/HZgQPmfGp41oWCfEc76fmQ+SLESrq/ibK43smT
	2W0HVUJzdAdJomLcZw5wVj4tkuJfSUhJTahCGSFt0d8xNJGVTaDFVQ4bma+kxdx63JDwZarYWsH
	0PmiBBLk8E0yNVRvYcEiztMReSfOnJmnvfMZJp50OM0b7sg7UAkAW0muzmfjJardhdH3p+NI6iq
	kD9pQbCTC8mvJ1aChux+D43sWb9vrZN92cPqXGSTrPLltcU9GZSJjgd+WR4RgXxAAaP9QDZivoc
	y7Jz3aGSnfzaaCbzXSa+N49IHRMu/KdKjOidd/sQXcMdCXjaYZ7CgxpcWRytv/+jv//jp0Ls9vp
	5biCWWOYCt80nAqCgY0JmD738tTewBmblxg+Q7AxvKGQFqJrNC6EBsB9GDu2GPBb0=
X-Received: by 2002:a17:902:fc8d:b0:2b2:ec33:cf15 with SMTP id d9443c01a7336-2babc978328mr49011015ad.7.1778203567256;
        Thu, 07 May 2026 18:26:07 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1e36596sm1009225ad.48.2026.05.07.18.26.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:26:06 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH 05/11] scripts: add vcontainer-tarball setup, integration, and publishing
Date: Thu,  7 May 2026 18:25:34 -0700
Message-ID: <a01030b3358f27759f63c499aae06ea02325883b.1778202125.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1778202125.git.tim.orling@konsulko.com>
References: <cover.1778202125.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66506

From: Tim Orling <tim.orling@konsulko.com>

Introduce the vcontainer-tarball SDK plumbing used by container build
jobs. The vcontainer-tarball is a meta-virtualization-derived SDK
(modelled after buildtools-tarball) that ships the container build
toolchain so worker jobs do not need to rebuild it for every step.

  * scripts/utils.py: add setup_vcontainer_tarball(), and add an
    env_glob keyword argument to setup_tools_tarball() and
    enable_tools_tarball() so the vcontainer-tarball can source its
    specific environment-setup-ci file rather than the universal
    glob.
  * scripts/run-config: source the vcontainer-tarball environment
    for build-targets / cmds / test-targets / plain-cmds steps,
    gated by a new NOVCONTAINER step variable so individual steps
    (such as the dashboard indexing step) can opt out independently
    of NOBUILDTOOLS.
  * scripts/shared-repo-unpack: invoke setup_vcontainer_tarball so
    workers extract the SDK during unpack.
  * scripts/publish-artefacts: publish the vcontainer-tarball
    artefact so downstream test jobs can fetch a stable SDK.

AI-Generated: Claude Cowork Opus 4.7
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 config.json                |  1 +
 scripts/publish-artefacts  |  5 +++++
 scripts/run-config         | 19 +++++++++++++++++++
 scripts/shared-repo-unpack |  1 +
 scripts/utils.py           | 22 ++++++++++++++++++----
 5 files changed, 44 insertions(+), 4 deletions(-)

diff --git a/config.json b/config.json
index 8d42bbe..ab0ad7c 100644
--- a/config.json
+++ b/config.json
@@ -1433,6 +1433,7 @@
             "step3" : {
                 "shortname" : "Populate/update dashboard site",
                 "NOBUILDTOOLS" : true,
+                "NOVCONTAINER" : true,
                 "EXTRACMDS" : ["${SCRIPTSDIR}/run-dashboard-index ${HELPERBUILDDIR}/../"]
             }
         },
diff --git a/scripts/publish-artefacts b/scripts/publish-artefacts
index e56e131..0e820e9 100755
--- a/scripts/publish-artefacts
+++ b/scripts/publish-artefacts
@@ -146,5 +146,10 @@ case "$target" in
         sha256sums $TMPDIR/deploy/images/qemux86-64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemux86-64/*qemux86* $DEST/patchtest
         ;;
+    "vcontainer-tarball")
+        mkdir -p $DEST/vcontainer-tarball
+        sha256sums $TMPDIR/deploy/sdk
+        cp -R --no-dereference --preserve=links $TMPDIR/deploy/sdk/*vcontainer* $DEST/vcontainer-tarball
+        ;;
 esac
 
diff --git a/scripts/run-config b/scripts/run-config
index e896234..0f5a26a 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -153,6 +153,25 @@ else:
     if args.phase == "init" and args.stepname == "buildtools":
         sys.exit(0)
 
+if jcfg:
+    vcontainer = utils.setup_vcontainer_tarball(ourconfig, args.workername, None, checkonly=True)
+    if vcontainer:
+        addentry("vcontainer", "Setup vcontainer tarball", "init")
+else:
+    # If we're executing a specific step, check whether vcontainer is disabled for it
+    vcontainer = True
+    if args.stepname in ("build-targets", "cmds", "test-targets", "plain-cmds"):
+        try:
+            vcontainer = not utils.getconfigvar("NOVCONTAINER", ourconfig, args.target, int(args.phase))
+        except ValueError:
+            # Not an integer step phase
+            pass
+
+    if vcontainer:
+        utils.setup_vcontainer_tarball(ourconfig, args.workername, args.builddir + "/../vcontainer-tarball")
+    if args.phase == "init" and args.stepname == "vcontainer":
+        sys.exit(0)
+
 extratools = utils.getconfigvar("extratools", ourconfig, args.target)
 if jcfg:
     if extratools:
diff --git a/scripts/shared-repo-unpack b/scripts/shared-repo-unpack
index 797dec6..869b214 100755
--- a/scripts/shared-repo-unpack
+++ b/scripts/shared-repo-unpack
@@ -77,6 +77,7 @@ for repo in sorted(repos.keys()):
     utils.flush()
 
 utils.setup_buildtools_tarball(ourconfig, args.workername, args.abworkdir + "/buildtools")
+utils.setup_vcontainer_tarball(ourconfig, args.workername, args.abworkdir + "/vcontainer-tarball")
 
 if "bitbake" not in repos:
     sys.exit(0)
diff --git a/scripts/utils.py b/scripts/utils.py
index 112ebc2..b020a7b 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -456,8 +456,8 @@ def sha256_file(filename):
             pass
     return method.hexdigest()
 
-def enable_tools_tarball(btdir, name):
-    btenv = glob.glob(btdir + "/environment-setup*")
+def enable_tools_tarball(btdir, name, env_glob="/environment-setup*"):
+    btenv = glob.glob(btdir + env_glob)
     print("Using %s %s" % (name, btenv))
     # We either parse or wrap all our execution calls, rock and a hard place :(
     with open(btenv[0], "r") as f:
@@ -474,6 +474,20 @@ def enable_tools_tarball(btdir, name):
                 if line in os.environ:
                     del os.environ[line]
 
+def setup_vcontainer_tarball(ourconfig, workername, vcdir, checkonly=False):
+    vctarball = None
+    if "vcontainer" in ourconfig and workername:
+        vccfg = getconfig("vcontainer", ourconfig)
+        for entry in vccfg:
+            if fnmatch.fnmatch(workername, entry):
+                vctarball = vccfg[entry]
+                break
+
+    if checkonly:
+        return vctarball
+
+    setup_tools_tarball(ourconfig, vcdir, vctarball, name="vcontainer-tarball", env_glob="/environment-setup-ci")
+
 def setup_buildtools_tarball(ourconfig, workername, btdir, checkonly=False):
     bttarball = None
     if "buildtools" in ourconfig and workername:
@@ -488,7 +502,7 @@ def setup_buildtools_tarball(ourconfig, workername, btdir, checkonly=False):
 
     setup_tools_tarball(ourconfig, btdir, bttarball)
 
-def setup_tools_tarball(ourconfig, btdir, bttarball, name="buildtools"):
+def setup_tools_tarball(ourconfig, btdir, bttarball, name="buildtools", env_glob="/environment-setup*"):
 
     btenv = None
     if bttarball:
@@ -548,7 +562,7 @@ def setup_tools_tarball(ourconfig, btdir, bttarball, name="buildtools"):
         if not os.path.exists(btdir):
             print("Extracting %s %s" % (name, bttarball))
             subprocess.check_call(["bash", btdlpath, "-d", btdir, "-y"])
-        enable_tools_tarball(btdir, name)
+        enable_tools_tarball(btdir, name, env_glob)
 
 def get_string_from_version(version, milestone=None, rc=None):
     """ Point releases finishing by 0 (e.g 4.0.0, 4.1.0) do no exists,
-- 
2.43.0


