Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09788E00B47
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:58:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Mar 2014 13:51:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="475935031"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2014 13:55:06 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 622EC5F82989; Wed, 19 Mar 2014 13:51:34 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:12 -0700
Message-Id: <dae9bc695a6fd0b93422783853b888d62bbc77a5.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 14/22] yoctogit.py: Fix timeouts.
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
X-List-Received-Date: Wed, 19 Mar 2014 20:58:14 -0000

From: Beth Flanagan <elizabeth.flanagan@intel.com>

We should really never need this big of a timeout, but
poky-contrib (despite my continual kvetching) can be a
large clone, or an autobuilder can have a large build
directory and the mv across filesystems *which you should
never do!* can go slow.

So let's set this sufficently high enough that we don't
have to have failures from a timeout, but sufficently low
enough that if things go south we don't wait forever to
know about it.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py        | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index c5dbf05..98a2fba 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -131,6 +131,7 @@ class YoctoGit(Source):
         self.mode = mode
         self.getDescription = getDescription
         self.config = config
+        self.timeout = 10*60
         # We no longer pass srcdir in. There are way too many ways to hang
         # yourself by doing that.
         if self.mirrordir:
@@ -286,7 +287,8 @@ class YoctoGit(Source):
                                                         str(int(time.time())) + '-'  + 
                                                         str(random.randrange(100, 100000, 2)) + 
                                                         self.layername,
-                                              'logEnviron':self.logEnviron,})
+                                              'logEnviron':self.logEnviron,
+                                              'timeout': self.timeout,})
         cmd.useLog(self.stdio_log, False)
         d = self.runCommand(cmd)
         def evaluateCommand(cmd):
-- 
1.8.1.2


