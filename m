Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2133AE0027E
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 12:17:03 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Sep 2012 12:17:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,477,1344236400"; d="scan'208";a="212133106"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga002.jf.intel.com with ESMTP; 24 Sep 2012 12:17:02 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon, 24 Sep 2012 12:16:55 -0700
Message-Id: <8a77b9e91f643a6a6bfc9e2d495a204746f55632.1348514176.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <4ea1ddc93fe43eff86b45f7e9a1c35bc9fce222a.1348514176.git.dvhart@linux.intel.com>
References: <4ea1ddc93fe43eff86b45f7e9a1c35bc9fce222a.1348514176.git.dvhart@linux.intel.com>
In-Reply-To: <4ea1ddc93fe43eff86b45f7e9a1c35bc9fce222a.1348514176.git.dvhart@linux.intel.com>
References: <4ea1ddc93fe43eff86b45f7e9a1c35bc9fce222a.1348514176.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/3] fri2: Update to Linux 3.4 and EMGD 1.14
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
X-List-Received-Date: Mon, 24 Sep 2012 19:17:03 -0000

Update the fri2 machines to use linux-yocto 3.4 and
EMGD 1.14.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-fri2/conf/machine/fri2-noemgd.conf            |    2 +-
 meta-fri2/conf/machine/fri2.conf                   |    6 +++---
 .../linux/linux-yocto-rt_3.4.bbappend              |   15 +++++++++++++++
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   15 +++++++++++++++
 4 files changed, 34 insertions(+), 4 deletions(-)
 create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
 create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend

diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
index 9205292..3c25817 100644
--- a/meta-fri2/conf/machine/fri2-noemgd.conf
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -11,7 +11,7 @@ MACHINE_FEATURES += "wifi 3g pcbios efi"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto = "3.2%"
+PREFERRED_VERSION_linux-yocto = "3.4%"
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 39fb698..dff11a8 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -15,7 +15,7 @@ MACHINE_FEATURES += "wifi 3g pcbios efi va-impl-mixvideo"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5 ${VA_FEATURES}"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto = "3.2%"
+PREFERRED_VERSION_linux-yocto = "3.4%"
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
@@ -23,9 +23,9 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            "
 
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
-PREFERRED_VERSION_mesa-dri ?= "7.11"
+PREFERRED_VERSION_mesa-dri ?= "8.0.4"
 PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
-PREFERRED_VERSION_emgd-driver-bin ?= "1.10"
+PREFERRED_VERSION_emgd-driver-bin ?= "1.14"
 
 # Syslinux does not know about the 64MHz uart clock and it does not detect the
 # serial device by number. Use the IO port directly and divide the baud down to
diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
new file mode 100644
index 0000000..a99bb82
--- /dev/null
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
@@ -0,0 +1,15 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_fri2 = "fri2"
+KMACHINE_fri2 = "fri2"
+#KBRANCH_fri2 = "standard/preempt-rt/fri2"
+SRCREV_machine_pn-linux-yocto-rt_fri2 ?= "4ed758e1861621b6db687498e88991b5034cfa78"
+#SRCREV_meta_pn-linux-yocto-rt_fri2 ?= #"c5bddf8ea379406ffec550528e17b777a0eba24b"
+
+COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
+KMACHINE_fri2-noemgd = "fri2"
+#KBRANCH_fri2-noemgd = "standard/preempt-rt/fri2"
+SRCREV_machine_pn-linux-yocto-rt_fri2-noemgd ?= "4ed758e1861621b6db687498e88991b5034cfa78"
+#SRCREV_meta_pn-linux-yocto-rt_fri2-noemgd ?= "c5bddf8ea379406ffec550528e17b777a0eba24b"
+
+module_autoload_iwlwifi = "iwlwifi"
diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend
new file mode 100644
index 0000000..4c00413
--- /dev/null
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -0,0 +1,15 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_fri2 = "fri2"
+KMACHINE_fri2  = "fri2"
+KBRANCH_fri2 = "standard/fri2"
+SRCREV_machine_pn-linux-yocto_fri2 ?= "59c3ff750831338d05ab67d5efd7fc101c451aff"
+#SRCREV_meta_pn-linux-yocto_fri2 ?= "c5bddf8ea379406ffec550528e17b777a0eba24b"
+
+COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
+KMACHINE_fri2-noemgd  = "fri2"
+KBRANCH_fri2-noemgd = "standard/fri2"
+SRCREV_machine_pn-linux-yocto_fri2-noemgd ?= "59c3ff750831338d05ab67d5efd7fc101c451aff"
+#SRCREV_meta_pn-linux-yocto_fri2-noemgd ?= "c5bddf8ea379406ffec550528e17b777a0eba24b"
+
+module_autoload_iwlwifi = "iwlwifi"
-- 
1.7.5.4


