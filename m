Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web11.5437.1612512465686856177
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Feb 2021 00:07:45 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: r5BCyXr6hicF4bSSG8mNkYS3WD1PTL2/Y+eOonD/6yopYkMwvMgVGuMQc5Y5CpwL+LooLd4KKX
 U2xHHmZ7tDGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="177893385"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; 
   d="scan'208";a="177893385"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2021 00:07:43 -0800
IronPort-SDR: 2U3BE0rNUSIrv5YSYizlabI/VZ05Q/ZdGKp78FowD479qzC46xLI8oi5dd/cbR59I3kVzhnRxL
 dSrm1Emt7wKA==
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; 
   d="scan'208";a="580875475"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2021 00:07:42 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyr-kernel-common.inc: use ZEPHYR_MODULES var
Date: Fri,  5 Feb 2021 16:18:19 +0800
Message-Id: <20210205081819.29612-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

Use ZEPHYR_MODULES variable to pass list of absolute source paths of
additional external modules.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../zephyr-kernel/zephyr-kernel-common.inc          | 13 +++++++++----
 .../zephyr-kernel/zephyr-peripheral-esp.bb          |  2 +-
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index 1357c8f..5313030 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -15,10 +15,15 @@ ZEPHYR_MAKE_OUTPUT = "zephyr.elf"
 
 
 EXTRA_OECMAKE = " -DZEPHYR_BASE=${S} -DZEPHYR_GCC_VARIANT=yocto -DBOARD=${BOARD} -DARCH=${ARCH} -DCROSS_COMPILE=${CROSS_COMPILE} -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} -DZEPHYR_TOOLCHAIN_VARIANT=yocto"
-EXTRA_OECMAKE_append_arm = " -DZEPHYR_MODULES=${S}/modules/cmsis"
-EXTRA_OECMAKE_append_nordic = "\;${S}/modules/hal/nordic"
-EXTRA_OECMAKE_append_stm32 = "\;${S}/modules/hal/stm32"
-EXTRA_OECMAKE_append_openamp = "\;${S}/modules/lib/open-amp\;${S}/modules/hal/libmetal"
+
+ZEPHYR_MODULES = ""
+ZEPHYR_MODULES_append_arm = "\;${S}/modules/cmsis"
+ZEPHYR_MODULES_append_nordic = "\;${S}/modules/hal/nordic"
+ZEPHYR_MODULES_append_stm32 = "\;${S}/modules/hal/stm32"
+ZEPHYR_MODULES_append_openamp = "\;${S}/modules/lib/open-amp\;${S}/modules/hal/libmetal"
+
+EXTRA_OECMAKE_append = " -DZEPHYR_MODULES=${ZEPHYR_MODULES}"
+
 export ZEPHYR_BASE="${S}"
 
 
diff --git a/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb b/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb
index 192c76d..24f030a 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb
@@ -6,7 +6,7 @@ ZEPHYR_SAMPLE_NAME="samples/bluetooth/peripheral_esp"
 ZEPHYR_SRC_DIR = "${S}/${ZEPHYR_SAMPLE_NAME}"
 ZEPHYR_BASE = "${S}"
 OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
-EXTRA_OECMAKE_append = "\;${S}/modules/crypto/tinycrypt"
+ZEPHYR_MODULES_append = "\;${S}/modules/crypto/tinycrypt"
 
 do_deploy () {
     install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
-- 
2.17.1

