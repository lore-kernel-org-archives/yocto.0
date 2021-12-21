Return-Path: <jing.hui.tham@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9B9C433EF
	for <webhook@archiver.kernel.org>; Tue, 21 Dec 2021 09:01:56 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web08.3708.1640077315677135445
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Dec 2021 01:01:56 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=YmS08FCR;
 spf=pass (domain: intel.com, ip: 192.55.52.120,
 mailfrom: jing.hui.tham@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1640077315; x=1671613315;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=eJQluAHOMyp1mN+yQRfBw5NbYjXJW7hl3HUc2SFp33Q=;
  b=YmS08FCRw4S8TCdssyWlJOhFJSr4dE2cVGGl83w7bdVPbxS6Wmuue0v2
   mHTyACizPP6VSQsMA6NFbzaegV7t0Zb/zciSKjuzbdB2Y4+t30I+jMl8k
   oRClX4ZMWK+TsiYUSPm1YRPeEkGFg+mhysYVhwbZVgpBV+wQjIIQmhQ/0
   Ta/+VgQON8/HvGy0lMJgPVQZzY1DMHQDRcLtorkCe0L1o5YWA4pvHHh4D
   FgqJQ/QNQ9biTRBm8PdEpdCtiSaqI8vxm0tiZjEb1uIEap07kV/bjGyIR
   TMp4R5fuEoe8efRqyh/8avBJ7UnCjSsdJiapULid5eN3dLghcZGn/SbNP
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10204"; a="239103557"
X-IronPort-AV: E=Sophos;i="5.88,222,1635231600";
   d="scan'208";a="239103557"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 01:01:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,222,1635231600";
   d="scan'208";a="484357546"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by orsmga002.jf.intel.com with ESMTP; 21 Dec 2021 01:01:52 -0800
From: Jing Hui Tham <jing.hui.tham@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyr-kernel: upgrade 2.7.0 -> 2.7.1
Date: Tue, 21 Dec 2021 17:01:46 +0800
Message-Id: <20211221090146.70131-1-jing.hui.tham@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Dec 2021 09:01:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55635

From: JingHuiTham <jing.hui.tham@intel.com>

Zephyr 2.7.1 release notes:
https://github.com/zephyrproject-rtos/zephyr/releases/tag/zephyr-v2.7.1

Signed-off-by: JingHuiTham <jing.hui.tham@intel.com>
---
 ...ephyr-kernel-src-2.7.0.inc => zephyr-kernel-src-2.7.1.inc} | 4 ++--
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc            | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename recipes-kernel/zephyr-kernel/{zephyr-kernel-src-2.7.0.inc => zephyr-kernel-src-2.7.1.inc} (90%)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.1.inc
similarity index 90%
rename from recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc
rename to recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.1.inc
index 2fdda35..9d31c69 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.1.inc
@@ -1,6 +1,6 @@
 SRCREV_FORMAT = "default_cmsis"
 SRCREV_cmsis = "b0612c97c1401feeb4160add6462c3627fe90fc7"
-SRCREV_default = "3f826560aaf81a444018293bd6acce3c339fe150"
+SRCREV_default = "e4da3e528088a34a9989f5a50e7ed3149d57de92"
 SRCREV_libmetal = "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
 SRCREV_lvgl = "31acbaa36e9e74ab88ac81e3d21e7f1d00a71136"
 SRCREV_mbedtls = "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
@@ -11,7 +11,7 @@ SRCREV_stm32 = "5c8275071ec1cf160bfe8c18bbd9330a7d714dc8"
 SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
 
 ZEPHYR_BRANCH = "v2.7-branch"
-PV = "2.7.0+git${SRCPV}"
+PV = "2.7.1+git${SRCPV}"
 
 SRC_URI:append = " \
     file://0001-cmake-add-yocto-toolchain.patch \
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index c973c2a..da1efea 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -23,5 +23,5 @@ SRC_URI = "\
 S = "${WORKDIR}/git"
 
 # Default to a stable version
-PREFERRED_VERSION_zephyr-kernel ??= "2.7.0"
+PREFERRED_VERSION_zephyr-kernel ??= "2.7.1"
 include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
-- 
2.33.1


