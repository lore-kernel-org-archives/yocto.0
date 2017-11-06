Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED52CE00D2E; Mon,  6 Nov 2017 14:45:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E3E0E00D28
	for <yocto@yoctoproject.org>; Mon,  6 Nov 2017 14:45:01 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Nov 2017 14:45:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,354,1505804400"; 
   d="scan'208";a="4184719"
Received: from scetola-mac01.jf.intel.com ([10.54.74.141])
	by orsmga002.jf.intel.com with ESMTP; 06 Nov 2017 14:44:59 -0800
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  6 Nov 2017 14:44:57 -0800
Message-Id: <20171106224457.8855-5-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.14.2
In-Reply-To: <20171106224457.8855-1-stephano.cetola@linux.intel.com>
References: <20171106224457.8855-1-stephano.cetola@linux.intel.com>
Cc: joshua.g.lock@intel.com
Subject: [yocto-autobuilder][PATCH 4/4] buildset-config.meta-intel: add meta-tlk
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
X-List-Received-Date: Mon, 06 Nov 2017 22:45:03 -0000

Since layer version 5 of meta-intel, meta-tlk is now an external
layer rather than a sub-layer of meta-intel. This requires that we
add meta-tlk as a repo to all buildset-configs, and set the
autoinclude flag to False. Then we must check the layerdirs variable
to see if it contains meta-intel/meta-tlk, and add the appropriate
folder to the bblayers.conf depending on which layer version of
meta-intel we are building.

Also, some cleanup was done on the buildset configs to remove extra
white spaces or cleanup the formatting.

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 buildset-config.meta-intel/intel-core2-32-lsb-rt.conf     |  5 ++++-
 buildset-config.meta-intel/intel-core2-32-lsb.conf        |  4 ++++
 buildset-config.meta-intel/intel-core2-32-rt.conf         |  5 ++++-
 buildset-config.meta-intel/intel-core2-32.conf            |  4 ++++
 buildset-config.meta-intel/intel-corei7-64-lsb-rt.conf    |  4 ++++
 buildset-config.meta-intel/intel-corei7-64-lsb.conf       |  6 +++++-
 buildset-config.meta-intel/intel-corei7-64-rt.conf        |  4 ++++
 buildset-config.meta-intel/intel-corei7-64.conf           |  6 +++++-
 buildset-config.meta-intel/intel-quark.conf               |  4 ++++
 buildset-config.meta-intel/nightly-meta-intel-world.conf  |  4 ++++
 buildset-config.meta-intel/nightly-meta-intel.conf        | 15 +++++++++------
 buildset-config.meta-intel/nightly-musl-core2-32.conf     |  4 ++++
 buildset-config.meta-intel/nightly-musl.conf              |  4 ++++
 buildset-config.meta-intel/nightly-x32.conf               |  4 ++++
 buildset-config.meta-intel/yoctoAB.conf                   |  7 ++++---
 .../autobuilder/buildsteps/CreateBBLayersConf.py          |  6 +++++-
 16 files changed, 72 insertions(+), 14 deletions(-)

