Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6284E013EE
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 20:30:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Apr 2012 20:30:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="153090146"
Received: from unknown (HELO localhost) ([10.255.12.48])
	by fmsmga002.fm.intel.com with ESMTP; 12 Apr 2012 20:30:13 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 12 Apr 2012 22:28:20 -0500
Message-Id: <59119f253955a4a90c3b34de32b75924bc9f8adc.1334286512.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a57362e323e1f5a9efa2d8682bc4be14450a894b.1334286512.git.tom.zanussi@intel.com>
References: <a57362e323e1f5a9efa2d8682bc4be14450a894b.1334286512.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1334286512.git.tom.zanussi@intel.com>
References: <cover.1334286512.git.tom.zanussi@intel.com>
Subject: [PATCH 3/4] yocto-bsp: fix multi-provider error in qemu arch template
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
X-List-Received-Date: Fri, 13 Apr 2012 03:30:13 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

While testing the fix for [YOCTO #2222] I noticed a new build error
that wasn't there in previous testing:

ERROR: Multiple .bb files are due to be built which each provide virtual/libgl

The build still completed and produced a good image, but an error
message was displayed, which this patch removes.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../arch/qemu/conf/machine/{{=machine}}.conf       |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
index 003ead1..61ba842 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
@@ -9,6 +9,7 @@ PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+PREFERRED_PROVIDER_virtual/libgl ?= "mesa-dri"
 
 {{ input type:"choicelist" name:"qemuarch" prio:"5" msg:"Which qemu architecture would you like to use?" default:"i386" }}
 {{ input type:"choice" val:"i386" msg:"i386    (32-bit)" }}
-- 
1.7.0.4


