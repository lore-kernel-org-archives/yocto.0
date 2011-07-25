Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 55D544C80ADD
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2011 15:56:45 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Jul 2011 13:56:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,264,1309762800"; d="scan'208";a="29950647"
Received: from unknown (HELO localhost) ([10.255.14.130])
	by orsmga002.jf.intel.com with ESMTP; 25 Jul 2011 13:56:44 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 25 Jul 2011 15:56:31 -0500
Message-Id: <313fd4fd8f2cdd612e0a896cb7cad48c6337317e.1311626316.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1311626316.git.tom.zanussi@intel.com>
References: <cover.1311626316.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-jasperforeset: switch to linux-yocto 3.0 kernel
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
X-List-Received-Date: Mon, 25 Jul 2011 20:56:45 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Switch jasperforest to the 3.0 kernel, lock it down, and update kernel
SRCREVs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-jasperforest/conf/machine/jasperforest.conf   |    1 +
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++++++
 2 files changed, 9 insertions(+), 0 deletions(-)
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend

diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index 3f8591a..1d875b5 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -15,6 +15,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 KERNEL_IMAGETYPE = "bzImage"
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_VERSION_linux-yocto = "3.0+git%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend
new file mode 100644
index 0000000..52f0a6e
--- /dev/null
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_jasperforest = "jasperforest"
+
+KMACHINE_jasperforest  = "yocto/standard/common-pc-64/jasperforest"
+
+SRCREV_machine_pn-linux-yocto_jasperforest ?= "3216e7d5c3cada16161481826cdb39c930457587"
+SRCREV_meta_pn-linux-yocto_jasperforest ?= "9010d1cbef2633dac7e559a7705c326b7601dd4c"
-- 
1.7.0.4


