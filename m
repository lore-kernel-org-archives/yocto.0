Received: from mga04.intel.com (mga04.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2717.1623206272937044334
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 19:38:00 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: ipyj4+qYow4UrM3vbiN7w9bgaKRS566szkpp79ajvsQRvw0HVrAaSbEqNiU6ajTtjnh1xTFXhB
 NqznXm56uPcQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="203135723"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="203135723"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 19:38:00 -0700
IronPort-SDR: Fycbx0XSkfjCckXE9CUcBXp/XDMQHAImaaM+X+f1b2NkOJnLzo4S/Rb8ErcMShrb34QxDdfck0
 +v08Z7pKGEUg==
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="476819668"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 19:37:59 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 09/10] zephyr-kernel-src-2.4.0.inc: add srcrev for mbedtls module
Date: Wed,  9 Jun 2021 10:50:43 +0800
Message-Id: <20210609025044.8543-9-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210609025044.8543-1-naveen.kumar.saini@intel.com>
References: <20210609025044.8543-1-naveen.kumar.saini@intel.com>

Ref: https://github.com/zephyrproject-rtos/zephyr/blob/zephyr-v2.4.0/west.yml#L93

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.4.0.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.4.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.4.0.inc
index d1ef80e..a2a3770 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.4.0.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.4.0.inc
@@ -6,5 +6,6 @@ SRCREV_stm32 = "f0e11398128ac9abdff713da5d3035e6c96e9b86"
 SRCREV_open-amp = "de1b85a13032a2de1d8b6695ae5f800b613e739d"
 SRCREV_libmetal = "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
 SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
+SRCREV_mbedtls = "aef137b1af8aa7a0f43345c82459254b8832262e"
 
 PV = "2.4.0+git${SRCPV}"
-- 
2.17.1

