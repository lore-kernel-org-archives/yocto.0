Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2357.1575284695016860916
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 03:04:56 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 03:04:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; 
   d="scan'208";a="411723490"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2019 03:04:55 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 03/13] zephyr-kernel-src: updated SRC_URI to point to github
Date: Mon,  2 Dec 2019 19:08:39 +0800
Message-Id: <20191202110849.31494-3-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202110849.31494-1-naveen.kumar.saini@intel.com>
References: <20191202110849.31494-1-naveen.kumar.saini@intel.com>

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 classes/zephyr-kernel-src.bbclass                     | 3 ++-
 recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.6.bb | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/classes/zephyr-kernel-src.bbclass b/classes/zephyr-kernel-src.bbclass
index d7aa81b..4a0d554 100644
--- a/classes/zephyr-kernel-src.bbclass
+++ b/classes/zephyr-kernel-src.bbclass
@@ -3,7 +3,8 @@
 PREFERRED_VERSION_zephyr-kernel ??= "1.6.0"
 
 SRCREV = "d4e799d77a36eaf6d678b357c207411ec32b2d62"
-SRC_URI = "git://gerrit.zephyrproject.org/r/zephyr.git;protocol=https;branch=v1.6.0-branch \
+
+SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v1.6-branch \
           file://Makefile.toolchain.yocto "
 PV = "1.6.0"
 
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.6.bb b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.6.bb
index df373e8..b47e8ac 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.6.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.6.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
 
 # tag v1.6.0
 SRCREV="d4e799d77a36eaf6d678b357c207411ec32b2d62"
-SRC_URI = "git://gerrit.zephyrproject.org/r/zephyr.git;protocol=https;branch=v1.6.0-branch"
+SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v1.6-branch"
 SRC_URI += "file://Makefile.toolchain.yocto"
 
 PV = "1.6.0"
-- 
2.17.1

