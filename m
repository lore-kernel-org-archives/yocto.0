Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85110C433F5
	for <webhook@archiver.kernel.org>; Thu, 21 Oct 2021 05:32:26 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web12.5250.1634794345116992106
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Oct 2021 22:32:25 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="315152920"
X-IronPort-AV: E=Sophos;i="5.87,168,1631602800";
   d="scan'208";a="315152920"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 22:32:24 -0700
X-IronPort-AV: E=Sophos;i="5.87,168,1631602800";
   d="scan'208";a="444648814"
Received: from saininav-desk1.png.intel.com ([10.158.87.77])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 22:32:24 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/2] zephyr-kernel-src: set default preferred
 version to 2.7.0
Date: Thu, 21 Oct 2021 13:47:26 +0800
Message-Id: <20211021054726.27237-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211021054726.27237-1-naveen.kumar.saini@intel.com>
References: <20211021054726.27237-1-naveen.kumar.saini@intel.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Oct 2021 05:32:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55112

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index 458ff1e..3a2250d 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -22,5 +22,5 @@ SRC_URI = "\
 S = "${WORKDIR}/git"
 
 # Default to a stable version
-PREFERRED_VERSION_zephyr-kernel ??= "2.6.1"
+PREFERRED_VERSION_zephyr-kernel ??= "2.7.0"
 include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
-- 
2.17.1


