Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F2C8C38A2D
	for <webhook@archiver.kernel.org>; Wed, 26 Oct 2022 05:09:01 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web08.4227.1666760935720983966
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Oct 2022 22:08:56 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=n2oqE4fw;
 spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666760935; x=1698296935;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=jqSVyZJqpnNXYf+jZS7UPi2qeufdBZ/M9js6bUUEt4M=;
  b=n2oqE4fwXem4kKRG2NucHD9FfAHORcm4A5a+hSSYg3DSLTcbP+1GIEGZ
   uKRLrTI/ngq5EUiHUPvto7u5VQ0I+PM9eqrwdszKAE6BZwgoIEaJ/km/N
   LrUNRbIV0J8bipzNUTfOmmTsmO8YcNIz0JO/lp1RBdKT7wEm5BtpvNrRk
   FbnACTSMzL7qFEXgw5Li3woZp2dOSSwFrUjP6U0JX12LBFx1TO15CxjeH
   fNbow0rQ8EzMgHYx9ziJcKS9iSTEEcvi349oxQsITS6Q+6BFyJY7i/auI
   TmGZB/64/1IVTxsiMJ3Yd4PDJ9F+GjYmY2r0+Z8gurZMvtlTatgq6WVxc
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="291164836"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; 
   d="scan'208";a="291164836"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2022 22:08:55 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="634365163"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; 
   d="scan'208";a="634365163"
Received: from saininav-desk1.png.intel.com ([172.30.130.128])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2022 22:08:54 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyr-sdk: upgrade 0.14.2 -> 0.15.1
Date: Wed, 26 Oct 2022 13:29:45 +0800
Message-Id: <20221026052945.535612-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Oct 2022 05:09:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58417

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


