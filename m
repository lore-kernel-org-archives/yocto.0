Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B8BAC4167D
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 09:31:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web11.3166.1698831106519099187
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 02:31:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=ZkLEJCs4;
 spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698831107; x=1730367107;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=xHE5jxe+Qmj2JNek1G0Kyc1OiRt8HqH5KBGwmAEcGXo=;
  b=ZkLEJCs4zksvFRJUdOvl2YzrGa5JMdYiCKvtdkGpOUMr/Ffw3F9KFRt5
   MzLL7waQxBHPByjTErxqIpPkh0lLkzEhX3h+cthoSRXC5ARA6oJJXtTZx
   3W1dZbvntz6Kuy7gkJA0006QF/jcsrlBsCKHHF/AhawHWSFMmLGhHk78o
   v1asHQ8Ui4atN+rqdZNl+DhNAPMrNgT5k4wWOYV9G9SxBJ1JGA8ZHd5wg
   ew37R8s4NxEpnp94hb9wCWDAKGWcBiwEuWpHRpTuU5Jeu84oMnsZa16nr
   YCw0GBnxCwqhmu/JEludbIh8MtjiL9tTSUALfXlnB5yHJCiRzNkH6jeel
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="454941035"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; 
   d="scan'208";a="454941035"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2023 02:31:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; 
   d="scan'208";a="2137563"
Received: from saininav-desk1.png.intel.com ([172.30.130.5])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2023 02:31:46 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 3/3] zephyr-sdk: Upgrade to version 0.16.3
Date: Wed,  1 Nov 2023 17:58:09 +0800
Message-Id: <20231101095809.2839319-3-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231101095809.2839319-1-naveen.kumar.saini@intel.com>
References: <20231101095809.2839319-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 09:31:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61551

https://github.com/zephyrproject-rtos/sdk-ng/releases/tag/v0.16.3

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../zephyr-sdk/{zephyr-sdk_0.16.1.bb => zephyr-sdk_0.16.3.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-zephyr-core/recipes-devtools/zephyr-sdk/{zephyr-sdk_0.16.1.bb => zephyr-sdk_0.16.3.bb} (83%)

diff --git a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.16.1.bb b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.16.3.bb
similarity index 83%
rename from meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.16.1.bb
rename to meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.16.3.bb
index f73b92f..e34424e 100644
--- a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.16.1.bb
+++ b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.16.3.bb
@@ -14,8 +14,8 @@ SDK_ARCHIVE = "zephyr-sdk-${PV}_linux-${BUILD_ARCH}.tar.xz"
 SDK_NAME = "${BUILD_ARCH}"
 SRC_URI = "https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v${PV}/${SDK_ARCHIVE};subdir=${S};name=${SDK_NAME}"
 
-SRC_URI[x86_64.sha256sum] = "51338d51aa4cea2516641ce0d9dc0b51b763779f00dc4564a2bc0dd713df22c7"
-SRC_URI[aarch64.sha256sum] = "062bb2b5c47ca56dd29b7f92dd7f07a5ce22ba513759d2b6960bc658531eb00c"
+SRC_URI[x86_64.sha256sum] = "9eb557d09d0e9d4e0b27f81605250a0618bb929e423987ef40167a3307c82262"
+SRC_URI[aarch64.sha256sum] = "3acfb4fb68fc5e98f44428249b54c947cdf78f1164176e98160ca75175ad26c1"
 
 do_configure[noexec] = "1"
 do_compile[noexec] = "1"
-- 
2.34.1


