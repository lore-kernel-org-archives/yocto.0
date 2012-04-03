Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75B26E013FF
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 16:45:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Apr 2012 16:45:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="125048245"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.75])
	by orsmga001.jf.intel.com with ESMTP; 03 Apr 2012 16:45:20 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	yocto@yoctoproject.org
Date: Tue,  3 Apr 2012 16:43:56 -0700
Message-Id: <7afc5935cfcfafe9f398a3627f7a26ad07b00a22.1333496206.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <64382e0b94ea439163d2f2dfa4681afac8e70e67.1333496206.git.kishore.k.bodke@intel.com>
References: <64382e0b94ea439163d2f2dfa4681afac8e70e67.1333496206.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1333496206.git.kishore.k.bodke@intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
Subject: [PATCH 5/7] Cedartrail: Separte out machine.conf files.
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
X-List-Received-Date: Tue, 03 Apr 2012 23:45:32 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Have two machine.conf files.
One for pvr and the other for no-pvr.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta-cedartrail/conf/machine/cedartrail-nopvr.conf |   21 ++++++++++++++++++++
 meta-cedartrail/conf/machine/cedartrail.conf       |   13 ++++++++++-
 .../formfactor/cedartrail-nopvr/machconfig         |    3 ++
 .../tasks/task-core-tools-profile.bbappend         |    2 +-
 4 files changed, 36 insertions(+), 3 deletions(-)
 create mode 100644 meta-cedartrail/conf/machine/cedartrail-nopvr.conf
 create mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig

diff --git a/meta-cedartrail/conf/machine/cedartrail-nopvr.conf b/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
new file mode 100644
index 0000000..5041a9a
--- /dev/null
+++ b/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
@@ -0,0 +1,21 @@
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
+APPEND += "video=vesafb vga=0x318"
+
+MACHINE_EXTRA_RRECOMMENDS = "cedartrail-audio"
+
+SYSLINUX_OPTS = "serial 0 115200"
+SERIAL_CONSOLE = "115200 ttyS0"
+APPEND += "console=ttyS0,115200 console=tty0"
diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index 3bd5cf8..d0850f8 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -7,9 +7,18 @@
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
+MACHINE_FEATURES += "pcbios efi"
+
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
-           ${XSERVER_IA32_VESA} \
+           ${XSERVER_IA32_PVR} \
            "
 
-APPEND += "video=vesafb vga=0x318"
+PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
+PREFERRED_VERSION_mesa-dri ?= "7.11"
+
+MACHINE_EXTRA_RRECOMMENDS = "cedartrail-audio"
+
+SYSLINUX_OPTS = "serial 0 115200"
+SERIAL_CONSOLE = "115200 ttyS0"
+APPEND += "console=ttyS0,115200 console=tty0"
diff --git a/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig b/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend b/meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend
index e972712..d49a3f5 100644
--- a/meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend
+++ b/meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend
@@ -1,2 +1,2 @@
 RRECOMMENDS_task-core-tools-profile_append_cedartrail = " systemtap"
-
+RRECOMMENDS_task-core-tools-profile_append_cedartrail-nopvr = " systemtap"
-- 
1.7.5.4


