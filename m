Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web12.18719.1625648822052673338
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jul 2021 02:07:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="206256448"
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; 
   d="scan'208";a="206256448"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2021 02:06:53 -0700
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; 
   d="scan'208";a="486741019"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2021 02:06:52 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/2] zephyr-kernel: install .efi image if available
Date: Wed,  7 Jul 2021 17:20:14 +0800
Message-Id: <20210707092014.12537-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210707092014.12537-1-naveen.kumar.saini@intel.com>
References: <20210707092014.12537-1-naveen.kumar.saini@intel.com>

EFI images are being generated for x86 platforms.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 1 +
 recipes-kernel/zephyr-kernel/zephyr-sample.inc        | 6 ++++++
 2 files changed, 7 insertions(+)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index 46f19e2..7d44b97 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -13,6 +13,7 @@ ZEPHYR_SYSROOT="${STAGING_DIR_TARGET}"
 
 ZEPHYR_MAKE_OUTPUT = "zephyr.elf"
 ZEPHYR_MAKE_BIN_OUTPUT = "zephyr.bin"
+ZEPHYR_MAKE_EFI_OUTPUT = "zephyr.efi"
 
 EXTRA_OECMAKE = "\
     -DZEPHYR_BASE=${S} \
diff --git a/recipes-kernel/zephyr-kernel/zephyr-sample.inc b/recipes-kernel/zephyr-kernel/zephyr-sample.inc
index 7b49611..77fa5ad 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-sample.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-sample.inc
@@ -9,9 +9,15 @@ do_install[noexec] = "1"
 
 do_deploy () {
     install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
+
     if [ -f ${B}/zephyr/${ZEPHYR_MAKE_BIN_OUTPUT} ]
     then
       install -D ${B}/zephyr/${ZEPHYR_MAKE_BIN_OUTPUT} ${DEPLOYDIR}/${PN}.bin
     fi
+
+    if [ -f ${B}/zephyr/${ZEPHYR_MAKE_EFI_OUTPUT} ]
+    then
+      install -D ${B}/zephyr/${ZEPHYR_MAKE_EFI_OUTPUT} ${DEPLOYDIR}/${PN}.efi
+    fi
 }
 addtask deploy after do_compile
-- 
2.17.1

