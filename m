Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BC91E009CA; Fri,  9 Sep 2016 13:15:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25EA5E00953
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 13:15:57 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga105.jf.intel.com with ESMTP; 09 Sep 2016 13:15:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,306,1470726000"; 
   d="scan'208";a="6950879"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by orsmga004.jf.intel.com with ESMTP; 09 Sep 2016 13:15:56 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  9 Sep 2016 13:15:27 -0700
Message-Id: <1473452127-32362-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [yocto-autobuilder][PATCH] /bin/checkvnc
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
X-List-Received-Date: Fri, 09 Sep 2016 20:15:59 -0000

Script was using /bin/sh and causing an error in nightly-oe-selftest build:
/home/pokybuild/yocto-autobuilder/bin/checkvnc: 6: /home/pokybuild/yocto-autobuilder/bin/checkvnc: [[: not found

Changing script to use /bin/bash instead fixes the issue.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/checkvnc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/bin/checkvnc b/bin/checkvnc
index 574ba48..11b1a41 100755
--- a/bin/checkvnc
+++ b/bin/checkvnc
@@ -1,4 +1,4 @@
-#!/bin/sh
+#!/bin/bash
 #
 # check if vnc server is running, and if not, cleanup and restart
 #
-- 
2.7.0


