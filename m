Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2357.1575284695016860916
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 03:04:57 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 03:04:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; 
   d="scan'208";a="411723492"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2019 03:04:56 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 04/13] zephyr-helloworld: add
Date: Mon,  2 Dec 2019 19:08:40 +0800
Message-Id: <20191202110849.31494-4-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202110849.31494-1-naveen.kumar.saini@intel.com>
References: <20191202110849.31494-1-naveen.kumar.saini@intel.com>

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../zephyr-kernel/zephyr-helloworld.bb         | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-helloworld.bb

diff --git a/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb b/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
new file mode 100644
index 0000000..8900bfd
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
@@ -0,0 +1,18 @@
+require zephyr-kernel.inc
+require zephyr-kernel-common.inc
+inherit deploy
+
+ZEPHYR_SRC_DIR = "${S}/samples/hello_world"
+ZEPHYR_BASE = "${S}"
+
+do_compile () {
+    cd ${ZEPHYR_SRC_DIR}
+    oe_runmake ${ZEPHYR_MAKE_ARGS}
+}
+
+do_deploy () {
+    install -D samples/hello_world/outdir/${BOARD}/zephyr.elf ${DEPLOYDIR}/${PN}.elf
+    install -D samples/hello_world/outdir/${BOARD}/zephyr.bin ${DEPLOYDIR}/${PN}.bin
+}
+
+addtask deploy after do_compile
-- 
2.17.1

