Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8F8FE00B43
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:58:13 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Mar 2014 13:51:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="475935029"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2014 13:55:06 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 41D2C5F825B8; Wed, 19 Mar 2014 13:51:34 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:10 -0700
Message-Id: <6247d7b1b995a6860020abfb005b10ae2faf285f.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 12/22] yoctogit.py: movecopy should only move 'build'
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
X-List-Received-Date: Wed, 19 Mar 2014 20:58:13 -0000

From: Beth Flanagan <elizabeth.flanagan@intel.com>

Pin what movecopy moves to be 'build' and not workdir. This keeps
people from doing stupid stuff like passing in a weird workdir.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py        | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index 1924612..66bfb51 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -305,7 +305,7 @@ class YoctoGit(Source):
         # method probably won't work correctly crossing filesystems, so utilize 
         # movecopy with caution.
 
-        cmd = buildstep.RemoteCommand('mv', {'fromdir': self.workdir,
+        cmd = buildstep.RemoteCommand('mv', {'fromdir': 'build',
                                              'todir': self.storedir + '/' + self.getProperty("DEST") + '/' + 
                                                         str(int(time.time())) + '-'  + 
                                                         str(random.randrange(100, 100000, 2)) + 
@@ -322,10 +322,8 @@ class YoctoGit(Source):
            "oecore" in self.layername or \
            "eclipse" in self.layername:
             todir = "build"
-            self.workdir = 'source/'+self.repourl.rstrip('/')
         else:
             todir = "build/" + self.layername
-            self.workdir = 'source/'+self.repourl
         d.addCallback(lambda _: self.incremental())
 
         def copy(_):
-- 
1.8.1.2


