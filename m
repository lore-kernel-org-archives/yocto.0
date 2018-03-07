Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AEB5E00E27; Tue,  6 Mar 2018 20:00:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DDF2E00E0A
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 20:00:49 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Mar 2018 20:00:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,434,1515484800"; d="scan'208";a="23544929"
Received: from guptatax-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.165.117])
	by orsmga006.jf.intel.com with ESMTP; 06 Mar 2018 20:00:46 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Mar 2018 17:00:10 +1300
Message-Id: <20180307040011.2907-2-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <20180307040011.2907-1-paul.eggleton@linux.intel.com>
References: <20180307040011.2907-1-paul.eggleton@linux.intel.com>
Subject: [yocto-autobuilder2][PATCH 1/2] builders: set early steps to halt on failure
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
X-List-Received-Date: Wed, 07 Mar 2018 04:00:51 -0000

If you can't clobber the build directory, check out the helper source
or unpack the repos successfully there's really not much point in
continuing, so stop the build immediately if they fail.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 builders.py | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/builders.py b/builders.py
index 815470e..2a9bc41 100644
--- a/builders.py
+++ b/builders.py
@@ -46,14 +46,16 @@ def create_builder_factory():
     clob = os.path.expanduser("~/yocto-autobuilder-helper/janitor/clobberdir")
     f.addStep(steps.ShellCommand(
         command=[clob, util.Interpolate("%(prop:builddir)s/")],
+        haltOnFailure=True,
         name="Clobber build dir"))
     f.addStep(steps.Git(
         repourl='git://git.yoctoproject.org/yocto-autobuilder-helper',
         workdir=util.Interpolate("%(prop:builddir)s/yocto-autobuilder-helper"),
         mode='incremental',
+        haltOnFailure=True,
         name='Fetch yocto-autobuilder-helper'))
     f.addStep(steps.SetProperties(properties=ensure_props_set))
-    f.addStep(WriteLayerInfo(name='Write main layerinfo.json'))
+    f.addStep(WriteLayerInfo(name='Write main layerinfo.json', haltOnFailure=True))
     f.addStep(steps.ShellCommand(
         command=[util.Interpolate("%(prop:builddir)s/yocto-autobuilder-helper/scripts/shared-repo-unpack"),
                  util.Interpolate("%(prop:builddir)s/layerinfo.json"),
@@ -61,6 +63,7 @@ def create_builder_factory():
                  util.Interpolate("%(prop:builddir)s/build"),
                  util.Property("buildername"),
                  util.Property("is_release")],
+        haltOnFailure=True,
         name="Unpack shared repositories"))
     f.addStep(steps.ShellCommand(
         command=[util.Interpolate("%(prop:builddir)s/yocto-autobuilder-helper/scripts/run-config"),
@@ -93,20 +96,23 @@ factory = util.BuildFactory()
 clob = os.path.expanduser("~/yocto-autobuilder-helper/janitor/clobberdir")
 factory.addStep(steps.ShellCommand(
                 command=[clob, util.Interpolate("%(prop:builddir)s/")],
+                haltOnFailure=True,
                 name="Clobber build dir"))
 # check out the source
 factory.addStep(steps.Git(
     repourl='git://git.yoctoproject.org/yocto-autobuilder-helper',
     workdir=util.Interpolate("%(prop:builddir)s/yocto-autobuilder-helper"),
     mode='incremental',
+    haltOnFailure=True,
     name='Fetch yocto-autobuilder-helper'))
-factory.addStep(WriteLayerInfo(name='Write main layerinfo.json'))
+factory.addStep(WriteLayerInfo(name='Write main layerinfo.json', haltOnFailure=True))
 factory.addStep(steps.ShellCommand(
     command=[
         util.Interpolate("%(prop:builddir)s/yocto-autobuilder-helper/scripts/prepare-shared-repos"),
         util.Interpolate("%(prop:builddir)s/layerinfo.json"),
         util.Interpolate("{}/%(prop:buildername)s-%(prop:buildnumber)s".format(config.sharedrepodir)),
         config.publish_dest],
+    haltOnFailure=True,
     name="Prepare shared repositories"))
 factory.addStep(steps.SetProperty(
     property="sharedrepolocation",
@@ -122,6 +128,7 @@ factory.addStep(steps.ShellCommand(
         util.Interpolate("%(prop:builddir)s/build"),
         util.Property("buildername"),
         util.Property("is_release")],
+    haltOnFailure=True,
     name="Unpack shared repositories"))
 
 # run-config
-- 
2.14.3


