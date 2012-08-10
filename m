Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C2F6E01404
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 12:03:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Aug 2012 12:03:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,747,1336374000"; d="scan'208";a="197063429"
Received: from unknown (HELO localhost) ([10.255.12.203])
	by fmsmga001.fm.intel.com with ESMTP; 10 Aug 2012 12:03:38 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 10 Aug 2012 14:03:00 -0500
Message-Id: <ea0882135c3f08090d80b2d12bf91d425f016720.1344623733.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <c157f1f265310327265af210da4e9af4b23c67d3.1344623733.git.tom.zanussi@intel.com>
References: <c157f1f265310327265af210da4e9af4b23c67d3.1344623733.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344623733.git.tom.zanussi@intel.com>
References: <cover.1344623733.git.tom.zanussi@intel.com>
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
X-List-Received-Date: Fri, 10 Aug 2012 19:03:40 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../arch/i386/conf/machine/{{=machine}}.conf       |    7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

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
1.7.9.5


