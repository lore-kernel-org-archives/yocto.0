Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC009C433EF
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 15:20:35 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
 [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web11.13911.1645543234562894526
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 07:20:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=oEpmGwHI;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.181,
 mailfrom: steve@sakoman.com)
Received: by mail-pg1-f181.google.com with SMTP id w37so10909489pga.7
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 07:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=KQBXUlxJKKgdZCWYbZXZsbQK67pDGYWyPQrQIqMCGoE=;
        b=oEpmGwHISb5NPQ5VUpNppOqH1g7xlAmqVznTvivz9FEkmEs7imCaitpU/m6hw4qPDV
         B+cZ8O30NAnh8b7/rCUQYl7SiBE/rOFwBeMCt6OP4sHHtL3f+cD8u8jYaCweMhRrPUDA
         Xg1Gf8Tcfs2/FPLw6x7vwcIg39cA5leC2cit+fYBu/fyhxla2+iGxUxeSiBvzH8jueX/
         5mK74Iz8wH/ysZpAvJX3OHbEwC42sNBX17jR13yXAmGsOp7RUfoJ7XxgpWTyuQUOrjfE
         bzF1sbOYkEWAaGt1rGcPJ1xaxYYaqfYC7uKvfHnegks2fAl2viAtFnqIovK4sb5YzCgm
         QDVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KQBXUlxJKKgdZCWYbZXZsbQK67pDGYWyPQrQIqMCGoE=;
        b=TNS4SBD+2qbZiGdym9LtvKJRDWdxEsUsljlOoq6MvYO2NWOykQLweVW9jtKn8rlegI
         I+73Y+UKSB2iETX9BFYOFirgNUb0VeOi6K7E9oUBN88RNp+0hDePA/SUPUukncSHOg1I
         +ep7Eh2TJzIMN7xndprqKDGoi9aE07wNYDTGe7+cItLqI0oHNOBnKqGIQ2eRxVYPxnYb
         +x6J/lA4tfBFG++uixx9GaUTBDUYr8SFo8/OtalPZ0CpAGZMnk0E4mnMLQogKwdTPB4R
         /jcA6moSs2clmoo0H7UyXeiRlAYjF2s86vDhYVTAw2Xpc4qBm4OsImLL9ohD6yNu/chQ
         h5yw==
X-Gm-Message-State: AOAM532gLK9cp6FBp02eiYzD/620qDjj0tVgn+8adSmluGbZm41Evstx
	kBNKsC7mfI6gbZyIfBpJlFdZ8LTaLLTmZgQ2
X-Google-Smtp-Source: 
 ABdhPJwVlcLoVre0Ix2xHY5MyFyEFc1viil2XzQ3SdIdk28YCzrpfbj8RMNeQvp8ocG/HykrQxdTqA==
X-Received: by 2002:a63:6c01:0:b0:36f:b8de:31b4 with SMTP id
 h1-20020a636c01000000b0036fb8de31b4mr20020777pgc.603.1645543233598;
        Tue, 22 Feb 2022 07:20:33 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 i9sm3118160pjd.11.2022.02.22.07.20.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 07:20:33 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 3/3] shared-repos: Use tar instead
 of rsync for speed
Date: Tue, 22 Feb 2022 05:20:14 -1000
Message-Id: 
 <c08d032369c5fcde98f8f7b9d6be6cf54bb8fa3e.1645543004.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1645543004.git.steve@sakoman.com>
References: <cover.1645543004.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 15:20:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56244

From: Richard Purdie <richard.purdie@linuxfoundation.org>

The rysnc of 20,000 files (650MB) onto the nas is slow taking ~3 minutes
at idle and worse at load. This is due to the number of files which
is a pain point for NFS. This piece of the build is also a bottleneck
since the rest of a build depends on it happening.

If we switch to zstd compressed tar, it takes 2.49s. Other compression
methods were much slower but zstd seems 'accptable' and speeds things
up too.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit aff49e938ee34e1fc5a2954e3e22a4ca1ae9ac7b)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/prepare-shared-repos | 4 ++--
 scripts/send-qa-email        | 6 ++++--
 scripts/shared-repo-unpack   | 9 ++++++---
 3 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/scripts/prepare-shared-repos b/scripts/prepare-shared-repos
index c221e69..a5bc0da 100755
--- a/scripts/prepare-shared-repos
+++ b/scripts/prepare-shared-repos
@@ -39,5 +39,5 @@ with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/home/pokybuil
         if args.publish_dir:
             utils.publishrepo(tempdir, repo, args.publish_dir)
 
-    utils.printheader("Running rsync")
-    subprocess.check_call("rsync -a " + tempdir + "/* " + args.sharedsrcdir, shell=True)
+    utils.printheader("Creating shared src tarball")
+    subprocess.check_call("tar -I zstd -cf " + args.sharedsrcdir.rstrip("/") + ".tar.zst ./*", shell=True, cwd=tempdir)
diff --git a/scripts/send-qa-email b/scripts/send-qa-email
index 1b69307..bc594df 100755
--- a/scripts/send-qa-email
+++ b/scripts/send-qa-email
@@ -45,9 +45,11 @@ buildtoolsdir = os.path.dirname(args.repojson) + "/build/buildtools"
 if os.path.exists(buildtoolsdir):
     utils.enable_buildtools_tarball(buildtoolsdir)
 
+repodir = os.path.dirname(args.repojson) + "/build/repos"
+
 if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
     # Need the finalised revisions (not 'HEAD')
-    targetrepodir = "%s/poky" % (args.sharedrepodir)
+    targetrepodir = "%s/poky" % (repodir)
     revision = subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=targetrepodir).decode('utf-8').strip()
     branch = repos['poky']['branch']
     repo = repos['poky']['url']
@@ -116,7 +118,7 @@ if args.send.lower() != 'true' or not args.publish_dir or not args.release:
 buildhashes = ""
 for repo in sorted(repos.keys()):
     # Need the finalised revisions (not 'HEAD')
-    targetrepodir = "%s/%s" % (args.sharedrepodir, repo)
+    targetrepodir = "%s/%s" % (repodir, repo)
     revision = subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=targetrepodir).decode('utf-8').strip()
     buildhashes += "%s: %s\n" % (repo, revision)
 
diff --git a/scripts/shared-repo-unpack b/scripts/shared-repo-unpack
index f08efa8..f7f87af 100755
--- a/scripts/shared-repo-unpack
+++ b/scripts/shared-repo-unpack
@@ -50,11 +50,14 @@ needrepos_baseddirs = [r.split('/')[0] for r in needrepos]
 for repo in sorted(repos.keys()):
     if repo not in needrepos_baseddirs:
         continue
-    targetrepodir = "%s/%s" % (targetsubdir, repo)
     if args.cache_dir:
         utils.printheader("Copying in repo %s" % repo)
-        utils.mkdir(targetrepodir)
-        subprocess.check_call(["rsync", "-a", "%s/%s" % (args.cache_dir, repo), targetsubdir])
+        utils.mkdir(targetsubdir)
+        if args.target in ["a-full", "a-quick"]:
+            # full/quick need all repo data due to send-qa-email
+            subprocess.check_call(["tar", "-I", "zstd", "-C", targetsubdir, "-xf", "%s.tar.zst" % args.cache_dir])
+        else:
+            subprocess.check_call(["tar", "-I", "zstd", "-C", targetsubdir, "-xf", "%s.tar.zst" % args.cache_dir, "./" + repo])
     else:
         utils.printheader("Fetching repo %s" % repo)
         utils.fetchgitrepo(targetsubdir, repo, repos[repo], stashdir)
-- 
2.25.1


