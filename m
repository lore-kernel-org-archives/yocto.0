Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.22158.1599744639292868109
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=S7u8x4J9;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id t10so6740455wrv.1
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ju2I3t3MlVPMP9gecxbAmzgw29WEd7C/sF/ngQCALAA=;
        b=S7u8x4J9GETapctfb2TiIAVPUsUG/mb54UrWbzB2V9oZvWWRH4rJGAMYqTDKBgVMX/
         hu9EXvTDPNj2Zs9IF9qP0y4X2cXMQOziEjbUgq4kDbG53rEVR4e8EKhhTl+zXObWM9j8
         mtDGMtXpr7sKsacCpjt6mPWh6VIUA+dftwefE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ju2I3t3MlVPMP9gecxbAmzgw29WEd7C/sF/ngQCALAA=;
        b=DSmlUu9zhpI9V10TAsmSlhatjSfssLK7DRbpDbA6tX8Ybe1q0VP8ECUkD9OsAxUB8I
         LUiaC83bxrl0xp+u9eHwePAL9KRMtxCFDbPDEueA3oCl8bzLqEmramgKElJz0gJKJIla
         cw4kwq32OJA1cHsAoqjca2hABjnUneRsQDZhJCxXn1CFJ30eSzO8UU1+ewEBGOI3i7sv
         9zoZYnd3JznjaC8+c+kuhb4aDlE8rM1iVTN2pybrW6K54i4Hur/myEEDzCaEVfuCPiXn
         0yHC9xJxXZbGvOYttof73cu+gmnbpb68rlG90NhJc3BeCyFJTWMUim+VcZ4TTTr4Utit
         9E8w==
X-Gm-Message-State: AOAM530LYIcxMCWzb20FnMFduQFEuUtfTkytFvVjM9alyskoCny+WCF/
	Gba+WsdilbuEA2OLBBpQq94VJEEo2L/2zw==
X-Google-Smtp-Source: ABdhPJxXTxziF1c5e479O/rAcGpS4v6BBH0FP4jcfNVONdV2niYAdoFBsPeJpV5Xwt/oyN9KkyZ2kg==
X-Received: by 2002:a5d:4682:: with SMTP id u2mr9867984wrq.254.1599744636976;
        Thu, 10 Sep 2020 06:30:36 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:36 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 01/40] config.json/utils: Allow buildhistory to be configurable and disable for oe-selftest in qemu-arch
Date: Thu, 10 Sep 2020 14:29:56 +0100
Message-Id: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json          | 4 +++-
 scripts/run-config   | 2 +-
 scripts/setup-config | 2 +-
 scripts/utils.py     | 6 +++---
 4 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/config.json b/config.json
index 7515cd9..3a0d195 100644
--- a/config.json
+++ b/config.json
@@ -3,7 +3,6 @@
     "BASE_SHAREDDIR" : "/srv/autobuilder/autobuilder.yoctoproject.org",
     "BASE_PUBLISHDIR" : "/srv/autobuilder/downloads.yoctoproject.org",
 
-    "build-history-targets" : ["qemuarm64", "qemuarm", "qemuarm-alt", "qemumips64", "qemumips", "qemumips-alt", "qemuppc", "qemuppc-alt", "qemux86-64", "qemux86-64-alt", "qemux86", "qemux86-alt"],
     "BUILD_HISTORY_DIR" : "buildhistory",
     "BUILD_HISTORY_REPO" : "ssh://git@push.yoctoproject.org/poky-buildhistory",
     "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:master"],
@@ -31,6 +30,7 @@
         "SSTATEDIR_RELEASE" : ["SSTATE_MIRRORS += 'file://.* file://${BASE_SHAREDDIR}/pub/sstate/PATH'", "SSTATE_DIR ?= '${BASE_PUBLISHDIR}/sstate/@RELEASENUM@'"],
         "SDKEXTRAS" : ["SSTATE_MIRRORS += '\\", "file://.* http://sstate.yoctoproject.org/dev/@RELEASENUM@PATH;downloadfilename=PATH'"],
         "BUILDINFO" : false,
+        "BUILDHISTORY" : false,
         "BUILDINFOVARS" : ["INHERIT += 'image-buildinfo'", "IMAGE_BUILDINFO_VARS_append = ' IMAGE_BASENAME IMAGE_NAME'"],
         "WRITECONFIG" : true,
         "SENDERRORS" : true,
@@ -56,6 +56,7 @@
     "templates" : {
         "arch-qemu" : {
             "BUILDINFO" : true,
+            "BUILDHISTORY" : true,
             "step1" : {
                 "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk"
@@ -69,6 +70,7 @@
         "lsb-qemu" : {
             "DISTRO" : "poky-lsb",
             "BUILDINFO" : true,
+            "BUILDHISTORY" : true,
             "step1" : {
                 "BBTARGETS" : "core-image-lsb core-image-lsb-dev core-image-lsb-sdk",
                 "SANITYTARGETS" : "core-image-lsb:do_testimage core-image-lsb-sdk:do_testimage"
diff --git a/scripts/run-config b/scripts/run-config
index f20707e..e56050f 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -151,7 +151,7 @@ def runcmd(cmd, *args, **kwargs):
     except subprocess.CalledProcessError:
         print("ERROR: Command %s failed" % cmd)
 
-bh_path, remoterepo, remotebranch, baseremotebranch = utils.getbuildhistoryconfig(ourconfig, args.builddir, args.target, args.reponame, args.branchname)
+bh_path, remoterepo, remotebranch, baseremotebranch = utils.getbuildhistoryconfig(ourconfig, args.builddir, args.target, args.reponame, args.branchname, stepnum)
 if bh_path:
     runcmd([os.path.join(scriptsdir, "buildhistory-init"), bh_path, remoterepo, remotebranch, baseremotebranch])
 
diff --git a/scripts/setup-config b/scripts/setup-config
index 10383eb..3c8862a 100755
--- a/scripts/setup-config
+++ b/scripts/setup-config
@@ -92,7 +92,7 @@ extravars = utils.getconfiglistfilter("extravars", ourconfig, args.target, stepn
 if extravars:
     variables.extend(extravars)
 
-bh_path, remoterepo, remotebranch, baseremotebranch = utils.getbuildhistoryconfig(ourconfig, args.builddir, args.target, args.reponame, args.branchname)
+bh_path, remoterepo, remotebranch, baseremotebranch = utils.getbuildhistoryconfig(ourconfig, args.builddir, args.target, args.reponame, args.branchname, stepnum)
 if bh_path:
     variables.append('INHERIT += "buildhistory"')
     variables.append('BUILDHISTORY_DIR = "%s"' % bh_path)
diff --git a/scripts/utils.py b/scripts/utils.py
index e1f5628..45d3f93 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -194,9 +194,9 @@ def loadconfig():
 #
 # Common function to determine if buildhistory is enabled and what the parameters are
 #
-def getbuildhistoryconfig(ourconfig, builddir, target, reponame, branchname):
-    if contains(["BUILD_HISTORY_DIR", "build-history-targets", "BUILD_HISTORY_REPO"], ourconfig):
-        if target in getconfig("build-history-targets", ourconfig):
+def getbuildhistoryconfig(ourconfig, builddir, target, reponame, branchname, stepnum):
+    if contains(["BUILD_HISTORY_DIR", "BUILD_HISTORY_REPO"], ourconfig):
+        if utils.getconfigvar("BUILDHISTORY", ourconfig, target, stepnum):
             base = None
             if "/" in reponame:
                 reponame = reponame.rsplit("/", 1)[1]
-- 
2.25.1

