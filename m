Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CAC8E01425
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 13:52:51 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 18 Jun 2012 13:52:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="113469043"
Received: from unknown (HELO localhost) ([10.255.12.59])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Jun 2012 13:52:50 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 18 Jun 2012 15:52:42 -0500
Message-Id: <bb5ad863e2dc2518b4e17c44f36f7a21e1939f65.1340052437.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1340052437.git.tom.zanussi@intel.com>
References: <cover.1340052437.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] yocto-bsp: update yocto-bsp machine.conf template
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
X-List-Received-Date: Mon, 18 Jun 2012 20:52:51 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Some changes in the ordering assumptions of the qemu include rendered
X inoperative, fix those in the qemu machine template.

Fixes [YOCTO #2559]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../arch/qemu/conf/machine/{{=machine}}.conf       |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
index 0e4ecad..1ab6e58 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
@@ -8,6 +8,7 @@
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
+{{ if qemuarch == "i386" or qemuarch == "x86_64": }}
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 PREFERRED_PROVIDER_virtual/libgl ?= "mesa-dri"
 
@@ -22,13 +23,14 @@ require conf/machine/include/tune-i586.inc
 {{ if qemuarch == "x86_64": }}
 require conf/machine/include/tune-x86_64.inc
 {{ if qemuarch == "arm": }}
+require conf/machine/include/qemu.inc
 require conf/machine/include/tune-arm926ejs.inc
 {{ if qemuarch == "powerpc": }}
+require conf/machine/include/qemu.inc
 require conf/machine/include/tune-ppc603e.inc
 {{ if qemuarch == "mips": }}
-require conf/machine/include/tune-mips32.inc
-
 require conf/machine/include/qemu.inc
+require conf/machine/include/tune-mips32.inc
 
 {{ if qemuarch == "i386" or qemuarch == "x86_64": }}
 MACHINE_FEATURES += "x86"
@@ -42,6 +44,7 @@ XSERVER ?= "xserver-xorg \
            xf86-input-evdev \
            xf86-video-vmware \
            qemugl"
+require conf/machine/include/qemu.inc
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
-- 
1.7.0.4


