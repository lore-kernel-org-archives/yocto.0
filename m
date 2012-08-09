Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FA17E0145D
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 14:06:04 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Aug 2012 14:06:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,742,1336374000"; d="scan'208";a="178933586"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by azsmga001.ch.intel.com with ESMTP; 09 Aug 2012 14:06:03 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Aug 2012 16:05:30 -0500
Message-Id: <8f6f0d025955943744300ace7ac2b7f3c328a40f.1344546148.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <c157f1f265310327265af210da4e9af4b23c67d3.1344546148.git.tom.zanussi@intel.com>
References: <c157f1f265310327265af210da4e9af4b23c67d3.1344546148.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344546148.git.tom.zanussi@intel.com>
References: <cover.1344546148.git.tom.zanussi@intel.com>
Subject: [PATCH 07/19] yocto-bsp: use standard branch mapping in bsp templates
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
X-List-Received-Date: Thu, 09 Aug 2012 21:06:04 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/files/{{=machine}}-standard.scc          |    2 +-
 .../linux/files/{{=machine}}-standard.scc          |    4 ++--
 .../linux/files/{{=machine}}-standard.scc          |    2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
index 28c353b..c7ba1fb 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -2,7 +2,7 @@ define KMACHINE {{=machine}}
 define KTYPE standard
 define KARCH i386
 
-include ktypes/standard
+include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc
index 9ed66c3..4def04a 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -12,10 +12,10 @@ define KARCH powerpc
 define KARCH mips
 
 {{ if qemuarch == "i386": }}
-include bsp/common-pc/common-pc-standard
+include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 branch {{=machine}}
 {{ if qemuarch == "x86_64": }}
-include bsp/common-pc-64/common-pc-64-standard
+include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 branch {{=machine}}
 {{ if qemuarch == "arm": }}
 include bsp/arm-versatile-926ejs/arm-versatile-926ejs-standard
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
index 2a32fea..4a034fa 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -2,7 +2,7 @@ define KMACHINE {{=machine}}
 define KTYPE standard
 define KARCH x86_64
 
-include bsp/common-pc-64/common-pc-64-standard
+include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 branch {{=machine}}
 
 include {{=machine}}.scc
-- 
1.7.4.1


