Return-Path: <rahul.saxena@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C95C0E013E9
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 14:58:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Mar 2012 14:58:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="121924791"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by orsmga001.jf.intel.com with ESMTP; 26 Mar 2012 14:58:59 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Mon, 26 Mar 2012 07:49:31 -0700
Message-Id: <18b884f65fb683fb4521282c74806fee66aae1c6.1332797429.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332797429.git.rahul.saxena@intel.com>
References: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332797429.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1332797429.git.rahul.saxena@intel.com>
References: <cover.1332797429.git.rahul.saxena@intel.com>
Subject: [PATCH 13/14] meta-cedartrail: update SRC_REV_meta for no-pvr case
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
X-List-Received-Date: Mon, 26 Mar 2012 21:58:59 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

SRC_REV_meta for no-pvr case updated to be same as that used for pvr build

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 0a05d8b..03c5a27 100755
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -16,4 +16,4 @@ SRCREV_machine_pn-linux-yocto_cedartrail ?= "5746120ee0afefd1e28400bea4b74f285bd
 SRCREV_meta_pn-linux-yocto_cedartrail ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
 
 SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "5746120ee0afefd1e28400bea4b74f285bd5e59a"
-SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "d588bdafc0d9b4d2386144b7d76a1d379e2d16c0"
+SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
-- 
1.7.4.1


