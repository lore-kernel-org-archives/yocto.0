Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9658F4C80A79
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2011 11:41:28 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 26 Jul 2011 09:41:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,270,1309762800"; d="scan'208";a="34683715"
Received: from unknown (HELO localhost) ([10.255.14.104])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jul 2011 09:41:28 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue, 26 Jul 2011 11:41:24 -0500
Message-Id: <3be9957211e54669825d1d55bb73c68d3f3354d0.1311697880.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1311697880.git.tom.zanussi@intel.com>
References: <cover.1311697880.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-sugarbay: switch to linux-yocto 3.0 kernel
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
X-List-Received-Date: Tue, 26 Jul 2011 16:41:28 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Switch sugarbay to the 3.0 kernel, lock it down, and update kernel
SRCREVs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-sugarbay/conf/machine/sugarbay.conf           |    1 +
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    7 +++++++
 2 files changed, 8 insertions(+), 0 deletions(-)
 create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend

diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index ebc6dbc..9450d97 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -15,6 +15,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 KERNEL_IMAGETYPE = "bzImage"
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_VERSION_linux-yocto = "3.0+git%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
new file mode 100644
index 0000000..57420f2
--- /dev/null
+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_sugarbay = "sugarbay"
+KMACHINE_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
+
+SRCREV_machine_pn-linux-yocto_sugarbay ?= "3216e7d5c3cada16161481826cdb39c930457587"
+SRCREV_meta_pn-linux-yocto_sugarbay ?= "9010d1cbef2633dac7e559a7705c326b7601dd4c"
-- 
1.7.0.4


