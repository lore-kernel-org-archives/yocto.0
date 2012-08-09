Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81E2CE01462
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 14:06:13 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Aug 2012 14:06:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,742,1336374000"; d="scan'208";a="195748187"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by fmsmga001.fm.intel.com with ESMTP; 09 Aug 2012 14:06:12 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Aug 2012 16:05:35 -0500
Message-Id: <039a09f959379241c67fd81e53806082701ea18c.1344546148.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <c157f1f265310327265af210da4e9af4b23c67d3.1344546148.git.tom.zanussi@intel.com>
References: <c157f1f265310327265af210da4e9af4b23c67d3.1344546148.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344546148.git.tom.zanussi@intel.com>
References: <cover.1344546148.git.tom.zanussi@intel.com>
Subject: [PATCH 12/19] yocto-bsp: use emgd 1.10 for i386 template
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
X-List-Received-Date: Thu, 09 Aug 2012 21:06:13 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Make i386 template use emgd 1.10 for denzil, along with associated
changes.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../arch/i386/conf/machine/{{=machine}}.conf       |    7 ++++---
 .../linux/files/{{=machine}}-standard.scc          |    4 ++++
 .../recipes-kernel/linux/files/{{=machine}}.scc    |    2 +-
 3 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
index 100c68c..2c109af 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
@@ -23,13 +23,14 @@ require conf/machine/include/ia32-base.inc
 
 {{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
 
-{{ if xserver == "y": }}
+{{ if xserver == "y" and kernel_choice == "linux-yocto_3.2": }}
 {{ input type:"choicelist" name:"xserver_choice" prio:"50" msg:"Please select an xserver for this machine:" default:"xserver_i915" }}
-
 {{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
 {{ input type:"choice" val:"xserver_emgd" msg:"EMGD xserver support (proprietary)" }}
 {{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
 
+{{ if xserver == "y" and kernel_choice != "linux-yocto_3.2": xserver_choice = "xserver_i915" }}
+
 {{ if xserver == "y": }}
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
@@ -45,7 +46,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
 {{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
 PREFERRED_VERSION_mesa-dri ?= "7.11"
-PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
+PREFERRED_VERSION_emgd-driver-bin ?= "1.10"
 
 {{ if xserver == "y" and xserver_choice == "xserver_vesa" or xserver_choice == "xserver_emgd": }}
 APPEND += "video=vesafb vga=0x318"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
index 2c16efa..024af30 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -6,6 +6,10 @@ include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)
 {{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
+{{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
+include features/emgd/emgd-1.10.scc
+git merge emgd-1.10
+
 include {{=machine}}.scc
 
 # default policy for standard kernels
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc
index 309f25d..15bda3c 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc
@@ -15,7 +15,7 @@ include features/hpet/hpet.scc
 include features/ericsson-3g/f5521gw.scc
 
 {{ if xserver == "y" and xserver_choice == "xserver_vesa" or xserver_choice == "xserver_emgd": }}
-include features/framebuffer/vesafb.scc
+include cfg/vesafb.scc
 
 include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
-- 
1.7.4.1


