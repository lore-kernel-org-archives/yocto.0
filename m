Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85095E00A96
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:26:57 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Mar 2014 10:26:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="492922487"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga002.fm.intel.com with ESMTP; 05 Mar 2014 10:26:50 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 201D55F82A80; Wed,  5 Mar 2014 10:23:30 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:22:56 -0800
Message-Id: <f11e6c6a6d6b5b1440f694fe6a649243689cf579.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 05/27] Add mirror functionality to git fetcher
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
X-List-Received-Date: Wed, 05 Mar 2014 18:26:57 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config/autobuilder.conf.example                      |  1 +
 lib/python2.7/site-packages/autobuilder/BuildSet.py  |  4 ++++
 .../autobuilder/buildsteps/CheckOutLayers.py         |  5 +++--
 .../buildbot/steps/source/yoctogit.py                | 20 +++++++++++++++++---
 4 files changed, 25 insertions(+), 5 deletions(-)

diff --git a/config/autobuilder.conf.example b/config/autobuilder.conf.example
index 4626e02..d73f278 100644
--- a/config/autobuilder.conf.example
+++ b/config/autobuilder.conf.example
@@ -1,6 +1,7 @@
 [GitSettings]
 OPTIMIZED_GIT_CLONE = True
 OGIT_TRASH_DIR = /tmp/yocto-autobuilder/git/trash
+OGIT_MIRROR_DIR = /tmp/yocto-autobuilder/git/mirror
 OGIT_TRASH_CRON_TIME = "0 0 * * *"
 OGIT_TRASH_NICE_LEVEL = "19"
 
diff --git a/lib/python2.7/site-packages/autobuilder/BuildSet.py b/lib/python2.7/site-packages/autobuilder/BuildSet.py
index 7d06d06..25c3b4d 100644
--- a/lib/python2.7/site-packages/autobuilder/BuildSet.py
+++ b/lib/python2.7/site-packages/autobuilder/BuildSet.py
@@ -72,6 +72,7 @@ class BuildSet():
                                 pass
                         else:
                             storedir=None
+                            mirrordir=None
                             method = 'clobber'
                             mode='full'
                             srcdir = 'source'                       
@@ -79,10 +80,12 @@ class BuildSet():
                                 if passed==0:
                                     method='movecopy'
                                     storedir=os.environ.get('OGIT_TRASH_DIR')
+                                    mirrordir=os.environ.get('OGIT_MIRROR_DIR')
                                     passed=1                              
                                 else:
                                     method='barecopy'
                                     storedir=os.environ.get('OGIT_TRASH_DIR')
+                                    mirrordir=os.environ.get('OGIT_MIRROR_DIR')
                                     passed=1                              
                             if layername == "poky" or layername == 'oecore':
                                 workdir = 'build'
@@ -99,6 +102,7 @@ class BuildSet():
                                       scheduler=name,
                                       method=method,
                                       storedir=storedir,
+                                      mirrordir=mirrordir,
                                       workdir=workdir,
                                       argdict=layer[layer.iterkeys().next()]))
                             if 'layerversion' in layer[layer.iterkeys().next()]:
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
index 191dc3f..2ffb3b2 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
@@ -34,7 +34,7 @@ from buildbot.status import build
 from buildbot.process import buildstep
 
 class CheckOutLayers(YoctoGit):
-    def __init__(self, factory, scheduler=None, layername=None, mode='full',  storedir=None,
+    def __init__(self, factory, scheduler=None, layername=None, mode='full',  storedir=None, mirrordir=None,
                 method='clobber', submodules=False, shallow=False, srcdir='source', workdir='build',
                 timeout=100000, progress=True, retryFetch=True, clobberOnFailure=False, 
                 getDescription=True, argdict=None,
@@ -51,6 +51,7 @@ class CheckOutLayers(YoctoGit):
         self.submodules = submodules
         self.shallow = shallow
         self.storedir=storedir
+        self.mirrordir=mirrordir
         self.fetchcount = 0
         self.clobberOnFailure = clobberOnFailure
         self.mode = mode
@@ -62,7 +63,7 @@ class CheckOutLayers(YoctoGit):
         for k, v in argdict.iteritems():
             setattr(self, k, v)
         YoctoGit.__init__(self, repourl=self.repourl, branch=self.branch, mode=self.mode,
-                 method=self.method, storedir=self.storedir, submodules=self.submodules, srcdir=self.srcdir+"/"+self.repourl,
+                 method=self.method, storedir=self.storedir, mirrordir=mirrordir, submodules=self.submodules, srcdir=self.srcdir+"/"+self.repourl,
                  workdir=self.workdir, shallow=self.shallow, progress=self.progress, 
                  retryFetch=self.retryFetch, clobberOnFailure=self.clobberOnFailure, 
                  getDescription=self.getDescription, layername=self.layername, **kwargs)
diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index 7c95d2d..93ce805 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -63,7 +63,7 @@ class YoctoGit(Source):
     def __init__(self, repourl=None, branch='HEAD', mode='incremental',
                  method=None, submodules=False, shallow=False, progress=False,
                  retryFetch=False, clobberOnFailure=False, getDescription=False, 
-				 workdir='build', layername=None, srcdir='sources', storedir="/tmp/junk",
+                 workdir='build', layername=None, srcdir='sources', storedir="/tmp/junk", mirrordir=None,
                  config=None, **kwargs):
         """
         @type  repourl: string
@@ -128,6 +128,7 @@ class YoctoGit(Source):
         self.srcdir  = srcdir
         self.workdir = workdir
         self.storedir = storedir
+        self.mirrordir = mirrordir
         self.layername = layername
         self.fetchcount = 0
         self.clobberOnFailure = clobberOnFailure
@@ -175,17 +176,18 @@ class YoctoGit(Source):
 
     @defer.inlineCallbacks
     def full(self):
+        updatable = yield self._sourcedirIsUpdatable()
+
         if self.method == 'clobber':
             yield self.clobber()
             return
         elif self.method == 'barecopy':
             yield self.barecopy()
             return
-        elif self.method == 'movecopy':
+        elif updatable and self.method == 'movecopy':
             yield self.movecopy()
             return
 
-        updatable = yield self._sourcedirIsUpdatable()
         if not updatable:
             log.msg("No git repo present, making full clone")
             yield self._fullCloneOrFallback()
@@ -463,12 +465,24 @@ class YoctoGit(Source):
             args += ['--depth', '1']
         command = ['clone'] + args + [self.repourl, '.']
 
+        import os
+
+        mirror = None
+        if self.mirrordir:
+            mirror = self.mirrordir + "/" + self.repourl.replace("git://", "") + "/"
+            if os.path.exists(mirror):
+                  command = ['clone'] + args + ["-s", "-n"] + [mirror, '.']
+
         #Fix references
         if self.prog:
             command.append('--progress')
 
         # If it's a shallow clone abort build step
         d = self._dovccmd(command, shallowClone)
+
+        if mirror:
+            d.addCallback(lambda _: self._fetch(None))
+
         # If revision specified checkout that revision
         if self.revision:
             d.addCallback(lambda _: self._dovccmd(['reset', '--hard',
-- 
1.8.1.2


