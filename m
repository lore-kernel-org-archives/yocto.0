Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FF0EC433FE
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 14:16:39 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web11.20214.1646057798754817658
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 06:16:38 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=Zy4G49lL;
 spf=pass (domain: intel.com, ip: 192.55.52.136,
 mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646057798; x=1677593798;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=Dj5sSLsJffMKqc5uawbFL+Hr0N7dreYEkSh6JujP1yY=;
  b=Zy4G49lL6rroQoA72fG1gJkQlQmOIZHe+tTpjP0AHs10dSCrTISU6UIi
   rVFk1r0MIjgS/T/SXRm8kItaqYTdXsnulpBWkQQlC3lWEh9I6I3Lk5+Q3
   21sM9l37WiL6eJkW76vUPXXoxtN3HCHIif8qZZKe5axSNP1m/Et0xiI5T
   mkh2LfEUEz/eQNwA3lubhQbb5mFoeo6+NyDHdB57FP8tvEHKJhxefezd7
   2UMI132XI5++x4QMEpSmGnvLGlEkx0QDFQITSyhh5R/dr+WTQ7kcwYXKY
   oiZoaHW6pw9Oirg2Bzhw/I6gRBqYr8Gzukspjd5lnBBnyw21crMWEzRRU
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10271"; a="232862741"
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400";
   d="scan'208";a="232862741"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 06:16:37 -0800
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400";
   d="scan'208";a="534459502"
Received: from jtang17-mobl1.gar.corp.intel.com (HELO
 anmitta2-mobl3.intel.com) ([10.213.141.22])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 06:16:36 -0800
From: Anuj Mittal <anuj.mittal@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][hardknott 2/3] prepare-shared-repos: Make
 it clear when rsync starts in logs
Date: Mon, 28 Feb 2022 22:16:28 +0800
Message-Id: <20220228141629.7688-2-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220228141629.7688-1-anuj.mittal@intel.com>
References: <20220228141629.7688-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 14:16:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56318

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 8e996a95a8902b40380dd477ecb606cc969cdee9)
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 scripts/prepare-shared-repos | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/prepare-shared-repos b/scripts/prepare-shared-repos
index 1573f85..c221e69 100755
--- a/scripts/prepare-shared-repos
+++ b/scripts/prepare-shared-repos
@@ -39,4 +39,5 @@ with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/home/pokybuil
         if args.publish_dir:
             utils.publishrepo(tempdir, repo, args.publish_dir)
 
+    utils.printheader("Running rsync")
     subprocess.check_call("rsync -a " + tempdir + "/* " + args.sharedsrcdir, shell=True)
-- 
2.35.1


