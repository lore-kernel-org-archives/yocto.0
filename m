Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CF64E0136A
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2012 08:18:38 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 03 Jan 2012 08:18:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="52838440"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.13.127])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Jan 2012 08:18:37 -0800
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Jan 2012 08:18:35 -0800
Message-Id: <ab55154df37f4cdaba0755b9e53c49b58019e822.1325607441.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1325607441.git.sgw@linux.intel.com>
References: <cover.1325607441.git.sgw@linux.intel.com>
In-Reply-To: <cover.1325607441.git.sgw@linux.intel.com>
References: <cover.1325607441.git.sgw@linux.intel.com>
Subject: [CONSOLIDATED PULL (meta-yocto) 4/4] distro: Add poky-tiny distro definition
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
X-List-Received-Date: Tue, 03 Jan 2012 16:18:39 -0000

From: Darren Hart <dvhart@linux.intel.com>

Poky-tiny is intended for building very small OS images. The distro
definition sets the providers for the kernel and the runtime services.
It also reduces the eglibc component list and other DISTRO_FEATURE
elements.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf |  103 +++++++++++++++++++++++++++++++++
 1 files changed, 103 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/conf/distro/poky-tiny.conf

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
new file mode 100644
index 0000000..49c4397
--- /dev/null
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -0,0 +1,103 @@
+# Distribution definition for: poky-tiny
+#
+# Copyright (c) 2011, Intel Corporation.
+# All rights reserved.
+#
+# Poky-tiny is intended to define a tiny Linux system comprised of a
+# Linux kernel tailored to support each specific MACHINE and busybox.
+# Poky-tiny sets some basic policy to ensure a usable system while still
+# keeping the rootfs and kernel image as small as possible.
+#
+# The policies defined are intended to meet the following goals:
+# o Serial consoles only (no framebuffer or VGA console)
+# o Basic support for IPV4 networking
+# o Single user ash shell
+# o Static images (no support for adding packages or libraries later)
+# o Read-only or RAMFS root filesystem
+# o Combined Linux kernel + rootfs in under 4MB
+# o Allow the user to select between eglibc or uclibc with the TCLIBC variable
+#
+# This is currently a partial definition, the following tasks remain:
+# [ ] Integrate linux-yocto-tiny ktype into linux-yocto
+# [ ] Define linux-yocto-tiny configs for all supported BSPs
+# [ ] Drop ldconfig from the installation
+# [ ] Modify the runqemu scripts to work with ext2 parameter:
+#     runqemu qemux86 qemuparams="-nographic" bootparams="console=ttyS0,115200 root=0800" 
+# [ ] Modify busybox to allow for DISTRO_FEATURES-like confiruration
+
+require conf/distro/poky.conf
+DISTRO = "poky-tiny"
+
+# FIXME: consider adding a new "tiny" feature
+#DISTRO_FEATURES_append = " tiny"
+
+# Distro config is evaluated after the machine config, so we have to explicitly
+# set the kernel provider to override a machine config.
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
+PREFERRED_VERSION_linux-yocto-tiny = "3.0%"
+
+# We can use task-core-boot, but in the future we may need a new task-core-tiny
+#POKY_DEFAULT_EXTRA_RDEPENDS += "task-core-boot"
+# Drop kernel-module-af-packet from RRECOMMENDS
+POKY_DEFAULT_EXTRA_RRECOMMENDS = ""
+
+# FIXME: what should we do with this?
+TCLIBCAPPEND = ""
+
+# Disable wide char support for ncurses as we don't include it in
+# in the LIBC features below.
+ENABLE_WIDEC="false"
+
+# Reconfigure eglibc for a smaller installation
+# Comment out any of the lines below to disable them in the build
+DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
+# Required for "who"
+DISTRO_FEATURES_LIBC_MINIMAL = "libc-utmp libc-getlogin"
+DISTRO_FEATURES_LIBC_REGEX = "libc-posix-regexp"
+DISTRO_FEATURES_LIBC_NET = "libc-inet libc-nis"
+
+DISTRO_FEATURES_LIBC = "${DISTRO_FEATURES_LIBC_TINY} \
+                        ${DISTRO_FEATURES_LIBC_MINIMAL} \
+                        ${DISTRO_FEATURES_LIBC_REGEX} \
+                        ${DISTRO_FEATURES_LIBC_NET} \
+                       "
+
+# Comment out any of the lines below to disable them in the build
+# DISTRO_FEATURES options:
+# alsa bluetooth ext2 irda pcmcia usbgadget usbhost wifi nfs zeroconf pci
+DISTRO_FEATURES_TINY = "pci"
+DISTRO_FEATURES_NET = "ipv4"
+DISTRO_FEATURES_USB = "usbhost"
+#DISTRO_FEATURES_USBGADGET = "usbgadget"
+#DISTRO_FEATURES_WIFI = "wifi"
+
+DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
+                   ${DISTRO_FEATURES_NET} \
+                   ${DISTRO_FEATURES_USB} \
+                   ${DISTRO_FEATURES_USBGADGET} \
+                   ${DISTRO_FEATURES_WIFI} \
+                   ${DISTRO_FEATURES_LIBC} \
+                  "
+
+# Use tmpdevfs and the busybox runtime services
+VIRTUAL-RUNTIME_dev_manager = ""
+VIRTUAL-RUNTIME_login_manager = ""
+VIRTUAL-RUNTIME_init_manager = ""
+VIRTUAL-RUNTIME_keymaps = ""
+
+# FIXME: Consider adding "modules" to MACHINE_FEATURES and using that in
+# task-core-base to select modutils-initscripts or not.  Similar with "net" and
+# netbase.
+
+# By default we only support ext2 and initramfs. We don't build live as that
+# pulls in a lot of dependencies for the live image and the installer, like
+# udev, grub, etc.  These pull in gettext, which fails to build with wide
+# character support.
+IMAGE_FSTYPES = "ext2 cpio.gz"
+
+# Drop v86d from qemu dependency list (we support serial)
+# Drop grub from meta-intel BSPs
+# FIXME: A different mechanism is needed here. We could define -tiny
+#        variants of all compatible machines, but that leads to a lot
+#        more machine configs to maintain long term.
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
-- 
1.7.6.4


