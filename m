Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B29A5E00349
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 07:49:50 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 Jul 2012 07:49:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170406900"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by azsmga001.ch.intel.com with ESMTP; 19 Jul 2012 07:49:50 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com, tom.zanussi@intel.com
Date: Wed, 18 Jul 2012 07:49:22 -0700
Message-Id: <42db1d544f423ba25c4a27286555dc1fd1ce8fc7.1342622602.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <2675de6e815486b6609b3ec9c8492dbf806e2c49.1342622602.git.nitin.a.kamble@intel.com>
References: <2675de6e815486b6609b3ec9c8492dbf806e2c49.1342622602.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1342622602.git.nitin.a.kamble@intel.com>
References: <cover.1342622602.git.nitin.a.kamble@intel.com>
Subject: [PATCH 7/7] crownbay: update kernel meta SRC_REV
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
X-List-Received-Date: Thu, 19 Jul 2012 14:49:50 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 86f8c79..b7711b3 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -9,10 +9,10 @@ KMACHINE_crownbay-noemgd  = "crownbay"
 KBRANCH_crownbay-noemgd  = "standard/crownbay"
 
 SRCREV_machine_pn-linux-yocto_crownbay ?= "6297e4c1d57e1063bfce297c2e12392348598559"
-SRCREV_meta_pn-linux-yocto_crownbay ?= "31f082cd1ad3f52d0ec07526084199fe8eb76a1b"
+SRCREV_meta_pn-linux-yocto_crownbay ?= "7af6129aeecf1a10b3133414f1b097c71748b2af"
 
 SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "6297e4c1d57e1063bfce297c2e12392348598559"
-SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "31f082cd1ad3f52d0ec07526084199fe8eb76a1b"
+SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "7af6129aeecf1a10b3133414f1b097c71748b2af"
 
 # It is often nice to have a local clone of the kernel repos, to
 # allow patches to be staged, branches created, etc. Modify
-- 
1.7.3.4


