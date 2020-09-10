Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web12.21891.1599744641216028388
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=S3htQkqq;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id j2so6721314wrx.7
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Puk9EpLeei/EK4xAngU1Tx29GDOBZ/SyleQuEQcLXTw=;
        b=S3htQkqqYtL9LahIQwL+tsVZaEr2dN4LdRwpmMgn6iqxNtuqCCbgoprYw9/aBr/dZo
         Eyn11n+6Pw/kFtBBc7CURoLbmgO61+9iAVnsx35238Hfiy7oYRisnDLh7y5abMPsEtZQ
         QUDiUzUKC52EWmZAEabV716StnTi0iaiy97rM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Puk9EpLeei/EK4xAngU1Tx29GDOBZ/SyleQuEQcLXTw=;
        b=BsIiHczkDMYLjCQS77b5AzA/huu8Zm48jpqBghpw78VJRUB9nQnI7ugv/PvC+AyMuJ
         /PjmR0J4fjgyPYo/y7LKsGyRBDfFh0wbD0edEdUY/d9pG160X8hHRYFAzxJml2tA695Q
         KMGZLHr4LCdjI8M+ypzfsuWQDr/PW48ZIFxQmvmfQqRrfJuwCnOwDcWQRpFMXl7IG198
         ztDmJjFYkbtyFMSM6JC8WfSkLbedMEAbwPdbJXMF8uIeQgm5m99AJq9+PcLM2obeQFpO
         Y7yWOpdEzjt2YJtUAVkFRwiIjpdwqozm9+6xlZdL8xwx7QgG2Z1Qeo1hP+ZvVkSZb2V1
         bM4w==
X-Gm-Message-State: AOAM530JaVbZzzZsHR8yfcTPm139+3g/72xqhRHrbX8Q+tOhhkNXgKb2
	Tojfji66EUAu079y7qaeUT0alRuCwwMcNQ==
X-Google-Smtp-Source: ABdhPJwMAUrG2rOhqQoaITp+9vgFqlnNwqSlUWrhY28Wv7hLJz6zGaq0/1FVMqr8iWIIy3pnJZbOBg==
X-Received: by 2002:adf:e907:: with SMTP id f7mr8904664wrm.169.1599744639384;
        Thu, 10 Sep 2020 06:30:39 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:38 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 04/40] send-qa-email/utils: Improve new branch regression script handling
Date: Thu, 10 Sep 2020 14:29:59 +0100
Message-Id: <20200910133035.2044355-4-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are several issues:

* New branches don't currently have git regression history
* The regression tool errors if there isn't anything to compare against

To fix this, create a branch with history and only generate a regression
report if there are commits to compare against.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/build-perf-test-wrapper |  2 +-
 scripts/send-qa-email           | 24 +++++++++++++++++++-----
 scripts/utils.py                |  8 +++++---
 3 files changed, 25 insertions(+), 9 deletions(-)

diff --git a/scripts/build-perf-test-wrapper b/scripts/build-perf-test-wrapper
index ab66a20..e7b24ad 100755
--- a/scripts/build-perf-test-wrapper
+++ b/scripts/build-perf-test-wrapper
@@ -182,7 +182,7 @@ if git_repo:
 
     extraopts = " --branch %s --commit %s" % (branch, gitrevfull)
     if args.repo and args.branch:
-        comparebranch = utils.getcomparisonbranch(ourconfig, args.repo, args.branch)
+        basebranch, comparebranch = utils.getcomparisonbranch(ourconfig, args.repo, args.branch)
         if comparebranch:
             extraopts = extraopts + " --branch2 %s" % (comparebranch)
 
diff --git a/scripts/send-qa-email b/scripts/send-qa-email
index ec89845..38c951b 100755
--- a/scripts/send-qa-email
+++ b/scripts/send-qa-email
@@ -48,8 +48,10 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
     branch = repos['poky']['branch']
     repo = repos['poky']['url']
 
-    extraopts = " --branch %s --commit %s" % (branch, revision)
-    comparebranch = utils.getcomparisonbranch(ourconfig, repo, branch)
+    extraopts = None
+    basebranch, comparebranch = utils.getcomparisonbranch(ourconfig, repo, branch)
+    if basebranch:
+        extraopts = " --branch %s --commit %s" % (branch, revision)
     if comparebranch:
         extraopts = extraopts + " --branch2 %s" % (comparebranch)
 
@@ -60,6 +62,17 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
     tempdir = tempfile.mkdtemp(prefix='sendqaemail.')
     try:
         subprocess.check_call(["git", "clone", "git@git.yoctoproject.org:yocto-testresults", tempdir])
+
+        # If the base comparision branch isn't present regression comparision won't work
+        # at least until we can tell the tool to ignore internal branch information
+        if basebranch:
+            try:
+                subprocess.check_call(["git", "rev-parse", "--verify", basebranch], cwd=tempdir)
+            except subprocess.CalledProcessError:
+                # Doesn't exist so base it off master
+                subprocess.check_call(["git", "branch", "master", basebranch], cwd=tempdir)
+                extraopts = None
+
         subprocess.check_call([resulttool, "store", args.results_dir, tempdir])
         if basebranch:
             subprocess.check_call(["git", "push", "--all", "--force"], cwd=tempdir)
@@ -68,9 +81,10 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
             subprocess.check_call(["git", "push", "--all"], cwd=tempdir)
             subprocess.check_call(["git", "push", "--tags"], cwd=tempdir)
 
-        regreport = subprocess.check_output([resulttool, "regression-git", tempdir] + extraopts.split())
-        with open(args.results_dir + "/testresult-regressions-report.txt", "wb") as f:
-            f.write(regreport)
+        if extraopts:
+            regreport = subprocess.check_output([resulttool, "regression-git", tempdir] + extraopts.split())
+            with open(args.results_dir + "/testresult-regressions-report.txt", "wb") as f:
+                f.write(regreport)
 
     finally:
         subprocess.check_call(["rm", "-rf",  tempdir])
diff --git a/scripts/utils.py b/scripts/utils.py
index 45d3f93..31e1537 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -347,11 +347,10 @@ class ArgParser(argparse.ArgumentParser):
 
 #
 # Figure out which branch we might need to compare against
+# Also return whether this is a forked branch or not.
 #
 def getcomparisonbranch(ourconfig, reponame, branchname):
     print("Working off %s:%s\n" % (reponame, branchname))
-    base = None
-    basebranch = None
     if "/" in reponame:
         reponame = reponame.rsplit("/", 1)[1]
     if reponame.endswith(".git"):
@@ -361,4 +360,7 @@ def getcomparisonbranch(ourconfig, reponame, branchname):
         if base:
             baserepo, basebranch = base.split(":")
             print("Comparing to %s\n" % (basebranch))
-    return basebranch
+            return branchname, basebranch
+    if (reponame + ":" + branchname) in getconfig("BUILD_HISTORY_DIRECTPUSH", ourconfig):
+        return branchname, None
+    return None, None
-- 
2.25.1

