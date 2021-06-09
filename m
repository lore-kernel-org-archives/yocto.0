Received: from mga04.intel.com (mga04.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2717.1623206272937044334
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 19:38:01 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: kRxGCYoGCeXqn6BlYpVLbIYH0H0/CYGPd2FCumhOjmWJL0UiUCWuCMDBxikIlAKnizL4YlYubV
 aSVu7Zr2P+yg==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="203135726"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="203135726"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 19:38:01 -0700
IronPort-SDR: H9HzCQVdEcLdbA8jK1KJTC8q/z+QwbAvToNyKRdSuUME4L8oUbychna7Y6ATVuAPARjb5lSjMb
 yREljzouz18A==
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="476819673"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 19:38:00 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 10/10] zephyr-kernel-src: drop 2.4.0 support
Date: Wed,  9 Jun 2021 10:50:44 +0800
Message-Id: <20210609025044.8543-10-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210609025044.8543-1-naveen.kumar.saini@intel.com>
References: <20210609025044.8543-1-naveen.kumar.saini@intel.com>

v2.6.0 is available now.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../zephyr-kernel/zephyr-kernel-src-2.4.0.inc         | 11 -----------
 1 file changed, 11 deletions(-)
 delete mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.4.0.inc

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.4.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.4.0.inc
deleted file mode 100644
index a2a3770..0000000
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.4.0.inc
+++ /dev/null
@@ -1,11 +0,0 @@
-SRCREV_FORMAT = "default_cmsis"
-SRCREV_default = "7a3b253ced7333f5c0269387a7f3ed1dee69739d"
-SRCREV_cmsis = "542b2296e6d515b265e25c6b7208e8fea3014f90"
-SRCREV_nordic = "d8a6ea9695ddf792bb18bb6035c13b1daac5d79c"
-SRCREV_stm32 = "f0e11398128ac9abdff713da5d3035e6c96e9b86"
-SRCREV_open-amp = "de1b85a13032a2de1d8b6695ae5f800b613e739d"
-SRCREV_libmetal = "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
-SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
-SRCREV_mbedtls = "aef137b1af8aa7a0f43345c82459254b8832262e"
-
-PV = "2.4.0+git${SRCPV}"
-- 
2.17.1

