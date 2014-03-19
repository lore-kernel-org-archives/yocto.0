Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2FC7E00B4D
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:55:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Mar 2014 13:55:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="502283027"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2014 13:55:06 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 544415F80921; Wed, 19 Mar 2014 13:51:34 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:11 -0700
Message-Id: <750102a0aef3a4c173f8200370d96753c147a0a0.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 13/22] yoctogit.py: DRYing up some code
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
X-List-Received-Date: Wed, 19 Mar 2014 20:55:29 -0000

From: Beth Flanagan <elizabeth.flanagan@intel.com>

Remove duplicate code from movecopy and barecopy and add it to
a new callback _srccopy.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot/steps/source/yoctogit.py              | 73 +++++++++-------------
 1 file changed, 30 insertions(+), 43 deletions(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index 66bfb51..c5dbf05 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -194,9 +194,11 @@ class YoctoGit(Source):
             return
         elif self.method == 'barecopy':
             yield self.barecopy()
+            yield self._srccopy()
             return
         elif self.method == 'movecopy':
             yield self.movecopy()
+            yield self._srccopy()
             return
 
         if not updatable:
@@ -267,32 +269,6 @@ class YoctoGit(Source):
             todir = "build/" + self.layername
             self.workdir = 'source/'+self.repourl
         d.addCallback(lambda _: self.incremental())
-        def copy(_):
-            cmd = buildstep.RemoteCommand('cpdir',
-                                          {'fromdir': self.srcdir,
-                                           'todir': todir,
-                                           'logEnviron': self.logEnviron,
-                                           'timeout': self.timeout,})
-            cmd.useLog(self.stdio_log, False)
-            d = self.runCommand(cmd)
-            def evaluateCommand(cmd):
-                if cmd.didFail():
-                    log.msg("Source step failed while running command %s" % cmd)
-                    raise buildstep.BuildStepFailed()
-            d.addCallback(lambda _: evaluateCommand(cmd))
-            return d
-        d.addCallback(copy)
-       
-        def resetWorkdir(_):
-            if "poky" in self.layername or \
-               "oecore" in self.layername or \
-               "eclipse" in self.layername:
-                self.workdir = 'build'
-            else:
-                self.workdir = "build/" + self.layername
-            return 0
-
-        d.addCallback(resetWorkdir)
         return d
 
     def movecopy(self):
@@ -325,22 +301,35 @@ class YoctoGit(Source):
         else:
             todir = "build/" + self.layername
         d.addCallback(lambda _: self.incremental())
+        return d
 
-        def copy(_):
-            cmd = buildstep.RemoteCommand('cpdir',
-                                          {'fromdir': self.srcdir,
-                                           'todir': todir,
-                                           'logEnviron': self.logEnviron,
-                                           'timeout': self.timeout,})
-            cmd.useLog(self.stdio_log, False)
-            d = self.runCommand(cmd)
-            def evaluateCommand(cmd):
-                if cmd.didFail():
-                    log.msg("Source step failed while running command %s" % cmd)
-                    raise buildstep.BuildStepFailed()
-            d.addCallback(lambda _: evaluateCommand(cmd))
-            return d
-        d.addCallback(copy)
+    # Buildbot's standard copy has been removed from yoctogit. 
+    # We use _srccopy from either movecopy or barecopy as a callback
+    # this uses self.srcdir to copy to the build dir.
+    
+    def _srccopy(self):
+        if "poky" in self.layername or \
+           "oecore" in self.layername or \
+           "eclipse" in self.layername:
+            todir = "build"
+        else:
+            todir = "build/" + self.layername
+
+        cmd = buildstep.RemoteCommand('cpdir',
+                                      {'fromdir': self.srcdir,
+                                       'todir': todir,
+                                       'logEnviron': self.logEnviron,
+                                       'timeout': self.timeout,})
+        cmd.useLog(self.stdio_log, False)
+        d = self.runCommand(cmd)
+
+        def evaluateCommand(cmd):
+            if cmd.didFail():
+                log.msg("Source step failed while running command %s" % cmd)
+                raise buildstep.BuildStepFailed()
+
+        d.addCallback(lambda _: evaluateCommand(cmd))
+        return d
 
         def resetWorkdir(_):
             if "poky" in self.layername or \
@@ -353,8 +342,6 @@ class YoctoGit(Source):
         d.addCallback(resetWorkdir)
         return d
 
-    # Buildbot's standard copy has been removed from yoctogit. 
-
     def finish(self, res):
         d = defer.succeed(res)
         def _gotResults(results):
-- 
1.8.1.2


