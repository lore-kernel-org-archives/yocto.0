Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81F2AE00A88
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:26:51 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 05 Mar 2014 10:26:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="486606571"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2014 10:26:50 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 44FBD5F82AA1; Wed,  5 Mar 2014 10:23:33 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:11 -0800
Message-Id: <a44831409d6d5b5e9e1861f63d9d9ce4bfaef4d4.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 20/27] yoctogit.py: fix callbacks and instance attrs
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
X-List-Received-Date: Wed, 05 Mar 2014 18:26:51 -0000

The callbacks in barecopy and movecopy were wrong. The big issue
this fixes is adding a correct resetWorkdir to each of these methods.

This ensures we are in the right place, doing the right things
depending on the name of the layer. For example, we need to be in
build for poky, but build/meta-qt3 for meta-qt3.

Also, this stops us from changing instance attrs.

Setting instance attributes (like self.todir self.workdir) when
you have a bunch of callbacks creates uglyness beyond belief.

Don't use them. Use local vars.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot/steps/source/yoctogit.py              | 80 +++++++++++++++-------
 1 file changed, 55 insertions(+), 25 deletions(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index 64dfe06..26599e7 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -177,7 +177,7 @@ class YoctoGit(Source):
     @defer.inlineCallbacks
     def full(self):
         updatable = yield self._sourcedirIsUpdatable()
-
+        
         if self.method == 'clobber':
             yield self.clobber()
             return
@@ -201,7 +201,7 @@ class YoctoGit(Source):
     @defer.inlineCallbacks
     def incremental(self):
         updatable = yield self._sourcedirIsUpdatable()
-
+        
         # if not updateable, do a full checkout
         if not updatable:
             yield self._fullCloneOrFallback()
@@ -249,19 +249,24 @@ class YoctoGit(Source):
         if self.mirrordir:
             mirror = self.mirrordir + "/" + self.repourl.replace("git://", "") + "/"
             if self.pathExists(mirror):
-                self.srcdir=mirror
+                srcdir=mirror
             else:
-                self.srcdir='source/'+self.repourl
-        if self.layername == "poky" or self.layername == "oecore" or "eclipse" in self.layername:
-            self.todir = "build/"
+                srcdir='source/'+self.repourl
+        if "poky" in self.layername or \
+           "oecore" in self.layername or \
+           "eclipse" in self.layername:
+            todir = "."
+            self.workdir = "build"
         else:
-            self.todir = "build/" + self.layername
+            todir = "./" + self.layername
+            self.workdir = "build/" + self.layername
+
 
         d.addCallback(lambda _: self.incremental())
         def copy(_):
             cmd = buildstep.RemoteCommand('cpdir',
-                                          {'fromdir': self.srcdir,
-                                           'todir':self.todir,
+                                          {'fromdir': srcdir,
+                                           'todir': todir,
                                            'logEnviron': self.logEnviron,
                                            'timeout': self.timeout,})
             cmd.useLog(self.stdio_log, False)
@@ -273,8 +278,14 @@ class YoctoGit(Source):
             d.addCallback(lambda _: evaluateCommand(cmd))
             return d
         d.addCallback(copy)
+        
         def resetWorkdir(_):
-            self.workdir = 'build'
+            if "poky" in self.layername or \
+               "oecore" in self.layername or \
+               "eclipse" in self.layername:
+                self.workdir = 'build'
+            else:
+                self.workdir = "build/" + self.layername
             return 0
 
         d.addCallback(resetWorkdir)
@@ -289,13 +300,15 @@ class YoctoGit(Source):
         # Let's make the todir difficult to have duplicate dir names. This 
         # method probably won't work correctly crossing filesystems, so utilize 
         # movecopy with caution.
-        
+
+        srcdir='source/'+self.repourl
+
         cmd = buildstep.RemoteCommand('mv', {'fromdir': self.workdir,
-                                                                    'todir': self.storedir + '/' + self.getProperty("DEST") + '/' + 
-                                                                                str(int(time.time())) + '-'  + 
-                                                                                str(random.randrange(100, 100000, 2)) + 
-                                                                                self.layername,
-                                                                    'logEnviron':self.logEnviron,})
+                                             'todir': self.storedir + '/' + self.getProperty("DEST") + '/' + 
+                                                        str(int(time.time())) + '-'  + 
+                                                        str(random.randrange(100, 100000, 2)) + 
+                                                        self.layername,
+                                              'logEnviron':self.logEnviron,})
         cmd.useLog(self.stdio_log, False)
         d = self.runCommand(cmd)
         def evaluateCommand(cmd):
@@ -304,18 +317,29 @@ class YoctoGit(Source):
                 raise buildstep.BuildStepFailed()
         d.addCallback(lambda _: evaluateCommand(cmd))
 
-        todir = None
-        self.workdir = 'source/'+self.repourl
-        self.srcdir='source/'+self.repourl
-        d.addCallback(lambda _: self.incremental())
         if self.layername == "poky" or self.layername == "oecore":
-            self.todir = "build"
+            todir = "build"
         else:
-            self.todir = "build/" + self.layername
+            todir = "build/" + self.layername
+
+        def mkdir(_):
+            cmd = buildstep.RemoteCommand('mkdir', {'dir': 'build',
+                                                    'logEnviron': self.logEnviron,
+                                                    'timeout': self.timeout,})
+            cmd.useLog(self.stdio_log, False)
+            d = self.runCommand(cmd)
+            def evaluateCommand(cmd):
+                if cmd.didFail():
+                    log.msg("Source step failed while running command %s" % cmd)
+                    raise buildstep.BuildStepFailed()
+            d.addCallback(lambda _: evaluateCommand(cmd))
+            return d
+        d.addCallback(mkdir)
+        d.addCallback(lambda _: self.incremental())
         def copy(_):
             cmd = buildstep.RemoteCommand('cpdir',
-                                          {'fromdir': self.srcdir,
-                                           'todir':self.todir,
+                                          {'fromdir': srcdir,
+                                           'todir': todir,
                                            'logEnviron': self.logEnviron,
                                            'timeout': self.timeout,})
             cmd.useLog(self.stdio_log, False)
@@ -327,8 +351,14 @@ class YoctoGit(Source):
             d.addCallback(lambda _: evaluateCommand(cmd))
             return d
         d.addCallback(copy)
+
         def resetWorkdir(_):
-            self.workdir = 'build'
+            if "poky" in self.layername or \
+               "oecore" in self.layername or \
+               "eclipse" in self.layername:
+                self.workdir = 'build.'
+            else:
+                self.workdir = "build/" + self.layername
             return 0
         d.addCallback(resetWorkdir)
         return d
-- 
1.8.1.2


