Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 737A5E00B45
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:55:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Mar 2014 13:55:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="502283022"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2014 13:55:05 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 01D375F825B8; Wed, 19 Mar 2014 13:51:33 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:05 -0700
Message-Id: <8ebcd910e1f96c6dd04a93ae5318dd7d563967ac.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 07/22] yoctogit.py: pathExists returns a defered value.
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

We can't use pathExists this way to figure out if the path actually
exists as it will always evalutate to true as it returns a generator
object and not T/F.

In order to actually figure out if the mirrordir + repourl exists,
we need to call a function that returns the deferred generator
object outside of any of fetch/movecopy/barecopy functions (which
also return defereds and you can't yield a defered in a defered)

So, yield the generator object at the beginning, and save everyone
the headache.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot/steps/source/yoctogit.py                     | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index 080f5b2..4c89ceb 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -177,6 +177,7 @@ class YoctoGit(Source):
     @defer.inlineCallbacks
     def full(self):
         updatable = yield self._sourcedirIsUpdatable()
+        self.mirrorexists = yield self._mirrorExists()
         
         if self.method == 'clobber':
             yield self.clobber()
@@ -248,9 +249,9 @@ class YoctoGit(Source):
         d.addCallback(lambda _: evaluateCommand(cmd))
         if self.mirrordir:
             mirror = self.mirrordir + "/" + self.repourl.replace("git://", "") + "/"
-            if self.pathExists(mirror):
+            if self.mirrorexists:
                 srcdir=mirror
-            else:
+            else: 
                 srcdir='source/'+self.repourl
         if "poky" in self.layername or \
            "oecore" in self.layername or \
@@ -493,8 +494,10 @@ class YoctoGit(Source):
         mirror = None
         if self.mirrordir:
             mirror = self.mirrordir + "/" + self.repourl.replace("git://", "") + "/"
-            if self.pathExists(mirror):
-                  command = ['clone'] + ["-s", "-n"] + [mirror, '.']
+            if self.mirrorexists:
+                command = ['clone'] + ["-s", "-n"] + [mirror, '.']
+            else: 
+                command = ['clone'] + ["-s", "-n"] + [self.repourl, '.']
 
         #Fix references
         if self.prog:
@@ -560,6 +563,10 @@ class YoctoGit(Source):
     def _sourcedirIsUpdatable(self):
         return self.pathExists(self.build.path_module.join(self.workdir, '.git'))
 
+    def _mirrorExists(self):
+        mirror = self.mirrordir + "/" + self.repourl.replace("git://", "") + "/"
+        return self.pathExists(self.build.path_module.join(mirror, '.git'))
+
     def _updateSubmodule(self, _):
         if self.submodules:
             return self._dovccmd(['submodule', 'update', '--recursive'])
-- 
1.8.1.2


