Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92ED6E00922; Fri, 27 Mar 2015 17:33:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E966E00906
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 17:33:38 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 27 Mar 2015 17:33:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,482,1422950400"; d="scan'208";a="547505951"
Received: from tmglnx.jf.intel.com ([10.7.200.136])
	by orsmga003.jf.intel.com with ESMTP; 27 Mar 2015 17:33:33 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 27 Mar 2015 18:33:08 -0700
Message-Id: <1427506388-12271-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [PATCH] nightly-weston.conf: Run regular build tests for no-X11 case
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
X-List-Received-Date: Sat, 28 Mar 2015 00:33:43 -0000

[YOCTO #6854]

A common configuration selection is to remove x11 from
DISTRO_FEATURES. Add a nightly-weston.conf builset to allow us to test this
via the autobuilder. Also added to nightly.conf and yoctoAB.conf.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 buildset-config.controller/nightly-weston.conf | 24 ++++++++++++++++++++++++
 buildset-config.controller/nightly.conf        |  2 +-
 buildset-config.controller/yoctoAB.conf        |  5 +++--
 3 files changed, 28 insertions(+), 3 deletions(-)
 create mode 100644 buildset-config.controller/nightly-weston.conf

diff --git a/buildset-config.controller/nightly-weston.conf b/buildset-config.controller/nightly-weston.conf
new file mode 100644
index 0000000..d9875c6
--- /dev/null
+++ b/buildset-config.controller/nightly-weston.conf
@@ -0,0 +1,24 @@
+[nightly-weston]
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
+                            'atextappend' : '\nDISTRO_FEATURES_remove = " x11"\n'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'SyncPersistDB' : {'distro' : 'poky'}},
+        {'GetBitbakeVersion': {}},
+        {'BuildImages': {'images': 'core-image-weston'}},
+        {'PublishLayerTarballs':{}},
+        {'SendErrorReport': {}},
+        {'UploadToasterEventlog': {}},
+        {'PublishArtifacts': {'artifacts': ['qemux86-64', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly.conf b/buildset-config.controller/nightly.conf
index cf7c77c..13235bf 100644
--- a/buildset-config.controller/nightly.conf
+++ b/buildset-config.controller/nightly.conf
@@ -88,7 +88,7 @@ steps: [{'SetDest':{}},
                            'eclipse-plugin-kepler': {}, 'eclipse-plugin-juno': {},
                            'nightly-non-gpl3': {}, 'nightly-oecore': {},
                            'nightly-world':{}, 'nightly-world-lsb':{}, 'nightly-intel-gpl': {},
-                           'poky-tiny': {}, 'buildtools': {},
+                           'nightly-weston':{}, 'poky-tiny': {}, 'buildtools': {},
                            'nightly-qa-systemd': {}, 'nightly-qa-extras': {},
                            'nightly-qa-logrotate': {}, 'nightly-qa-pam': {},
                            'nightly-qa-skeleton': {}}}},
diff --git a/buildset-config.controller/yoctoAB.conf b/buildset-config.controller/yoctoAB.conf
index 5bc369d..ab771c0 100644
--- a/buildset-config.controller/yoctoAB.conf
+++ b/buildset-config.controller/yoctoAB.conf
@@ -6,5 +6,6 @@ order: ['nightly', 'eclipse-plugin-juno',
         'nightly-x86-64', 'nightly-x86-64-lsb', 'nightly-x86',
         'nightly-x86-lsb', 'nightly-x32', 'nightly-multilib',
         'nightly-world', 'nightly-world-lsb', 'nightly-non-gpl3', 
-        'nightly-oecore', 'nightly-intel-gpl', 'poky-tiny',
-        'build-appliance', 'nightly-qa-extras', 'nightly-qa-systemd']
+        'nightly-oecore', 'nightly-intel-gpl', 'nightly-weston',
+        'poky-tiny', 'build-appliance', 
+        'nightly-qa-extras', 'nightly-qa-systemd']
-- 
1.9.3


