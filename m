Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1917E0140E
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:13:30 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 01 May 2012 15:13:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="95224174"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by AZSMGA002.ch.intel.com with ESMTP; 01 May 2012 15:13:30 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:12:51 -0700
Message-Id: <af85a6ca90545e08cf57fce239b3a50402aa399e.1335909082.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
Subject: [PATCH 7/7] sys940x: Update to linux-yocto 3.2
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
X-List-Received-Date: Tue, 01 May 2012 22:13:31 -0000

Prefer the 3.2 version of linux-yocto.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-sys940x/conf/machine/sys940x-noemgd.conf      |    2 ++
 meta-sys940x/conf/machine/sys940x.conf             |    2 ++
 .../linux/linux-yocto-rt_3.2.bbappend              |   12 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |   15 +++++++++++++++
 4 files changed, 31 insertions(+), 0 deletions(-)
 create mode 100644 meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-sys940x/recipes-kernel/linux/linux-yocto_3.2.bbappend

diff --git a/meta-sys940x/conf/machine/sys940x-noemgd.conf b/meta-sys940x/conf/machine/sys940x-noemgd.conf
index 537e419..23ec0bc 100644
--- a/meta-sys940x/conf/machine/sys940x-noemgd.conf
+++ b/meta-sys940x/conf/machine/sys940x-noemgd.conf
@@ -10,6 +10,8 @@ require conf/machine/include/ia32-base.inc
 # Add "pcbios" if you have a non-efi version of the firmware
 MACHINE_FEATURES += "efi pcbios"
 
+PREFERRED_VERSION_linux-yocto ?= "3.2%"
+
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
            ${XSERVER_IA32_VESA} \
diff --git a/meta-sys940x/conf/machine/sys940x.conf b/meta-sys940x/conf/machine/sys940x.conf
index 7123653..4b9b91d 100644
--- a/meta-sys940x/conf/machine/sys940x.conf
+++ b/meta-sys940x/conf/machine/sys940x.conf
@@ -10,6 +10,8 @@ require conf/machine/include/ia32-base.inc
 # Add "pcbios" if you have a non-efi version of the firmware
 MACHINE_FEATURES += "efi pcbios"
 
+PREFERRED_VERSION_linux-yocto ?= "3.2%"
+
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
            ${XSERVER_IA32_EMGD} \
diff --git a/meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
new file mode 100644
index 0000000..888bb98
--- /dev/null
+++ b/meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
@@ -0,0 +1,12 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_sys940x = "sys940x"
+KMACHINE_sys940x = "sys940x"
+
+COMPATIBLE_MACHINE_sys940x-noemgd = "sys940x-noemgd"
+KMACHINE_sys940x-noemgd = "sys940x"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_sys940x = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_sys940x ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_sys940x ?= XXXX
diff --git a/meta-sys940x/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-sys940x/recipes-kernel/linux/linux-yocto_3.2.bbappend
new file mode 100644
index 0000000..98d6562
--- /dev/null
+++ b/meta-sys940x/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -0,0 +1,15 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+
+COMPATIBLE_MACHINE_sys940x = "sys940x"
+KMACHINE_sys940x  = "sys940x"
+KBRANCH_sys940x = "standard/default/base"
+
+COMPATIBLE_MACHINE_sys940x-noemgd = "sys940x-noemgd"
+KMACHINE_sys940x-noemgd  = "sys940x"
+KBRANCH_sys940x-noemgd = "standard/default/base"
+
+#SRCREV_machine_pn-linux-yocto_sys940x ?= "5df0b4c2538399aed543133b3855f809adf08ab8"
+#SRCREV_meta_pn-linux-yocto_sys940x ?= "77ca4855e80acb8dad21acea946908716c308b5b"
+#SRCREV_machine_pn-linux-yocto_sys940x-noemgd ?= "5df0b4c2538399aed543133b3855f809adf08ab8"
+#SRCREV_meta_pn-linux-yocto_sys940x-noemgd ?= "77ca4855e80acb8dad21acea946908716c308b5b"
-- 
1.7.7.6


