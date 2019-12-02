Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2357.1575284695016860916
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 03:05:05 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 03:05:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; 
   d="scan'208";a="411723581"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2019 03:05:05 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 13/13] zephyr-philosophers: update recipe to build against v2.0
Date: Mon,  2 Dec 2019 19:08:49 +0800
Message-Id: <20191202110849.31494-13-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202110849.31494-1-naveen.kumar.saini@intel.com>
References: <20191202110849.31494-1-naveen.kumar.saini@intel.com>

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-philosophers.bb | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
index 425bebb..b8262ca 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
@@ -4,15 +4,11 @@ inherit deploy
 
 ZEPHYR_SRC_DIR = "${S}/samples/philosophers"
 ZEPHYR_BASE = "${S}"
-
-do_compile () {
-    cd ${ZEPHYR_SRC_DIR}
-    oe_runmake ${ZEPHYR_MAKE_ARGS}
-}
+OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
 
 do_deploy () {
-    install -D samples/philosophers/outdir/${BOARD}/zephyr.elf ${DEPLOYDIR}/${PN}.elf
-    install -D samples/philosophers/outdir/${BOARD}/zephyr.bin ${DEPLOYDIR}/${PN}.bin
+    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
 }
 
 addtask deploy after do_compile
+do_install[noexec] = "1"
-- 
2.17.1

