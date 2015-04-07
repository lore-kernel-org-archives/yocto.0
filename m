Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2360BE00957; Tue,  7 Apr 2015 12:20:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEC96E00830
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 12:19:57 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 07 Apr 2015 12:19:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,539,1422950400"; d="scan'208";a="710093013"
Received: from tmglnx.jf.intel.com ([10.7.200.136])
	by orsmga002.jf.intel.com with ESMTP; 07 Apr 2015 12:19:57 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  7 Apr 2015 13:19:20 -0700
Message-Id: <1428437960-29506-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [PATCH] nightly-no-x11.conf: Run regular build tests for no-X11 case
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
X-List-Received-Date: Tue, 07 Apr 2015 19:20:01 -0000

[YOCTO #6854]

A common configuration selection is to remove x11 from
DISTRO_FEATURES. Add a nightly-no-x11.conf builset to allow us to test this
via the autobuilder. Also added to nightly.conf and yoctoAB.conf. Build
core-image-weston as a starting point.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 buildset-config.controller/nightly-no-x11.conf | 24 ++++++++++++++++++++++++
 buildset-config.controller/nightly.conf        |  2 +-
 buildset-config.controller/yoctoAB.conf        |  5 +++--
 3 files changed, 28 insertions(+), 3 deletions(-)
 create mode 100644 buildset-config.controller/nightly-no-x11.conf

diff --git a/buildset-config.controller/nightly-no-x11.conf b/buildset-config.controller/nightly-no-x11.conf
new file mode 100644
index 0000000..1e292dc
--- /dev/null
+++ b/buildset-config.controller/nightly-no-x11.conf
@@ -0,0 +1,24 @@
+[nightly-no-x11]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
+             'branch':'master'}},
+        {'meta-qt3':
+            {'repourl':'git://git.yoctoproject.org/meta-qt3',
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686',
+                            'distro': 'poky', 'buildhistory' : False}},
+                            'atextappend' : '\nDISTRO_FEATURES_remove = "x11"\n'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'SyncPersistDB' : {'distro' : 'poky'}},
+        {'GetBitbakeVersion': {}},
+        {'BuildImages': {'images': 'core-image-no-x11'}},
+        {'PublishLayerTarballs':{}},
+        {'SendErrorReport': {}},
+        {'UploadToasterEventlog': {}},
+        {'PublishArtifacts': {'artifacts': ['qemux86-64', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly.conf b/buildset-config.controller/nightly.conf
index cf7c77c..0db775b 100644
--- a/buildset-config.controller/nightly.conf
+++ b/buildset-config.controller/nightly.conf
@@ -88,7 +88,7 @@ steps: [{'SetDest':{}},
                            'eclipse-plugin-kepler': {}, 'eclipse-plugin-juno': {},
                            'nightly-non-gpl3': {}, 'nightly-oecore': {},
                            'nightly-world':{}, 'nightly-world-lsb':{}, 'nightly-intel-gpl': {},
-                           'poky-tiny': {}, 'buildtools': {},
+                           'nightly-no-x11':{}, 'poky-tiny': {}, 'buildtools': {},
                            'nightly-qa-systemd': {}, 'nightly-qa-extras': {},
                            'nightly-qa-logrotate': {}, 'nightly-qa-pam': {},
                            'nightly-qa-skeleton': {}}}},
diff --git a/buildset-config.controller/yoctoAB.conf b/buildset-config.controller/yoctoAB.conf
index 5bc369d..4f2322b 100644
--- a/buildset-config.controller/yoctoAB.conf
+++ b/buildset-config.controller/yoctoAB.conf
@@ -6,5 +6,6 @@ order: ['nightly', 'eclipse-plugin-juno',
         'nightly-x86-64', 'nightly-x86-64-lsb', 'nightly-x86',
         'nightly-x86-lsb', 'nightly-x32', 'nightly-multilib',
         'nightly-world', 'nightly-world-lsb', 'nightly-non-gpl3', 
-        'nightly-oecore', 'nightly-intel-gpl', 'poky-tiny',
-        'build-appliance', 'nightly-qa-extras', 'nightly-qa-systemd']
+        'nightly-oecore', 'nightly-intel-gpl', 'nightly-no-x11',
+        'poky-tiny', 'build-appliance', 
+        'nightly-qa-extras', 'nightly-qa-systemd']
-- 
1.9.3


