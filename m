Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6679E00A96
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:26:57 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Mar 2014 10:26:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="492922488"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga002.fm.intel.com with ESMTP; 05 Mar 2014 10:26:50 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 67B985F82A8A; Wed,  5 Mar 2014 10:23:31 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:22:57 -0800
Message-Id: <3beb0e18e2659a8266e9fe1c705c8fe263aae387.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 06/27] Autobuilder.py/Buildset.py: More sane parser/UI
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

From: Beth Flanagan <elizabeth.flanagan@intel.com>

The parser for Autobuilder.py didn't dive very deep on triggered
builds. If it found one, it just grabbed it's properties and
then displayed them on the UI. This allowed us to mix and match
repos/branches/commits.

The utility of mix and match was needed, but at this point, we
don't really need it. So, this commit removes mix and match,
makes Autobuilder's parser recursive, simplifies commit data
and makes it so we can have trigger of triggers and that the
properties are inherited all the way to the top.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 .../site-packages/autobuilder/Autobuilder.py       | 414 ++++++++++-----------
 .../site-packages/autobuilder/BuildSet.py          |  46 ++-
 2 files changed, 232 insertions(+), 228 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
index e2aec21..c6c4bc0 100644
--- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
+++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
@@ -19,6 +19,8 @@ from buildbot.schedulers.basic  import SingleBranchScheduler
 from buildbot.changes import filter
 from buildbot.changes.pb import PBChangeSource
 from lib.ABTools import capitalize
+import ast
+import BuildSet
 
 class Autobuilder:
     def __init__(self, cfile=None):
@@ -35,6 +37,154 @@ class Autobuilder:
             except:
                 self.cfile = "./buildset-config/yoctoAB.conf"
 
