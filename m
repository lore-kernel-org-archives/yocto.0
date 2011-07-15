Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 544B84C80B87
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 19:55:56 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Jul 2011 17:55:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,532,1304319600"; d="scan'208";a="27439513"
Received: from unknown (HELO localhost) ([10.255.14.7])
	by azsmga001.ch.intel.com with ESMTP; 14 Jul 2011 17:55:55 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 14 Jul 2011 19:55:34 -0500
Message-Id: <d19d1ae38faf0a3297359ee20ad364a2183fa270.1310689271.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <f69321f9d19943ec1815681e6568524387cfe5c0.1310689271.git.tom.zanussi@intel.com>
References: <f69321f9d19943ec1815681e6568524387cfe5c0.1310689271.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1310689271.git.tom.zanussi@intel.com>
References: <cover.1310689271.git.tom.zanussi@intel.com>
Subject: [PATCH 6/6] meta-emenlow: use common .inc files
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
X-List-Received-Date: Fri, 15 Jul 2011 00:55:56 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Have emenlow.conf use the common-bsp-* .inc files and remove the
open-coded machine settings.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf |   17 ++---------------
 1 files changed, 2 insertions(+), 15 deletions(-)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index b0b7d5e..209f029 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -8,15 +8,11 @@ TARGET_ARCH = "i586"
 
 include conf/machine/include/tune-atom.inc
 
-BASE_PACKAGE_ARCH="core2"
-
-MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
-                    acpi serial usbgadget"
-
-KERNEL_IMAGETYPE = "bzImage"
+include ../common/common-bsp-mach.inc
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
+
 PREFERRED_PROVIDER_libdrm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_drm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
@@ -29,12 +25,3 @@ XSERVER ?= "xserver-psb \
            xf86-input-mouse \
            xf86-input-keyboard \
            xf86-input-evdev"
-
-SERIAL_CONSOLE = "115200 ttyS0"
-
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
-
-IMAGE_FSTYPES ?= "ext3 cpio.gz"
-
-GLIBC_ADDONS = "nptl"
-GLIBC_EXTRA_OECONF = "--with-tls"
-- 
1.7.0.4


