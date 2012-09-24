Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F7D0E0027E
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 12:17:03 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Sep 2012 12:17:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,477,1344236400"; d="scan'208";a="212133108"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga002.jf.intel.com with ESMTP; 24 Sep 2012 12:17:02 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon, 24 Sep 2012 12:16:56 -0700
Message-Id: <108d5909118ad3437376595578a6376bce09e329.1348514176.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <4ea1ddc93fe43eff86b45f7e9a1c35bc9fce222a.1348514176.git.dvhart@linux.intel.com>
References: <4ea1ddc93fe43eff86b45f7e9a1c35bc9fce222a.1348514176.git.dvhart@linux.intel.com>
In-Reply-To: <4ea1ddc93fe43eff86b45f7e9a1c35bc9fce222a.1348514176.git.dvhart@linux.intel.com>
References: <4ea1ddc93fe43eff86b45f7e9a1c35bc9fce222a.1348514176.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 3/3] sys940x: Update to Linux 3.4 and EMGD 1.14
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
X-List-Received-Date: Mon, 24 Sep 2012 19:17:03 -0000

Update the sys940x machines to use linux-yocto 3.4 and
EMGD 1.14.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-sys940x/conf/machine/sys940x-noemgd.conf |    4 ++--
 meta-sys940x/conf/machine/sys940x.conf        |    8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-sys940x/conf/machine/sys940x-noemgd.conf b/meta-sys940x/conf/machine/sys940x-noemgd.conf
index 23ec0bc..0c04dcd 100644
--- a/meta-sys940x/conf/machine/sys940x-noemgd.conf
+++ b/meta-sys940x/conf/machine/sys940x-noemgd.conf
@@ -1,5 +1,5 @@
 #@TYPE: Machine
-#@NAME: sys940x
+#@NAME: sys940x-noemgd
 
 #@DESCRIPTION: Machine configuration for Inforce SYS940X systems
 # i.e. E660 + EG20T
@@ -10,7 +10,7 @@ require conf/machine/include/ia32-base.inc
 # Add "pcbios" if you have a non-efi version of the firmware
 MACHINE_FEATURES += "efi pcbios"
 
-PREFERRED_VERSION_linux-yocto ?= "3.2%"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
diff --git a/meta-sys940x/conf/machine/sys940x.conf b/meta-sys940x/conf/machine/sys940x.conf
index 46c4315..bdd655f 100644
--- a/meta-sys940x/conf/machine/sys940x.conf
+++ b/meta-sys940x/conf/machine/sys940x.conf
@@ -2,7 +2,7 @@
 #@NAME: sys940x
 
 #@DESCRIPTION: Machine configuration for Inforce SYS940x systems
-# i.e. E660 + EG20T
+# i.e. E660 + EG20T + emgd
 
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
@@ -11,7 +11,7 @@ require conf/machine/include/meta-intel.inc
 # Add "pcbios" if you have a non-efi version of the firmware
 MACHINE_FEATURES += "efi pcbios gst-va-mixvideo"
 
-PREFERRED_VERSION_linux-yocto ?= "3.2%"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
@@ -19,9 +19,9 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            "
 
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
-PREFERRED_VERSION_mesa-dri ?= "7.11"
+PREFERRED_VERSION_mesa-dri ?= "8.0.4"
 PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
-PREFERRED_VERSION_emgd-driver-bin ?= "1.10"
+PREFERRED_VERSION_emgd-driver-bin ?= "1.14"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
-- 
1.7.5.4


