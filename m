Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C412AE0027E
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 15:06:22 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by orsmga101.jf.intel.com with ESMTP; 20 Aug 2012 15:06:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,799,1336374000"; d="scan'208";a="183280819"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.83])
	by azsmga001.ch.intel.com with ESMTP; 20 Aug 2012 15:06:19 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com,
	tom.zanussi@intel.com
Date: Mon, 20 Aug 2012 14:52:41 -0700
Message-Id: <be4703deebe36554790595189695bac12b25b534.1345497883.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1345497883.git.rahul.saxena@intel.com>
References: <cover.1345497883.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1345497883.git.rahul.saxena@intel.com>
References: <cover.1345497883.git.rahul.saxena@intel.com>
Subject: [PATCH 2/3] meta-cedartrail: update SRCREV for yocto kernel pvr branch
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
X-List-Received-Date: Mon, 20 Aug 2012 22:06:22 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Update SRCREV to point to yocto/pvr kernel branch with v1.0.2  pvr driver support

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 48deb45..682aa08 100644
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -17,7 +17,7 @@ KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
 
 SRCREV_machine_pn-linux-yocto_cedartrail ?= "3b5b629560f2a36426c19f4f18e3633aa93c955e"
 SRCREV_meta_pn-linux-yocto_cedartrail ?= "46e8fc2bbbe73514e8d99101adaaa373f760ffa7"
-SRCREV_pvr_pn-linux-yocto_cedartrail ?= "997f5644664b31ebefd6e16c451c4a3729eb378a"
+SRCREV_pvr_pn-linux-yocto_cedartrail ?= "7828ab82533828b924dbfad5158e274a8bb04df3"
 
 SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "3b5b629560f2a36426c19f4f18e3633aa93c955e"
 SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
-- 
1.7.4.1


