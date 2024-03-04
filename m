Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF66C48BF6
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 07:27:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by mx.groups.io with SMTP id smtpd.web10.93218.1709537239678738578
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Mar 2024 23:27:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=m2CplXYJ;
 spf=pass (domain: intel.com, ip: 192.198.163.11, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1709537240; x=1741073240;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=TOy/wm4IRlgDUNp51fQMuqW+hApkmOZ0hBrtTkJ2XPU=;
  b=m2CplXYJ+zBcv8PYRQ8jrZREqLQt2m/9LPAzhn8alM3ZNQ+3+RfN4fVF
   ww8GhMq8idlTLyGrzVFa9qCQMD6tNAIYQyUfAQnBKPoS1oWPR11EyjTPO
   XQKynDEL9tI1/0y0BTzsniF26HnJoKwqDdGJqR6bFrTw+9mZGcjc8IX0m
   owJmhhH2qe/k6w0FyB0FWeVyjLuhFWIH4EVtZxfdJFfSjJFSzcAa3mwOI
   eolLfhrycZu0QFiv4111Z3IwhEhTgjSCSd2KbzphpsPxYA2F08l7FLfnH
   OMYLgsYnliG0/V4NVx7BYH3LCOryaQeusbeyORY74YtjR9tyb3H3l8xx1
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="14655675"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="14655675"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2024 23:27:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="13565932"
Received: from saininav-desk1.png.intel.com ([172.30.130.5])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2024 23:27:18 -0800
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/2] zephyr-sdk: Upgrade to version 0.16.5-1
Date: Mon,  4 Mar 2024 15:55:47 +0800
Message-Id: <20240304075547.2111194-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240304075547.2111194-1-naveen.kumar.saini@intel.com>
References: <20240304075547.2111194-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 07:27:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62659

https://github.com/zephyrproject-rtos/sdk-ng/releases/tag/v0.16.5-1

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../{zephyr-sdk_0.16.3.bb => zephyr-sdk_0.16.5-1.bb}          | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-zephyr-core/recipes-devtools/zephyr-sdk/{zephyr-sdk_0.16.3.bb => zephyr-sdk_0.16.5-1.bb} (83%)

diff --git a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.16.3.bb b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.16.5-1.bb
similarity index 83%
rename from meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.16.3.bb
rename to meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.16.5-1.bb
index e34424e..0b608bc 100644
--- a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.16.3.bb
+++ b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.16.5-1.bb
@@ -14,8 +14,8 @@ SDK_ARCHIVE = "zephyr-sdk-${PV}_linux-${BUILD_ARCH}.tar.xz"
 SDK_NAME = "${BUILD_ARCH}"
 SRC_URI = "https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v${PV}/${SDK_ARCHIVE};subdir=${S};name=${SDK_NAME}"
 
-SRC_URI[x86_64.sha256sum] = "9eb557d09d0e9d4e0b27f81605250a0618bb929e423987ef40167a3307c82262"
-SRC_URI[aarch64.sha256sum] = "3acfb4fb68fc5e98f44428249b54c947cdf78f1164176e98160ca75175ad26c1"
+SRC_URI[x86_64.sha256sum] = "01f942146d2fc6d6afd5afe6f4b5c315525d2c937c7e613d3312b0992b33bc68"
+SRC_URI[aarch64.sha256sum] = "1749b6891a6a6e70b013d8b31ff067c5a94891f651985a6da9a20367b2deb6c7"
 
 do_configure[noexec] = "1"
 do_compile[noexec] = "1"
-- 
2.34.1


