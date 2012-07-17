Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4B0FE002AA
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 22:58:02 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Jul 2012 22:58:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="179356367"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga001.fm.intel.com with ESMTP; 17 Jul 2012 22:58:02 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, tom.zanussi@intel.com, bruce.ashfield@windriver.com
Date: Mon, 16 Jul 2012 22:57:48 -0700
Message-Id: <7af6129aeecf1a10b3133414f1b097c71748b2af.1342504457.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1342504457.git.nitin.a.kamble@intel.com>
References: <cover.1342504457.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] meta: crownbay.scc change emgd branch name
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
X-List-Received-Date: Wed, 18 Jul 2012 05:58:02 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../bsp/crownbay/crownbay-standard.scc             |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc
index 4990371..cbda721 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc
@@ -6,7 +6,7 @@ include ktypes/standard
 branch crownbay
 
 include features/emgd/emgd-1.10.scc
-git merge emgd-1.10
+git merge emgd-1.14
 
 include crownbay.scc
 
-- 
1.7.3.4


