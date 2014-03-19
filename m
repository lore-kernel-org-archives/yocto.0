Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2F80E00B43
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:58:13 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Mar 2014 13:51:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="475935033"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2014 13:55:06 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 70A125F825B8; Wed, 19 Mar 2014 13:51:34 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:13 -0700
Message-Id: <7fe61025a9d8a0ed59d076a43c4e2494b26de604.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 15/22] yoctogit.py: Set workdir for the class
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

Stop utilizing resetWorkdir, it just confuses things and is really
not needed.
Just set self.workdir for the class. This ignores the self.workdir passed
in (which I intend on removing soon.)

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot/steps/source/yoctogit.py              | 31 ++++------------------
 1 file changed, 5 insertions(+), 26 deletions(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index 98a2fba..c739d7d 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -146,6 +146,11 @@ class YoctoGit(Source):
                     self.srcdir = 'build/'+self.layername
         else:
             self.srcdir = 'source'
+        if self.method in ['barecopy', 'movecopy']:
+            self.workdir='source/'+self.repourl
+        else:
+            self.workdir = 'build'
+
         Source.__init__(self, **kwargs)
 
         if self.mode not in ['incremental', 'full']:
@@ -261,14 +266,6 @@ class YoctoGit(Source):
                 log.msg("Source step failed while running command %s" % cmd)
                 raise buildstep.BuildStepFailed()
         d.addCallback(lambda _: evaluateCommand(cmd))
-        if "poky" in self.layername or \
-           "oecore" in self.layername or \
-           "eclipse" in self.layername:
-            todir = "build"
-            self.workdir = 'source/'+self.repourl
-        else:
-            todir = "build/" + self.layername
-            self.workdir = 'source/'+self.repourl
         d.addCallback(lambda _: self.incremental())
         return d
 
@@ -296,12 +293,6 @@ class YoctoGit(Source):
                 log.msg("Source step failed while running command %s" % cmd)
                 raise buildstep.BuildStepFailed()
         d.addCallback(lambda _: evaluateCommand(cmd))
-        if "poky" in self.layername or \
-           "oecore" in self.layername or \
-           "eclipse" in self.layername:
-            todir = "build"
-        else:
-            todir = "build/" + self.layername
         d.addCallback(lambda _: self.incremental())
         return d
 
@@ -329,21 +320,9 @@ class YoctoGit(Source):
             if cmd.didFail():
                 log.msg("Source step failed while running command %s" % cmd)
                 raise buildstep.BuildStepFailed()
-
         d.addCallback(lambda _: evaluateCommand(cmd))
         return d
 
-        def resetWorkdir(_):
-            if "poky" in self.layername or \
-               "oecore" in self.layername or \
-               "eclipse" in self.layername:
-                self.workdir = 'build.'
-            else:
-                self.workdir = "build/" + self.layername
-            return 0
-        d.addCallback(resetWorkdir)
-        return d
-
     def finish(self, res):
         d = defer.succeed(res)
         def _gotResults(results):
-- 
1.8.1.2


