Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id AB7CA4C80A54
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2011 02:42:09 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Jul 2011 00:42:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,513,1304319600"; d="scan'208";a="26366925"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2011 00:42:06 -0700
From: Ke Liping <liping.ke@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jul 2011 15:31:31 +0800
Message-Id: <eb1db9e7878e54af7ae78d00e7e2e8d65b6452d9.1310365020.git.liping.ke@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1310365020.git.liping.ke@intel.com>
References: <cover.1310365020.git.liping.ke@intel.com>
In-Reply-To: <cover.1310365020.git.liping.ke@intel.com>
References: <cover.1310365020.git.liping.ke@intel.com>
Subject: [PATCH 1/2][Image Creator] Hob Cache for speed up switching
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
X-List-Received-Date: Mon, 11 Jul 2011 07:42:09 -0000

From: Liping Ke <liping.ke@intel.com>

This patch is the centralized place for storing Hob attributes.
Most of informations in Prefs will be used when caching user-select
packages information. Those information will be the cache hash-key
which is useful in deciding whether the configuration combination
value has been cached or not

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |    6 +++---
 bitbake/lib/bb/ui/crumbs/hobprefs.py        |    3 ++-
 bitbake/lib/bb/ui/hob.py                    |    6 ++++--
 3 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
index fa79e0c..8c8d9e2 100644
--- a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
+++ b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
@@ -99,7 +99,7 @@ class HobHandler(gobject.GObject):
             args.extend(argument)
             self.server.runCommand(args)
 
-    def handle_event(self, event, running_build, pbar):
+    def handle_event(self, event, running_build, pbar, hobprefs):
         if not event:
 	    return
 
@@ -161,11 +161,11 @@ class HobHandler(gobject.GObject):
             pbar.set_fraction(1.0)
         return
 
-    def event_handle_idle_func (self, eventHandler, running_build, pbar):
+    def event_handle_idle_func (self, eventHandler, running_build, pbar, hobrefs):
         # Consume as many messages as we can in the time available to us
         event = eventHandler.getEvent()
         while event:
-            self.handle_event(event, running_build, pbar)
+            self.handle_event(event, running_build, pbar, hobrefs)
             event = eventHandler.getEvent()
         return True
 
diff --git a/bitbake/lib/bb/ui/crumbs/hobprefs.py b/bitbake/lib/bb/ui/crumbs/hobprefs.py
index f186410..05e8170 100644
--- a/bitbake/lib/bb/ui/crumbs/hobprefs.py
+++ b/bitbake/lib/bb/ui/crumbs/hobprefs.py
@@ -143,7 +143,7 @@ class HobPrefs(gtk.Dialog):
             glib.idle_add(self.handler.reload_data)
 
     def __init__(self, configurator, handler, curr_sdk_mach, curr_distro, pclass,
-                 cpu_cnt, pmake, bbthread, image_types):
+                 cpu_cnt, pmake, bbthread, image_types, curr_mach):
         """
         """
         gtk.Dialog.__init__(self, "Preferences", None,
@@ -159,6 +159,7 @@ class HobPrefs(gtk.Dialog):
         self.configurator = configurator
 
         self.curr_sdk_mach = curr_sdk_mach
+        self.curr_mach = curr_mach
         self.curr_distro = curr_distro
         self.curr_package_format = pclass
         self.curr_output_type = None
diff --git a/bitbake/lib/bb/ui/hob.py b/bitbake/lib/bb/ui/hob.py
index 06d936e..76cb294 100644
--- a/bitbake/lib/bb/ui/hob.py
+++ b/bitbake/lib/bb/ui/hob.py
@@ -160,6 +160,7 @@ class MainWindow (gtk.Window):
         mach = combo.get_active_text()
         if mach != self.curr_mach:
             self.curr_mach = mach
+            self.prefs.curr_mach = mach
             # Flush this straight to the file as MACHINE is changed
             # independently of other 'Preferences'
             self.configurator.setLocalConfVar('MACHINE', mach)
@@ -887,7 +888,7 @@ def main (server, eventHandler):
     pkg, sep, pclass = pclasses[0].rpartition("_")
 
     prefs = HobPrefs(configurator, handler, sdk_mach, distro, pclass, cpu_cnt,
-                     pmake, bbthread, image_types)
+                     pmake, bbthread, image_types, mach)
     layers = LayerEditor(configurator, None)
     window = MainWindow(taskmodel, handler, configurator, prefs, layers, mach)
     prefs.set_parent_window(window)
@@ -918,7 +919,8 @@ def main (server, eventHandler):
                          handler.event_handle_idle_func,
                          eventHandler,
                          window.build,
-                         window.progress)
+                         window.progress,
+                         prefs)
 
     try:
         gtk.main()
-- 
1.7.0.4