diff --git a/buildset-config.meta-intel/intel-core2-32-lsb-rt.conf b/buildset-config.meta-intel/intel-core2-32-lsb-rt.conf
index a31d624ec..cbcb99b4a 100644
--- a/buildset-config.meta-intel/intel-core2-32-lsb-rt.conf
+++ b/buildset-config.meta-intel/intel-core2-32-lsb-rt.conf
@@ -10,6 +10,10 @@ repos: [{'poky':
         {'meta-qt4':
             {'repourl':'git://git.yoctoproject.org/meta-qt4',
              'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'layerversion':{'intel':'meta-intel'},
@@ -61,4 +65,3 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-rt'}},
         {'PublishLayerTarballs':{}},
         {'PublishArtifacts': {'artifacts': ['conf', 'intel-core2-32']}}]
-
diff --git a/buildset-config.meta-intel/intel-core2-32-lsb.conf b/buildset-config.meta-intel/intel-core2-32-lsb.conf
index 1aba39718..ccf1e6b8d 100644
--- a/buildset-config.meta-intel/intel-core2-32-lsb.conf
+++ b/buildset-config.meta-intel/intel-core2-32-lsb.conf
@@ -10,6 +10,10 @@ repos: [{'poky':
         {'meta-qt4':
             {'repourl':'git://git.yoctoproject.org/meta-qt4',
              'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'layerversion':{'intel':'meta-intel'},
diff --git a/buildset-config.meta-intel/intel-core2-32-rt.conf b/buildset-config.meta-intel/intel-core2-32-rt.conf
index df04d980d..b591e754f 100644
--- a/buildset-config.meta-intel/intel-core2-32-rt.conf
+++ b/buildset-config.meta-intel/intel-core2-32-rt.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'layerversion':{'intel':'meta-intel'},
@@ -54,4 +58,3 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-rt'}},
         {'PublishLayerTarballs':{}},
         {'PublishArtifacts': {'artifacts': ['conf', 'intel-core2-32']}}]
-
diff --git a/buildset-config.meta-intel/intel-core2-32.conf b/buildset-config.meta-intel/intel-core2-32.conf
index a5849722e..688a67446 100644
--- a/buildset-config.meta-intel/intel-core2-32.conf
+++ b/buildset-config.meta-intel/intel-core2-32.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'layerversion':{'intel':'meta-intel'},
diff --git a/buildset-config.meta-intel/intel-corei7-64-lsb-rt.conf b/buildset-config.meta-intel/intel-corei7-64-lsb-rt.conf
index 76e0f9f11..53ed45940 100644
--- a/buildset-config.meta-intel/intel-corei7-64-lsb-rt.conf
+++ b/buildset-config.meta-intel/intel-corei7-64-lsb-rt.conf
@@ -10,6 +10,10 @@ repos: [{'poky':
         {'meta-qt4':
             {'repourl':'git://git.yoctoproject.org/meta-qt4',
              'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'layerversion':{'intel':'meta-intel'},
diff --git a/buildset-config.meta-intel/intel-corei7-64-lsb.conf b/buildset-config.meta-intel/intel-corei7-64-lsb.conf
index 60dda30ac..5ae2cf7fe 100644
--- a/buildset-config.meta-intel/intel-corei7-64-lsb.conf
+++ b/buildset-config.meta-intel/intel-corei7-64-lsb.conf
@@ -10,6 +10,10 @@ repos: [{'poky':
         {'meta-qt4':
             {'repourl':'git://git.yoctoproject.org/meta-qt4',
              'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'layerversion':{'intel':'meta-intel'},
@@ -49,7 +53,7 @@ steps: [{'SetDest':{}},
         {'RunPreamble': {}},
         {'CheckBSPExists': {}},
         {'GetDistroVersion' : {'distro': 'poky'}},
-        {'CreateAutoConf': {'machine': 'intel-corei7-64', 'SDKMACHINE' : 'x86_64', 
+        {'CreateAutoConf': {'machine': 'intel-corei7-64', 'SDKMACHINE' : 'x86_64',
                             'distro': 'poky-lsb'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto',
                                 'bsplayer': True, 'bspprovider': 'intel',
diff --git a/buildset-config.meta-intel/intel-corei7-64-rt.conf b/buildset-config.meta-intel/intel-corei7-64-rt.conf
index f80666c8a..ab84ebd34 100644
--- a/buildset-config.meta-intel/intel-corei7-64-rt.conf
+++ b/buildset-config.meta-intel/intel-corei7-64-rt.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'layerversion':{'intel':'meta-intel'},
diff --git a/buildset-config.meta-intel/intel-corei7-64.conf b/buildset-config.meta-intel/intel-corei7-64.conf
index 6337cefa9..a0bc1218f 100644
--- a/buildset-config.meta-intel/intel-corei7-64.conf
+++ b/buildset-config.meta-intel/intel-corei7-64.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'layerversion':{'intel':'meta-intel'},
@@ -43,7 +47,7 @@ steps: [{'SetDest':{}},
         {'RunPreamble': {}},
         {'CheckBSPExists': {}},
         {'GetDistroVersion' : {'distro': 'poky'}},
-        {'CreateAutoConf': {'machine': 'intel-corei7-64', 'SDKMACHINE' : 'x86_64', 
+        {'CreateAutoConf': {'machine': 'intel-corei7-64', 'SDKMACHINE' : 'x86_64',
                             'distro': 'poky'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto',
                                 'bsplayer': True, 'bspprovider': 'intel',
diff --git a/buildset-config.meta-intel/intel-quark.conf b/buildset-config.meta-intel/intel-quark.conf
index 136c2257d..8f0d5f27d 100644
--- a/buildset-config.meta-intel/intel-quark.conf
+++ b/buildset-config.meta-intel/intel-quark.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'layerversion':{'intel':'meta-intel'},
diff --git a/buildset-config.meta-intel/nightly-meta-intel-world.conf b/buildset-config.meta-intel/nightly-meta-intel-world.conf
index 654c4f983..32c23e202 100644
--- a/buildset-config.meta-intel/nightly-meta-intel-world.conf
+++ b/buildset-config.meta-intel/nightly-meta-intel-world.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'layerversion':{'intel':'meta-intel'},
diff --git a/buildset-config.meta-intel/nightly-meta-intel.conf b/buildset-config.meta-intel/nightly-meta-intel.conf
index 791053fc6..33446f757 100644
--- a/buildset-config.meta-intel/nightly-meta-intel.conf
+++ b/buildset-config.meta-intel/nightly-meta-intel.conf
@@ -10,6 +10,10 @@ repos: [{'poky':
         {'meta-qt4':
             {'repourl':'git://git.yoctoproject.org/meta-qt4',
              'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'layerversion':{'intel':'meta-intel'},
@@ -90,16 +94,15 @@ steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
         {'TriggerBuilds': {'copy_properties': ['custom_deploy_artifacts', 'custom_prefered_kernel', 'custom_kmeta', 'custom_kbranch', 'custom_srcrev_meta', 'custom_srcrev_machine', 'custom_srcuri_meta', 'custom_srcuri_machine'],
-                           'schedulerName': 'main-build', 'waitForFinish': 'True', 
-                           'schedulerNames': {'intel-core2-32':{}, 'intel-core2-32-lsb':{}, 
+                           'schedulerName': 'main-build', 'waitForFinish': 'True',
+                           'schedulerNames': {'intel-core2-32':{}, 'intel-core2-32-lsb':{},
                              'intel-core2-32-lsb-rt':{}, 'intel-core2-32-rt':{},
                              'intel-corei7-64':{}, 'intel-corei7-64-lsb':{},
-                             'intel-corei7-64-lsb-rt':{}, 'intel-corei7-64-rt':{}, 
-                             'intel-quark':{}, 'nightly-musl':{},
-                             'nightly-musl-core2-32':{}, 'nightly-x32':{}},
+                             'intel-corei7-64-lsb-rt':{}, 'intel-corei7-64-rt':{},
+                             'intel-quark':{}, 'nightly-musl':{}, 'nightly-musl-core2-32':{}, 'nightly-x32':{}},
                              'schedulerNames_nowait' : {'nightly-meta-intel-world':{}}}},
         {'CreateIntelBSPPackage': {'machine': 'intel-core2-32'}},
         {'CreateIntelBSPPackage': {'machine': 'intel-corei7-64'}},
-        {'CreateIntelBSPPackage': {'machine': 'intel-quark'}}, 
+        {'CreateIntelBSPPackage': {'machine': 'intel-quark'}},
         {'SendQAEmail': {}},
         {'CreateCurrentLink' : {}}]
diff --git a/buildset-config.meta-intel/nightly-musl-core2-32.conf b/buildset-config.meta-intel/nightly-musl-core2-32.conf
index e83d03c40..30eb436f3 100644
--- a/buildset-config.meta-intel/nightly-musl-core2-32.conf
+++ b/buildset-config.meta-intel/nightly-musl-core2-32.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'layerversion':{'intel':'meta-intel'},
diff --git a/buildset-config.meta-intel/nightly-musl.conf b/buildset-config.meta-intel/nightly-musl.conf
index 7687825dc..e125e2a94 100644
--- a/buildset-config.meta-intel/nightly-musl.conf
+++ b/buildset-config.meta-intel/nightly-musl.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'layerversion':{'intel':'meta-intel'},
diff --git a/buildset-config.meta-intel/nightly-x32.conf b/buildset-config.meta-intel/nightly-x32.conf
index 47e659765..8b50a8c23 100644
--- a/buildset-config.meta-intel/nightly-x32.conf
+++ b/buildset-config.meta-intel/nightly-x32.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'layerversion':{'intel':'meta-intel'},
diff --git a/buildset-config.meta-intel/yoctoAB.conf b/buildset-config.meta-intel/yoctoAB.conf
index 646fd90f9..437d233a9 100644
--- a/buildset-config.meta-intel/yoctoAB.conf
+++ b/buildset-config.meta-intel/yoctoAB.conf
@@ -1,5 +1,6 @@
 [BuildSets]
 order: ['nightly-meta-intel', 'nightly-meta-intel-world', 'nightly-musl',
-        'nightly-musl-core2-32', 'nightly-x32', 'intel-corei7-64',
-        'intel-corei7-64-lsb', 'intel-corei7-64-rt', 'intel-corei7-64-lsb-rt',
-        'intel-core2-32', 'intel-core2-32-rt', 'intel-core2-32-lsb-rt', 'intel-quark']
+        'nightly-x32', 'intel-corei7-64', 'intel-corei7-64-lsb', 
+        'intel-corei7-64-rt', 'intel-corei7-64-lsb-rt', 'intel-core2-32', 
+        'intel-core2-32-lsb', 'intel-core2-32-rt', 'intel-core2-32-lsb-rt', 
+        'intel-quark'] 
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
index 593b9ee37..c40b899ec 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
@@ -41,6 +41,7 @@ class CreateBBLayersConf(ShellCommand):
         workdir=self.getProperty("workdir")
         layerversioncore = int(self.getProperty("layerversion_core", "0"))
         layerversionyocto = int(self.getProperty("layerversion_yocto", "0"))
+        layerversionintel = int(self.getProperty("layerversion_intel", "0"))
         if self.bbtextprepend != "":
             fout = fout +"\n"+self.bbtextprepend
         if self.bbtext:
@@ -106,7 +107,10 @@ class CreateBBLayersConf(ShellCommand):
             if list(self.layerdirs):
                 for layer in self.layerdirs:
                     if layer not in ldirs:
-                        fout = fout + workdir + '/build/' + layer + ' \ \n'
+                        if layer == "meta-intel/meta-tlk" and layerversionintel > 4:
+                            fout = fout + workdir + '/build/meta-tlk \ \n'
+                        else:
+                            fout = fout + workdir + '/build/' + layer + ' \ \n'
                         ldirs.append(layer)
             fout = fout + '" \n'
             if self.bbtextappend != "":
-- 
2.14.2


