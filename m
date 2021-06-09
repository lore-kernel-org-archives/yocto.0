Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web11.2717.1623206272937044334
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 19:37:53 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: RrRCa3j6+KSEgLEtThyEyn4EaMy33GYF0aw6lFaXAdnRJU161fKF8SlUQjtd5dqFxm/a10sIoy
 STl0WPJNlMxg==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="203135693"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="203135693"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 19:37:52 -0700
IronPort-SDR: drWh7AOsDuggjglVVt53v35IbAQLybU7y+gkWczdiF0zclX2P4TskLKzD+5ADJYEEHBDCVNhsu
 0oI+1TNa49uA==
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="476819629"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 19:37:51 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 01/10] zephyr-kernel: Clone mbedtls
Date: Wed,  9 Jun 2021 10:50:35 +0800
Message-Id: <20210609025044.8543-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

From: Amit Kucheria <amit.kucheria.ext@huawei.com>

MBed TLS is a library that implements cryptographic primitives and
SSL/TLS and DTLS protocols that are needed in secure network
communications.

Add it to the kernel include files to build and link against
applications that need mbedtls.

Signed-off-by: Amit Kucheria <amit.kucheria.ext@huawei.com>
Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc | 1 +
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc       | 1 +
 2 files changed, 2 insertions(+)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
index 5d66f0f..545197f 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
@@ -6,6 +6,7 @@ SRCREV_stm32 = "cc8731dba4fd9c57d7fe8ea6149828b89c2bd635"
 SRCREV_open-amp = "de1b85a13032a2de1d8b6695ae5f800b613e739d"
 SRCREV_libmetal = "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
 SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
+SRCREV_mbedtls = "24d84ecff195fb15c889d9046e44e4804d626c67"
 
 PV = "2.5.0+git${SRCPV}"
 
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index b3b9565..01c87c4 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -13,6 +13,7 @@ SRC_URI = "\
     git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
     git://github.com/zephyrproject-rtos/hal_nordic.git;protocol=https;destsuffix=git/modules/hal/nordic;name=nordic \
     git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=https;destsuffix=git/modules/hal/stm32;name=stm32 \
+    git://github.com/zephyrproject-rtos/mbedtls.git;protocol=https;destsuffix=git/modules/lib/mbedtls;name=mbedtls \
     git://github.com/zephyrproject-rtos/open-amp.git;protocol=https;destsuffix=git/modules/lib/open-amp;name=open-amp \
     git://github.com/zephyrproject-rtos/libmetal.git;protocol=https;destsuffix=git/modules/hal/libmetal;name=libmetal \
     git://github.com/zephyrproject-rtos/tinycrypt.git;protocol=https;destsuffix=git/modules/crypto/tinycrypt;name=tinycrypt \
-- 
2.17.1

