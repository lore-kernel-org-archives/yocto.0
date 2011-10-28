Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B69EE0140C
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 11:40:36 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Oct 2011 11:40:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="69019041"
Received: from unknown (HELO localhost) ([10.255.15.170])
	by orsmga001.jf.intel.com with ESMTP; 28 Oct 2011 11:40:27 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Fri, 28 Oct 2011 13:40:18 -0500
Message-Id: <6437caaaf227916b72dcd97b0abd5cf2abef3673.1319826880.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <267db6a013519fcca15413253008a213c957b738.1319826880.git.tom.zanussi@intel.com>
References: <267db6a013519fcca15413253008a213c957b738.1319826880.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1319826880.git.tom.zanussi@intel.com>
References: <cover.1319826880.git.tom.zanussi@intel.com>
Subject: [PATCH 2/3] meta-fri2: allow linux-yocto-rt to be used for fri2-noemgd
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
X-List-Received-Date: Fri, 28 Oct 2011 18:40:37 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The fri2 linux-yocto-rt .bbappend is missing settings needed for use
with fri2-noemgd - this adds them.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index 2624176..3af5891 100644
--- a/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -1,6 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_fri2 = "fri2"
 KMACHINE_fri2 = "fri2"
+COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
+KMACHINE_fri2-noemgd = "fri2"
 
 # Update the following to use a different BSP branch or meta SRCREV
 #KBRANCH_fri2 = "yocto/standard/preempt-rt/base"
-- 
1.7.0.4


