Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 513C2E00B44
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:57:02 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Mar 2014 13:55:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="503344674"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga002.jf.intel.com with ESMTP; 19 Mar 2014 13:55:05 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 0E4535F80921; Wed, 19 Mar 2014 13:51:34 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:06 -0700
Message-Id: <1008367d5cd13712a7893a36e89fec4c08c9d8e3.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 08/22] CheckOutLayers.py: Remove srcdir
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
X-List-Received-Date: Wed, 19 Mar 2014 20:57:04 -0000

We're removing srcdir from yoctogit.py. It causes way too many
issues.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 lib/python2.7/site-packages/autobuilder/BuildSet.py                  | 2 --
 lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py | 5 ++---
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/BuildSet.py b/lib/python2.7/site-packages/autobuilder/BuildSet.py
index ab7b0bb..4bcda66 100644
--- a/lib/python2.7/site-packages/autobuilder/BuildSet.py
+++ b/lib/python2.7/site-packages/autobuilder/BuildSet.py
@@ -73,7 +73,6 @@ class BuildSet():
                             mirrordir=None
                             method = 'clobber'
                             mode='full'
-                            srcdir = 'source'
                             if str(os.environ.get('OPTIMIZED_GIT_CLONE')) == "True":
                                 if 'poky' in layername or 'oecore' in layername or 'eclipse' in layername:
                                     method='movecopy'
@@ -93,7 +92,6 @@ class BuildSet():
                             func = getattr(m, step)
                             factoryFN(func(locals()['f'+name],
                                       layername=layername,
-                                      srcdir=srcdir,
                                       mode=mode,
                                       scheduler=name,
                                       method=method,
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
index 5e95189..029b523 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
@@ -35,12 +35,11 @@ from buildbot.process import buildstep
 
 class CheckOutLayers(YoctoGit):
     def __init__(self, factory, scheduler=None, layername=None, mode='full',  storedir=None, mirrordir=None,
-                method='clobber', submodules=False, shallow=False, srcdir='source', workdir='build',
+                method='clobber', submodules=False, shallow=False, workdir='build',
                 timeout=100000, progress=True, retryFetch=True, clobberOnFailure=False,
                 getDescription=True, argdict=None,
                  **kwargs):
         self.scheduler = scheduler
-        self.srcdir=srcdir
         self.workdir=workdir
         self.branch = ""
         self.commit = ""
@@ -63,7 +62,7 @@ class CheckOutLayers(YoctoGit):
         for k, v in argdict.iteritems():
             setattr(self, k, v)
         YoctoGit.__init__(self, repourl=self.repourl, branch=self.branch, mode=self.mode,
-                 method=self.method, storedir=self.storedir, mirrordir=mirrordir, submodules=self.submodules, srcdir=self.srcdir+"/"+self.repourl,
+                 method=self.method, storedir=self.storedir, mirrordir=mirrordir, submodules=self.submodules,
                  workdir=self.workdir, shallow=self.shallow, progress=self.progress,
                  retryFetch=self.retryFetch, clobberOnFailure=self.clobberOnFailure,
                  getDescription=self.getDescription, layername=self.layername, **kwargs)
-- 
1.8.1.2


