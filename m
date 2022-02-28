Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B0BAC433EF
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 14:16:41 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web10.20077.1646057800355963486
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 06:16:40 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=Us+pMB4S;
 spf=pass (domain: intel.com, ip: 192.55.52.136,
 mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646057800; x=1677593800;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=k9W4DJ5A61sw1DucsSVyR4zeBBDyPL9DIWxVMsJ3SBM=;
  b=Us+pMB4Sw1zqU923EJg49JEHvQrD9jB7T84SxUSYjHBJFSfSZJhHhGCo
   6wBX5Kjw/hYTwfmB4Iu/doFlGc0CGSMcynSEQTDkuRYEUA+mK/8E9mpY1
   3a1G1i6TMJTQ/XGOewgEwubWb2XVkN6y1b3ftkxBq9vQ4qm5fg0kHVmr2
   MyGXZabQhmkmruf5fJMPuUHbO58ItG9NIfP7kwpeoJxwCxSBqjlNN9lqI
   JKIWCTDD5YuzdsmRrmCjdbRXNHRlpvyVlSnuPdnchOaAFcxPWGmJ/JhuQ
   VY4yOM9HyDq0Gsmbmy25nV5e13hgPEqpZS8i96LOlR2hHm5z6jeDGN3Kr
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10271"; a="232862745"
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400";
   d="scan'208";a="232862745"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 06:16:40 -0800
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400";
   d="scan'208";a="534459507"
Received: from jtang17-mobl1.gar.corp.intel.com (HELO
 anmitta2-mobl3.intel.com) ([10.213.141.22])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 06:16:38 -0800
From: Anuj Mittal <anuj.mittal@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][hardknott 3/3] shared-repos: Use tar
 instead of rsync for speed
Date: Mon, 28 Feb 2022 22:16:29 +0800
Message-Id: <20220228141629.7688-3-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220228141629.7688-1-anuj.mittal@intel.com>
References: <20220228141629.7688-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 14:16:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56319

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
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
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
2.35.1