+    def createBuildsets(self):
+        beenHere=[]
+        sort = True
+        if self.config.has_option('BuildSets', 'order'):
+            sort = False
+            for set in ast.literal_eval(self.config.get('BuildSets', 'order')):
+                beenHere.append(set)
+        for key in self.configdict:
+            if key not in beenHere and key != "BuildSets":
+                beenHere.append(key)
+        if sort:
+            beenHere.sort()
+        # REALLY crappy way to do this, but better than setting globals. 
+        os.environ["YOCTO_SORTED_BUILDERS"]= str(beenHere)
+        for buildset in beenHere:
+            self.schedprops = []
+            self.checkoutprops={}
+            self.set_props = {}
+            self.repos = []
+            self.properties = []
+            self.builders = None
+            self.schedprops.append(NestedParameter(name='ss_' + buildset, label="<h3><div class='trigger_heading' id='"+buildset+"'>" + buildset + " defaults:</div></h3>", fields=[FixedParameter(name="dummy", default="dummy")]))
+            self.parseBuildSet(buildset)
+            locals()['buildset_%s' % buildset]=BuildSet.BuildSet(name=buildset,
+                                                            steps=ast.literal_eval(self.configdict[buildset]['steps']), 
+                                                            builders=self.builders,
+                                                            layers=ast.literal_eval(self.configdict[buildset]['repos']),
+                                                            set_props=self.set_props)
+            self.yocto_sched.append(ForceScheduler(
+                                name=str(buildset),
+                                branch=FixedParameter(name="branch", 
+                                                      default=""),
+                                reason=StringParameter(name="reason",
+                                                       label="Reason:<br>",
+                                                       required=False, 
+                                                       size=120),
+                                revision=FixedParameter(name="revision", 
+                                                        default=""),
+                                repository=FixedParameter(name="repository",
+                                                          default=""),
+                                project=FixedParameter(name="repository",
+                                                       default=""),
+                                builderNames=['%s' % buildset],
+                                properties=self.schedprops))
+            self.createExtraSchedulers(key=buildset, checkoutprops=self.checkoutprops)
+
+    def parseBuildSet(self, buildset):
+        if buildset is not "BuildSets":
+            self.builders=self.parseBuilders(buildset)
+            self.parseProps(buildset)
+            self.parseRepos(buildset)
+            self.parseSteps(buildset)
+            self.set_props.update(self.checkoutprops)
+
+    def parseSteps(self, buildset):
+        buildset=buildset
+        for step in ast.literal_eval(self.configdict[buildset]['steps']):
+            if step.has_key('TriggerBuilds'):
+                master_trigger_name = step['TriggerBuilds']['schedulerName']
+                for b in ["", "_nowait"]:
+                    buildername=[]
+                    if 'schedulerNames' + b in step['TriggerBuilds' ]:
+                        for scheduler in step['TriggerBuilds']['schedulerNames' + b].iterkeys():
+                            if scheduler not in buildername:
+                                self.parseBuildSet(scheduler)
+                                buildername.append(scheduler)
+                        self.yocto_sched.append(Triggerable(name="trigger_" + master_trigger_name + b, builderNames=buildername))
+
+    def parseRepos(self, buildset=None):
+        buildset=buildset
+        if DEBUG is True:
+            log.msg(buildset + " uses these repos:")
+        for layer in ast.literal_eval(self.configdict[buildset]['repos']):
+            if layer.iterkeys().next() not in self.repos:
+                schedpropstoextend, newcheckoutprops = self.CreateLayerSchedulerParams(layer=layer, trigger=buildset, triggerer=True)
+                self.schedprops.extend(schedpropstoextend)
+                self.checkoutprops.update(newcheckoutprops)
+                self.repos.append(layer.iterkeys().next())
+        return
+
+    def parseProps(self, buildset):
+        buildset=buildset
+        if self.configdict[buildset].has_key('props'):
+            for props in ast.literal_eval(self.configdict[buildset]['props']):
+                for prop in dict(props):
+                    self.prop_name=""
+                    self.prop_prop_type=""
+                    self.prop_default="" 
+                    self.prop_choices="" 
+                    self.prop_label=""
+                    self.prop_required=""
+                    self.prop_size=""
+                    setattr(self, "prop_name", prop)
+                    for k, v in props[prop].iteritems():
+                        setattr(self, "prop_"+str(k), v)
+                    if self.prop_name not in self.properties:
+                        schedpropstoextend = self.CreateExtraSchedulerParams(name=self.prop_name, 
+                                                                           prop_type=self.prop_prop_type,
+                                                                           default=self.prop_default, 
+                                                                           choices=self.prop_choices, 
+                                                                           label=self.prop_label, 
+                                                                           required=self.prop_required, 
+                                                                           scheduler=buildset,
+                                                                           size=self.prop_size)
+                        self.schedprops.extend(schedpropstoextend)
+                        self.properties.append(self.prop_name)
+
+    def parseBuilders(self, buildset):
+        buildset=buildset
+        builders=ast.literal_eval(self.configdict[buildset]['builders'])
+        if DEBUG is True:
+            log.msg(buildset + " is built on " + str(builders))
+        return builders 
+
+    def parseConfig(self):
+        import ConfigParser
+        from os import listdir
+        from os.path import dirname, isfile, join
+        print "LOADING CONFIG FILE"
+        self.config = ConfigParser.ConfigParser()
+        self.configdir=os.path.dirname(self.cfile)
+        self.configfiles = [ join(self.configdir,f) for f in listdir(self.configdir) if isfile(join(self.configdir,f)) and (f != 'autobuilder.conf') ]
+        try:
+            self.config.read(self.configfiles)
+        except:
+            print "Can't seem to find the Config file. Is YOCTO_AB_CONFIG set?"
+        self.buildsets=self.config.sections()
+        self.configdict = {}
+        for section in self.buildsets:
+            self.configdict[section]= dict(self.config.items(section))
+        return self.configdict
+
+    def GetLayerCommitId(self, layer):
+            if 'hash' in layer[layer.iterkeys().next()] :
+                layercommitid=layer[layer.iterkeys().next()]['hash']
+            elif 'tag' in layer[layer.iterkeys().next()]:
+                layercommitid=layer[layer.iterkeys().next()]['tag']
+            else:
+                layercommitid="HEAD"
+            return layercommitid
+
+    def GetLayerBranch(self, layer):
+            if 'branch' in layer[layer.iterkeys().next()]:
+                layerbranch=layer[layer.iterkeys().next()]['branch']
+            else:
+                layerbranch="master"
+            return layerbranch
+
     # Create extra schedulers requested for the given buildset using 'scheduler:'
     def createExtraSchedulers(self, key, checkoutprops):
         import ast
