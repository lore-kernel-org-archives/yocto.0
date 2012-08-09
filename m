Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CA4BE01461
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 14:06:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Aug 2012 14:06:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,742,1336374000"; d="scan'208";a="178156281"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by orsmga001.jf.intel.com with ESMTP; 09 Aug 2012 14:06:10 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Aug 2012 16:05:34 -0500
Message-Id: <ea0882135c3f08090d80b2d12bf91d425f016720.1344546148.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <c157f1f265310327265af210da4e9af4b23c67d3.1344546148.git.tom.zanussi@intel.com>
References: <c157f1f265310327265af210da4e9af4b23c67d3.1344546148.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344546148.git.tom.zanussi@intel.com>
References: <cover.1344546148.git.tom.zanussi@intel.com>
Subject: [PATCH 11/19] yocto-bsp: add i586 option for i386
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
X-List-Received-Date: Thu, 09 Aug 2012 21:06:11 -0000

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


