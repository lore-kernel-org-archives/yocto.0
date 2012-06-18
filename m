Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3001E0141D
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 13:52:52 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Jun 2012 13:52:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="159181762"
Received: from unknown (HELO localhost) ([10.255.12.59])
	by orsmga002.jf.intel.com with ESMTP; 18 Jun 2012 13:52:52 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 18 Jun 2012 15:52:43 -0500
Message-Id: <ec63f3b8127fad7eb94ed8be1f0a733d70112995.1340052437.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <bb5ad863e2dc2518b4e17c44f36f7a21e1939f65.1340052437.git.tom.zanussi@intel.com>
References: <bb5ad863e2dc2518b4e17c44f36f7a21e1939f65.1340052437.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1340052437.git.tom.zanussi@intel.com>
References: <cover.1340052437.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] yocto-bsp: update yocto-bsp xorg.conf templates
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
X-List-Received-Date: Mon, 18 Jun 2012 20:52:52 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The non-x86 qemu machines now require an xorg.conf, change the
templates accordingly.

Fixes [YOCTO #2559]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xserver-xf86-config/{{=machine}}/xorg.conf     |    8 ++++++++
 ..."x86_64\": }} xserver-xf86-config_0.1.bbappend" |    2 --
 2 files changed, 8 insertions(+), 2 deletions(-)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"i386\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"

diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf
index 10a6d9a..1351980 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf
@@ -14,7 +14,11 @@ EndSection
 
 Section "InputDevice"
     Identifier    "Configured Mouse"
+{{ if qemuarch == "arm" or qemuarch == "powerpc" or qemuarch == "mips": }}
+    Driver        "mouse"
+{{ if qemuarch == "i386" or qemuarch == "x86_64": }}
     Driver        "vmmouse"
+
     Option        "CorePointer"
     Option        "Device"        "/dev/input/mice"
     Option        "Protocol"        "ImPS/2"
@@ -32,7 +36,11 @@ EndSection
 
 Section "Device"
     Identifier    "Graphics Controller"
+{{ if qemuarch == "arm" or qemuarch == "powerpc" or qemuarch == "mips": }}
+    Driver        "fbdev"
+{{ if qemuarch == "i386" or qemuarch == "x86_64": }}
     Driver        "vmware"
+
 EndSection
 
 Section "Monitor"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"i386\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"i386\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"
deleted file mode 100644
index d3420e0..0000000
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"i386\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"	
+++ /dev/null
@@ -1,2 +0,0 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-- 
1.7.0.4