@@ -109,156 +259,6 @@ class Autobuilder:
                                                               dayOfWeek=builddayOfWeek))
 
 
-    def createBuildsets(self):
-        import BuildSet
-        import ast
-        beenHere=[]
-        sort = True
-        if self.config.has_option('BuildSets', 'order'):
-            sort = False
-            for set in ast.literal_eval(self.config.get('BuildSets', 'order')):
-                beenHere.append(set)
-        for key in self.configdict:
-            if key not in beenHere and key != "BuildSets":
-                beenHere.append(key)
-        if sort:
-            beenHere.sort()
-        # REALLY crappy way to do this, but better than setting globals. 
-        os.environ["YOCTO_SORTED_BUILDERS"]= str(beenHere)
-        for key in beenHere:
-            log.msg(key)
-            builders=ast.literal_eval(self.configdict[key]['builders']), 
-            if key is not "BuildSets":
-                schedprops = []
-                checkoutprops={}
-                set_props = {}
-                schedprops.append(NestedParameter(name='ss_' + key, label="<h3><div class='trigger_heading' id='"+key+"'>" + key + " defaults:</div></h3>", fields=[FixedParameter(name="dummy", default="dummy")]))
-                if self.configdict[key].has_key('props'):
-                    for props in ast.literal_eval(self.configdict[key]['props']):
-                        for prop in dict(props):
-                            self.prop_name=""
-                            self.prop_prop_type=""
-                            self.prop_default="" 
-                            self.prop_choices="" 
-                            self.prop_label=""
-                            self.prop_required=""
-                            self.prop_size=""
-                            setattr(self, "prop_name", prop)
-                            for k, v in props[prop].iteritems():
-                                setattr(self, "prop_"+str(k), v)
-                            schedpropstoextend = self.CreateExtraSchedulerParams(name=self.prop_name, 
-                                                                                 prop_type=self.prop_prop_type,
-                                                                                 default=self.prop_default, 
-                                                                                 choices=self.prop_choices, 
-                                                                                 label=self.prop_label, 
-                                                                                 required=self.prop_required, 
-                                                                                 scheduler=key,
-                                                                                 size=self.prop_size)
-                            schedprops.extend(schedpropstoextend)
-                for layer in ast.literal_eval(self.configdict[key]['repos']):
-                    schedpropstoextend, newcheckoutprops = self.CreateLayerSchedulerParams(layer=layer, trigger=key, triggerer=True)
-                    schedprops.extend(schedpropstoextend)
-                    checkoutprops.update(newcheckoutprops)
-                    
-                for step in ast.literal_eval(self.configdict[key]['steps']):
-                    if step.has_key('TriggerBuilds'):
-                        layername=layer.iterkeys().next()
-                        master_trigger_name = step['TriggerBuilds']['schedulerName']                        
-                        schedprops.append(NestedParameter(name='blank_triggered_builds', 
-                                                          label="<h3> Layers within triggered builds. These will not inherit the main repo/branch.<hr></h3>",
-                                                          fields=[FixedParameter(name="dummy", default="dummy")]))                        
-                        buildername=[]
-                        for scheduler in step['TriggerBuilds']['schedulerNames'].iterkeys():
-                            schedprops.append(NestedParameter(name='ss_' + scheduler, label="<h3><div class='trigger_heading' id='"+scheduler+"'>" + key + " " + scheduler + " defaults:</div></h3>", fields=[FixedParameter(name="dummy", default="dummy")]))
-                            
-                            for triggered_layer in ast.literal_eval(self.configdict[scheduler]['repos']):
-                                schedpropstoextend, newcheckoutprops = self.CreateLayerSchedulerParams(layer=triggered_layer, trigger=scheduler, triggerer=False)
-                                schedprops.extend(schedpropstoextend)
-                                checkoutprops.update(newcheckoutprops)
-                            if self.configdict[scheduler].has_key('props'):
-                                for sched_props in ast.literal_eval(self.configdict[scheduler]['props']):
-                                    for prop in dict(sched_props):
-                                        self.prop_name=""
-                                        self.prop_prop_type=""
-                                        self.prop_default="" 
-                                        self.prop_choices="" 
-                                        self.prop_label=""
-                                        self.prop_required=""
-                                        self.prop_size=""
-                                        setattr(self, "prop_name", prop)
-                                        for k, v in sched_props[prop].iteritems():
-                                            setattr(self, "prop_"+str(k), v)
-                                        schedpropstoextend = self.CreateExtraSchedulerParams(name=self.prop_name, 
-                                                                                             prop_type=self.prop_prop_type,
-                                                                                             default=self.prop_default, 
-                                                                                             choices=self.prop_choices, 
-                                                                                             label=self.prop_label, 
-                                                                                             required=self.prop_required, 
-                                                                                             size=self.prop_size,
-                                                                                             scheduler=scheduler)
-                                        schedprops.extend(schedpropstoextend)
-                            buildername.append(scheduler)
-                        self.yocto_sched.append(Triggerable(name="trigger_" + master_trigger_name, builderNames=buildername))
-                set_props.update(checkoutprops)
-
-                locals()['buildset_%s' % key]=BuildSet.BuildSet(name=key,
-                                                                steps=ast.literal_eval(self.configdict[key]['steps']), 
-                                                                builders=ast.literal_eval(self.configdict[key]['builders']),
-                                                                layers=ast.literal_eval(self.configdict[key]['repos']),
-                                                                set_props=set_props)
-
-                self.yocto_sched.append(ForceScheduler(
-                                    name=str(key),
-                                    branch=FixedParameter(name="branch", 
-                                                          default=""),
-                                    reason=StringParameter(name="reason",
-                                                           label="Reason:<br>",
-                                                           required=False, 
-                                                           size=120),
-                                    revision=FixedParameter(name="revision", 
-                                                            default=""),
-                                    repository=FixedParameter(name="repository",
-                                                              default=""),
-                                    project=FixedParameter(name="repository",
-                                                           default=""),
-                                    builderNames=['%s' % key],
-                                    properties=schedprops))
-                self.createExtraSchedulers(key=key, checkoutprops=checkoutprops)
-
-    def parseConfig(self):
-        import ConfigParser
-        from os import listdir
-        from os.path import dirname, isfile, join
-        print "LOADING CONFIG FILE"
-        self.config = ConfigParser.ConfigParser()
-        self.configdir=os.path.dirname(self.cfile)
-        self.configfiles = [ join(self.configdir,f) for f in listdir(self.configdir) if isfile(join(self.configdir,f)) and (f != 'autobuilder.conf') ]
-        try:
-            self.config.read(self.configfiles)
-        except:
-            print "Can't seem to find the Config file. Is YOCTO_AB_CONFIG set?"
-        self.buildsets=self.config.sections()
-        self.configdict = {}
-        for section in self.buildsets:
-            self.configdict[section]= dict(self.config.items(section))
-        return self.configdict
-
-    def GetLayerCommitId(self, layer):
-            if 'hash' in layer[layer.iterkeys().next()] :
-                layercommitid=layer[layer.iterkeys().next()]['hash']
-            elif 'tag' in layer[layer.iterkeys().next()]:
-                layercommitid=layer[layer.iterkeys().next()]['tag']
-            else:
-                layercommitid="HEAD"
-            return layercommitid
-
-    def GetLayerBranch(self, layer):
-            if 'branch' in layer[layer.iterkeys().next()]:
-                layerbranch=layer[layer.iterkeys().next()]['branch']
-            else:
-                layerbranch="master"
-            return layerbranch
-
     def CreateExtraSchedulerParams(self, name=None, 
                                          prop_type=None, 
                                          default=None, 
@@ -267,98 +267,90 @@ class Autobuilder:
                                          required=None, 
                                          size=None,
                                          scheduler=""):
