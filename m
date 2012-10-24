Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02B30E0143A
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 21:31:02 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Oct 2012 21:31:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,638,1344236400"; d="scan'208";a="209809659"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga001.jf.intel.com with ESMTP; 23 Oct 2012 21:31:02 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Tue, 23 Oct 2012 21:31:17 -0700
Message-Id: <4514ef8ee878fa1e7577b816a8fd71cd46101833.1351053026.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <18eb222d35f55fbf3cbd16afb6509ecffe30b7ca.1351053026.git.dvhart@linux.intel.com>
References: <18eb222d35f55fbf3cbd16afb6509ecffe30b7ca.1351053026.git.dvhart@linux.intel.com>
In-Reply-To: <18eb222d35f55fbf3cbd16afb6509ecffe30b7ca.1351053026.git.dvhart@linux.intel.com>
References: <18eb222d35f55fbf3cbd16afb6509ecffe30b7ca.1351053026.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 3/3] fri2: Add grub-efi workaround for USB keyboard initialization
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
X-List-Received-Date: Wed, 24 Oct 2012 04:31:03 -0000

The Fastboot firmware will sometimes fail to init the USB keyboard when
connected directly in 1.0 mode (works fine through a 2.0 hub). By adding
the USB modules to the grub-efi build, we can ensure the keyboard will
be available in the grub menu at the expense of about a second in boot
time.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../recipes-bsp/grub/grub-efi-native_2.00.bbappend |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)
 create mode 100644 meta-fri2/recipes-bsp/grub/grub-efi-native_2.00.bbappend

diff --git a/meta-fri2/recipes-bsp/grub/grub-efi-native_2.00.bbappend b/meta-fri2/recipes-bsp/grub/grub-efi-native_2.00.bbappend
new file mode 100644
index 0000000..c6904ef
--- /dev/null
+++ b/meta-fri2/recipes-bsp/grub/grub-efi-native_2.00.bbappend
@@ -0,0 +1,11 @@
+# The Intel provided Fast Boot Firmware may not initialize the USB keyboard
+# before launching the grub.efi payload. Ensure GRUB has keyboard control by
+# building in the usb, usb_keyboard, and ohci modules.
+
+do_mkimage() {
+	./grub-mkimage -p /EFI/BOOT -d ./grub-core/ \
+	               -O ${GRUB_TARGET}-efi -o ./${GRUB_IMAGE} \
+	               boot linux ext2 fat serial part_msdos part_gpt normal efi_gop \
+	               usb usb_keyboard ohci
+}
+
-- 
1.7.5.4


