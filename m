Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D44CE00F39; Tue, 12 Jul 2016 09:57:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66634E00F35
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 09:57:32 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 12 Jul 2016 09:57:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,352,1464678000"; d="scan'208";a="1015478295"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.154])
	by orsmga002.jf.intel.com with ESMTP; 12 Jul 2016 09:57:32 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Jul 2016 09:57:29 -0700
Message-Id: <1468342649-18342-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCHv2] PublishLayerTarballs.py: don't change directories for Eclipse builds
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
X-List-Received-Date: Tue, 12 Jul 2016 16:57:35 -0000

When publishing eclipse tarballs, we are already in the correct directory,
so skip the change direction operation (which will generate an error).

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
V2: fix Python syntax error

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
+           and "eclipse" not in self.layername:
             command = "cd " + self.layername + ";"
         else:
             command = ""
-- 
2.5.5


