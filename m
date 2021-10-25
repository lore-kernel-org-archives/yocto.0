Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8131AC433F5
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 14:07:26 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web10.32459.1635170845713060364
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 07:07:25 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: intel.com, ip: 192.55.52.136, mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10147"; a="209757028"
X-IronPort-AV: E=Sophos;i="5.87,180,1631602800";
   d="scan'208";a="209757028"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 07:07:24 -0700
X-IronPort-AV: E=Sophos;i="5.87,180,1631602800";
   d="scan'208";a="578131128"
Received: from syong7-mobl1.gar.corp.intel.com (HELO
 anmitta2-mobl1.gar.corp.intel.com) ([10.249.78.45])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 07:07:23 -0700
From: Anuj Mittal <anuj.mittal@intel.com>
To: yocto@lists.yoctoproject.org,
	richard.purdie@linuxfoundation.org
Subject: [hardknott][yocto-autobuilder-helper][PATCH] config.json: set max
 load in PARALLEL_MAKE
Date: Mon, 25 Oct 2021 22:07:10 +0800
Message-Id: <20211025140710.5419-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 14:07:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55144

From: Trevor Gamblin <trevor.gamblin@windriver.com>

Add "-l 52" to PARALLEL_MAKE in config.json to limit Make and Ninja
builds based on the detected system load. With this option added, if
either tool has at least one job running and detects that the system
load exceeds the given value, it will wait until either the system load
average drops below that limit, or until all other jobs are finished
before starting additional jobs.

Since most autobuilder machines have 56 cores, this should help keep the
system from being overloaded during builds.

Reference: https://www.gnu.org/software/make/manual/html_node/Parallel.html

Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 5c5fc7bcd221427d34bbac80c9bad315fb6de4df)
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 33d36ad..d397365 100644
--- a/config.json
+++ b/config.json
@@ -43,7 +43,7 @@
             "PREMIRRORS = ''",
             "BB_GENERATE_MIRROR_TARBALLS = '1'",
             "BB_NUMBER_THREADS = '16'",
-            "PARALLEL_MAKE = '-j 16'",
+            "PARALLEL_MAKE = '-j 16 -l 52'",
             "XZ_MEMLIMIT = '5%'",
             "XZ_THREADS = '8'",
             "BB_TASK_NICE_LEVEL = '5'",
-- 
2.31.1


