Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D6C9CA0ECB
	for <webhook@archiver.kernel.org>; Tue, 12 Sep 2023 02:52:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web10.17051.1694487134471122142
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Sep 2023 19:52:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=muzbrUp2;
 spf=pass (domain: intel.com, ip: 134.134.136.65, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1694487134; x=1726023134;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=6XzISfFmFcNlKRzGJEeB3rF8g2+mvMYB/3W+WCxkZ6A=;
  b=muzbrUp2gXXCZ9LQ8W10dZpALB2/h/fh+tFPV+y0Q+0kbU6d7o4oLM1Q
   WYZGN8hmyIbQzI2DSGFXjZWda27o+WAqzjAcUfoa8Y4RBofKGCaAgwct8
   /+Axriq7on1z5uUtGQSU4Bx7vbyacdmnYCz8qOXtQ1UvI92sLjRBVrkwr
   b7P9fqFOnizXc31tco/ZI27JDboLXOIXqzz1+ZLCWnX37USeLjiEd4tT3
   ISWyk31YD4D1naiM4F+3DzotSNssbqppHpo3q2yGu71Vb8Fn3vFbQYKva
   Zpqpn0+5LEvJaMTcGa3DobhGvtTy617UzR8Kv4N78ruxRpMIL6qUdRfuB
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="382074325"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; 
   d="scan'208";a="382074325"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Sep 2023 19:52:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="867193080"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; 
   d="scan'208";a="867193080"
Received: from saininav-desk1.png.intel.com ([172.30.130.5])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Sep 2023 19:52:13 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] layer.conf: update LAYERSERIES_COMPAT to use nanbield
Date: Tue, 12 Sep 2023 11:17:55 +0800
Message-Id: <20230912031755.2868327-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Sep 2023 02:52:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60979

Drop langdale and mickledore.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 meta-zephyr-bsp/conf/layer.conf  | 2 +-
 meta-zephyr-core/conf/layer.conf | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-zephyr-bsp/conf/layer.conf b/meta-zephyr-bsp/conf/layer.conf
index d809926..1edcb0b 100644
--- a/meta-zephyr-bsp/conf/layer.conf
+++ b/meta-zephyr-bsp/conf/layer.conf
@@ -15,4 +15,4 @@ LAYERVERSION_zephyrbsp = "1"
 
 LAYERDEPENDS_zephyrbsp = "zephyrcore core meta-python"
 
-LAYERSERIES_COMPAT_zephyrbsp = "kirkstone langdale mickledore"
+LAYERSERIES_COMPAT_zephyrbsp = "kirkstone nanbield"
diff --git a/meta-zephyr-core/conf/layer.conf b/meta-zephyr-core/conf/layer.conf
index fdff4f6..06e942e 100644
--- a/meta-zephyr-core/conf/layer.conf
+++ b/meta-zephyr-core/conf/layer.conf
@@ -15,7 +15,7 @@ LAYERVERSION_zephyrcore = "1"
 
 LAYERDEPENDS_zephyrcore = "core meta-python"
 
-LAYERSERIES_COMPAT_zephyrcore = "kirkstone langdale mickledore"
+LAYERSERIES_COMPAT_zephyrcore = "kirkstone nanbield"
 
 PYTHON3_NATIVE_SITEPACKAGES_DIR = "${libdir_native}/${PYTHON3_DIR}/site-packages"
 
-- 
2.34.1


