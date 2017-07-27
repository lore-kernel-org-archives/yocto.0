Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9548DE00C6E; Wed, 26 Jul 2017 18:13:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9341E00C60
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 18:13:50 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga104.jf.intel.com with ESMTP; 26 Jul 2017 18:13:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,417,1496127600"; d="scan'208";a="997634516"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by orsmga003.jf.intel.com with ESMTP; 26 Jul 2017 18:13:49 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 26 Jul 2017 18:13:49 -0700
Message-Id: <1501118029-27186-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Cc: joshua.g.lock@intel.com
Subject: [yocto-autobuilder][PATCH] /buildset-config.meta-intel/nightly-meta-intel.conf
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
X-List-Received-Date: Thu, 27 Jul 2017 01:13:51 -0000

Update nightl-meta-intel.conf to reflect what is currently being
used in production.

- Drop deprecated crownbay, jasperforest, sugarbay, and nuc -related stuff.
- Change various SRCREVs to use blank as default instead of linux-yocto or
AUTOREV.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 buildset-config.meta-intel/nightly-meta-intel.conf | 32 ++++++++--------------
 1 file changed, 11 insertions(+), 21 deletions(-)

diff --git a/buildset-config.meta-intel/nightly-meta-intel.conf b/buildset-config.meta-intel/nightly-meta-intel.conf
index 53c59ed..492aa89 100644
--- a/buildset-config.meta-intel/nightly-meta-intel.conf
+++ b/buildset-config.meta-intel/nightly-meta-intel.conf
@@ -1,5 +1,5 @@
 [nightly-meta-intel]
-builders: 'example-worker'
+builders: ['example-worker']
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
@@ -53,8 +53,9 @@ props: [{'release_me':{'prop_type':'ChoiceStringParameter',
         {'prefered_kernel':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'prefered_kernel',
-                       'default': 'linux-yocto',
-                       'label':'<hr><h3> PREFERRED_PROVIDER_virtual/kernel (default is "linux-yocto"):</h3>'}},
+                       #'default': 'linux-yocto',
+                       'default': '',
+                       'label':'<hr><h3> PREFERRED_PROVIDER_virtual/kernel (default is blank):</h3>'}},
         {'kmeta':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'kmeta',
@@ -63,8 +64,8 @@ props: [{'release_me':{'prop_type':'ChoiceStringParameter',
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
@@ -78,8 +79,8 @@ props: [{'release_me':{'prop_type':'ChoiceStringParameter',
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
@@ -89,27 +90,16 @@ props: [{'release_me':{'prop_type':'ChoiceStringParameter',
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
-        {'TriggerBuilds': {'schedulerName': 'main-build', 'waitForFinish': 'True', 
+        {'TriggerBuilds': {'copy_properties': ['custom_deploy_artifacts', 'custom_prefered_kernel', 'custom_kmeta', 'custom_kbranch', 'custom_srcrev_meta', 'custom_srcrev_machine', 'custom_srcuri_meta', 'custom_srcuri_machine'],
+                           'schedulerName': 'main-build', 'waitForFinish': 'True', 
                            'schedulerNames': {'intel-core2-32':{}, 'intel-core2-32-lsb':{}, 
                              'intel-core2-32-lsb-rt':{}, 'intel-core2-32-rt':{},
                              'intel-corei7-64':{}, 'intel-corei7-64-lsb':{},
                              'intel-corei7-64-lsb-rt':{}, 'intel-corei7-64-rt':{}, 
                              'intel-quark':{}, 'nightly-musl':{}, 'nightly-x32':{},
-                             'jasperforest':{}, 'jasperforest-lsb':{},
-                             'sugarbay':{}, 'sugarbay-lsb':{},
-                             'nuc':{}, 'nuc-lsb':{}}, 'schedulerNames_nowait' : {'nightly-meta-intel-world':{}}}},
+                             'schedulerNames_nowait' : {'nightly-meta-intel-world':{}}}},
         {'CreateIntelBSPPackage': {'machine': 'intel-core2-32'}},
         {'CreateIntelBSPPackage': {'machine': 'intel-corei7-64'}},
         {'CreateIntelBSPPackage': {'machine': 'intel-quark'}}, 
-        {'CreateIntelBSPPackage': {'machine': 'crownbay'}},
-        {'CreateIntelBSPPackage': {'machine': 'crownbay-noemgd'}},
-        {'CreateIntelBSPPackage': {'machine': 'emenlow'}},
-        {'CreateIntelBSPPackage': {'machine': 'emenlow-noemgd'}},
-        {'CreateIntelBSPPackage': {'machine': 'fri2'}},
-        {'CreateIntelBSPPackage': {'machine': 'fri2-noemgd'}},
-        {'CreateIntelBSPPackage': {'machine': 'jasperforest'}},
-        {'CreateIntelBSPPackage': {'machine': 'romley'}},
-        {'CreateIntelBSPPackage': {'machine': 'sugarbay'}},
-        {'CreateIntelBSPPackage': {'machine': 'nuc'}},
         {'SendQAEmail': {}},
         {'CreateCurrentLink' : {}}]
-- 
2.7.0


