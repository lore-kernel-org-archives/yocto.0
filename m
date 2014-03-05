Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2A33E00A80
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:26:51 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 05 Mar 2014 10:26:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="486606553"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2014 10:26:49 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 019385F82A97; Wed,  5 Mar 2014 10:23:31 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:22:59 -0800
Message-Id: <5d20369631d8fe67990cb08438b22a72a19d713d.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 08/27] CheckOutLayers.py/ResolveLayerHead.py: support simplified git
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

From: Beth Flanagan <elizabeth.flanagan@intel.com>

As the parser now no longer has complex git information properties
this simplifies the code needed to resolve FETCH_HEAD's git hash
and checkout layers.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 .../autobuilder/buildsteps/CheckOutLayers.py       | 21 +++++------------
 .../autobuilder/buildsteps/ResolveLayerHead.py     | 26 +++++-----------------
 2 files changed, 11 insertions(+), 36 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
index 2ffb3b2..d56143b 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
@@ -58,7 +58,7 @@ class CheckOutLayers(YoctoGit):
         self.timeout = 100000
         self.getDescription = getDescription
         self.layername = layername
-        self.name="Git checkout of " + layername + " " + self.repourl + " " + self.workdir
+        self.name="Git checkout of " + layername
         kwargs['timeout']=self.timeout
         for k, v in argdict.iteritems():
             setattr(self, k, v)
@@ -69,25 +69,16 @@ class CheckOutLayers(YoctoGit):
                  getDescription=self.getDescription, layername=self.layername, **kwargs)
 
     def startVC(self, branch, revision, patch):
-        if self.getProperty('branch_trigger_'+self.layername+"_"+self.scheduler):
-            self.branch = self.getProperty('branch_trigger_'+self.layername+"_"+self.scheduler)
-        elif self.getProperty('branch_triggerer_'+self.layername+"_"+self.scheduler) :
-            self.branch = self.getProperty('branch_triggerer_'+self.layername+"_"+self.scheduler)
-        elif self.getProperty('branch_'+self.layername):
+        if self.getProperty('branch_'+self.layername):
             self.branch = self.getProperty('branch_'+self.layername)
         else:
             self.branch = "master"
-        if self.getProperty('repo_trigger_'+self.layername+"_"+self.scheduler):
-            self.repourl = self.getProperty('repo_trigger_'+self.layername+"_"+self.scheduler)
-        elif self.getProperty('repo_triggerer_'+self.layername+"_"+self.scheduler) :
-            self.repourl = self.getProperty('repo_triggerer_'+self.layername+"_"+self.scheduler)
-        elif self.getProperty('repo_'+self.layername):
+        if self.getProperty('repo_'+self.layername):
             self.repourl = self.getProperty('repo_'+self.layername)
-        else:self.repourl = "git://git.yoctoproject.org/poky"
+        else:
+            self.repourl = "git://git.yoctoproject.org/poky"
 
-        if self.getProperty('commit_trigger_'+self.layername+"_"+self.scheduler) == "HEAD" and \
-           self.getProperty('repo_trigger_'+self.layername+"_"+self.scheduler) == self.getProperty('triggers_repo_'+self.layername) and \
-           self.getProperty('branch_trigger_'+self.layername+"_"+self.scheduler) == self.getProperty('triggers_branch_'+self.layername) and \
+        if self.getProperty('commit_'+self.layername) == "HEAD" and \
            self.getProperty('commit_resolvedhead_'+self.layername) is not None:
             log.msg("Using Resolved HEAD")
             self.commit = self.getProperty('commit_resolvedhead_'+self.layername)
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ResolveLayerHead.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ResolveLayerHead.py
index c1c6605..88b12bf 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/ResolveLayerHead.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ResolveLayerHead.py
@@ -31,34 +31,18 @@ class ResolveLayerHead(ShellCommand):
         ShellCommand.__init__(self, **kwargs)
 
     def start(self):
-        if self.getProperty('branch_trigger_'+self.layername+"_"+self.scheduler):
-            self.branch = self.getProperty('branch_trigger_'+self.layername+"_"+self.scheduler)
-        elif self.getProperty('branch_triggerer_'+self.layername+"_"+self.scheduler) :
-            self.branch = self.getProperty('branch_triggerer_'+self.layername+"_"+self.scheduler)
-        elif self.getProperty('branch_'+self.layername):
+        if self.getProperty('branch_'+self.layername):
             self.branch = self.getProperty('branch_'+self.layername)
         else:
             self.branch = "master"
 
-        if self.getProperty('repo_trigger_'+self.layername+"_"+self.scheduler):
-            self.repourl = self.getProperty('repo_trigger_'+self.layername+"_"+self.scheduler)
-        elif self.getProperty('repo_triggerer_'+self.layername+"_"+self.scheduler) :
-            self.repourl = self.getProperty('repo_triggerer_'+self.layername+"_"+self.scheduler)
-        elif self.getProperty('repo_'+self.layername):
+        if self.getProperty('repo_'+self.layername):
             self.repourl = self.getProperty('repo_'+self.layername)
-        else:self.repourl = "git://git.yoctoproject.org/poky"
+        else:
+            self.repourl = "git://git.yoctoproject.org/poky"
 
-        if self.getProperty('commit_trigger_'+self.layername+"_"+self.scheduler) == "HEAD" and \
-           self.getProperty('repo_trigger_'+self.layername+"_"+self.scheduler) == self.getProperty('repo_'+self.layername) and \
-           self.getProperty('branch_trigger_'+self.layername+"_"+self.scheduler) == self.getProperty('branch_'+self.layername) and \
-           self.getProperty('commit_resolvedhead_'+self.layername) is not None:
+        if self.getProperty('commit_resolvedhead_'+self.layername) is not None:
             self.commit = self.getProperty('commit_resolvedhead_'+self.layername)
-        elif self.getProperty('commit_trigger_'+self.layername+"_"+self.scheduler):
-            self.commit = self.getProperty('commit_trigger_'+self.layername+"_"+self.scheduler)
-        elif self.getProperty('commit_triggerer_'+self.layername+"_"+self.scheduler) :
-            self.commit = self.getProperty('commit_triggerer_'+self.layername+"_"+self.scheduler)
-        elif self.getProperty('commit_'+self.layername):
-            self.commit = self.getProperty('commit_'+self.layername)
         else:
             self.commit = "HEAD"
         if self.commit == "HEAD":
-- 
1.8.1.2


