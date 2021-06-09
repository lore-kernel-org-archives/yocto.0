Received: from mga04.intel.com (mga04.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2717.1623206272937044334
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 19:37:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: 53IqrjUeWrFwmIbQxsKohvEoqkSrI+ezcV2zOdNHd//WcJsxP4ZWYQwK+suqIypxutRRUauHbd
 o3fQien7PLyg==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="203135707"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="203135707"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 19:37:57 -0700
IronPort-SDR: OBtB64b+aynXBjl+mcZpOjmqXmg/QcnoczSxmUC5vaOa37g6MDxSQGrPGYg8TFyRIZRF85viWe
 AyvrxhKoVCZQ==
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="476819656"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 19:37:56 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 06/10] zephyr-kernel-src: add 2.6.0 release
Date: Wed,  9 Jun 2021 10:50:40 +0800
Message-Id: <20210609025044.8543-6-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210609025044.8543-1-naveen.kumar.saini@intel.com>
References: <20210609025044.8543-1-naveen.kumar.saini@intel.com>

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

Zephyr 2.6.0 release notes:
  https://github.com/zephyrproject-rtos/zephyr/releases/tag/zephyr-v2.6.0

Update the following submodules to most recent revisions:
- hal_nordic:
    nrfx_dppi: Fix variable used in logging function
- hal_stm32:
    dts/st: use a pull-down for SPI SCK pin
- openamp:
    lib: update open-amp lib to release v2021.04.0
- libmetal:
    lib: update libmetal to release v2021.04.0 + VERSION path fix

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../zephyr-kernel/zephyr-kernel-src-2.6.0.inc       | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
new file mode 100644
index 0000000..7ef1697
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
@@ -0,0 +1,13 @@
+SRCREV_FORMAT = "default_cmsis"
+SRCREV_default = "79a6c07536bc14583198f8e3555df6134d8822cf"
+SRCREV_cmsis = "c3bd2094f92d574377f7af2aec147ae181aa5f8e"
+SRCREV_nordic = "574493fe29c79140df4827ab5d4a23df79d03681"
+SRCREV_stm32 = "f8ff8d25aa0a9e65948040c7b47ec67f3fa300df"
+SRCREV_open-amp = "6010f0523cbc75f551d9256cf782f173177acdef"
+SRCREV_libmetal = "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
+SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
+
+PV = "2.6.0+git${SRCPV}"
+
+SRC_URI_append = " file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch \
+            "
-- 
2.17.1

