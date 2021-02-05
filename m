Received: from mga07.intel.com (mga07.intel.com [])
 by mx.groups.io with SMTP id smtpd.web08.5997.1612517688351563351
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Feb 2021 01:34:49 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: zPWvvjutLxcIRP7UiSyalZWd2Fc0ESya2CUwvP/NS4+bm2nKzyK/rp4JUQDaHqwvo/nfXuYU18
 dAorv8uQJLTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="245479623"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; 
   d="scan'208";a="245479623"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2021 01:34:49 -0800
IronPort-SDR: 3GCg87t15Q/V9C0F+6bXXWVb9ajgceQ1k8NpMx+sLR71ML4A5UKgG2me5TjjnsR80Ae+zpXuGs
 az7jFYzVrllQ==
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; 
   d="scan'208";a="373337110"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2021 01:34:48 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 3/5] arduino-101: drop machine configuration
Date: Fri,  5 Feb 2021 17:45:21 +0800
Message-Id: <20210205094523.33841-3-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210205094523.33841-1-naveen.kumar.saini@intel.com>
References: <20210205094523.33841-1-naveen.kumar.saini@intel.com>

No longer supported.
https://github.com/zephyrproject-rtos/zephyr/commit/ffaba63b107780562c2c76ca066a7857bc497303

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/machine/arduino-101.conf | 14 --------------
 1 file changed, 14 deletions(-)
 delete mode 100644 conf/machine/arduino-101.conf

diff --git a/conf/machine/arduino-101.conf b/conf/machine/arduino-101.conf
deleted file mode 100644
index 0773903..0000000
--- a/conf/machine/arduino-101.conf
+++ /dev/null
@@ -1,14 +0,0 @@
-#@TYPE: Machine
-#@NAME: arduino-101
-
-#@DESCRIPTION: Machine configuration for Arduino 101 Board.
-
-TARGET_OS_arduino-101 = "elfiamcu"
-require conf/machine/include/tune-iamcu.inc
-TUNE_PKGARCH_arduino-101 = "iamcu"
-
-TARGET_LINK_HASH_STYLE = ""
-ZEPHYR_INHERIT_CLASSES += "zephyr-flash-dfu"
-
-ARCH_arduino-101 = "x86"
-
-- 
2.17.1

