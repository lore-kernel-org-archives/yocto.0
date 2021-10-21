Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A4D8C433FE
	for <webhook@archiver.kernel.org>; Thu, 21 Oct 2021 05:32:26 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web12.5250.1634794345116992106
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Oct 2021 22:32:25 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="315152916"
X-IronPort-AV: E=Sophos;i="5.87,168,1631602800";
   d="scan'208";a="315152916"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 22:32:24 -0700
X-IronPort-AV: E=Sophos;i="5.87,168,1631602800";
   d="scan'208";a="444648808"
Received: from saininav-desk1.png.intel.com ([10.158.87.77])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 22:32:23 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 1/2] zephyr-kernel/2.7.0: update to release tag
 Zephyr v2.7.0
Date: Thu, 21 Oct 2021 13:47:25 +0800
Message-Id: <20211021054726.27237-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Oct 2021 05:32:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55111

https://github.com/zephyrproject-rtos/zephyr/releases/tag/zephyr-v2.7.0

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc
index e3424d2..a1619a7 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc
@@ -1,5 +1,5 @@
 SRCREV_FORMAT = "default_cmsis"
-SRCREV_default = "8a97c83040c0257d98c329dde55ae10e68544688"
+SRCREV_default = "3f826560aaf81a444018293bd6acce3c339fe150"
 SRCREV_cmsis = "b0612c97c1401feeb4160add6462c3627fe90fc7"
 SRCREV_nordic = "a6e5299041f152da5ae0ab17b2e44e088bb96d6d"
 SRCREV_stm32 = "5c8275071ec1cf160bfe8c18bbd9330a7d714dc8"
-- 
2.17.1


