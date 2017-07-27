Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C996E00C6E; Wed, 26 Jul 2017 18:26:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A19FE00C60
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 18:26:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jul 2017 18:26:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,417,1496127600"; d="scan'208";a="1199729573"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2017 18:25:56 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 26 Jul 2017 18:25:52 -0700
Message-Id: <1501118752-27659-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Cc: joshua.g.lock@intel.com
Subject: [yocto-autobuilder][PATCH] /buildset-config.meta-intel/*.conf
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
X-List-Received-Date: Thu, 27 Jul 2017 01:26:06 -0000

Update meta-intel buildsets to reflect current production versions:

- Change various SRCREVs to default to blank instead of linux-yocto or AUTOREV.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 .../intel-core2-32-lsb-rt.conf                     | 12 +++++-----
 buildset-config.meta-intel/intel-core2-32-lsb.conf | 10 ++++-----
 buildset-config.meta-intel/intel-core2-32-rt.conf  | 12 +++++-----
 buildset-config.meta-intel/intel-core2-32.conf     | 10 ++++-----
 .../intel-corei7-64-lsb-rt.conf                    | 12 +++++-----
 .../intel-corei7-64-lsb.conf                       | 10 ++++-----
 buildset-config.meta-intel/intel-corei7-64-rt.conf | 12 +++++-----
 buildset-config.meta-intel/intel-corei7-64.conf    | 10 ++++-----
 .../nightly-meta-intel-world.conf                  | 10 ++++-----
 buildset-config.meta-intel/nightly-musl.conf       | 17 +++++++-------
 buildset-config.meta-intel/nightly-x32.conf        | 26 ++++++++++------------
 11 files changed, 70 insertions(+), 71 deletions(-)

diff --git a/buildset-config.meta-intel/intel-core2-32-lsb-rt.conf b/buildset-config.meta-intel/intel-core2-32-lsb-rt.conf
index 6e5d794..365c437 100644
--- a/buildset-config.meta-intel/intel-core2-32-lsb-rt.conf
+++ b/buildset-config.meta-intel/intel-core2-32-lsb-rt.conf
@@ -1,5 +1,5 @@
 [intel-core2-32-lsb-rt]
-builders: 'example-worker'
+builders: ['example-worker']
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
@@ -22,8 +22,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_meta':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is blank):<br></h3>'}},
         {'srcuri_meta':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_meta',
@@ -37,8 +37,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_machine':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KBRANCH. (default is blank}):<br></h3>'}},
         {'srcuri_machine':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_machine',
@@ -56,7 +56,7 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'intel-core2-32',
                             'SDKMACHINE' : 'x86_64',
                             'distro': 'poky-lsb',
-                            'atextappend' : '\nPREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"\n'}},
+                            'atextappend' : '\nPREFERRED_PROVIDER_virtual/kernel_linuxstdbase = "linux-intel-rt"\n'}},
         {'AddKernelProps': {}},
         {'BuildImages': {'images': 'core-image-rt'}},
         {'PublishLayerTarballs':{}},
diff --git a/buildset-config.meta-intel/intel-core2-32-lsb.conf b/buildset-config.meta-intel/intel-core2-32-lsb.conf
index 5cb608f..cea5962 100644
--- a/buildset-config.meta-intel/intel-core2-32-lsb.conf
+++ b/buildset-config.meta-intel/intel-core2-32-lsb.conf
@@ -1,5 +1,5 @@
 [intel-core2-32-lsb]
-builders: 'example-worker'
+builders: ['example-worker']
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
@@ -22,8 +22,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_meta':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is blank):<br></h3>'}},
         {'srcuri_meta':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_meta',
@@ -37,8 +37,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_machine':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KBRANCH. (default is blank):<br></h3>'}},
         {'srcuri_machine':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_machine',
diff --git a/buildset-config.meta-intel/intel-core2-32-rt.conf b/buildset-config.meta-intel/intel-core2-32-rt.conf
index 45af310..09aa462 100644
--- a/buildset-config.meta-intel/intel-core2-32-rt.conf
+++ b/buildset-config.meta-intel/intel-core2-32-rt.conf
@@ -1,5 +1,5 @@
 [intel-core2-32-rt]
-builders: 'example-worker'
+builders: ['example-worker']
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
@@ -16,8 +16,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_meta':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is blank):<br></h3>'}},
         {'srcuri_meta':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_meta',
@@ -31,8 +31,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_machine':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KBRANCH. (default is blank):<br></h3>'}},
         {'srcuri_machine':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_machine',
@@ -49,7 +49,7 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'intel-core2-32',
                             'SDKMACHINE' : 'x86_64',
                             'distro': 'poky',
-                            'atextappend' : '\nPREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"\n'}},
+                            'atextappend' : '\nPREFERRED_PROVIDER_virtual/kernel = "linux-intel-rt"\n'}},
         {'AddKernelProps': {}},
         {'BuildImages': {'images': 'core-image-rt'}},
         {'PublishLayerTarballs':{}},
diff --git a/buildset-config.meta-intel/intel-core2-32.conf b/buildset-config.meta-intel/intel-core2-32.conf
index 6361940..4397650 100644
--- a/buildset-config.meta-intel/intel-core2-32.conf
+++ b/buildset-config.meta-intel/intel-core2-32.conf
@@ -1,5 +1,5 @@
 [intel-core2-32]
-builders: 'example-worker'
+builders: ['example-worker']
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
@@ -16,8 +16,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_meta':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is blank):<br></h3>'}},
         {'srcuri_meta':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_meta',
@@ -31,8 +31,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_machine':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KBRANCH. (default is blank}):<br></h3>'}},
         {'srcuri_machine':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_machine',
diff --git a/buildset-config.meta-intel/intel-corei7-64-lsb-rt.conf b/buildset-config.meta-intel/intel-corei7-64-lsb-rt.conf
index 00049ac..c58a3be 100644
--- a/buildset-config.meta-intel/intel-corei7-64-lsb-rt.conf
+++ b/buildset-config.meta-intel/intel-corei7-64-lsb-rt.conf
@@ -1,5 +1,5 @@
 [intel-corei7-64-lsb-rt]
-builders: 'example-worker'
+builders: ['example-worker']
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
@@ -22,8 +22,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_meta':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is blank):<br></h3>'}},
         {'srcuri_meta':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_meta',
@@ -37,8 +37,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_machine':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KBRANCH. (default is blank):<br></h3>'}},
         {'srcuri_machine':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_machine',
@@ -55,7 +55,7 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'intel-corei7-64',
                             'SDKMACHINE' : 'x86_64',
                             'distro': 'poky-lsb',
-                            'atextappend' : '\nPREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"\n'}},
+                            'atextappend' : '\nPREFERRED_PROVIDER_virtual/kernel_linuxstdbase = "linux-intel-rt"\n'}},
         {'AddKernelProps': {}},
         {'BuildImages': {'images': 'core-image-rt'}},
         {'PublishLayerTarballs':{}},
diff --git a/buildset-config.meta-intel/intel-corei7-64-lsb.conf b/buildset-config.meta-intel/intel-corei7-64-lsb.conf
index 6d22818..4d86cc4 100644
--- a/buildset-config.meta-intel/intel-corei7-64-lsb.conf
+++ b/buildset-config.meta-intel/intel-corei7-64-lsb.conf
@@ -1,5 +1,5 @@
 [intel-corei7-64-lsb]
-builders: 'example-worker'
+builders: ['example-worker']
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
@@ -22,8 +22,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_meta':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is blank):<br></h3>'}},
         {'srcuri_meta':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_meta',
@@ -37,8 +37,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_machine':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KBRANCH. (default is blank):<br></h3>'}},
         {'srcuri_machine':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_machine',
diff --git a/buildset-config.meta-intel/intel-corei7-64-rt.conf b/buildset-config.meta-intel/intel-corei7-64-rt.conf
index d1102de..6edcb07 100644
--- a/buildset-config.meta-intel/intel-corei7-64-rt.conf
+++ b/buildset-config.meta-intel/intel-corei7-64-rt.conf
@@ -1,5 +1,5 @@
 [intel-corei7-64-rt]
-builders: 'example-worker'
+builders: ['example-worker']
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
@@ -16,8 +16,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_meta':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is blank):<br></h3>'}},
         {'srcuri_meta':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_meta',
@@ -31,8 +31,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_machine':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KBRANCH. (default is blank):<br></h3>'}},
         {'srcuri_machine':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_machine',
@@ -49,7 +49,7 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'intel-corei7-64',
                             'SDKMACHINE' : 'x86_64',
                             'distro': 'poky',
-                            'atextappend' : '\nPREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"\n'}},
+                            'atextappend' : '\nPREFERRED_PROVIDER_virtual/kernel = "linux-intel-rt"\n'}},
         {'AddKernelProps': {}},
         {'BuildImages': {'images': 'core-image-rt'}},
         {'PublishLayerTarballs':{}},
diff --git a/buildset-config.meta-intel/intel-corei7-64.conf b/buildset-config.meta-intel/intel-corei7-64.conf
index 4d664f6..934b2c0 100644
--- a/buildset-config.meta-intel/intel-corei7-64.conf
+++ b/buildset-config.meta-intel/intel-corei7-64.conf
@@ -1,5 +1,5 @@
 [intel-corei7-64]
-builders: 'example-worker'
+builders: ['example-worker']
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
@@ -16,8 +16,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_meta':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is blank):<br></h3>'}},
         {'srcuri_meta':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_meta',
@@ -31,8 +31,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_machine':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KBRANCH. (default is blank):<br></h3>'}},
         {'srcuri_machine':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_machine',
diff --git a/buildset-config.meta-intel/nightly-meta-intel-world.conf b/buildset-config.meta-intel/nightly-meta-intel-world.conf
index d951620..6df70eb 100644
--- a/buildset-config.meta-intel/nightly-meta-intel-world.conf
+++ b/buildset-config.meta-intel/nightly-meta-intel-world.conf
@@ -1,5 +1,5 @@
 [nightly-meta-intel-world]
-builders: 'example-worker'
+builders: ['example-worker']
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
@@ -16,8 +16,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_meta':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is blank):<br></h3>'}},
         {'srcuri_meta':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_meta',
@@ -31,8 +31,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_machine':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KBRANCH. (default is blank):<br></h3>'}},
         {'srcuri_machine':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_machine',
diff --git a/buildset-config.meta-intel/nightly-musl.conf b/buildset-config.meta-intel/nightly-musl.conf
index c65c302..d74c3d7 100644
--- a/buildset-config.meta-intel/nightly-musl.conf
+++ b/buildset-config.meta-intel/nightly-musl.conf
@@ -1,5 +1,5 @@
 [nightly-musl]
-builders: 'example-worker'
+builders: ['example-worker']
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
@@ -16,8 +16,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_meta':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is blank):<br></h3>'}},
         {'srcuri_meta':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_meta',
@@ -31,8 +31,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_machine':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KBRANCH. (default is blank):<br></h3>'}},
         {'srcuri_machine':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_machine',
@@ -42,11 +42,12 @@ steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
         {'GetDistroVersion' : {'distro': 'poky'}},
-        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86_64',
+        {'CreateAutoConf': {'machine': 'intel-corei7-64', 'SDKMACHINE' : 'x86_64',
                             'buildhistory' : False, 'distro': 'poky',
                             'atextappend' : '\nTCLIBC="musl"\n' }},
-        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto',
+                                'bsplayer': True, 'bspprovider': 'intel',
+                                'layerdirs': ['meta-intel', 'meta-intel/meta-tlk']}},
         {'BuildImages': {'images':  'core-image-minimal core-image-full-cmdline core-image-sato world'}},
-        {'RunSanityTests': {'images': 'core-image-minimal core-image-full-cmdline core-image-sato'}},
         {'DownloadErrorReports': {}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.meta-intel/nightly-x32.conf b/buildset-config.meta-intel/nightly-x32.conf
index 6a24952..95e3d01 100644
--- a/buildset-config.meta-intel/nightly-x32.conf
+++ b/buildset-config.meta-intel/nightly-x32.conf
@@ -1,5 +1,5 @@
 [nightly-x32]
-builders: 'example-worker'
+builders: ['example-worker']
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
@@ -16,8 +16,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_meta':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is blank):<br></h3>'}},
         {'srcuri_meta':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_meta',
@@ -31,8 +31,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_machine':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KBRANCH. (default is blank):<br></h3>'}},
         {'srcuri_machine':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_machine',
@@ -43,17 +43,15 @@ steps: [{'SetDest':{}},
         {'RunPreamble': {}},
         {'GetDistroVersion' : {'distro': 'poky'}},
         {'GetBitbakeVersion': {}},
-        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64',
+        {'CreateAutoConf': {'machine': 'intel-corei7-64', 'SDKMACHINE' : 'x86_64',
                             'buildhistory' : False, 'x32': True,
-                            'distro': 'poky'}},
-        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+                            'distro': 'poky',
+                            'atextappend' : '\nrequire conf/multilib.conf\nMULTILIBS = "multilib:libx32"\nDEFAULTTUNE_virtclass-multilib-libx32 = "corei7-64-x32"\n'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto',
+                                'bsplayer': True, 'bspprovider': 'intel',
+                                'layerdirs': ['meta-intel', 'meta-intel/meta-tlk']}},
         {'PublishLayerTarballs':{}},
-        {'BuildImages': {'images': 'core-image-minimal core-image-sato world'}},
-        {'RunSanityTests': {'images': 'core-image-minimal'}},
-        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64',
-                            'buildhistory' : False, 'x32': True,
-                            'distro': 'poky'}},
-        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'x32lib'}},
+        {'BuildImages': {'images': 'core-image-minimal core-image-sato'}},
         {'DownloadErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
-- 
2.7.0


