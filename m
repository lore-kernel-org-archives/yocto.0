Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8089C433F5
	for <webhook@archiver.kernel.org>; Sun, 31 Oct 2021 13:09:34 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web08.31007.1635685773732722054
 for <yocto@lists.yoctoproject.org>;
 Sun, 31 Oct 2021 06:09:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AVVuo6aI;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id 133so2372104wme.0
        for <yocto@lists.yoctoproject.org>;
 Sun, 31 Oct 2021 06:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=FX6zdBxbBlLdCI7mP3QztOVHY6ipaN2qk6TfUGx+MAE=;
        b=AVVuo6aIoD1KvdBvpNfXs269biqCizWmpQvBhFNHTAkNCypHBPtG3QAHzbteKp1dw7
         DTl7F8bSls9t6rJyn7mvua5lmZBw2iUX/yb3k6t8QIFc+QkDuO0J1FH7IR8jNaT4lDkY
         S6dVCqFbK7lJ5qA+NMNY3iWeg6BJR/9NVCK6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FX6zdBxbBlLdCI7mP3QztOVHY6ipaN2qk6TfUGx+MAE=;
        b=w9X49H09ZbF7iNsgrehtZlAC8J9kYDeNCkoKe/GyzRTKtds3+qn2985EG57uYV1AEB
         +vjfJKQ2JkU2t4998yFbgo+Et8F7fN2Ui6/Jg4Hqdkv4ruSct6vEaHR/0OwObqEJ3fP6
         u78NFG9XoPCXNW5crb3WL3oIqcf2YiUqlWjsyNpv9VTD9CmL6IFbRinxDz8fIAiYmBOo
         p1SRhnK/lo3XwSWOjIRnxdZSqHLZx+nRiSIWEUeVtjKySpsjOQvXXl/Od0ENhMon8Frp
         8qm5XWrRiPmHgUyUX6+oH9HlHROAcunClZ0F1Re5hDMiq9u/mNdBOLS1kV8qStoG5HE7
         EUiA==
X-Gm-Message-State: AOAM530wL5tYD3S7M9JRpTR4z+4zRkdiQzI8EDJHRxj+r+7Ga4PPFtmi
	k8ydGNekQUrQCRkFg8rwU1JP2PJiudUm8g==
X-Google-Smtp-Source: 
 ABdhPJymPqMs3t8mx2lu2MvU5osh/AxVMVPBL1WWm4Jcib1G/NsVcXtftDGmEV7UOFt9675vEQCxRQ==
X-Received: by 2002:a05:600c:1c88:: with SMTP id
 k8mr24859876wms.169.1635685772008;
        Sun, 31 Oct 2021 06:09:32 -0700 (PDT)
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:b85c:77c5:c945:ad1c])
        by smtp.gmail.com with ESMTPSA id
 m16sm4518861wmc.46.2021.10.31.06.09.31
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Oct 2021 06:09:31 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 4/4] shared-repos: Use tar instead
 of rsync for speed
Date: Sun, 31 Oct 2021 13:09:29 +0000
Message-Id: <20211031130929.3478176-4-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211031130929.3478176-1-richard.purdie@linuxfoundation.org>
References: <20211031130929.3478176-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 31 Oct 2021 13:09:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55198

The rysnc of 20,000 files (650MB) onto the nas is slow taking ~3 minutes
at idle and worse at load. This is due to the number of files which
is a pain point for NFS. This piece of the build is also a bottleneck
since the rest of a build depends on it happening.

If we switch to zstd compressed tar, it takes 2.49s. Other compression
methods were much slower but zstd seems 'accptable' and speeds things
up too.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/prepare-shared-repos | 4 ++--
 scripts/send-qa-email        | 6 ++++--
 scripts/shared-repo-unpack   | 5 ++---
 3 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/scripts/prepare-shared-repos b/scripts/prepare-shared-repos
index f34ba99..d60ad32 100755
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
index 1b69307..fc34f7e 100755
--- a/scripts/send-qa-email
+++ b/scripts/send-qa-email
@@ -45,9 +45,11 @@ buildtoolsdir = os.path.dirname(args.repojson) + "/build/buildtools"
 if os.path.exists(buildtoolsdir):
     utils.enable_buildtools_tarball(buildtoolsdir)
 
+repodir = os.path.dirname(args.repojson) + "/repos"
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
index f08efa8..3dda5b3 100755
--- a/scripts/shared-repo-unpack
+++ b/scripts/shared-repo-unpack
@@ -50,11 +50,10 @@ needrepos_baseddirs = [r.split('/')[0] for r in needrepos]
 for repo in sorted(repos.keys()):
     if repo not in needrepos_baseddirs:
         continue
-    targetrepodir = "%s/%s" % (targetsubdir, repo)
     if args.cache_dir:
         utils.printheader("Copying in repo %s" % repo)
-        utils.mkdir(targetrepodir)
-        subprocess.check_call(["rsync", "-a", "%s/%s" % (args.cache_dir, repo), targetsubdir])
+        utils.mkdir(targetsubdir)
+        subprocess.check_call(["tar", "-I", "zstd", "-C", targetsubdir, "-xf", "%s.tar.zst" % args.cache_dir, "./" + repo])
     else:
         utils.printheader("Fetching repo %s" % repo)
         utils.fetchgitrepo(targetsubdir, repo, repos[repo], stashdir)
-- 
2.32.0


