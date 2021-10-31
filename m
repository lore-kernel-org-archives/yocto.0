Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EECD4C433FE
	for <webhook@archiver.kernel.org>; Sun, 31 Oct 2021 13:09:33 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web09.30753.1635685772942398454
 for <yocto@lists.yoctoproject.org>;
 Sun, 31 Oct 2021 06:09:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LJ6TAfoe;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id d3so24177875wrh.8
        for <yocto@lists.yoctoproject.org>;
 Sun, 31 Oct 2021 06:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=aCtS39LdwEQ3WO0l7dp93RcNjk/n+uevpZBBi1VvhOY=;
        b=LJ6TAfoe4iwpcPU6J53QXpWtFXkj086RSl9vSP15FAZ19GmRrF4CxZ2AoUK2RLYwaJ
         0puxigtCHj1eZlWsE6B1M7dW1FD2cDiox2jTDju0zwH6xj9mc0QpbNHsl4q17sstzCEQ
         SiVJfeWk3dwdTN44r9zGAaF9mHxEblIAuhXY4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aCtS39LdwEQ3WO0l7dp93RcNjk/n+uevpZBBi1VvhOY=;
        b=sIj0VF69tQr7890WRPBCTcQEWJfJmTKDH9bhbfGMr2HAkBRqwrgsIbHry9r7prC2d8
         ds5etA/38gOiPRH/AxbKRtzcYneg1ogAsowFVS5G0m1GmsYoVKRyYqO4+kXQVJldA/f7
         38nQzfbsOMdZxq3gBz4ahOwuiMkM0RtdAbjrcSjOI/E89dfeoMWlTZXn3f196/HCTWTX
         CXE8QEwXXG9+627EnHgub0C8Sk6e+KSMOJaFUXO7d9LYdz/Xe850xvdhVR1KEYAQ9Qoc
         0rlmaMPE80WkL33kT/uPa3umiIF/JUzNBKXuDYESQe0qNfJnF5ha9C7sB/ssryMOTQ5a
         X+Sw==
X-Gm-Message-State: AOAM531zDlK1aDER7sKQ4/XC0N/hy7fhUyDFK3Ogf/28YtcJuUBfTY5m
	rQcZbfijmpxOlKkEHILUy8U3BrQ30p3bHw==
X-Google-Smtp-Source: 
 ABdhPJx3aT/2NMGZo4YugjZOFVZdDXycAwG35Qur4n6XiumavKHWt39wH35Od9ig1rgv0rH+fvV19w==
X-Received: by 2002:a5d:6707:: with SMTP id o7mr14858249wru.172.1635685771429;
        Sun, 31 Oct 2021 06:09:31 -0700 (PDT)
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:b85c:77c5:c945:ad1c])
        by smtp.gmail.com with ESMTPSA id
 m16sm4518861wmc.46.2021.10.31.06.09.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Oct 2021 06:09:31 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 3/4] prepare-shared-repo/utils:
 Limit HEAD clones to shallow depth to save time/space
Date: Sun, 31 Oct 2021 13:09:28 +0000
Message-Id: <20211031130929.3478176-3-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211031130929.3478176-1-richard.purdie@linuxfoundation.org>
References: <20211031130929.3478176-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 31 Oct 2021 13:09:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55197

By not syncing all the history is is possible to save some time/space
in the checkout process since we never use this data. This reduces data
from 650MB to 400MB or with the tarball, 416MB to 55MB.

The logic for the commands needs to be tweaked to handle this and as
written it can't work in non-HEAD revision case but that isn't a commonly
used situation.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/prepare-shared-repos |  2 +-
 scripts/utils.py             | 18 +++++++++++++-----
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/scripts/prepare-shared-repos b/scripts/prepare-shared-repos
index c221e69..f34ba99 100755
--- a/scripts/prepare-shared-repos
+++ b/scripts/prepare-shared-repos
@@ -35,7 +35,7 @@ stashdir = utils.getconfig("REPO_STASH_DIR", ourconfig)
 with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/home/pokybuild/tmp") as tempdir:
     for repo in sorted(repos.keys()):
         utils.printheader("Intially fetching repo %s" % repo)
-        utils.fetchgitrepo(tempdir, repo, repos[repo], stashdir)
+        utils.fetchgitrepo(tempdir, repo, repos[repo], stashdir, depth=1)
         if args.publish_dir:
             utils.publishrepo(tempdir, repo, args.publish_dir)
 
diff --git a/scripts/utils.py b/scripts/utils.py
index 4c73f81..3c2622f 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -228,26 +228,34 @@ def runcmd(cmd):
     return subprocess.check_output(cmd, stderr=subprocess.STDOUT)
 
 
-def fetchgitrepo(clonedir, repo, params, stashdir):
+def fetchgitrepo(clonedir, repo, params, stashdir, depth=None):
     sharedrepo = "%s/%s" % (clonedir, repo)
     branch = params["branch"]
     revision = params["revision"]
+    if revision != "HEAD":
+        depth = None
+    fetchopt = []
+    depthopt = []
+    if depth:
+        fetchopt = ["--depth", str(depth), branch + ":origin/" + branch]
+        depthopt = ["--depth", str(depth), "--branch", branch]
     print("Checking for stash at: " + stashdir + "/" + repo)
     flush()
     if os.path.exists(stashdir + "/" + repo):
         print("Cloning from stash to %s..." % sharedrepo)
         flush()
-        subprocess.check_call(["git", "clone", "file://%s/%s" % (stashdir, repo), "%s/%s" % (clonedir, repo)])
+        subprocess.check_call(["git", "clone", "file://%s/%s" % (stashdir, repo), "%s/%s" % (clonedir, repo)] + depthopt)
         subprocess.check_call(["git", "remote", "rm", "origin"], cwd=sharedrepo)
         subprocess.check_call(["git", "remote", "add", "origin", params["url"]], cwd=sharedrepo)
         print("Updating from origin...")
         flush()
-        subprocess.check_call(["git", "fetch", "origin"], cwd=sharedrepo)
-        subprocess.check_call(["git", "fetch", "origin", "-t"], cwd=sharedrepo)
+        subprocess.check_call(["git", "fetch", "origin"] + fetchopt, cwd=sharedrepo)
+        if not depth:
+            subprocess.check_call(["git", "fetch", "origin", "-t"], cwd=sharedrepo)
     else:
         print("Cloning from origin to %s..." % sharedrepo)
         flush()
-        subprocess.check_call(["git", "clone", params["url"], sharedrepo])
+        subprocess.check_call(["git", "clone", params["url"], sharedrepo] + depthopt)
 
     print("Updating checkout...")
     flush()
-- 
2.32.0


