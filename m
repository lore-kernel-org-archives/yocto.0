Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web08.5997.1612517688351563351
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Feb 2021 01:34:48 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: HAOvJtqeQ1uODpHA5xqxcIePEac0+vpVxMiVU68rIOzQ5xby4tUl9wDlQ+g3ssgu0QaHXeqM8i
 mp8xAwNAAbpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="245479614"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; 
   d="scan'208";a="245479614"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2021 01:34:46 -0800
IronPort-SDR: YsNnxbybYr2vdc96bnAlSMYolW3Ao8Z50b4/7rvpaY40plIAIyGtYIFlahl6w5G+Jzvoa3YwLU
 R1VzTrF1+K6w==
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; 
   d="scan'208";a="373337103"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2021 01:34:45 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 1/5] zephyr-hci-uart: set COMPATIBLE_MACHINE to 96b-nitrogen machine
Date: Fri,  5 Feb 2021 17:45:19 +0800
Message-Id: <20210205094523.33841-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

Fix recipe to build.
Support for Board arduino-101-ble already dropped from v1.12

Ref:
https://github.com/zephyrproject-rtos/zephyr/blob/v2.4-branch/samples/bluetooth/hci_uart/README.rst
https://github.com/zephyrproject-rtos/zephyr/blob/v2.4-branch/samples/bluetooth/hci_uart/boards/96b_nitrogen.conf

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-hci-uart.bb | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-hci-uart.bb b/recipes-kernel/zephyr-kernel/zephyr-hci-uart.bb
index b70542a..ec6b13e 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-hci-uart.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-hci-uart.bb
@@ -2,19 +2,16 @@ require zephyr-kernel.inc
 require zephyr-kernel-common.inc
 inherit deploy
 
-COMPATIBLE_MACHINE = "(arduino-101-ble)"
+COMPATIBLE_MACHINE = "(96b-nitrogen)"
 
 ZEPHYR_SRC_DIR = "${S}/samples/bluetooth/hci_uart"
 ZEPHYR_BASE = "${S}"
 
-do_compile () {
-    cd ${ZEPHYR_SRC_DIR}
-    oe_runmake ${ZEPHYR_MAKE_ARGS}
-}
+OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
 
 do_deploy () {
-    install -D samples/bluetooth/hci_uart/outdir/${BOARD}/zephyr.elf ${DEPLOYDIR}/${PN}.elf
-    install -D samples/bluetooth/hci_uart/outdir/${BOARD}/zephyr.bin ${DEPLOYDIR}/${PN}.bin
+    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
 }
 
 addtask deploy after do_compile
+do_install[noexec] = "1"
-- 
2.17.1

