Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0738E01217
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2011 08:26:35 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Aug 2011 08:26:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,256,1312182000"; d="scan'208";a="43370389"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2011 08:26:34 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	saul.wold@intel.com,
	yocto@yoctoproject.org
Date: Sat, 20 Aug 2011 10:26:51 -0500
Message-Id: <cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1313853536.git.tom.zanussi@intel.com>
References: <cover.1313853536.git.tom.zanussi@intel.com>
Subject: [PATCH 1/9] meta-crownbay: switch to linux-yocto 3.0 kernel
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
X-List-Received-Date: Sat, 20 Aug 2011 15:26:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Switch crownbay and crownbay-noemgd to the 3.0 kernel, lock it down,
and update kernel SRCREVs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 ++
 meta-crownbay/conf/machine/crownbay.conf           |    2 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   15 +++++++++++++++
 3 files changed, 19 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index 0219bd1..0a82b54 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -12,6 +12,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 KERNEL_IMAGETYPE = "bzImage"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto = "3.0+git%"
+
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 323c8c1..b4ea4b4 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -12,6 +12,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 KERNEL_IMAGETYPE = "bzImage"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto = "3.0+git%"
+
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
new file mode 100644
index 0000000..c9aef72
--- /dev/null
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -0,0 +1,15 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_crownbay = "crownbay"
+KMACHINE_crownbay  = "yocto/standard/crownbay"
+KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
+
+COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
+KMACHINE_crownbay-noemgd  = "yocto/standard/crownbay"
+KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto_crownbay ?= "9a259cf4f6d404db2820642df755a295bbfb7fe7"
+SRCREV_meta_pn-linux-yocto_crownbay ?= "fe8eac15e144a35a716cd32c9d2b296ecd5202ac"
+
+SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "9a259cf4f6d404db2820642df755a295bbfb7fe7"
+SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "fe8eac15e144a35a716cd32c9d2b296ecd5202ac"
-- 
1.7.0.4


