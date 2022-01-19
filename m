Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E327C433EF
	for <webhook@archiver.kernel.org>; Wed, 19 Jan 2022 03:35:59 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web10.1784.1642563358120626662
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jan 2022 19:35:58 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=UUYfStVs;
 spf=pass (domain: intel.com, ip: 192.55.52.43,
 mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1642563358; x=1674099358;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=9u8Ois8nJ6a1JsXNtuxQ5xkaGPCOVr98fGVp90Es604=;
  b=UUYfStVs6iZSQ59n07agkI/uXv3Hp/5wijBOfeaXWdK/4cfLljyCVs6t
   Fre21lYkeE41o1jJQYnWOQ2/+t8nC5kVpZzHukx+SnYmWTEX1hi0ouVMi
   O2jz1ZIrZV0vL4vatB4Qgk6ex2Vn680Sui15TWBPiLzOO7BhEOQbIQSGl
   DBen9njrKXpya3zJpFCyssudRGQvU/2YTnoLQK5r1Lx8E+IJ8DMJqlMYb
   x4AMs3zvnLo7T6VxLRU/se2p3cxyfPZBZcixaWlWPGD2TgM3t7W2kGVeq
   8u1jV28CK6BYB1sRKxnFq4ZRxy/pYulAZcGpa5HM3ak2HzbCfqNDmJPtK
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="331324816"
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600";
   d="scan'208";a="331324816"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 19:35:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600";
   d="scan'208";a="477219732"
Received: from ailoonta-mobl1.gar.corp.intel.com (HELO
 anmitta2-mobl3.intel.com) ([10.215.232.248])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 19:35:56 -0800
From: Anuj Mittal <anuj.mittal@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH] config.py: enable debian11 for hardknott
Date: Wed, 19 Jan 2022 11:35:49 +0800
Message-Id: <20220119033549.21775-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jan 2022 03:35:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55906

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 4c0b83b..0f99557 100644
--- a/config.py
+++ b/config.py
@@ -149,7 +149,7 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 
 # Worker filtering for older releases
 workers_prev_releases = {
-    "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
+    "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "dunfell" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "zeus" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
-- 
2.34.1


