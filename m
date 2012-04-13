Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3575E011D1
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 11:27:13 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Apr 2012 11:27:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="132181284"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.161])
	by orsmga002.jf.intel.com with ESMTP; 13 Apr 2012 11:27:13 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	yocto@yoctoproject.org
Date: Fri, 13 Apr 2012 11:25:52 -0700
Message-Id: <7875536e5b469ac03f10c7d58b4697e5b52528fb.1334341148.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1334341148.git.kishore.k.bodke@intel.com>
References: <cover.1334341148.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [meta-intel] Romley: Update SRCREV
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
X-List-Received-Date: Fri, 13 Apr 2012 18:27:14 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Update the SRCREV to include the
82580 Gigabit ethernet driver from meta branch
for the romley machine.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
index 803e772..19d96bf 100644
--- a/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
+++ b/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -5,5 +5,5 @@ COMPATIBLE_MACHINE_romley = "romley"
 KMACHINE_romley  = "romley"
 KBRANCH_romley  = "standard/default/common-pc-64/romley"
 
-SRCREV_machine_pn-linux-yocto_romley ?= "5c7f1c53b5b367858ae6a86c1d4de36d8c71bedb"
+SRCREV_machine_pn-linux-yocto_romley ?= "135c75bf9615334b5b8bb9108d612fe7dfbdb901"
 SRCREV_meta_pn-linux-yocto_romley ?= "59f350ec3794e19fa806c1b73749d851f8ebf364"
-- 
1.7.5.4


