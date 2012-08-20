Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F940E0027E
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 15:06:20 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2012 15:06:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,799,1336374000"; d="scan'208";a="188955043"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.83])
	by orsmga002.jf.intel.com with ESMTP; 20 Aug 2012 15:06:19 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com,
	tom.zanussi@intel.com
Date: Mon, 20 Aug 2012 14:52:40 -0700
Message-Id: <022960688d1a4e279d6e9223e787e453f9ec8b0b.1345497883.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1345497883.git.rahul.saxena@intel.com>
References: <cover.1345497883.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1345497883.git.rahul.saxena@intel.com>
References: <cover.1345497883.git.rahul.saxena@intel.com>
Subject: [PATCH 1/3] meta-cedartrail: update SRCREV for Cedartrail machine branch
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
X-List-Received-Date: Mon, 20 Aug 2012 22:06:20 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

update SRCREV_machine_pn-linux-yocto_cedartrail

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 7a0a2a3..48deb45 100644
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -15,9 +15,9 @@ KMACHINE_cedartrail-nopvr  = "cedartrail"
 KBRANCH_cedartrail-nopvr  = "yocto/standard/cedartrail"
 KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
 
-SRCREV_machine_pn-linux-yocto_cedartrail ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
+SRCREV_machine_pn-linux-yocto_cedartrail ?= "3b5b629560f2a36426c19f4f18e3633aa93c955e"
 SRCREV_meta_pn-linux-yocto_cedartrail ?= "46e8fc2bbbe73514e8d99101adaaa373f760ffa7"
 SRCREV_pvr_pn-linux-yocto_cedartrail ?= "997f5644664b31ebefd6e16c451c4a3729eb378a"
 
-SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
+SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "3b5b629560f2a36426c19f4f18e3633aa93c955e"
 SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
-- 
1.7.4.1


