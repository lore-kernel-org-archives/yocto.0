Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5522CC433EF
	for <webhook@archiver.kernel.org>; Mon, 11 Oct 2021 09:06:58 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web12.9318.1633943216951898421
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Oct 2021 02:06:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10133"; a="287711335"
X-IronPort-AV: E=Sophos;i="5.85,364,1624345200";
   d="scan'208";a="287711335"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 02:06:56 -0700
X-IronPort-AV: E=Sophos;i="5.85,364,1624345200";
   d="scan'208";a="490392207"
Received: from saininav-desk1.png.intel.com ([10.158.87.77])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 02:06:55 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 1/2] zephyr-kernel/2.7.0: add recipe
Date: Mon, 11 Oct 2021 17:21:50 +0800
Message-Id: <20211011092151.28048-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Oct 2021 09:06:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55016

https://github.com/zephyrproject-rtos/zephyr/commits/v2.7-branch

Keeping the default PREFERRED_VERSION to 2.6.1 for now.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../zephyr-kernel/zephyr-kernel-src-2.7.0.inc   | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc
new file mode 100644
index 0000000..e3424d2
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc
@@ -0,0 +1,17 @@
+SRCREV_FORMAT = "default_cmsis"
+SRCREV_default = "8a97c83040c0257d98c329dde55ae10e68544688"
+SRCREV_cmsis = "b0612c97c1401feeb4160add6462c3627fe90fc7"
+SRCREV_nordic = "a6e5299041f152da5ae0ab17b2e44e088bb96d6d"
+SRCREV_stm32 = "5c8275071ec1cf160bfe8c18bbd9330a7d714dc8"
+SRCREV_open-amp = "6010f0523cbc75f551d9256cf782f173177acdef"
+SRCREV_openthread = "5d706547ebcb0a85e11412bcd88e80e2af98c74d"
+SRCREV_libmetal = "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
+SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
+SRCREV_mbedtls = "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
+
+ZEPHYR_BRANCH = "v2.7-branch"
+PV = "2.7.0+git${SRCPV}"
+
+SRC_URI:append = " file://0001-cmake-add-yocto-toolchain.patch \
+                    file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch \
+                    "
-- 
2.17.1


