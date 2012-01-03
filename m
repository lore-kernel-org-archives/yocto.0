Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4ADFE0070D
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2012 08:18:37 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 03 Jan 2012 08:18:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="52838430"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.13.127])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Jan 2012 08:18:36 -0800
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Jan 2012 08:18:32 -0800
Message-Id: <fff7c9f046a705e6ec34bd6ed58b9b55b8144dec.1325607441.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1325607441.git.sgw@linux.intel.com>
References: <cover.1325607441.git.sgw@linux.intel.com>
In-Reply-To: <cover.1325607441.git.sgw@linux.intel.com>
References: <cover.1325607441.git.sgw@linux.intel.com>
Subject: [CONSOLIDATED PULL (meta-yocto) 1/4] linux-yocto/meta-yocto: routerstationpro/beagleboard: add 3.0.x support
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
X-List-Received-Date: Tue, 03 Jan 2012 16:18:38 -0000

From: Bruce Ashfield <bruce.ashfield@windriver.com>

Updating the routerstationpro and beagleboard compatibility and SRCREV
to pickup v3.0.12 support.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/machine/beagleboard.conf           |    1 +
 meta-yocto/conf/machine/routerstationpro.conf      |    1 +
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 3 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
index 4d21388..dd549d0 100644
--- a/meta-yocto/conf/machine/beagleboard.conf
+++ b/meta-yocto/conf/machine/beagleboard.conf
@@ -32,6 +32,7 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
 SERIAL_CONSOLE = "115200 ttyO2"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.0%"
 
 KERNEL_IMAGETYPE = "uImage"
 
diff --git a/meta-yocto/conf/machine/routerstationpro.conf b/meta-yocto/conf/machine/routerstationpro.conf
index 9338ca1..83c2f8a 100644
--- a/meta-yocto/conf/machine/routerstationpro.conf
+++ b/meta-yocto/conf/machine/routerstationpro.conf
@@ -11,6 +11,7 @@ KERNEL_IMAGETYPE = "vmlinux"
 KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.0%"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
 XSERVER = "xserver-kdrive-fbdev"
 
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 4f68bc1..e510880 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -5,11 +5,11 @@ KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
 
 SRCREV_machine_atom-pc ?= "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
-SRCREV_machine_routerstationpro ?= "ed0e03a8b04388a982141919da805392b7ca1c91"
+SRCREV_machine_routerstationpro ?= "8f38705810634a84326d3a3ebe9653951aa4bf61"
 SRCREV_machine_mpc8315e-rdb ?= "58ffdb8000e34d2ba7c3ef278b26680b0886e8b5"
-SRCREV_machine_beagleboard ?= "2bba211297d10047637b8f49abd2c5415480ce4d"
+SRCREV_machine_beagleboard ?= "6b4bf6173b0bd2d1619a8218bac66ebc4681dd35"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-# COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-# COMPATIBLE_MACHINE_beagleboard = "beagleboard"
+COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
+COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
-- 
1.7.6.4


