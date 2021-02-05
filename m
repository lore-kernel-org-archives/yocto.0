Received: from mga07.intel.com (mga07.intel.com [])
 by mx.groups.io with SMTP id smtpd.web08.5997.1612517688351563351
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Feb 2021 01:34:51 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: 8G/Z6g6tJZvMRf4BhnX5FJwuJMq59cte57p8BUX7hGDVzWjgT0GTEngurJoJtvUjEa/3kdqj5X
 8hrcL68ugOeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="245479627"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; 
   d="scan'208";a="245479627"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2021 01:34:51 -0800
IronPort-SDR: fWeNpUBuwhGoh9hcZIJ2L2NJSheepRpbs3y7wg/Mbop4taGbJIts16AKE5rL+DDgbbmkBMQySN
 SkZpX7YHF/Tw==
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; 
   d="scan'208";a="373337120"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2021 01:34:50 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 5/5] arduino-101-ble.conf: drop machine configuration
Date: Fri,  5 Feb 2021 17:45:23 +0800
Message-Id: <20210205094523.33841-5-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210205094523.33841-1-naveen.kumar.saini@intel.com>
References: <20210205094523.33841-1-naveen.kumar.saini@intel.com>

No longer supported.
https://github.com/zephyrproject-rtos/zephyr/commit/66d60d29411fa34725b450a9e5fa000f1c69b747

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/machine/arduino-101-ble.conf | 12 ------------
 1 file changed, 12 deletions(-)
 delete mode 100644 conf/machine/arduino-101-ble.conf

diff --git a/conf/machine/arduino-101-ble.conf b/conf/machine/arduino-101-ble.conf
deleted file mode 100644
index 55c3857..0000000
--- a/conf/machine/arduino-101-ble.conf
+++ /dev/null
@@ -1,12 +0,0 @@
-#@TYPE: Machine
-#@NAME: arduino-101-ble
-
-#@DESCRIPTION: Machine configuration for Arduino 101 Board.
-
-DEFAULTTUNE = "cortexm0"
-require conf/machine/include/tune-cortexm0.inc
-
-TARGET_LINK_HASH_STYLE = ""
-ZEPHYR_INHERIT_CLASSES += "zephyr-flash-dfu"
-
-ARCH_arduino-101-ble = "arm"
-- 
2.17.1

