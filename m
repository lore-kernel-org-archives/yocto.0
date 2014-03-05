Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5932E00A97
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:26:57 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 Mar 2014 10:26:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="486606580"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2014 10:26:51 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id D3E715F82A97; Wed,  5 Mar 2014 10:23:33 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:18 -0800
Message-Id: <9b97ad5de3f7e2dc64c01299cf499a442497edbc.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 27/27] autobuilder: whitespace removal
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

sed --in-place 's/[[:space:]]\+$//' * for the autobuilder dir

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 .../site-packages/autobuilder/Autobuilder.py       | 64 +++++++++++-----------
 .../site-packages/autobuilder/BuildSet.py          | 10 ++--
 .../autobuilder/buildsteps/BuildEclipsePlugin.py   |  6 +-
 .../autobuilder/buildsteps/BuildToolchainImages.py |  6 +-
 .../autobuilder/buildsteps/CheckOutLayers.py       |  6 +-
 .../autobuilder/buildsteps/CreateAutoConf.py       |  8 +--
 .../autobuilder/buildsteps/CreateBBLayersConf.py   | 10 ++--
 .../autobuilder/buildsteps/CreateCurrentLink.py    |  6 +-
 .../buildsteps/CreateIntelBSPPackage.py            |  8 +--
 .../autobuilder/buildsteps/GetDistroVersion.py     |  4 +-
 .../autobuilder/buildsteps/GetLayerVersion.py      | 10 ++--
 .../autobuilder/buildsteps/HelloWorld.py           |  6 +-
 .../autobuilder/buildsteps/MaintainPersistDB.py    | 12 ++--
 .../autobuilder/buildsteps/PrepPkgIndex.py         |  6 +-
 .../autobuilder/buildsteps/PublishArtifacts.py     | 20 +++----
 .../autobuilder/buildsteps/PublishLayerTarballs.py |  8 +--
 .../autobuilder/buildsteps/ResolveLayerHead.py     |  6 +-
 .../autobuilder/buildsteps/RunSanityTests.py       |  6 +-
 .../autobuilder/buildsteps/SetDest.py              | 12 ++--
 .../site-packages/autobuilder/buildsteps/Sleep.py  | 20 +++----
 .../autobuilder/buildsteps/SyncPersistDB.py        |  6 +-
 .../autobuilder/buildsteps/TestFailStep.py         |  4 +-
 .../autobuilder/buildsteps/YoctoBlocker.py         |  2 +-
 23 files changed, 123 insertions(+), 123 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
index 5d7ff7c..4c33489 100644
--- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
+++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
@@ -49,7 +49,7 @@ class Autobuilder:
                 beenHere.append(key)
         if sort:
             beenHere.sort()
-        # REALLY crappy way to do this, but better than setting globals. 
+        # REALLY crappy way to do this, but better than setting globals.
         os.environ["YOCTO_SORTED_BUILDERS"]= str(beenHere)
         for buildset in beenHere:
             self.schedprops = []
