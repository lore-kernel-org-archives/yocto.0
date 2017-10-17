Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F456E00CC2; Tue, 17 Oct 2017 13:56:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E086E00CA6
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 13:56:34 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga104.jf.intel.com with ESMTP; 17 Oct 2017 13:56:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,392,1503385200"; d="scan'208";a="164241625"
Received: from jalamego-mobl3.zpn.intel.com ([10.219.128.138])
	by fmsmga006.fm.intel.com with ESMTP; 17 Oct 2017 13:56:33 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Oct 2017 15:56:29 -0500
Message-Id: <1508273789-4646-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [rrs][PATCH] rrs_maintainer_history: update maintainers.inc path
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 17 Oct 2017 20:56:35 -0000

maintainers.inc was moved to oe-core in commit
9559eee2a7facf871a718541836643b03fb66d9e

This change updates maintainers.inc path to new location
in meta directory.

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 rrs/tools/rrs_maintainer_history.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/rrs/tools/rrs_maintainer_history.py b/rrs/tools/rrs_maintainer_history.py
index 0d0073c..c2e3d96 100755
--- a/rrs/tools/rrs_maintainer_history.py
+++ b/rrs/tools/rrs_maintainer_history.py
@@ -24,7 +24,7 @@ import settings
 from layerindex.models import Recipe, LayerBranch, LayerItem
 from rrs.models import Maintainer, RecipeMaintainerHistory, RecipeMaintainer
 
-MAINTAINERS_INCLUDE_PATH = 'meta-poky/conf/distro/include/maintainers.inc'
+MAINTAINERS_INCLUDE_PATH = 'meta/conf/distro/include/maintainers.inc'
 
 
 """
-- 
2.7.4


