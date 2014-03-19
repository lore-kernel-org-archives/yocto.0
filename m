Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A14C1E00B45
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:55:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Mar 2014 13:55:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="502283018"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2014 13:55:05 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id ADEE05F80921; Wed, 19 Mar 2014 13:51:33 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:00 -0700
Message-Id: <15d3c57733e746090eb65ea218b2f85435d0972d.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 02/22] yoctogit.py: Fix cp construction from source to build
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
index 26599e7..487e286 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -121,7 +121,7 @@ class YoctoGit(Source):
         self.branch    = branch
         self.method    = method
         self.prog  = progress
-        self.repourl   = repourl
+        self.repourl   = repourl.rstrip('/')
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
+            self.workdir = 'source/'+self.repourl.rstrip('/')
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


