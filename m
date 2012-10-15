Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D312E00293
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 12:34:00 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 15 Oct 2012 12:34:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,590,1344236400"; d="scan'208";a="156437642"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.160])
	by AZSMGA002.ch.intel.com with ESMTP; 15 Oct 2012 12:33:59 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Mon, 15 Oct 2012 12:34:30 -0700
Message-Id: <85e9d500bca631d9469285721e63b756965e7f9f.1350329479.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1350329479.git.kishore.k.bodke@intel.com>
References: <cover.1350329479.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [meta-intel] meta-crystalforest: Update SRCREV for meta.
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
X-List-Received-Date: Mon, 15 Oct 2012 19:34:00 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Update SRCREVs of meta branch to include the
new PCI config options added.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../linux/linux-yocto-rt_3.4.bbappend              |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-crystalforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend b/meta-crystalforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
index db56439..240ba2f 100644
--- a/meta-crystalforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
+++ b/meta-crystalforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
@@ -5,7 +5,7 @@ KMACHINE_crystalforest-stargo  = "crystalforest"
 KBRANCH_crystalforest-stargo = "standard/preempt-rt/base"
 
 SRCREV_machine_pn-linux-yocto-rt_crystalforest-stargo ?= "9032b1e9daf5b4396f939981c3be95f67802d18c"
-SRCREV_meta_pn-linux-yocto-rt_crystalforest-stargo ?= "463299bc2e533e1bd38b0053ae7b210980f269c3"
+SRCREV_meta_pn-linux-yocto-rt_crystalforest-stargo ?= "9e3bdb7344054264b750e53fbbb6394cc1c942ac"
 
 
 COMPATIBLE_MACHINE_crystalforest-shumway = "crystalforest-shumway"
@@ -13,6 +13,6 @@ KMACHINE_crystalforest-shumway  = "crystalforest"
 KBRANCH_crystalforest-shumway = "standard/preempt-rt/base"
 
 SRCREV_machine_pn-linux-yocto-rt_crystalforest-shumway ?= "9032b1e9daf5b4396f939981c3be95f67802d18c"
-SRCREV_meta_pn-linux-yocto-rt_crystalforest-shumway ?= "463299bc2e533e1bd38b0053ae7b210980f269c3"
+SRCREV_meta_pn-linux-yocto-rt_crystalforest-shumway ?= "9e3bdb7344054264b750e53fbbb6394cc1c942ac"
 
 module_autoload_uio = "uio"
diff --git a/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 9be788c..082fe38 100644
--- a/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -5,13 +5,13 @@ KMACHINE_crystalforest-stargo  = "crystalforest"
 KBRANCH_crystalforest-stargo  = "standard/common-pc-64/crystalforest"
 
 SRCREV_machine_pn-linux-yocto_crystalforest-stargo ?= "0985844fa6235422c67ef269952fa4e765f252f9"
-SRCREV_meta_pn-linux-yocto_crystalforest-stargo ?= "463299bc2e533e1bd38b0053ae7b210980f269c3"
+SRCREV_meta_pn-linux-yocto_crystalforest-stargo ?= "9e3bdb7344054264b750e53fbbb6394cc1c942ac"
 
 COMPATIBLE_MACHINE_crystalforest-shumway = "crystalforest-shumway"
 KMACHINE_crystalforest-shumway  = "crystalforest"
 KBRANCH_crystalforest-shumway  = "standard/common-pc-64/crystalforest"
 
 SRCREV_machine_pn-linux-yocto_crystalforest-shumway ?= "0985844fa6235422c67ef269952fa4e765f252f9"
-SRCREV_meta_pn-linux-yocto_crystalforest-shumway ?= "463299bc2e533e1bd38b0053ae7b210980f269c3"
+SRCREV_meta_pn-linux-yocto_crystalforest-shumway ?= "9e3bdb7344054264b750e53fbbb6394cc1c942ac"
 
 module_autoload_uio = "uio"
-- 
1.7.9.5


