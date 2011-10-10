Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DBC3E0135A
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2011 20:44:48 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Oct 2011 20:44:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,515,1312182000"; d="scan'208";a="76425334"
Received: from unknown (HELO localhost) ([10.255.15.6])
	by fmsmga002.fm.intel.com with ESMTP; 09 Oct 2011 20:44:47 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sun,  9 Oct 2011 22:44:31 -0500
Message-Id: <7055f2b0d67ccbdb95e943d342b89db2ea375114.1318217996.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <fd61f69633cb1b37679a491b1f76ce32b49d4b79.1318217996.git.tom.zanussi@intel.com>
References: <fd61f69633cb1b37679a491b1f76ce32b49d4b79.1318217996.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318217996.git.tom.zanussi@intel.com>
References: <cover.1318217996.git.tom.zanussi@intel.com>
Subject: [PATCH 6/8] meta-fishriver: add missing SMP/SCHED_SMT support
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
X-List-Received-Date: Mon, 10 Oct 2011 03:44:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add missing cfg/smp.scc kernel feature.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 5763209..f78891d 100644
--- a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,6 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
 COMPATIBLE_MACHINE_fishriver = "fishriver"
 KMACHINE_fishriver  = "yocto/standard/fishriver"
+KERNEL_FEATURES_append_fishriver += " cfg/smp.scc"
 
 SRCREV_machine_pn-linux-yocto_fishriver ?= "764df531641ae223bc8c7abf95e09b2aa42a79e5"
 SRCREV_meta_pn-linux-yocto_fishriver ?= "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
-- 
1.7.0.4


