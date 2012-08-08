Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F2EDE00283
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 13:44:14 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 08 Aug 2012 13:44:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="131711841"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by AZSMGA002.ch.intel.com with ESMTP; 08 Aug 2012 13:44:12 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  8 Aug 2012 15:43:45 -0500
Message-Id: <073cb5e05721c56212d89a3bc5ce9d1139416af9.1344458451.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <c2f8f4743b9369476fd0cb7fb6a7bf0ada2b7c13.1344458451.git.tom.zanussi@intel.com>
References: <c2f8f4743b9369476fd0cb7fb6a7bf0ada2b7c13.1344458451.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344458451.git.tom.zanussi@intel.com>
References: <cover.1344458451.git.tom.zanussi@intel.com>
Subject: [PATCH 07/17] yocto-bsp: use standard branch mapping in bsp templates
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
X-List-Received-Date: Wed, 08 Aug 2012 20:44:14 -0000

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


