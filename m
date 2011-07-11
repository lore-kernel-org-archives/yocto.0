Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 187E84C80095
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2011 02:42:17 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Jul 2011 00:42:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,513,1304319600"; d="scan'208";a="26366973"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2011 00:42:16 -0700
From: Ke Liping <liping.ke@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jul 2011 15:31:32 +0800
Message-Id: <953ad5d10dd6ca4cde753c3d530c5ef0e2fe6e95.1310365020.git.liping.ke@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1310365020.git.liping.ke@intel.com>
References: <cover.1310365020.git.liping.ke@intel.com>
In-Reply-To: <cover.1310365020.git.liping.ke@intel.com>
References: <cover.1310365020.git.liping.ke@intel.com>
Subject: [PATCH 2/2][Image Creator] Hob Cache for speed up switching
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
X-List-Received-Date: Mon, 11 Jul 2011 07:42:17 -0000

From: Liping Ke <liping.ke@intel.com>

This patch is to cache target dependency tree for Hob (cache impl).
Hob User might switch between different configuration combinations
(machine, sdk-machine, distro, etc). Each dependency re-calcuation
might be time consuming. We use a hashset to cache those result for
avoiding recalc. Thus we can speed up UI data loading speed in
some cases.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |   13 +++++++++++++
 bitbake/lib/bb/ui/crumbs/tasklistmodel.py   |    5 +++++
 bitbake/lib/bb/ui/hob.py                    |   18 +++++++++++++++++-
 3 files changed, 35 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
index 8c8d9e2..c6d3bd5 100644
--- a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
+++ b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
@@ -110,6 +110,19 @@ class HobHandler(gobject.GObject):
             self.emit("data-generated")
             self.generating = False
             if event._model:
+                # Currently, use these three property as the key, in the future
+                # more elements might be needed
+                mach = hobprefs.curr_mach
+                if mach == None:
+                    mach = ""
+                sdk_mach = hobprefs.curr_sdk_mach
+                if sdk_mach == None:
+                    sdk_mach = ""
+                distro = hobprefs.curr_distro
+                if distro == None:
+                    distro = ""
+                hash_key = mach + "," + sdk_mach + "," + distro
+                self.model.targetTreeCache[hash_key] = event._model 
                 self.model.populate(event._model)
         elif isinstance(event, bb.event.ConfigFilesFound):
             var = event._variable
diff --git a/bitbake/lib/bb/ui/crumbs/tasklistmodel.py b/bitbake/lib/bb/ui/crumbs/tasklistmodel.py
index 5e979b7..bcd6328 100644
--- a/bitbake/lib/bb/ui/crumbs/tasklistmodel.py
+++ b/bitbake/lib/bb/ui/crumbs/tasklistmodel.py
@@ -102,6 +102,11 @@ class TaskListModel(gtk.ListStore):
         self.packages = None
         self.images = None
         self.selected_image = None
+        # This var is used for caching target package dependency data. This
+        # data will be impacted by layers, distros, machine, sdk_machine value
+        # which is now all saved in HobPrefs data. For the hashset cache, it's
+        # obvious that the key will be those properties combination.
+        self.targetTreeCache = {}
         
         gtk.ListStore.__init__ (self,
                                 gobject.TYPE_STRING,
diff --git a/bitbake/lib/bb/ui/hob.py b/bitbake/lib/bb/ui/hob.py
index 76cb294..5f6fdf5 100644
--- a/bitbake/lib/bb/ui/hob.py
+++ b/bitbake/lib/bb/ui/hob.py
@@ -166,7 +166,23 @@ class MainWindow (gtk.Window):
             self.configurator.setLocalConfVar('MACHINE', mach)
             self.configurator.writeLocalConf()
             handler.set_machine(mach)
-            handler.reload_data()
+            mach = self.prefs.curr_mach
+            if mach == None:
+                mach = ""
+            sdk_mach = self.prefs.curr_sdk_mach
+            if sdk_mach == None:
+                sdk_mach = ""
+            distro = self.prefs.curr_distro
+            if distro == None:
+                distro = ""
+            hash_key = mach + "," + sdk_mach + "," + distro
+            # Only when this target tree has not been cached, need we reload
+            # the target tree data
+            if (self.model.targetTreeCache.has_key(hash_key) == False):
+                handler.reload_data()
+            # Otherwise, simply reload the cache data
+            else:
+                handler.model.populate(self.model.targetTreeCache[hash_key])
 
     def update_machines(self, handler, machines):
         active = 0
-- 
1.7.0.4


