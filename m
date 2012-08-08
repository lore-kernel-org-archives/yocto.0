Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2EEAE0144D
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 13:22:18 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 08 Aug 2012 13:22:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="131703852"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by AZSMGA002.ch.intel.com with ESMTP; 08 Aug 2012 13:22:11 -0700
From: tom.zanussi@intel.com
To: scott.a.garman@intel.com,
	yocto@yoctoproject.org
Date: Wed,  8 Aug 2012 15:21:42 -0500
Message-Id: <ff6481e424a0d332541e0fc8b5b5ebe0fd6b4f50.1344456875.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <c6411c0bc1db4ef705f918f80efc139042d46d55.1344456875.git.tom.zanussi@intel.com>
References: <c6411c0bc1db4ef705f918f80efc139042d46d55.1344456875.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344456875.git.tom.zanussi@intel.com>
References: <cover.1344456875.git.tom.zanussi@intel.com>
Subject: [PATCH 11/13] yocto-bsp: add i586 option for i386
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
X-List-Received-Date: Wed, 08 Aug 2012 20:22:18 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../arch/i386/conf/machine/{{=machine}}.conf       |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
index ab491b2..100c68c 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
@@ -9,12 +9,15 @@ PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
 {{ input type:"choicelist" name:"tunefile" prio:"40" msg:"Which machine tuning would you like to use?" default:"tune_core2" }}
+{{ input type:"choice" val:"tune_i586" msg:"i586 tuning optimizations" }}
 {{ input type:"choice" val:"tune_atom" msg:"Atom tuning optimizations" }}
 {{ input type:"choice" val:"tune_core2" msg:"Core2 tuning optimizations" }}
+{{ if tunefile == "tune_i586": }}
+require conf/machine/include/tune-i586.inc
 {{ if tunefile == "tune_atom": }}
-include conf/machine/include/tune-atom.inc
+require conf/machine/include/tune-atom.inc
 {{ if tunefile == "tune_core2": }}
-include conf/machine/include/tune-core2.inc
+require conf/machine/include/tune-core2.inc
 
 require conf/machine/include/ia32-base.inc
 
-- 
1.7.4.1