@@ -61,19 +61,19 @@ class Autobuilder:
             self.schedprops.append(NestedParameter(name='ss_' + buildset, label="<h3><div class='trigger_heading' id='"+buildset+"'>" + buildset + " defaults:</div></h3>", fields=[FixedParameter(name="dummy", default="dummy")]))
             self.parseBuildSet(buildset)
             locals()['buildset_%s' % buildset]=BuildSet.BuildSet(name=buildset,
-                                                            steps=ast.literal_eval(self.configdict[buildset]['steps']), 
+                                                            steps=ast.literal_eval(self.configdict[buildset]['steps']),
                                                             builders=self.builders,
                                                             layers=ast.literal_eval(self.configdict[buildset]['repos']),
                                                             set_props=self.set_props)
             self.yocto_sched.append(ForceScheduler(
                                 name=str(buildset),
-                                branch=FixedParameter(name="branch", 
+                                branch=FixedParameter(name="branch",
                                                       default=""),
                                 reason=StringParameter(name="reason",
                                                        label="Reason:<br>",
-                                                       required=False, 
+                                                       required=False,
                                                        size=120),
-                                revision=FixedParameter(name="revision", 
+                                revision=FixedParameter(name="revision",
                                                         default=""),
                                 repository=FixedParameter(name="repository",
                                                           default=""),
@@ -122,8 +122,8 @@ class Autobuilder:
                 for prop in dict(props):
                     self.prop_name=""
                     self.prop_prop_type=""
-                    self.prop_default="" 
-                    self.prop_choices="" 
+                    self.prop_default=""
+                    self.prop_choices=""
                     self.prop_label=""
                     self.prop_required=""
                     self.prop_size=""
@@ -131,12 +131,12 @@ class Autobuilder:
                     for k, v in props[prop].iteritems():
                         setattr(self, "prop_"+str(k), v)
                     if self.prop_name not in self.properties:
-                        schedpropstoextend = self.CreateExtraSchedulerParams(name=self.prop_name, 
+                        schedpropstoextend = self.CreateExtraSchedulerParams(name=self.prop_name,
                                                                            prop_type=self.prop_prop_type,
-                                                                           default=self.prop_default, 
-                                                                           choices=self.prop_choices, 
-                                                                           label=self.prop_label, 
-                                                                           required=self.prop_required, 
+                                                                           default=self.prop_default,
+                                                                           choices=self.prop_choices,
+                                                                           label=self.prop_label,
+                                                                           required=self.prop_required,
                                                                            scheduler=buildset,
                                                                            size=self.prop_size)
                         self.schedprops.extend(schedpropstoextend)
@@ -145,7 +145,7 @@ class Autobuilder:
     def parseBuilders(self, buildset):
         buildset=buildset
         builders=ast.literal_eval(self.configdict[buildset]['builders'])
-        return builders 
+        return builders
 
     def parseConfig(self):
         import ConfigParser
@@ -255,15 +255,15 @@ class Autobuilder:
                                                               dayOfWeek=builddayOfWeek))
 
 
-    def CreateExtraSchedulerParams(self, name=None, 
-                                         prop_type=None, 
-                                         default=None, 
-                                         choices=None, 
-                                         label=None, 
-                                         required=None, 
+    def CreateExtraSchedulerParams(self, name=None,
+                                         prop_type=None,
+                                         default=None,
+                                         choices=None,
+                                         label=None,
+                                         required=None,
                                          size=None,
                                          scheduler=""):
-        supported_prop_types  = ["ChoiceStringParameter", 
+        supported_prop_types  = ["ChoiceStringParameter",
                          "StringParameter",
                          "FixedParameter",
                          "BooleanParameter"]
@@ -291,7 +291,7 @@ class Autobuilder:
                 default = ""
 
         if prop_type == "ChoiceStringParameter":
-            if choices is None: 
+            if choices is None:
                 try:
                     raise ABConfigError("your config file has a ChoiceStringParameter declaration that has no choices")
                 except ABConfigError, (instance):
@@ -307,25 +307,25 @@ class Autobuilder:
             prop_type = "StringParameter"
 
         if prop_type=="ChoiceStringParameter":
-           schedprops.append(ChoiceStringParameter(name=propid, 
-                                             label=label, 
-                                             required=required, 
+           schedprops.append(ChoiceStringParameter(name=propid,
+                                             label=label,
+                                             required=required,
                                              choices=choices))
         elif prop_type=="StringParameter":
            schedprops.append(StringParameter(name=propid,
-                                             label=label, 
-                                             required=required, 
+                                             label=label,
+                                             required=required,
                                              default=default,
                                              size=size))
         elif prop_type=="FixedParameter":
-           schedprops.append(FixedParameter(name=propid, 
-                                             label=label, 
-                                             required=required, 
+           schedprops.append(FixedParameter(name=propid,
+                                             label=label,
+                                             required=required,
                                              default=default))
         elif prop_type=="BooleanParameter":
-           schedprops.append(BooleanParameter(name=propid, 
-                                             label=label, 
-                                             required=required, 
+           schedprops.append(BooleanParameter(name=propid,
+                                             label=label,
+                                             required=required,
                                              default=default))
         else:
             try:
diff --git a/lib/python2.7/site-packages/autobuilder/BuildSet.py b/lib/python2.7/site-packages/autobuilder/BuildSet.py
index 6d318eb..e5a9d5d 100644
--- a/lib/python2.7/site-packages/autobuilder/BuildSet.py
+++ b/lib/python2.7/site-packages/autobuilder/BuildSet.py
@@ -38,12 +38,12 @@ class BuildSet():
                     for layer in layers:
                         kwargs=stepOrder[step]
                         layername=layer.iterkeys().next()
-                        if layer[layer.iterkeys().next()].has_key('checkout') and layer[layer.iterkeys().next()]['checkout'] == False: 
+                        if layer[layer.iterkeys().next()].has_key('checkout') and layer[layer.iterkeys().next()]['checkout'] == False:
                             pass
                         else:
                             if layername == "poky" or layername == 'oecore':
                                 workdir = 'build'
-                            elif "eclipse" in layername: 
+                            elif "eclipse" in layername:
                                 workdir="build"
                             else:
                                 workdir="build/" + layername
@@ -66,7 +66,7 @@ class BuildSet():
                                       scheduler=name,
                                       argdict=layer[layer.iterkeys().next()]))
                         if 'checkout' in layer[layer.iterkeys().next()]:
-                            if layer[layer.iterkeys().next()]['checkout'] == False: 
+                            if layer[layer.iterkeys().next()]['checkout'] == False:
                                 pass
                         else:
                             storedir=None
@@ -114,7 +114,7 @@ class BuildSet():
                     kwargs=stepOrder[step]
                     m = __import__ (step)
                     func = getattr(m, step)
-                    factoryFN(func(locals()['f'+name], 
+                    factoryFN(func(locals()['f'+name],
                               layers,
                               argdict=stepOrder[step]))
                 elif step=="TriggerBuilds":
@@ -124,7 +124,7 @@ class BuildSet():
                     trigger_name = ""
                     waitForFinish = False
                     if 'schedulerName' in stepOrder[step]:
-                        trigger_name = 'trigger_' + stepOrder[step]['schedulerName'] 
+                        trigger_name = 'trigger_' + stepOrder[step]['schedulerName']
                     if 'set_properties' in stepOrder[step]:
                         for p in stepOrder[step]['set_properties'].iterkeys():
                             set_properties[p]=stepOrder[step]['set_properties'][p]
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildEclipsePlugin.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildEclipsePlugin.py
index c06f569..c437cd4 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildEclipsePlugin.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildEclipsePlugin.py
@@ -18,9 +18,9 @@ import os
 from twisted.python import log
 
 class BuildEclipsePlugin(ShellCommand):
-    haltOnFailure = False 
-    flunkOnFailure = True 
-    name = "Building Eclipse Plugin" 
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "Building Eclipse Plugin"
     def __init__(self, factory, argdict=None, **kwargs):
         self._pendingLogObservers = []
         self.factory = factory
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildToolchainImages.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildToolchainImages.py
index 02d9b28..9ffc320 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildToolchainImages.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildToolchainImages.py
@@ -16,9 +16,9 @@ from buildbot.process.buildstep import LogLineObserver
 import os
 
 class BuildToolchainImages(ShellCommand):
-    haltOnFailure = False 
-    flunkOnFailure = True 
-    name = "Building Toolchain Images" 
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "Building Toolchain Images"
     def __init__(self, factory, argdict=None, **kwargs):
         self.images=""
         self._pendingLogObservers = []
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
index d56143b..90b90c5 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
@@ -36,7 +36,7 @@ from buildbot.process import buildstep
 class CheckOutLayers(YoctoGit):
     def __init__(self, factory, scheduler=None, layername=None, mode='full',  storedir=None, mirrordir=None,
                 method='clobber', submodules=False, shallow=False, srcdir='source', workdir='build',
-                timeout=100000, progress=True, retryFetch=True, clobberOnFailure=False, 
+                timeout=100000, progress=True, retryFetch=True, clobberOnFailure=False,
                 getDescription=True, argdict=None,
                  **kwargs):
         self.scheduler = scheduler
@@ -64,8 +64,8 @@ class CheckOutLayers(YoctoGit):
             setattr(self, k, v)
         YoctoGit.__init__(self, repourl=self.repourl, branch=self.branch, mode=self.mode,
                  method=self.method, storedir=self.storedir, mirrordir=mirrordir, submodules=self.submodules, srcdir=self.srcdir+"/"+self.repourl,
-                 workdir=self.workdir, shallow=self.shallow, progress=self.progress, 
-                 retryFetch=self.retryFetch, clobberOnFailure=self.clobberOnFailure, 
+                 workdir=self.workdir, shallow=self.shallow, progress=self.progress,
+                 retryFetch=self.retryFetch, clobberOnFailure=self.clobberOnFailure,
                  getDescription=self.getDescription, layername=self.layername, **kwargs)
 
     def startVC(self, branch, revision, patch):
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
index 73cf4a6..95180d4 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
@@ -15,9 +15,9 @@ import os
 from twisted.python import log
 
 class CreateAutoConf(ShellCommand):
-    haltOnFailure = False 
-    flunkOnFailure = True 
-    name = "CreateAutoConf" 
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "CreateAutoConf"
     def __init__(self, factory, argdict=None, **kwargs):
         self.machine=""
         self.buildapp=""
@@ -159,7 +159,7 @@ class CreateAutoConf(ShellCommand):
         if self.atextappend:
             fout = fout + self.atextappend
 
-        # We have to pass command in as a list due to some weird issue where 
+        # We have to pass command in as a list due to some weird issue where
         # build progress will throw an assert error in stepFinished. This does
         # not happen all the time but when it does happen, just break command
         # up into a list.
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
index 1ee5261..23b594b 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
@@ -14,9 +14,9 @@ from buildbot.steps.shell import ShellCommand
 from twisted.python import log
 
 class CreateBBLayersConf(ShellCommand):
-    haltOnFailure = False 
-    flunkOnFailure = True 
-    name = "Create BBLayers Configuration" 
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "Create BBLayers Configuration"
     def __init__(self, factory, layers, argdict=None, **kwargs):
         self.factory = factory
         self.layers=layers
@@ -45,7 +45,7 @@ class CreateBBLayersConf(ShellCommand):
         #check to see if we have text override
         if self.bbtext != "":
             fout = fout+self.bbtext
-        fout = fout + 'LCONF_VERSION = <LCONF> \n' 
+        fout = fout + 'LCONF_VERSION = <LCONF> \n'
         fout = fout + 'BBPATH = "${TOPDIR}" \n'
         fout = fout + 'BBFILES ?="" \n'
         fout = fout + 'BBLAYERS += " \ \n'
@@ -57,7 +57,7 @@ class CreateBBLayersConf(ShellCommand):
                 fout = fout + workdir + '/build/meta-x32 \ \n'
         elif self.buildprovider == "oe":
             fout = fout + workdir + "/build/meta \ \n"
-        if self.bsplayer == True: 
+        if self.bsplayer == True:
             if self.bspprovider == "intel":
                 if list(self.layerdirs):
                     for layer in self.layerdirs:
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateCurrentLink.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateCurrentLink.py
index ff9b9f5..fab1008 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateCurrentLink.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateCurrentLink.py
@@ -14,9 +14,9 @@ from buildbot.steps.shell import ShellCommand
 from twisted.python import log
 
 class CreateCurrentLink(ShellCommand):
-    haltOnFailure = False 
-    flunkOnFailure = True 
-    name = "CreateCurrentLink" 
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "CreateCurrentLink"
     def __init__(self, factory, argdict=None, **kwargs):
         for k, v in argdict.iteritems():
             setattr(self, k, v)
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateIntelBSPPackage.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateIntelBSPPackage.py
index 40f5ce3..2b0e4e7 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateIntelBSPPackage.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateIntelBSPPackage.py
@@ -12,13 +12,13 @@ __email__ = "elizabeth.flanagan@intel.com"
 
 from buildbot.steps.shell import ShellCommand
 from twisted.python import log
-import os, datetime 
+import os, datetime
 from autobuilder.config import *
 
 class CreateIntelBSPPackage(ShellCommand):
-    haltOnFailure = False 
-    flunkOnFailure = True 
-    name = "Creating BSP Packages" 
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "Creating BSP Packages"
     def __init__(self, factory, argdict=None, **kwargs):
         self.factory = factory
         self.machine = ""
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/GetDistroVersion.py b/lib/python2.7/site-packages/autobuilder/buildsteps/GetDistroVersion.py
index 8482090..3d4f314 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/GetDistroVersion.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/GetDistroVersion.py
@@ -17,8 +17,8 @@ from twisted.python import log
 from autobuilder.config import *
 
 class GetDistroVersion(ShellCommand):
-    haltOnFailure = False 
-    flunkOnFailure = True 
+    haltOnFailure = False
+    flunkOnFailure = True
     name = "GetDistroVersion"
     def __init__(self, factory, argdict=None, **kwargs):
         for k, v in argdict.iteritems():
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py b/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py
index 6c0161d..1e2070a 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py
@@ -17,8 +17,8 @@ from twisted.python import log
 from autobuilder.config import *
 
 class GetLayerVersion(ShellCommand):
-    haltOnFailure = False 
-    flunkOnFailure = False 
+    haltOnFailure = False
+    flunkOnFailure = False
     name = "GetLayerVersion"
     def __init__(self, factory, layerversion=None, workdir='build', argdict=None, **kwargs):
         for k, v in argdict.iteritems():
@@ -35,9 +35,9 @@ class GetLayerVersion(ShellCommand):
         buildername=self.getProperty("buildername")
         log.msg(self.workdir)
         log.msg(self.layerversion)
-       
-        layerconf=self.slaveworkdir + "/" + buildername + "/build/" + self.workdir + "/conf/layer.conf|grep LAYERVERSION_" + self.layerversion 
-        cmd = 'cat ' + layerconf 
+
+        layerconf=self.slaveworkdir + "/" + buildername + "/build/" + self.workdir + "/conf/layer.conf|grep LAYERVERSION_" + self.layerversion
+        cmd = 'cat ' + layerconf
         self.command = cmd
         ShellCommand.start(self)
 
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/HelloWorld.py b/lib/python2.7/site-packages/autobuilder/buildsteps/HelloWorld.py
index 9a025ff..32de5cb 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/HelloWorld.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/HelloWorld.py
@@ -14,9 +14,9 @@ __email__ = "elizabeth.flanagan@intel.com"
 from buildbot.steps.shell import ShellCommand
 
 class HelloWorld(ShellCommand):
-    haltOnFailure = True 
-    flunkOnFailure = True 
-    name = "Hello World" 
+    haltOnFailure = True
+    flunkOnFailure = True
+    name = "Hello World"
     def __init__(self, factory, argdict=None, **kwargs):
         self.firstname=""
         self.lastname=""
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/MaintainPersistDB.py b/lib/python2.7/site-packages/autobuilder/buildsteps/MaintainPersistDB.py
index 8975857..c52cec9 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/MaintainPersistDB.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/MaintainPersistDB.py
@@ -14,9 +14,9 @@ from buildbot.steps.shell import ShellCommand
 from twisted.python import log
 
 class CreateCurrentLink(ShellCommand):
-    haltOnFailure = False 
-    flunkOnFailure = False 
-    name = "CreateCurrentLink" 
+    haltOnFailure = False
+    flunkOnFailure = False
+    name = "CreateCurrentLink"
     def __init__(self, factory, argdict=None, **kwargs):
         for k, v in argdict.iteritems():
             setattr(self, k, v)
@@ -26,8 +26,8 @@ class CreateCurrentLink(ShellCommand):
         kwargs['timeout']=self.timeout
         buildername = self.getProperty("buildername")
         branch = self.getProperty("branch_poky")
-        persistdbdir = str(os.environ.get('PERSISTDB_DIR')) 
-        buildhistory = str(os.environ.get('BUILD_HISTORY_COLLECT'')) 
+        persistdbdir = str(os.environ.get('PERSISTDB_DIR'))
+        buildhistory = str(os.environ.get('BUILD_HISTORY_COLLECT''))
         nightly_arch = []
         nightly_arch.append("x86")
         nightly_arch.append("x86-64")
@@ -46,7 +46,7 @@ class CreateCurrentLink(ShellCommand):
             elif "nightly-" + arch in buildername and branch == "master" and buildhistory == "True" and self.sync == "checkin":
                 command=command+"cp -R tmp/cache/bb_persist_data.sqlite3 " \
                                + persistdbdir + "/" + buildername \
-                               + "/" + branch + "/" + self.distro 
+                               + "/" + branch + "/" + self.distro
         ShellCommand.start(self, **kwargs)
 
     def describe(self, done=False):
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PrepPkgIndex.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PrepPkgIndex.py
index 1b41927..ce773d1 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PrepPkgIndex.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PrepPkgIndex.py
@@ -15,9 +15,9 @@ from twisted.python import log
 from autobuilder.config import *
 
 class PrepPkgIndex(ShellCommand):
-    haltOnFailure = False 
-    flunkOnFailure = True 
-    name = "PrepPkgIndex" 
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "PrepPkgIndex"
     def __init__(self, factory, argdict=None, **kwargs):
         for k, v in argdict.iteritems():
             setattr(self, k, v)
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index 00f6852..e23ecbf 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -12,14 +12,14 @@ __email__ = "elizabeth.flanagan@intel.com"
 
 from buildbot.steps.shell import ShellCommand
 from twisted.python import log
-import os, datetime 
+import os, datetime
 from autobuilder.config import *
 
 class PublishArtifacts(ShellCommand):
 
-    haltOnFailure = False 
-    flunkOnFailure = True 
-    name = "Publishing Artifacts" 
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "Publishing Artifacts"
     def __init__(self, factory, argdict=None, **kwargs):
         self.factory = factory
         self.description = "Publishing Artifacts"
@@ -44,7 +44,7 @@ class PublishArtifacts(ShellCommand):
         self.layerversion_core = self.getProperty("layerversion_core")
         log.msg(layerversion_yoctobsp)
         self.basedir=os.path.join(os.path.join(
-                                    self.slavedir, buildername), 
+                                    self.slavedir, buildername),
                                     "build/build/")
         command=""
         DATESTAMP=datetime.datetime.now().strftime("%Y%m%d")
@@ -71,20 +71,20 @@ class PublishArtifacts(ShellCommand):
                     command=command+"mkdir -p " + adt_dev_dest + "/adt-ipk;"
                     command=command+"cp -R " + os.path.join(self.basedir, "tmp/deploy/ipk/*") + " " + adt_dev_dest + "/adt-ipk;"
                     command=command+"rsync -av " + os.path.join(self.basedir, "tmp/deploy/ipk/") + " " + DEST + "/ipk;"
-                    command=command+"mkdir -p " + adt_dev_dest + "/rootfs;" 
+                    command=command+"mkdir -p " + adt_dev_dest + "/rootfs;"
                     command=command+"for x in `ls " + DEST + "/machines/qemu/|grep -v tiny`; do ln -s " + DEST + "/machines/qemu/$x " + adt_dev_dest + "/rootfs/$x; done;"
                     if self.layerversion_yocto is not None and int(self.layerversion_yocto) < 2:
-                        command=command+"mv " + adt_dev_dest + "/rootfs/qemux86-64 " + adt_dev_dest + "/rootfs/qemux86_64;" 
+                        command=command+"mv " + adt_dev_dest + "/rootfs/qemux86-64 " + adt_dev_dest + "/rootfs/qemux86_64;"
                 elif artifact == "eclipse-plugin-juno":
                     command=command+"mkdir -p " + DEST + "/eclipse-plugin/juno;"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                     os.path.join(os.path.join(self.slavedir, buildername), 
+                                     os.path.join(os.path.join(self.slavedir, buildername),
                                                  "build/scripts/org.*.zip") + \
                                      " " + DEST + "/eclipse-plugin/juno;"
                 elif artifact == "eclipse-plugin-kepler":
                     command=command+"mkdir -p " + DEST + "/eclipse-plugin/kepler;"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                     os.path.join(os.path.join(self.slavedir, buildername), 
+                                     os.path.join(os.path.join(self.slavedir, buildername),
                                                  "build/scripts/org.*.zip") + \
                                      " " + DEST + "/eclipse-plugin/kepler;"
                 elif artifact == "build-appliance":
@@ -169,7 +169,7 @@ class PublishArtifacts(ShellCommand):
                     command=command+"echo 'Skipping copy of " + artifact + ".'"
                 else:
                     artifact_name, deploy_image_dir = self.getDeployNames(artifact, buildername)
-                    
+
                     command=command+"mkdir -p " + DEST + "/"+ MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                      deploy_image_dir + \
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py
index c73fd29..b9484e7 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py
@@ -12,13 +12,13 @@ __email__ = "elizabeth.flanagan@intel.com"
 
 from buildbot.steps.shell import ShellCommand
 from twisted.python import log
-import os, datetime 
+import os, datetime
 from autobuilder.config import *
 
 class PublishLayerTarballs(ShellCommand):
-    haltOnFailure = False 
-    flunkOnFailure = True 
-    name = "Publishing Layer Tarballs" 
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "Publishing Layer Tarballs"
     def __init__(self, factory, layername, workdir, argdict=None, **kwargs):
         self.factory = factory
         self.layername = layername
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ResolveLayerHead.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ResolveLayerHead.py
index 88b12bf..c9ca9ad 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/ResolveLayerHead.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ResolveLayerHead.py
@@ -16,8 +16,8 @@ from twisted.python import log
 from autobuilder.config import *
 
 class ResolveLayerHead(ShellCommand):
-    haltOnFailure = False 
-    flunkOnFailure = False 
+    haltOnFailure = False
+    flunkOnFailure = False
     name = "ResolveLayerHead"
     def __init__(self, factory, layername=None, scheduler=None, argdict=None, **kwargs):
         self.branch = ""
@@ -46,7 +46,7 @@ class ResolveLayerHead(ShellCommand):
         else:
             self.commit = "HEAD"
         if self.commit == "HEAD":
-            cmd = 'git ls-remote ' + self.repourl + ' refs/heads/' + self.branch + '|cut -f1' 
+            cmd = 'git ls-remote ' + self.repourl + ' refs/heads/' + self.branch + '|cut -f1'
         else:
             cmd = 'echo ' + self.commit
         self.command = cmd
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
index a7d1a03..c1dd13a 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
@@ -18,9 +18,9 @@ import os, re
 
 class RunSanityTests(ShellCommand):
 
-    haltOnFailure = False 
-    flunkOnFailure = True 
-    name = "Running Sanity Tests" 
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "Running Sanity Tests"
     def __init__(self, factory, argdict=None, **kwargs):
         self.factory = factory
         self.testsfailed = 0
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/SetDest.py b/lib/python2.7/site-packages/autobuilder/buildsteps/SetDest.py
index 3063bb2..cf901cb 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/SetDest.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/SetDest.py
@@ -12,15 +12,15 @@ __email__ = "elizabeth.flanagan@intel.com"
 
 from buildbot.status.results import SUCCESS, WARNINGS, FAILURE, SKIPPED, \
      EXCEPTION, RETRY, worst_status
-import os, datetime 
+import os, datetime
 import cPickle as pickle
 from autobuilder.config import *
 from twisted.python import log
 from buildbot.steps.shell import ShellCommand
 
 class SetDest(ShellCommand):
-    name = "SetDest" 
-    haltOnFailure = True 
+    name = "SetDest"
+    haltOnFailure = True
     flunkOnFailure = True
     name = "Destination"
     description = ["Setting %s" % name]
@@ -49,7 +49,7 @@ class SetDest(ShellCommand):
         else:
             buildername=self.getProperty("buildername")
             self.workdir=os.path.join(self.slaveworkdir, buildername)
-            if str(self.getProperty("custom_release_me_" + buildername)) == "True":             
+            if str(self.getProperty("custom_release_me_" + buildername)) == "True":
                 rel_name = self.getProperty("custom_release_name_"  + buildername)
                 if not rel_name or rel_name == "":
                     rel_name == self.getProperty(commit-description)
@@ -75,7 +75,7 @@ class SetDest(ShellCommand):
                     pickle.dump(data, pfile)
                     pfile.close()
                 # we can't os.path.exists here as we don't neccessarily have
-                # access to the slave dest from master. So we keep a cpickle of 
+                # access to the slave dest from master. So we keep a cpickle of
                 # the dests.
                 try:
                     # if the dictionary entry exists, we increment value by one, then repickle
@@ -87,7 +87,7 @@ class SetDest(ShellCommand):
                 pfile = open(DATA_FILE, 'wb')
                 pickle.dump(data, pfile)
                 pfile.close()
-                
+
                 DEST = os.path.join(DEST, DEST_DATE + "-" + str(REV))
             self.setProperty("DEST", DEST)
             self.finished(SUCCESS)
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/Sleep.py b/lib/python2.7/site-packages/autobuilder/buildsteps/Sleep.py
index d416f4b..50ac9ec 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/Sleep.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/Sleep.py
@@ -14,9 +14,9 @@ __email__ = "elizabeth.flanagan@intel.com"
 from buildbot.steps.shell import ShellCommand
 
 class Sleep(ShellCommand):
-    haltOnFailure = True 
-    flunkOnFailure = True 
-    name = "Sleep" 
+    haltOnFailure = True
+    flunkOnFailure = True
+    name = "Sleep"
     def __init__(self, factory, argdict=None, **kwargs):
         self.time="0"
         self.funny="False"
@@ -28,13 +28,13 @@ class Sleep(ShellCommand):
                 setattr(self, k, v)
         sleep_quotes = ["Sleep, those little slices of death, how I loathe them.",
                                    "No day is so bad it can't be fixed with a nap.",
-                                   "People who say they sleep like a baby usually don't have one.", 
-                                   "Life is too short to sleep on low thread-count sheets", 
-                                   "Sleep is a symptom of caffeine deprivation.", 
-                                   "Without enough sleep, we all become tall two-year-olds.", 
-                                   "I'm not asleep... but that doesn't mean I'm awake.", 
-                                   "When you have insomnia, you're never really asleep, and you're never really awake.", 
-                                   "Life is something that happens when you can't get to sleep.", 
+                                   "People who say they sleep like a baby usually don't have one.",
+                                   "Life is too short to sleep on low thread-count sheets",
+                                   "Sleep is a symptom of caffeine deprivation.",
+                                   "Without enough sleep, we all become tall two-year-olds.",
+                                   "I'm not asleep... but that doesn't mean I'm awake.",
+                                   "When you have insomnia, you're never really asleep, and you're never really awake.",
+                                   "Life is something that happens when you can't get to sleep.",
                                    "Sleeping is no mean art:  for its sake one must stay awake all day.",
                                    "I count it as a certainty that in paradise, everyone naps.",
                                    "Early to rise and early to bed, makes a man healthy and wealthy and dead.",
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/SyncPersistDB.py b/lib/python2.7/site-packages/autobuilder/buildsteps/SyncPersistDB.py
index 68e887f..78c5abc 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/SyncPersistDB.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/SyncPersistDB.py
@@ -17,9 +17,9 @@ from autobuilder.config import *
 import os
 
 class SyncPersistDB(ShellCommand):
-    haltOnFailure = False 
-    flunkOnFailure = True 
-    name = "syncing persistdb" 
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "syncing persistdb"
     def __init__(self, factory, argdict=None, **kwargs):
         self._pendingLogObservers = []
         self.factory = factory
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/TestFailStep.py b/lib/python2.7/site-packages/autobuilder/buildsteps/TestFailStep.py
index a57f6bb..f0134a9 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/TestFailStep.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/TestFailStep.py
@@ -13,8 +13,8 @@ from buildbot.steps.shell import ShellCommand
 from buildbot.status.results import FAILURE
 
 class TestFailStep(ShellCommand):
-    haltOnFailure = False 
-    flunkOnFailure = True 
+    haltOnFailure = False
+    flunkOnFailure = True
     name = "TestFailStep"
     def __init__(self, factory, argdict=None, **kwargs):
         for k, v in argdict.iteritems():
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/YoctoBlocker.py b/lib/python2.7/site-packages/autobuilder/buildsteps/YoctoBlocker.py
index 92e1f0b..1b8de27 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/YoctoBlocker.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/YoctoBlocker.py
@@ -17,7 +17,7 @@ class YoctoBlocker(Blocker):
         builderStatus = builder.builder_status
         matchingBuild = None
 
-        all_builds = builderStatus.getCurrentBuilds() 
+        all_builds = builderStatus.getCurrentBuilds()
 
         for buildStatus in all_builds:
             if self.buildsMatch(myBuildStatus, buildStatus):
-- 
1.8.1.2


