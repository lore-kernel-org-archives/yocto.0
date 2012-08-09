Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A388E0141D
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 14:01:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Aug 2012 14:01:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,742,1336374000"; d="scan'208";a="178154211"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by orsmga001.jf.intel.com with ESMTP; 09 Aug 2012 14:01:21 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	scott.a.garman@intel.com
Date: Thu,  9 Aug 2012 16:00:57 -0500
Message-Id: <bbc4a7b5c5084de5251b0a5f6a3ddb0d967a8dd9.1344545782.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <24bc7bda6a0a13a71fe9e638db5a9c3052574ca2.1344545782.git.tom.zanussi@intel.com>
References: <24bc7bda6a0a13a71fe9e638db5a9c3052574ca2.1344545782.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344545782.git.tom.zanussi@intel.com>
References: <cover.1344545782.git.tom.zanussi@intel.com>
Subject: [PATCH 07/14] yocto-bsp: use standard branch mapping in bsp templates
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
X-List-Received-Date: Thu, 09 Aug 2012 21:01:25 -0000

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