-        self.supported_prop_types  = ["ChoiceStringParameter", 
+        supported_prop_types  = ["ChoiceStringParameter", 
                          "StringParameter",
                          "FixedParameter",
                          "BooleanParameter"]
-        self.schedprops = []
-        self.prop_type=prop_type
-        self.name=name
-        self.choices=choices
-        self.prop_type=prop_type
-        self.label=label
-        self.required=required
-        self.size=size
-        self.default=default
-        self.scheduler=scheduler
-        self.id="custom_"+self.name+"_"+self.scheduler
-        if self.label is None:
-            self.label=self.name
+        schedprops = []
+        prop_type=prop_type
+        name=name
+        choices=choices
+        prop_type=prop_type
+        label=label
+        required=required
+        size=size
+        default=default
+        scheduler=scheduler
+        propid="custom_"+name
+        if label is None:
+            label=self.name
 
-        if self.default is None:
+        if default is None:
             if prop_type == "FixedParameter":
                 try:
                     raise ABConfigError("your config file has a fixed type property declaration that has no default")
                 except ABConfigError, (instance):
                     log.msg("Caught: " + instance.parameter)
             else:
-                self.default = ""
+                default = ""
 
-        if self.prop_type == "ChoiceStringParameter":
-            if self.choices is None: 
+        if prop_type == "ChoiceStringParameter":
+            if choices is None: 
                 try:
                     raise ABConfigError("your config file has a ChoiceStringParameter declaration that has no choices")
                 except ABConfigError, (instance):
                     log.msg("Caught: " + instance.parameter)
 
-        if self.required is None:
-            self.required=True
+        if required is None:
+            required=True
 
-        if self.size is None:
-            self.size=80
+        if size is None:
+            size=80
 
-        if self.prop_type is None:
-            self.prop_type = "StringParameter"
+        if prop_type is None:
+            prop_type = "StringParameter"
 
-        if self.prop_type=="ChoiceStringParameter":
-           self.schedprops.append(ChoiceStringParameter(name=self.id, 
-                                             label=self.label, 
-                                             required=self.required, 
-                                             choices=self.choices))
-        elif self.prop_type=="StringParameter":
-           self.schedprops.append(StringParameter(name=self.id, 
-                                             label=self.label, 
-                                             required=self.required, 
-                                             default=self.default,
-                                             size=self.size))
-        elif self.prop_type=="FixedParameter":
-           self.schedprops.append(FixedParameter(name=self.id, 
-                                             label=self.label, 
-                                             required=self.required, 
-                                             default=self.default))
-        elif self.prop_type=="BooleanParameter":
-           self.schedprops.append(BooleanParameter(name=self.id, 
-                                             label=self.label, 
-                                             required=self.required, 
-                                             default=self.default))
+        if prop_type=="ChoiceStringParameter":
+           schedprops.append(ChoiceStringParameter(name=propid, 
+                                             label=label, 
+                                             required=required, 
+                                             choices=choices))
+        elif prop_type=="StringParameter":
+           schedprops.append(StringParameter(name=propid,
+                                             label=label, 
+                                             required=required, 
+                                             default=default,
+                                             size=size))
+        elif prop_type=="FixedParameter":
+           schedprops.append(FixedParameter(name=propid, 
+                                             label=label, 
+                                             required=required, 
+                                             default=default))
+        elif prop_type=="BooleanParameter":
+           schedprops.append(BooleanParameter(name=propid, 
+                                             label=label, 
+                                             required=required, 
+                                             default=default))
         else:
             try:
                 raise ABConfigError("your config file has a prop declaration that is not valid")
             except ABConfigError, (instance):
                 log.msg("Caught: " + instance.parameter)
-        return self.schedprops
+        return schedprops
 
     def CreateLayerSchedulerParams(self, layer=None, trigger=None, triggerer=None):
             schedprops = []
             set_checkoutprops = {}
             layerrepo=layer[layer.iterkeys().next()]['repourl']
-            log.msg(layerrepo)
             layerbranch=self.GetLayerBranch(layer)
             layercommitid=self.GetLayerCommitId(layer)
-            if triggerer is True:
-                layername="triggerer_" + layer.iterkeys().next() + "_" + trigger
-                layerlabel=capitalize(trigger) + " " + capitalize(layer.iterkeys().next())
-                
-                set_checkoutprops['repo_' + layername] = layerrepo
-                set_checkoutprops['branch_' + layername] =  layerbranch
-            else:
-                layername="trigger_" + layer.iterkeys().next() + "_" + trigger
-                layerlabel=capitalize(trigger) + " " + capitalize(layer.iterkeys().next())
-                set_checkoutprops['repo_' + layername] =  layerrepo
-                set_checkoutprops['branch_' + layername] =  layerbranch
-            schedprops.append(StringParameter(name="repo_"+ layername, label="Repository:<br>", required=True, default=layerrepo, size=80))
-            schedprops.append(StringParameter(name="branch_" + layername, label="Branch:<br>", required=True, default=layerbranch, size=80))
-            schedprops.append(StringParameter(name="commit_" + layername, label="Tag/Commit Hash:<br>", required=True, default=layercommitid, size=80))
+            layername=layer.iterkeys().next()
+            set_checkoutprops['repo_' + layername] = layerrepo
+            set_checkoutprops['branch_' + layername] =  layerbranch
+            set_checkoutprops['commit_' + layername] =  layercommitid
+            schedprops.append(StringParameter(name="repo_"+ layername, label="<hr><b>" + layername + "</b> Repository:<br>", required=True, default=layerrepo, size=50))
+            schedprops.append(StringParameter(name="branch_" + layername, label="Branch:<br>", required=True, default=layerbranch, size=18))
+            schedprops.append(StringParameter(name="commit_" + layername, label="Tag/Commit Hash:<br>", required=True, default=layercommitid, size=20))
             return schedprops, set_checkoutprops
 
 class ABConfigError(Exception):
diff --git a/lib/python2.7/site-packages/autobuilder/BuildSet.py b/lib/python2.7/site-packages/autobuilder/BuildSet.py
index 25c3b4d..c913e93 100644
--- a/lib/python2.7/site-packages/autobuilder/BuildSet.py
+++ b/lib/python2.7/site-packages/autobuilder/BuildSet.py
@@ -43,8 +43,8 @@ class BuildSet():
                         else:
                             if layername == "poky" or layername == 'oecore':
                                 workdir = 'build'
-                            elif "eclipse-poky" in layername: 
-                                workdir="build/" + layername
+                            elif "eclipse" in layername: 
+                                workdir="build"
                             else:
                                 workdir="build/" + layername
                             m = __import__ (step)
@@ -59,7 +59,8 @@ class BuildSet():
                     for layer in layers:
                         kwargs=stepOrder[step]
                         layername=layer.iterkeys().next()
-                        if os.environ.get("RESOLVE_TRIGGERED_HEAD") == "True" and "TriggerBuilds" in str(steps):
+                        log.msg(type(Property('commit_resolvedhead_'+layername)))
+                        if os.environ.get("RESOLVE_TRIGGERED_HEAD") == "True":
                             m = __import__ ("ResolveLayerHead")
                             func = getattr(m, "ResolveLayerHead")
                             log.msg(layer[layer.iterkeys().next()])
@@ -140,24 +141,35 @@ class BuildSet():
                     else:
                         waitForFinish = False
                     if 'schedulerNames' in stepOrder[step]:
-                        for scheduler in stepOrder[step]['schedulerNames'].iterkeys():
+                        for scheduler in stepOrder[step]['schedulerNames'].keys():
                             for layer in layers:
                                 layername=layer.iterkeys().next()
-                                if Property('repo_trigger_' + layername +"_"+ scheduler):
-                                    set_properties['repo_trigger_' + layername +"_"+ scheduler] = Property('repo_trigger_' + layername +"_"+ scheduler)
-                                if Property('branch_trigger_' + layername +"_"+ scheduler):
-                                    set_properties['branch_trigger_' + layername +"_"+ scheduler] = Property('branch_trigger_' + layername +"_"+ scheduler)
-                                if Property('commit_trigger_' + layername +"_"+ scheduler):
-                                    set_properties['commit_trigger_' + layername +"_"+ scheduler] = Property('commit_trigger_' + layername +"_"+ scheduler)
-                                if Property('bb_trigger_' + layername +"_"+ scheduler):
-                                    set_properties['bb_trigger_' + layername +"_"+ scheduler] = Property('bb_trigger_' + layername +"_"+ scheduler)
-                                if Property('repourl_' + layername):
-                                    set_properties['triggers_repo_' + layername] = Property('repourl_' + layername)
+                                if Property('commit_resolvedhead_' + layername):
+                                    set_properties['commit_' + layername] = Property('commit_resolvedhead_' + layername)
+                                elif Property('commit_' + layername):
+                                    set_properties['commit_' + layername] = Property('commit_' + layername)
+                                if Property('repo_' + layername):
+                                    set_properties['repo_' + layername] = Property('repo_' + layername)
+                                elif Property('repourl_' + layername):
+                                    set_properties['repo_' + layername] = Property('repourl_' + layername)
                                 if Property('branch_' + layername):
-                                    set_properties['triggers_branch_' + layername] = Property('branch_' + layername)
+                                    set_properties['branch_' + layername] = Property('branch_' + layername)
+                    if 'schedulerNames_nowait' in stepOrder[step]:
+                        for scheduler in stepOrder[step]['schedulerNames_nowait'].keys():
+                            for layer in layers:
+                                layername=layer.iterkeys().next()
                                 if Property('commit_resolvedhead_' + layername):
-                                    set_properties['commit_resolvedhead_' + layername] = Property('commit_resolvedhead_' + layername)
-                        factoryFN(Trigger(schedulerNames=[trigger_name],
+                                    set_properties['commit_' + layername] = Property('commit_resolvedhead_' + layername)
+                                elif Property('commit_' + layername):
+                                    set_properties['commit_' + layername] = Property('commit_' + layername)
+                                if Property('repo_' + layername):
+                                    set_properties['repo_' + layername] = Property('repo_' + layername)
+                                elif Property('repourl_' + layername):
+                                    set_properties['repo_' + layername] = Property('repourl_' + layername)
+                                if Property('branch_' + layername):
+                                    set_properties['branch_' + layername] = Property('branch_' + layername)
+                        factoryFN(Trigger(schedulerNames=[trigger_name, trigger_name + "_nowait"],
+                                          noWait=[trigger_name + "_nowait"],
                                           set_properties=set_properties,
                                           copy_properties=copy_properties,
                                           waitForFinish=waitForFinish))
-- 
1.8.1.2


