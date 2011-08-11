Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 227BBE011B6
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 16:09:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Aug 2011 16:09:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="36969840"
Received: from unknown (HELO localhost) ([10.7.199.156])
	by orsmga002.jf.intel.com with ESMTP; 11 Aug 2011 16:09:20 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: bruce.ashfield@windriver.com, tom.zanussi@intel.com, yocto@yoctoproject.org
Date: Thu, 11 Aug 2011 16:08:53 -0700
Message-Id: <ca4633bee2cb6905a71559f9d73474ea3c564c2c.1313093647.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313093647.git.dvhart@linux.intel.com>
References: <cover.1313093647.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313093647.git.dvhart@linux.intel.com>
References: <cover.1313093647.git.dvhart@linux.intel.com>
Subject: [PATCH 1/2] meta-yocto: allow for virtual/kernel override
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
X-List-Received-Date: Thu, 11 Aug 2011 23:09:11 -0000

Conditionally assign the PREFERRED_PROVIDER_virtual/kernel in the meta-yocto
machine configs to allow the user or other layers to override it. This is
required to use the linux-yocto-rt kernel, for example.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/machine/mpc8315e-rdb.conf     |    2 +-
 meta-yocto/conf/machine/routerstationpro.conf |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf b/meta-yocto/conf/machine/mpc8315e-rdb.conf
index 172deec..b30c8af 100644
--- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
@@ -11,7 +11,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "kernel26 keyboard pci ext2 ext3 serial"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 #PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
 XSERVER = "xserver-kdrive-fbdev"
diff --git a/meta-yocto/conf/machine/routerstationpro.conf b/meta-yocto/conf/machine/routerstationpro.conf
index e6f89d8..a0afd5d 100644
--- a/meta-yocto/conf/machine/routerstationpro.conf
+++ b/meta-yocto/conf/machine/routerstationpro.conf
@@ -10,7 +10,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 \
 KERNEL_IMAGETYPE = "vmlinux"
 KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 #PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
 XSERVER = "xserver-kdrive-fbdev"
-- 
1.7.6


