Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC138C43217
	for <webhook@archiver.kernel.org>; Thu, 10 Nov 2022 06:49:28 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web10.3978.1668062964834609945
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Nov 2022 22:49:26 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=FpSh3KuA;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1668062966; x=1699598966;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=jqSVyZJqpnNXYf+jZS7UPi2qeufdBZ/M9js6bUUEt4M=;
  b=FpSh3KuAI2o4gH2VQyMUNZMtDimo+leUZWLv+WDxY5EVNg2+aGdqsZIp
   iuTAEF2Hus4nDox0S0yrUsnNgcX929wa6pXUUCo3UWHPCiBEUQ+EzbUHZ
   avGcccY995N+WYT6GIXl6GSDIU0NcatdYL0U3i/g8JYtzyw5fPnkd3R+D
   wgXEZjB7x5OkqrDUsmfA/Igg/qMCVujODutjyFrqKkNKYGBLjwaXMfxes
   OCyYBmOP/elXTJTV+L8GG1qnxCnZnrJx4PrAT9GEr5nqa0juYZCeyqIap
   lFo5iLBk+DEvkXc2ZlP7aXJxuxvaPsoFCS8Zlgr2LWY0usKc7r/hzhZsc
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309944890"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; 
   d="scan'208";a="309944890"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Nov 2022 22:49:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="882241257"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; 
   d="scan'208";a="882241257"
Received: from saininav-desk1.png.intel.com ([172.30.130.9])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Nov 2022 22:49:25 -0800
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH v2 3/5] zephyr-sdk: upgrade 0.14.2 -> 0.15.1
Date: Thu, 10 Nov 2022 15:09:57 +0800
Message-Id: <20221110070959.3104172-3-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221110070959.3104172-1-naveen.kumar.saini@intel.com>
References: <20221110070959.3104172-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Nov 2022 06:49:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58532

https://github.com/zephyrproject-rtos/sdk-ng/releases/tag/v0.15.1

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../zephyr-sdk/{zephyr-sdk_0.14.2.bb => zephyr-sdk_0.15.1.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-zephyr-core/recipes-devtools/zephyr-sdk/{zephyr-sdk_0.14.2.bb => zephyr-sdk_0.15.1.bb} (83%)

diff --git a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.14.2.bb b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.1.bb
similarity index 83%
rename from meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.14.2.bb
rename to meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.1.bb
index c893652..f5a9466 100644
--- a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.14.2.bb
+++ b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.1.bb
@@ -14,8 +14,8 @@ SDK_ARCHIVE = "zephyr-sdk-${PV}_linux-${BUILD_ARCH}.tar.gz"
 SDK_NAME = "${BUILD_ARCH}"
 SRC_URI = "https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v${PV}/${SDK_ARCHIVE};subdir=${S};name=${SDK_NAME}"
 
-SRC_URI[x86_64.sha256sum] = "2ff0e4d79bffe1468247a3e1958aa9183a0252225ab721cf1c37188bd4b649a2"
-SRC_URI[aarch64.sha256sum] = "cbb616a50e940388ea737788d48dcea3624a85bb3ee04d9aae105496a21ae75e"
+SRC_URI[x86_64.sha256sum] = "0a7406045102197b9edc759b242499941814a1c6df29dd9fbd479ad50eb0fba9"
+SRC_URI[aarch64.sha256sum] = "d2c5de994376a287e8bf12e5776ab8f5105eafa14826608df085142fd01b7f84"
 
 do_configure[noexec] = "1"
 do_compile[noexec] = "1"
-- 
2.25.1


