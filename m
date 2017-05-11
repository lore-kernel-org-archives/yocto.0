Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06E2EE00B62; Thu, 11 May 2017 16:02:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5E79E0095F
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 16:02:22 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP; 11 May 2017 16:02:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,326,1491289200"; d="scan'208";a="98953428"
Received: from unknown (HELO speedy.jf.intel.com) ([10.54.74.100])
	by orsmga005.jf.intel.com with ESMTP; 11 May 2017 16:02:21 -0700
From: Todor Minchev <todor.minchev@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 11 May 2017 16:02:00 -0700
Message-Id: <20170511230200.19312-1-todor.minchev@linux.intel.com>
X-Mailer: git-send-email 2.13.0
Cc: Todor Minchev <todor.minchev@linux.intel.com>
Subject: [PATCH] oeqa/sdkext/devtool: replace v4l2loopback with fbtft kernel module
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
X-List-Received-Date: Thu, 11 May 2017 23:02:26 -0000

The v4l2loopback makefile assumes that the module will only be built
natively and breaks if it is cross-compiled or built in a container.

Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
---
 meta/lib/oeqa/sdkext/cases/devtool.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/lib/oeqa/sdkext/cases/devtool.py b/meta/lib/oeqa/sdkext/cases/devtool.py
index a01bc0bfe2..6975df68be 100644
--- a/meta/lib/oeqa/sdkext/cases/devtool.py
+++ b/meta/lib/oeqa/sdkext/cases/devtool.py
@@ -78,8 +78,8 @@ class DevtoolTest(OESDKExtTestCase):
     @OETestID(1609)
     @OETestDepends(['test_devtool_location'])
     def test_devtool_kernelmodule(self):
-        docfile = 'https://github.com/umlaeute/v4l2loopback.git'
-        recipe = 'v4l2loopback-driver'
+        docfile = 'https://github.com/notro/fbtft.git'
+        recipe = 'fbtft-driver'
         self._run('devtool add %s %s' % (recipe, docfile) )
         try:
             self._run('devtool build %s' % recipe)
-- 
2.13.0


