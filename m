Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 191A8E002AB
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2012 15:30:54 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 Nov 2012 15:30:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,747,1344236400"; d="scan'208";a="166559139"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Nov 2012 15:30:47 -0800
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org
Date: Fri,  9 Nov 2012 15:17:06 -0800
Message-Id: <4b6476a7469f4291157ba9f47162b9148d3c6e71.1352502494.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1352502494.git.rahul.saxena@intel.com>
References: <cover.1352502494.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1352502494.git.rahul.saxena@intel.com>
References: <cover.1352502494.git.rahul.saxena@intel.com>
Subject: [PATCH 1/2] cedartrail: Update kernel meta branch SRCREV for cedartrail-nopvr machine
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
X-List-Received-Date: Fri, 09 Nov 2012 23:30:54 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

SRCREV for kernel meta branch was obselete for cedartrail-nopvr machine.
Fixed it to be same as that for cedartrail machine.

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
index f06936d..2613a80 100644
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -20,4 +20,4 @@ SRCREV_meta_pn-linux-yocto_cedartrail ?= "bf5ee4945ee6d748e6abe16356f2357f76b5e2
 SRCREV_pvr_pn-linux-yocto_cedartrail ?= "7828ab82533828b924dbfad5158e274a8bb04df3"
 
 SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "1e79e03d115ed177882ab53909a4f3555e434833"
-SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
+SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "bf5ee4945ee6d748e6abe16356f2357f76b5e2f0"
-- 
1.7.4.1


