Received: from mga17.intel.com (mga17.intel.com [])
 by mx.groups.io with SMTP id smtpd.web09.6499.1578561525285294862
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 01:18:46 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Jan 2020 01:18:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; 
   d="scan'208";a="254531042"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga002.fm.intel.com with ESMTP; 09 Jan 2020 01:18:45 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/4] zephyr-getchar_git: remove sample program
Date: Thu,  9 Jan 2020 17:23:08 +0800
Message-Id: <20200109092310.9730-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200109092310.9730-1-naveen.kumar.saini@intel.com>
References: <20200109092310.9730-1-naveen.kumar.saini@intel.com>

This sample program does not exist anymore.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../zephyr-getchar/zephyr-getchar_git.bb      | 26 -------------------
 1 file changed, 26 deletions(-)
 delete mode 100644 recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb

diff --git a/recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb b/recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb
deleted file mode 100644
index f721033..0000000
--- a/recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb
+++ /dev/null
@@ -1,26 +0,0 @@
-
-LICENSE="Apache-2.0"
-LIC_FILES_CHKSUM = "file://src/zephyr_getchar.c;beginline=1;endline=15;md5=d78a817213b11b6bcd9fe41669a2fd4a"
-inherit deploy
-
-require recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
-
-SRCREV="b8d511be4d2b9e05c6adb413a33d6ea510aa0c6a"
-SRC_URI = "git://github.com/pfalcon/zephyr_console_helpers.git;protocol=https"
-S = "${WORKDIR}/git/zephyr_getchar"
-
-ZEPHYR_SRC_DIR = "${S}"
-ZEPHYR_BASE="${STAGING_DIR_TARGET}/usr/src/zephyr"
-
-DEPENDS += "zephyr-kernel-src"
-
-do_compile () {
-    cd ${ZEPHYR_SRC_DIR}
-    oe_runmake ${ZEPHYR_MAKE_ARGS}
-}
-
-do_deploy () {
-    install -D ${S}/outdir/${BOARD}/zephyr.elf ${DEPLOYDIR}/${PN}.elf
-}
-
-addtask deploy after do_compile
-- 
2.17.1

