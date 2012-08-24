Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2F5DE0027E
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 16:24:51 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by azsmga101.ch.intel.com with ESMTP; 24 Aug 2012 16:24:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,307,1344236400"; d="scan'208";a="190993172"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.83])
	by orsmga002.jf.intel.com with ESMTP; 24 Aug 2012 16:24:50 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	dvhart@linux.intel.com
Date: Fri, 24 Aug 2012 16:10:57 -0700
Message-Id: <61451a70649fe9d2562545cd51217f65066dca1e.1345849179.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1345849179.git.rahul.saxena@intel.com>
References: <cover.1345849179.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1345849179.git.rahul.saxena@intel.com>
References: <cover.1345849179.git.rahul.saxena@intel.com>
Subject: [PATCH 1/2] meta-cedartrail: Update SRCREV for the linux-yocto kernel pvr branch
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
X-List-Received-Date: Fri, 24 Aug 2012 23:24:51 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Update SRCREV to point to yocto/pvr kernel branch with v1.0.2 pvr driver support.

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 35c4755..4f1c800 100644
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -17,7 +17,7 @@ KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
 
 SRCREV_machine_pn-linux-yocto_cedartrail ?= "1e79e03d115ed177882ab53909a4f3555e434833"
 SRCREV_meta_pn-linux-yocto_cedartrail ?= "46e8fc2bbbe73514e8d99101adaaa373f760ffa7"
-SRCREV_pvr_pn-linux-yocto_cedartrail ?= "997f5644664b31ebefd6e16c451c4a3729eb378a"
+SRCREV_pvr_pn-linux-yocto_cedartrail ?= "7828ab82533828b924dbfad5158e274a8bb04df3"
 
 SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "1e79e03d115ed177882ab53909a4f3555e434833"
 SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
-- 
1.7.4.1


