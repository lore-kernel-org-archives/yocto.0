Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6379E00931; Fri,  8 Jul 2016 11:43:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B057EE0073D
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 11:43:49 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Jul 2016 11:43:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,331,1464678000"; d="scan'208";a="991584283"
Received: from wcrandle-mobl1.amr.corp.intel.com ([10.254.178.35])
	by orsmga001.jf.intel.com with ESMTP; 08 Jul 2016 11:43:39 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  8 Jul 2016 11:43:18 -0700
Message-Id: <1468003398-31204-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] PublishLayerTarballs.py: don't change directories for Eclipse builds
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
X-List-Received-Date: Fri, 08 Jul 2016 18:43:53 -0000

When publishing eclipse tarballs, we are already in the correct directory,
so skip the change direction operation (which will generate an error).

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 .../site-packages/autobuilder/buildsteps/PublishLayerTarballs.py       | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py
index c140725..7c1ce4a 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py
@@ -38,7 +38,8 @@ class PublishLayerTarballs(ShellCommand):
         snapshot = ""
         self.basedir=os.path.join(os.path.join(os.path.join(
                                     self.workerdir, buildername), self.workdir))
-        if self.layername is not "poky":
+        if self.layername is not "poky"
+           and "eclipse" is not in self.layername:
             command = "cd " + self.layername + ";"
         else:
             command = ""
-- 
2.5.5


