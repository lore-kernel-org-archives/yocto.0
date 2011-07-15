Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F70F4C80FAD
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 22:38:06 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Jul 2011 20:38:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,532,1304319600"; d="scan'208";a="30576937"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jul 2011 20:38:06 -0700
From: Ke Liping <liping.ke@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Jul 2011 11:28:50 +0800
Message-Id: <6ac3109c3cf221687a96606685fb209cb5d68556.1310696828.git.liping.ke@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1310696828.git.liping.ke@intel.com>
References: <cover.1310696828.git.liping.ke@intel.com>
In-Reply-To: <cover.1310696828.git.liping.ke@intel.com>
References: <cover.1310696828.git.liping.ke@intel.com>
Subject: [PATCH 1/1] Remove unused target tree data for Hob
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Jul 2011 03:38:07 -0000

From: Liping Ke <liping.ke@intel.com>

Since Hob only needes package dependency information, we can
create a new version of package information retrieving methods,
remove task dependency information, so that we can greatly
reduce data loading time for Hob

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 bitbake/lib/bb/cooker.py |   96 +++++++++++++++++++++++++++++++++++++---------
 1 files changed, 77 insertions(+), 19 deletions(-)

diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index 8badd2d..26ed2ae 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -296,13 +296,12 @@ class BBCooker:
             if data.getVarFlag( e, 'python', envdata ):
                 logger.plain("\npython %s () {\n%s}\n", e, data.getVar(e, envdata, 1))
 
-    def prepareTreeData(self, pkgs_to_build, task):
+    def prepareTreeData(self, pkgs_to_build, task, runqueue=True):
         """
         Prepare a runqueue and taskdata object for iteration over pkgs_to_build
         """
         # Need files parsed
         self.updateCache()
-
         # If we are told to do the None task then query the default task
         if (task == None):
             task = self.configuration.cmd
@@ -322,12 +321,22 @@ class BBCooker:
             runlist.append([k, "do_%s" % task])
         taskdata.add_unresolved(localdata, self.status)
 
