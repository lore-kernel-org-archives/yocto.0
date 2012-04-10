Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF79DE0059A
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 11:56:58 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 Apr 2012 11:56:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="129291065"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by azsmga001.ch.intel.com with ESMTP; 10 Apr 2012 11:56:58 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Tue, 10 Apr 2012 11:55:31 -0700
Message-Id: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1334083666.git.kishore.k.bodke@intel.com>
References: <cover.1334083666.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/9] [meta-intel] Cedartrail: Split machine.conf
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Apr 2012 18:56:58 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Have two machine.conf files.
One for pvr and the other for no-pvr.
PVR machine.conf has the both pcbios and efi support.
no-pvr has only pcbios support.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta-cedartrail/conf/machine/cedartrail-nopvr.conf |   19 +++++++++++++++++++
 meta-cedartrail/conf/machine/cedartrail.conf       |   10 ++++++++--
 2 files changed, 27 insertions(+), 2 deletions(-)
 create mode 100644 meta-cedartrail/conf/machine/cedartrail-nopvr.conf

diff --git a/meta-cedartrail/conf/machine/cedartrail-nopvr.conf b/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
new file mode 100644
index 0000000..767137e
--- /dev/null
+++ b/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
@@ -0,0 +1,19 @@
+#@TYPE: Machine
+#@NAME: Cedartrail
+
+#@DESCRIPTION: Machine configuration for Cedartrail systems
+# i.e. Cedarview processor + Tiger Point Chipset
+
+require conf/machine/include/tune-atom.inc
+require conf/machine/include/ia32-base.inc
+
+XSERVER ?= "${XSERVER_IA32_BASE} \
+           ${XSERVER_IA32_EXT} \
+           ${XSERVER_IA32_VESA} \
+           "
+
+SYSLINUX_OPTS = "serial 0 115200"
+SERIAL_CONSOLE = "115200 ttyS0"
+APPEND += "console=ttyS0,115200 console=tty0"
+APPEND += "video=vesafb vga=0x318"
+
diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index 3bd5cf8..4d77b04 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -7,9 +7,15 @@
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
+MACHINE_FEATURES += "pcbios efi"
+
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
-           ${XSERVER_IA32_VESA} \
+           cdv-pvr-driver \
            "
+PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
+PREFERRED_VERSION_mesa-dri ?= "7.11"
 
-APPEND += "video=vesafb vga=0x318"
+SYSLINUX_OPTS = "serial 0 115200"
+SERIAL_CONSOLE = "115200 ttyS0"
+APPEND += "console=ttyS0,115200 console=tty0"
-- 
1.7.5.4


