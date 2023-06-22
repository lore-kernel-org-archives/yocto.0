Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25D0FEB64DC
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 10:21:16 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web10.8092.1687429270106677648
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 03:21:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=Rb4CcH1B;
 spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1687429270; x=1718965270;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=n9qCBZLMhjGxDuJFM/RaTM9I6AMPmxhFJzeL6uuqtHc=;
  b=Rb4CcH1BAuUCoQqr+TvK9jCSv7odBNzwB9zYuOayolsszR8EZ8/73lFS
   5AQbMr7Fy+P3ZmzLseIQVFaWe5qItjjQqfm6XqHtjtr53vj7ZrUpCGJ3Q
   eITuJt4kcdMtOQKXwVyQ4lb3eh7TPMBRyHe1lz2mGcoA7NWwWzlFX8dvo
   OsEAlMlj6nL7gi/Ovi7urBQt7hqftRnKxyaMvNWlth3AV1KNFRAp9vSes
   tl4/HfCmx6V1Rslz6VoHdhEnJHkmb7C/legFmdkFa19o++lc2mRyRAUDT
   f71sk7ldbm9BZkmAEyBVDJ/DFN3Un4QZHo+TKARMXlXcwVENXexT9zsFE
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="424114858"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; 
   d="scan'208";a="424114858"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2023 03:15:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="827835465"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; 
   d="scan'208";a="827835465"
Received: from saininav-desk1.png.intel.com ([172.30.130.5])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2023 03:15:17 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 3/3] zephyr-sdk: Upgrade to version 0.16.1
Date: Thu, 22 Jun 2023 18:39:39 +0800
Message-Id: <20230622103939.2893308-3-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230622103939.2893308-1-naveen.kumar.saini@intel.com>
References: <20230622103939.2893308-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 10:21:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60395

https://github.com/zephyrproject-rtos/sdk-ng/releases/tag/v0.16.1

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../{zephyr-sdk_0.15.2.bb => zephyr-sdk_0.16.1.bb}          | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename meta-zephyr-core/recipes-devtools/zephyr-sdk/{zephyr-sdk_0.15.2.bb => zephyr-sdk_0.16.1.bb} (77%)

diff --git a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.2.bb b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.16.1.bb
similarity index 77%
rename from meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.2.bb
rename to meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.16.1.bb
index ca3ab8c..f73b92f 100644
--- a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.2.bb
+++ b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.16.1.bb
@@ -10,12 +10,12 @@ INHIBIT_DEFAULT_DEPS = "1"
 # CMake is required by the setup script
 DEPENDS += "cmake"
 
-SDK_ARCHIVE = "zephyr-sdk-${PV}_linux-${BUILD_ARCH}.tar.gz"
+SDK_ARCHIVE = "zephyr-sdk-${PV}_linux-${BUILD_ARCH}.tar.xz"
 SDK_NAME = "${BUILD_ARCH}"
 SRC_URI = "https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v${PV}/${SDK_ARCHIVE};subdir=${S};name=${SDK_NAME}"
 
-SRC_URI[x86_64.sha256sum] = "8e3572fbca9f9ba18a4436c00d680af34a85e239f7fe66c7988da85571a0d23d"
-SRC_URI[aarch64.sha256sum] = "0d36e40a81a3aa1b64d65c4c5c6cd381555a33ef1684b7ba98236fa486f176a4"
+SRC_URI[x86_64.sha256sum] = "51338d51aa4cea2516641ce0d9dc0b51b763779f00dc4564a2bc0dd713df22c7"
+SRC_URI[aarch64.sha256sum] = "062bb2b5c47ca56dd29b7f92dd7f07a5ce22ba513759d2b6960bc658531eb00c"
 
 do_configure[noexec] = "1"
 do_compile[noexec] = "1"
-- 
2.34.1


