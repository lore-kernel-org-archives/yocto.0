Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B67C5E00346
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 13:44:35 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Aug 2012 13:44:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="205159322"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by fmsmga002.fm.intel.com with ESMTP; 08 Aug 2012 13:44:32 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  8 Aug 2012 15:43:54 -0500
Message-Id: <81c05b5f7f1f670efc0e01b43ff2dcb1585fa345.1344458451.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <c2f8f4743b9369476fd0cb7fb6a7bf0ada2b7c13.1344458451.git.tom.zanussi@intel.com>
References: <c2f8f4743b9369476fd0cb7fb6a7bf0ada2b7c13.1344458451.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344458451.git.tom.zanussi@intel.com>
References: <cover.1344458451.git.tom.zanussi@intel.com>
Subject: [PATCH 16/17] yocto-bsp: use emgd 1.14 for i386 template
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
X-List-Received-Date: Wed, 08 Aug 2012 20:44:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Make i386 template use emgd 1.14, along with associated changes.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../arch/i386/conf/machine/{{=machine}}.conf       |    6 +++---
 .../linux/files/{{=machine}}-standard.scc          |    4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
index 2c109af..2a07889 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
@@ -23,13 +23,13 @@ require conf/machine/include/ia32-base.inc
 
 {{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
 
-{{ if xserver == "y" and kernel_choice == "linux-yocto_3.2": }}
+{{ if xserver == "y" and kernel_choice == "linux-yocto_3.4": }}
 {{ input type:"choicelist" name:"xserver_choice" prio:"50" msg:"Please select an xserver for this machine:" default:"xserver_i915" }}
 {{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
 {{ input type:"choice" val:"xserver_emgd" msg:"EMGD xserver support (proprietary)" }}
 {{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
 
-{{ if xserver == "y" and kernel_choice != "linux-yocto_3.2": xserver_choice = "xserver_i915" }}
+{{ if xserver == "y" and kernel_choice != "linux-yocto_3.4": xserver_choice = "xserver_i915" }}
 
 {{ if xserver == "y": }}
 XSERVER ?= "${XSERVER_IA32_BASE} \
@@ -46,7 +46,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
 {{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
 PREFERRED_VERSION_mesa-dri ?= "7.11"
-PREFERRED_VERSION_emgd-driver-bin ?= "1.10"
+PREFERRED_VERSION_emgd-driver-bin ?= "1.14"
 
 {{ if xserver == "y" and xserver_choice == "xserver_vesa" or xserver_choice == "xserver_emgd": }}
 APPEND += "video=vesafb vga=0x318"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
index 024af30..c6f42db 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -7,8 +7,8 @@ include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)
 branch {{=machine}}
 
 {{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
-include features/emgd/emgd-1.10.scc
-git merge emgd-1.10
+include features/emgd/emgd-1.14.scc
+git merge emgd-1.14
 
 include {{=machine}}.scc
 
-- 
1.7.4.1


