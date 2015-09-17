Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E957AE00D86; Wed, 16 Sep 2015 22:41:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C4F0E00B74
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 22:41:00 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 16 Sep 2015 22:41:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,544,1437462000"; d="scan'208";a="646509784"
Received: from tmglnx.jf.intel.com ([10.7.200.136])
	by orsmga003.jf.intel.com with ESMTP; 16 Sep 2015 22:41:01 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 16 Sep 2015 22:37:32 -0700
Message-Id: <1442468252-5951-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [PATCH] buildset-config.examples/gitpoller.conf, README-NEW-AUTOBUILDER
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
X-List-Received-Date: Thu, 17 Sep 2015 05:41:01 -0000

[YOCTO #7702]

This patchset provides an example buildset conf for a multi-
branch GitPoller, which may be found in the
build-config.examples directory. The README-NEW-AUTOBUILDER
file has also been updated with this example.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 README-NEW-AUTOBUILDER                  | 43 ++++++++++++++++++++++++++++++++-
 buildset-config.examples/gitpoller.conf | 33 +++++++++++++++++++++++++
 2 files changed, 75 insertions(+), 1 deletion(-)
 create mode 100644 buildset-config.examples/gitpoller.conf

diff --git a/README-NEW-AUTOBUILDER b/README-NEW-AUTOBUILDER
index d519b15..c37c8c4 100644
--- a/README-NEW-AUTOBUILDER
+++ b/README-NEW-AUTOBUILDER
@@ -249,7 +249,7 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
            If you are using a SingleBranchScheduler schedule, it is good
            practice to force a build to verify the buildset works correctly.
 
-Example:
+Example of PBChangeSource:
 
 [nightly-x86]
 builders: 'builder1'
@@ -276,6 +276,47 @@ scheduler: [{'dev-branch-scheduler' :
                  'stable-timer':30,
                  'change-password':'secret_change_password'}}]
 
+
+Example of MultiBranch GitPoller:
+
+[git-poller]
+builders: 'example-worker'
+repos: [{'poky-contrib':
+            {'repourl':'git://git.yoctoproject.org/poky-contrib',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
+             'branch':'tgraydon/poky'}},
+        {'meta-qt3':
+            {'repourl':'git://git.yoctoproject.org/poky-contrib',
+             'branch':'tgraydon/meta-qt3'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686',
+                            'distro': 'poky'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {'images': 'core-image-sato'}},
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['qemux86', 'atom-pc']}}]
+scheduler: [{'git-poller-scheduler':
+            {'type':'SingleBranchScheduler',
+             'changesource':'GitPoller',
+             'repository':'poky-contrib',
+             'branch':'tgraydon/poky',
+             'interval':3600},
+             'stable-timer':300}}]
+scheduler: [{'git-poller-scheduler':
+            {'type':'SingleBranchScheduler',
+             'changesource':'GitPoller',
+             'repository':'poky-contrib',
+             'branch':'tgraydon/meta-qt3',
+             'interval':3600},
+             'stable-timer':300}}]
+
+Note that the 'change-password' property is not used for GitPoller. This 
+buildset config may also be found in the build-config.examples directory.
+
+
 Adding Buildsteps
 -------------
 I've included the basic buildsteps required to do general building as well as an
diff --git a/buildset-config.examples/gitpoller.conf b/buildset-config.examples/gitpoller.conf
new file mode 100644
index 0000000..9bf5165
--- /dev/null
+++ b/buildset-config.examples/gitpoller.conf
@@ -0,0 +1,33 @@
+[git-poller]
+builders: 'example-worker'
+repos: [{'poky-contrib':
+            {'repourl':'git://git.yoctoproject.org/poky-contrib',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
+             'branch':'tgraydon/poky'}},
+        {'meta-qt3':
+            {'repourl':'git://git.yoctoproject.org/poky-contrib',
+             'branch':'tgraydon/meta-qt3'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686',
+                            'distro': 'poky'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {'images': 'core-image-sato'}},
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['qemux86', 'atom-pc']}}]
+scheduler: [{'git-poller-scheduler':
+            {'type':'SingleBranchScheduler',
+             'changesource':'GitPoller',
+             'repository':'poky-contrib',
+             'branch':'tgraydon/poky',
+             'interval':'3600,
+             'stable-timer':300}}]
+scheduler: [{'git-poller-scheduler':
+            {'type':'SingleBranchScheduler',
+             'changesource':'GitPoller',
+             'repository':'poky-contrib',
+             'branch':'tgraydon/meta-qt3',
+             'interval':'3600,
+             'stable-timer':300}}]
-- 
1.9.3


