Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73C32E00AE2
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 10:32:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Mar 2014 10:32:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,625,1389772800"; d="scan'208";a="497159372"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga002.jf.intel.com with ESMTP; 10 Mar 2014 10:32:29 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 47FBB5F8286E; Mon, 10 Mar 2014 10:29:07 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Mar 2014 10:29:02 -0700
Message-Id: <1394472542-10246-1-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [AUTOBUILDER][PATCH] yoctogit.py: remove trailing "/" is source dir
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
X-List-Received-Date: Mon, 10 Mar 2014 17:33:00 -0000

This commit removes the mkdir from movecopy as it is not needed.
It also changes the workdir in barecopy and movecopy to
the source dir, as we can't alwas be sure that the destination
dir even exists.

This also ensures that we are in fact constructing our cp string
correctly, by striping any trailing "/" from self.repourl

As repourl is used to construct the cp from source to build, that
trailing slash, if it exists, causes the directory structure to
not be correct (e.g. cp -R ./foo/ ./bar and cp -R ./foo ./bar
don't do the same thing, obviously)

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot/steps/source/yoctogit.py              | 35 +++++++---------------
 1 file changed, 11 insertions(+), 24 deletions(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index 26599e7..4641c1a 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -121,7 +121,7 @@ class YoctoGit(Source):
         self.branch    = branch
         self.method    = method
         self.prog  = progress
-        self.repourl   = repourl
+        self.repourl   = repourl.rstrip('\\')
         self.retryFetch = retryFetch
         self.submodules = submodules
         self.shallow   = shallow
@@ -255,13 +255,11 @@ class YoctoGit(Source):
         if "poky" in self.layername or \
            "oecore" in self.layername or \
            "eclipse" in self.layername:
-            todir = "."
-            self.workdir = "build"
+            todir = "build"
+            self.workdir = 'source/'+self.repourl
         else:
-            todir = "./" + self.layername
-            self.workdir = "build/" + self.layername
-
-
+            todir = "build/" + self.layername
+            self.workdir = 'source/'+self.repourl
         d.addCallback(lambda _: self.incremental())
         def copy(_):
             cmd = buildstep.RemoteCommand('cpdir',
@@ -278,7 +276,7 @@ class YoctoGit(Source):
             d.addCallback(lambda _: evaluateCommand(cmd))
             return d
         d.addCallback(copy)
-        
+       
         def resetWorkdir(_):
             if "poky" in self.layername or \
                "oecore" in self.layername or \
@@ -316,26 +314,15 @@ class YoctoGit(Source):
                 log.msg("Source step failed while running command %s" % cmd)
                 raise buildstep.BuildStepFailed()
         d.addCallback(lambda _: evaluateCommand(cmd))
-
-        if self.layername == "poky" or self.layername == "oecore":
+        if "poky" in self.layername or \
+           "oecore" in self.layername or \
+           "eclipse" in self.layername:
             todir = "build"
+            self.workdir = 'source/'+self.repourl.rstrip('//')
         else:
             todir = "build/" + self.layername
+            self.workdir = 'source/'+self.repourl
 
-        def mkdir(_):
-            cmd = buildstep.RemoteCommand('mkdir', {'dir': 'build',
-                                                    'logEnviron': self.logEnviron,
-                                                    'timeout': self.timeout,})
-            cmd.useLog(self.stdio_log, False)
-            d = self.runCommand(cmd)
-            def evaluateCommand(cmd):
-                if cmd.didFail():
-                    log.msg("Source step failed while running command %s" % cmd)
-                    raise buildstep.BuildStepFailed()
-            d.addCallback(lambda _: evaluateCommand(cmd))
-            return d
-        d.addCallback(mkdir)
-        d.addCallback(lambda _: self.incremental())
         def copy(_):
             cmd = buildstep.RemoteCommand('cpdir',
                                           {'fromdir': srcdir,
-- 
1.8.1.2