-        rq = bb.runqueue.RunQueue(self, self.configuration.data, self.status, taskdata, runlist)
-        rq.rqdata.prepare()
-
-        return taskdata, rq
-
-    def generateDepTreeData(self, pkgs_to_build, task, more_meta=False):
+        # For some users, take Hob as example, we only need less dependency data
+        # mark this kind of user as "less_meta" data requester
+        if (runqueue):
+            rq = bb.runqueue.RunQueue(self, self.configuration.data, self.status, taskdata, runlist)
+            rq.rqdata.prepare()
+            return taskdata, rq
+        else: 
+            tasks_fnid = []
+            if len(taskdata.tasks_name) == 0:
+            # Nothing to do
+                return
+            for task in xrange(len(taskdata.tasks_name)):
+                tasks_fnid.append(taskdata.tasks_fnid[task])
+            return taskdata, tasks_fnid
+    
+    def generateTaskDepTreeData(self, pkgs_to_build, task):
         """
         Create a dependency tree of pkgs_to_build, returning the data.
         When more_meta is set to True include summary, license and group
@@ -351,18 +360,10 @@ class BBCooker:
             fn = taskdata.fn_index[fnid]
             pn = self.status.pkg_fn[fn]
             version  = "%s:%s-%s" % self.status.pkg_pepvpr[fn]
-            if more_meta:
-                summary = self.status.summary[fn]
-                lic = self.status.license[fn]
-                section = self.status.section[fn]
             if pn not in depend_tree["pn"]:
                 depend_tree["pn"][pn] = {}
                 depend_tree["pn"][pn]["filename"] = fn
                 depend_tree["pn"][pn]["version"] = version
-                if more_meta:
-                    depend_tree["pn"][pn]["summary"] = summary
-                    depend_tree["pn"][pn]["license"] = lic
-                    depend_tree["pn"][pn]["section"] = section
             for dep in rq.rqdata.runq_depends[task]:
                 depfn = taskdata.fn_index[rq.rqdata.runq_fnid[dep]]
                 deppn = self.status.pkg_fn[depfn]
@@ -407,12 +408,69 @@ class BBCooker:
         return depend_tree
 
 
+    def generatePkgDepTreeData(self, pkgs_to_build, task):
+        """
+        Create a dependency tree of pkgs_to_build, returning the data.
+        When more_meta is set to True include summary, license and group
+        information in the returned tree.
+        """
+        taskdata, tasks_fnid = self.prepareTreeData(pkgs_to_build, task, False)
+
+        seen_fnids = []
+        depend_tree = {}
+        depend_tree["depends"] = {}
+        depend_tree["pn"] = {}
+        depend_tree["rdepends-pn"] = {}
+        depend_tree["packages"] = {}
+        depend_tree["rdepends-pkg"] = {}
+
+        for task in xrange(len(tasks_fnid)):
+            fnid = tasks_fnid[task]
+            fn = taskdata.fn_index[fnid]
+            pn = self.status.pkg_fn[fn]
+            version  = "%s:%s-%s" % self.status.pkg_pepvpr[fn]
+            summary = self.status.summary[fn]
+            lic = self.status.license[fn]
+            section = self.status.section[fn]
+            if pn not in depend_tree["pn"]:
+                depend_tree["pn"][pn] = {}
+                depend_tree["pn"][pn]["filename"] = fn
+                depend_tree["pn"][pn]["version"] = version
+                depend_tree["pn"][pn]["summary"] = summary
+                depend_tree["pn"][pn]["license"] = lic
+                depend_tree["pn"][pn]["section"] = section
+
+            if fnid not in seen_fnids:
+                seen_fnids.append(fnid)
+                packages = []
+
+                depend_tree["depends"][pn] = []
+                for dep in taskdata.depids[fnid]:
+                    depend_tree["depends"][pn].append(taskdata.build_names_index[dep])
+
+                depend_tree["rdepends-pn"][pn] = []
+                for rdep in taskdata.rdepids[fnid]:
+                    depend_tree["rdepends-pn"][pn].append(taskdata.run_names_index[rdep])
+
+                rdepends = self.status.rundeps[fn]
+                for package in rdepends:
+                    packages.append(package)
+
+                for package in packages:
+                    if package not in depend_tree["packages"]:
+                        depend_tree["packages"][package] = {}
+                        depend_tree["packages"][package]["pn"] = pn
+                        depend_tree["packages"][package]["filename"] = fn
+                        depend_tree["packages"][package]["version"] = version
+
+        return depend_tree
+    
     def generateDepTreeEvent(self, pkgs_to_build, task):
         """
         Create a task dependency graph of pkgs_to_build.
         Generate an event with the result
         """
-        depgraph = self.generateDepTreeData(pkgs_to_build, task)
+        depgraph = self.generateTaskDepTreeData(pkgs_to_build, task)
         bb.event.fire(bb.event.DepTreeGenerated(depgraph), self.configuration.data)
 
     def generateDotGraphFiles(self, pkgs_to_build, task):
@@ -421,7 +479,7 @@ class BBCooker:
         Save the result to a set of .dot files.
         """
 
-        depgraph = self.generateDepTreeData(pkgs_to_build, task)
+        depgraph = self.generateTaskDepTreeData(pkgs_to_build, task)
 
         # Prints a flattened form of package-depends below where subpackages of a package are merged into the main pn
         depends_file = file('pn-depends.dot', 'w' )
@@ -628,7 +686,7 @@ class BBCooker:
             pkgs = pkgs + extra_pkgs
 
         # generate a dependency tree for all our packages
-        tree = self.generateDepTreeData(pkgs, 'build', more_meta=True)
+        tree = self.generatePkgDepTreeData(pkgs, 'build')
         bb.event.fire(bb.event.TargetsTreeGenerated(tree), self.configuration.data)
 
     def buildWorldTargetList(self):
-- 
1.7.0.4


