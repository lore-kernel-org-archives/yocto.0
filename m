Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FECFC433F5
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 14:16:39 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web08.20524.1646057797323338719
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 06:16:38 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=SQLmvmvZ;
 spf=pass (domain: intel.com, ip: 192.55.52.136,
 mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646057797; x=1677593797;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Wt7iFn5q+TTY/K27FkCuyDaNGg+mKQ1v2rXDk3G6P4o=;
  b=SQLmvmvZj3xCMJsRdnhwgd7r9T2X1L84ozPKy3juwIXfV5oynA/fE9Aj
   ERFxAImeoG6r5LJ03Ennv8MHJi5a9ZVUXRWzRJc0caQwAuZ+z+1JuMCiD
   CrDt6K1DtqKAcVBqWDOyunmACLWuwGxyfdJw0W0ICVtJIiIhAvO67IOA/
   Rt2S29e0mhHypahfTEE9L0iXQ1TLc71BtFIoUXMASTi5JbjnH68GvXJSP
   QIsz++zk7PCj7GYF+uehEfscBITF+RwhLqk8aivCFqYf3+T9HMopPVJxl
   Kxfw6b0n/5QoJcdO/coKPpYEl32zsS+ENg1mPxTRrtPc1AqE3qv5RR7Ax
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10271"; a="232862733"
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400";
   d="scan'208";a="232862733"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 06:16:36 -0800
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400";
   d="scan'208";a="534459489"
Received: from jtang17-mobl1.gar.corp.intel.com (HELO
 anmitta2-mobl3.intel.com) ([10.213.141.22])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 06:16:34 -0800
From: Anuj Mittal <anuj.mittal@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][hardknott 1/3]
  scripts/prepare-shared-repos: Use tmpfs for speed
Date: Mon, 28 Feb 2022 22:16:27 +0800
Message-Id: <20220228141629.7688-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 14:16:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56317

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 298a10575851d501204fe1ee0d1dcbcec37a66cd)
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 scripts/prepare-shared-repos | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/prepare-shared-repos b/scripts/prepare-shared-repos
index 8400d09..1573f85 100755
--- a/scripts/prepare-shared-repos
+++ b/scripts/prepare-shared-repos
@@ -32,7 +32,7 @@ with open(args.repojson) as f:
 
 stashdir = utils.getconfig("REPO_STASH_DIR", ourconfig)
 
-with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/tmp") as tempdir:
+with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/home/pokybuild/tmp") as tempdir:
     for repo in sorted(repos.keys()):
         utils.printheader("Intially fetching repo %s" % repo)
         utils.fetchgitrepo(tempdir, repo, repos[repo], stashdir)
-- 
2.35.1


