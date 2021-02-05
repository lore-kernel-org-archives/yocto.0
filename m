Received: from mga07.intel.com (mga07.intel.com [])
 by mx.groups.io with SMTP id smtpd.web08.5997.1612517688351563351
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Feb 2021 01:34:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: ir9PsK2LpyKuAa7c4C3QtOFaXnO5ku7oI4/9UevmsDwxMIytum9oqjFev70ObZIRrc+FuhquIz
 Pp9YYwGvX7/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="245479624"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; 
   d="scan'208";a="245479624"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2021 01:34:50 -0800
IronPort-SDR: T4bP8PniRsXV7LZzHxGIqh2gRQ8Zphjv5uqeERlk6E+Y2eMwv97gSllJjaMoS5HuPCdqMDtBte
 +VmU26PKoQGA==
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; 
   d="scan'208";a="373337115"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2021 01:34:49 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 4/5] arduino-101-sss.conf: drop machine configuration
Date: Fri,  5 Feb 2021 17:45:22 +0800
Message-Id: <20210205094523.33841-4-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210205094523.33841-1-naveen.kumar.saini@intel.com>
References: <20210205094523.33841-1-naveen.kumar.saini@intel.com>

No longer supported.
https://github.com/zephyrproject-rtos/zephyr/commit/ffaba63b107780562c2c76ca066a7857bc497303

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/machine/arduino-101-sss.conf | 21 ---------------------
 1 file changed, 21 deletions(-)
 delete mode 100644 conf/machine/arduino-101-sss.conf

diff --git a/conf/machine/arduino-101-sss.conf b/conf/machine/arduino-101-sss.conf
deleted file mode 100644
index a27f672..0000000
--- a/conf/machine/arduino-101-sss.conf
+++ /dev/null
@@ -1,21 +0,0 @@
-#@TYPE: Machine
-#@NAME: arduino-101-sss
-
-#@DESCRIPTION: Machine configuration for Arduino 101 Board (ARC Core).
-
-TUNE_FEATURES ="arc quark-se no-sdata no-delete-null-pointer-checks"
-
-require conf/machine/include/tune-arc.inc
-PACKAGE_EXTRA_ARCHS_tune-arc = "arc"
-
-PREFERRED_VERSION_gcc-cross-${TARGET_ARCH} = "6.x.arc"
-PREFERRED_VERSION_gcc-cross-canadian-${TRANSLATED_TARGET_ARCH} = "6.x.arc"
-PREFERRED_VERSION_libgcc = "6.x.arc"
-
-PREFERRED_VERSION_binutils-cross-${TARGET_ARCH} = "2.26+gitarc"
-PREFERRED_VERSION_binutils-cross-canadian-${TRANSLATED_TARGET_ARCH} = "2.26+gitarc"
-
-TARGET_LINK_HASH_STYLE = ""
-ZEPHYR_INHERIT_CLASSES += "zephyr-flash-dfu"
-
-ARCH_arduino-101-sss = "arc"
-- 
2.17.1

