Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5738C4C80FC6
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 19:55:57 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 14 Jul 2011 17:55:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,532,1304319600"; d="scan'208";a="30520857"
Received: from unknown (HELO localhost) ([10.255.14.7])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jul 2011 17:55:41 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 14 Jul 2011 19:55:29 -0500
Message-Id: <f69321f9d19943ec1815681e6568524387cfe5c0.1310689271.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1310689271.git.tom.zanussi@intel.com>
References: <cover.1310689271.git.tom.zanussi@intel.com>
Subject: [PATCH 1/6] meta-intel: add a couple common .inc files
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
X-List-Received-Date: Fri, 15 Jul 2011 00:55:57 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The meta-intel BSPs currently have a number of machine settings common
to all - factor these out into a couple common include files.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 common/common-bsp-mach.inc |   13 +++++++++++++
 common/common-bsp-x.inc    |    4 ++++
 2 files changed, 17 insertions(+), 0 deletions(-)
 create mode 100644 common/common-bsp-mach.inc
 create mode 100644 common/common-bsp-x.inc

diff --git a/common/common-bsp-mach.inc b/common/common-bsp-mach.inc
new file mode 100644
index 0000000..b020a84
--- /dev/null
+++ b/common/common-bsp-mach.inc
@@ -0,0 +1,13 @@
+MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
+                    acpi serial usbgadget"
+
+KERNEL_IMAGETYPE = "bzImage"
+
+SERIAL_CONSOLE = "115200 ttyS0"
+
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
+
+IMAGE_FSTYPES ?= "ext3 cpio.gz"
+
+GLIBC_ADDONS = "nptl"
+GLIBC_EXTRA_OECONF = "--with-tls"
diff --git a/common/common-bsp-x.inc b/common/common-bsp-x.inc
new file mode 100644
index 0000000..c012efd
--- /dev/null
+++ b/common/common-bsp-x.inc
@@ -0,0 +1,4 @@
+PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
+PREFERRED_PROVIDER_virtual/libgl ?= "mesa-dri"
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
-- 
1.7.0.4


