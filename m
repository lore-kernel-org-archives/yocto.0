Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EA12E00BF4; Tue, 25 Aug 2015 15:27:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E0DBE00AD5
	for <yocto@yoctoproject.org>; Tue, 25 Aug 2015 15:27:30 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 25 Aug 2015 15:27:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,412,1437462000"; d="scan'208";a="790893776"
Received: from dcarabal-mobl3.amr.corp.intel.com (HELO
	swold-mobl.amr.corp.intel.com) ([10.255.90.119])
	by orsmga002.jf.intel.com with ESMTP; 25 Aug 2015 15:27:28 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Tue, 25 Aug 2015 15:27:28 -0700
Message-Id: <1440541648-25268-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 2.1.0
Subject: [PATCH] CheckforGPLv3: Improve find/grep check
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
X-List-Received-Date: Tue, 25 Aug 2015 22:27:32 -0000

Add additional information to help determine what is reporting
the GPLv3 if there is a match

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/CheckForGPLv3.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckForGPLv3.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckForGPLv3.py
index 0cc5b2c..ace6473 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckForGPLv3.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckForGPLv3.py
@@ -28,7 +28,7 @@ class CheckForGPLv3(ShellCommand):
         ShellCommand.__init__(self, **kwargs)
 
     def start(self):
-        self.command = 'for x in `find ./build/tmp/deploy/licenses -name "license.manifest"`; do cat $x|grep GPLv3; done'
+        self.command = 'find ./build/tmp/deploy/licenses -name "license.manifest" -exec grep -H -B1 GPLv3 {} \\;'
         self.description = ["Checking to ensure no GPLv3 packages"]
         ShellCommand.start(self)
 
-- 
2.1.0


