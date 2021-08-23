Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web09.21121.1629707970529503281
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Aug 2021 01:39:30 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="302645953"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; 
   d="scan'208";a="302645953"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2021 01:39:29 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; 
   d="scan'208";a="425080729"
Received: from saininav-desk1.png.intel.com ([10.158.87.77])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2021 01:39:28 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] layer.conf: update machine confs with new tune locations
Date: Mon, 23 Aug 2021 16:53:28 +0800
Message-Id: <20210823085328.34759-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

Added logic to make sure, it does not break with old releases.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/layer.conf                             | 2 ++
 conf/machine/include/tune-corei7-common.inc | 4 ++--
 conf/machine/qemu-x86.conf                  | 2 +-
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 5f13c27..35f1075 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -16,3 +16,5 @@ LAYERVERSION_zephyr = "1"
 LAYERDEPENDS_zephyr = "core meta-python"
 
 LAYERSERIES_COMPAT_zephyr = "dunfell gatesgarth hardknott honister"
+
+X86_TUNE_DIR = "${@bb.utils.contains('LAYERSERIES_CORENAMES', 'honister', 'include/x86', 'include', d)}"
diff --git a/conf/machine/include/tune-corei7-common.inc b/conf/machine/include/tune-corei7-common.inc
index 509d190..b68fc05 100644
--- a/conf/machine/include/tune-corei7-common.inc
+++ b/conf/machine/include/tune-corei7-common.inc
@@ -1,6 +1,6 @@
 DEFAULTTUNE ?= "corei7-64"
-require conf/machine/include/tune-corei7.inc
-require conf/machine/include/x86-base.inc
+require conf/machine/${X86_TUNE_DIR}/tune-corei7.inc
+require conf/machine/${X86_TUNE_DIR}/x86-base.inc
 
 # Add x86 to MACHINEOVERRIDE
 MACHINEOVERRIDES =. "x86:"
diff --git a/conf/machine/qemu-x86.conf b/conf/machine/qemu-x86.conf
index 31ce80d..ae7716c 100644
--- a/conf/machine/qemu-x86.conf
+++ b/conf/machine/qemu-x86.conf
@@ -3,7 +3,7 @@
 #@DESCRIPTION: Machine for Zephyr BOARD qemu_x86
 
 require conf/machine/include/qemu.inc
-require conf/machine/include/tune-i586.inc
+require conf/machine/${X86_TUNE_DIR}/tune-i586.inc
 
 ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
 
-- 
2.17.1

