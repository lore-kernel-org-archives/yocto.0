Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web09.3205.1628652767802720754
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Aug 2021 20:32:47 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="211935559"
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; 
   d="scan'208";a="211935559"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Aug 2021 20:32:47 -0700
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; 
   d="scan'208";a="484657085"
Received: from saininav-desk1.png.intel.com ([10.158.87.77])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Aug 2021 20:32:46 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/2] zephyr-kernel-src-dev.inc: add dev recipe
Date: Wed, 11 Aug 2021 11:46:41 +0800
Message-Id: <20210811034641.2176-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210811034641.2176-1-naveen.kumar.saini@intel.com>
References: <20210811034641.2176-1-naveen.kumar.saini@intel.com>

It allow to build against latest main branch. User need
to have following config locally to use it.

PREFERRED_VERSION_zephyr-kernel = "dev"

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../zephyr-kernel/zephyr-kernel-src-dev.inc     | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src-dev.inc

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-dev.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-dev.inc
new file mode 100644
index 0000000..da2a5d5
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-dev.inc
@@ -0,0 +1,17 @@
+SRCREV_FORMAT = "default_cmsis"
+SRCREV_default = "72bb75a360ce05bfc94ff0fbecda2e2d094e3d84"
+SRCREV_cmsis = "c3bd2094f92d574377f7af2aec147ae181aa5f8e"
+SRCREV_nordic = "00fd2aa97a22ea1052d9dabe1b18ab396daab93a"
+SRCREV_stm32 = "4200321ef1cd27cacc37b0439389424156bb1267"
+SRCREV_open-amp = "6010f0523cbc75f551d9256cf782f173177acdef"
+SRCREV_openthread = "542b14a5bc5b38f29e2cab892c66da670a524b05"
+SRCREV_libmetal = "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
+SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
+SRCREV_mbedtls = "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
+
+ZEPHYR_BRANCH = "main"
+PV = "2.6.0+git${SRCPV}"
+
+SRC_URI:append = " file://0001-cmake-add-yocto-toolchain.patch \
+                    file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch \
+                    "
-- 
2.17.1

