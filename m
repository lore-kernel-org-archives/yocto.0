Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 400B4E01403
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 11:57:04 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Apr 2012 11:57:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="130870806"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by orsmga002.jf.intel.com with ESMTP; 10 Apr 2012 11:57:03 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Tue, 10 Apr 2012 11:55:35 -0700
Message-Id: <365648d0cd33963614e28ea363564468a7151267.1334083666.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
References: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1334083666.git.kishore.k.bodke@intel.com>
References: <cover.1334083666.git.kishore.k.bodke@intel.com>
Subject: [PATCH 5/9] [meta-intel] Cedartrail: Add Cedartrail-nopvr statement.
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
X-List-Received-Date: Tue, 10 Apr 2012 18:57:04 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Cedartrail-nopvr statement added to support
both pvr and nopvr versions.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../tasks/task-core-tools-profile.bbappend         |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend b/meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend
index e972712..365958b 100644
--- a/meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend
+++ b/meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend
@@ -1,2 +1,3 @@
 RRECOMMENDS_task-core-tools-profile_append_cedartrail = " systemtap"
+RRECOMMENDS_task-core-tools-profile_append_cedartrail-nopvr = " systemtap"
 
-- 
1.7.5.4


