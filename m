Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 427664C80AAA
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:46:25 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 May 2011 13:46:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; 
   d="scan'208";a="8744244"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by fmsmga002.fm.intel.com with ESMTP; 27 May 2011 13:46:24 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:45:03 -0500
Message-Id: <c48726a09b770d7164a476aaa5e2b2658c091b1f.1306509168.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
References: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306509168.git.tom.zanussi@intel.com>
References: <cover.1306509168.git.tom.zanussi@intel.com>
Subject: [PATCH 09/14][KERNEL] meta: replace open-coded igb options with igb feature
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
X-List-Received-Date: Fri, 27 May 2011 20:46:25 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Have common-pc-64 use the igb feature, and remove the corresponding
options in common-pc64.cfg.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../kernel-cache/bsp/common-pc-64/common-pc-64.cfg |    1 -
 .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    1 +
 2 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
index 4914266..05ad74b 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
@@ -47,7 +47,6 @@ CONFIG_BLK_DEV_FD=m
 CONFIG_NET_PCI=y
 CONFIG_MII=y
 CONFIG_TIGON3=y
-CONFIG_IGB=y
 # Enable the below for QEMU
 CONFIG_E100=y
 CONFIG_E1000E=y
diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
index e193206..4f0e4c6 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
@@ -2,5 +2,6 @@ kconf hardware common-pc-64.cfg
 kconf hardware common-pc-64-graphics.cfg
 
 include features/hpet/hpet.scc
+include features/igb/igb.scc
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
-- 
1.7.0.4


