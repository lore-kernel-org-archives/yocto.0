Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A6E6E0104D; Sat, 23 Jul 2016 08:11:53 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1DD9E01048
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 08:11:18 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP; 23 Jul 2016 08:11:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,409,1464678000"; d="scan'208";a="144267954"
Received: from wcrandle-mobl1.amr.corp.intel.com ([10.252.139.212])
	by fmsmga004.fm.intel.com with ESMTP; 23 Jul 2016 08:11:18 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Sat, 23 Jul 2016 08:11:05 -0700
Message-Id: <1469286665-16059-3-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1469286665-16059-1-git-send-email-william.c.randle@intel.com>
References: <1469286665-16059-1-git-send-email-william.c.randle@intel.com>
Subject: [yocto-autobuilder][PATCH 2/2] yoctogit.py: ensure mirrordir is set before trying to use it
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
X-List-Received-Date: Sat, 23 Jul 2016 15:11:53 -0000

If OPTIMIZED_GIT_CLONE is False, it's possible for self.mirrordir to be
unset, which cause the _mirrorExists function to throw an exception. Check
that self.mirrordir is actually set before trying to use it.

[YOCTO #10010]

Upstream-Status: Inappropriate [embedded specific]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 .../buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py     | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index 850746f..5eb6158 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -596,8 +596,11 @@ class YoctoGit(Source):
         return self.pathExists(self.build.path_module.join(self.workdir, '.git'))
 
     def _mirrorExists(self):
-        mirror = self.mirrordir + "/" + self.repourl.replace("git://", "") + "/"
-        return self.pathExists(self.build.path_module.join(mirror, '.git'))
+        if self.mirrordir:
+            mirror = self.mirrordir + "/" + self.repourl.replace("git://", "") + "/"
+            return self.pathExists(self.build.path_module.join(mirror, '.git'))
+        else:
+            return None
 
     def _updateSubmodule(self, _):
         if self.submodules:
-- 
2.5.5


