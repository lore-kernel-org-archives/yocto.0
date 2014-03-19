Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A45DE00B44
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:58:13 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Mar 2014 13:51:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="475935021"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2014 13:55:05 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 1AB255F82989; Wed, 19 Mar 2014 13:51:34 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:07 -0700
Message-Id: <ed07533f286112f46a04baeb337aa6d6bc5b474d.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 09/22] yoctogit.py: Stop passing in srcdir.
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

Don't pass in srcdir. Set it depending on mirrordir/method as a
class level property.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot/steps/source/yoctogit.py                | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index 4c89ceb..62e3a02 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -63,7 +63,7 @@ class YoctoGit(Source):
     def __init__(self, repourl=None, branch='HEAD', mode='incremental',
                  method=None, submodules=False, shallow=False, progress=False,
                  retryFetch=False, clobberOnFailure=False, getDescription=False, 
-                 workdir='build', layername=None, srcdir='sources', storedir="/tmp/junk", mirrordir=None,
+                 workdir='build', layername=None, storedir="/tmp/junk", mirrordir=None,
                  config=None, **kwargs):
         """
         @type  repourl: string
@@ -98,9 +98,6 @@ class YoctoGit(Source):
         @type  getDescription: boolean or dict
         @param getDescription: Use 'git describe' to describe the fetched revision
 
-        @type srcdir: string
-        @param srcdir: Used to pass in where git clones should occur
-
         @type workdir: string
         @param workdir: Used to indicate the destination of the copy of srcdir
 
@@ -125,7 +122,6 @@ class YoctoGit(Source):
         self.retryFetch = retryFetch
         self.submodules = submodules
         self.shallow   = shallow
-        self.srcdir  = srcdir
         self.workdir = workdir
         self.storedir = storedir
         self.mirrordir = mirrordir
@@ -135,6 +131,20 @@ class YoctoGit(Source):
         self.mode = mode
         self.getDescription = getDescription
         self.config = config
+        # We no longer pass srcdir in. There are way too many ways to hang
+        # yourself by doing that.
+        if self.mirrordir:
+            if self.method in ['barecopy', 'movecopy']:
+                self.srcdir='source/'+self.repourl
+            else:
+                if "poky" in self.layername or \
+                   "oecore" in self.layername or \
+                   "eclipse" in self.layername:
+                    self.srcdir = "build"
+                else:
+                    self.srcdir = 'build/'+self.layername
+        else:
+            self.srcdir = 'source'
         Source.__init__(self, **kwargs)
 
         if self.mode not in ['incremental', 'full']:
-- 
1.8.1.2


