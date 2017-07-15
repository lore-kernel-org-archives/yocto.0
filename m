Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EF01E00BD0; Sat, 15 Jul 2017 12:33:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C858E00BC1
	for <yocto@yoctoproject.org>; Sat, 15 Jul 2017 12:33:53 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Jul 2017 12:33:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,365,1496127600"; d="scan'208";a="879248078"
Received: from pequod.jf.intel.com ([10.54.74.4])
	by FMSMGA003.fm.intel.com with ESMTP; 15 Jul 2017 12:33:53 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat, 15 Jul 2017 12:33:13 -0700
Message-Id: <20170715193313.63041-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.13.2
Subject: [yocto-autobuilder][PATCH] yoctogit: add init to submodule update
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
X-List-Received-Date: Sat, 15 Jul 2017 19:33:55 -0000

We replaced buildbot's standard copy function with our _srccopy
function when method=barecopy or movecopy. The srccopy will copy the
contents of the "source" directory into the build dir. We cannot
assume that submodules have not been added since the buildslave last
populated the source dir. Adding --init to the git submodule update
resolves this issue.

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 .../buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index 389cf4f8f..ecf4d1a34 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -604,7 +604,7 @@ class YoctoGit(Source):
 
     def _updateSubmodule(self, _):
         if self.submodules:
-            return self._dovccmd(['submodule', 'update', '--recursive'])
+            return self._dovccmd(['submodule', 'update', '--init', '--recursive'])
         else:
             return defer.succeed(0)
 
-- 
2.13.2


