Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6C54E00EA2; Thu, 14 Jul 2016 10:06:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05C2AE00EA2
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 10:06:18 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Jul 2016 10:06:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,363,1464678000"; d="scan'208";a="1016960795"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.71])
	by orsmga002.jf.intel.com with ESMTP; 14 Jul 2016 10:06:17 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Jul 2016 10:05:52 -0700
Message-Id: <1468515952-12949-5-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1468515952-12949-1-git-send-email-william.c.randle@intel.com>
References: <1468515952-12949-1-git-send-email-william.c.randle@intel.com>
Subject: [yocto-autobuilder][PATCH 4/4] buildset-config.controller: add new 'create_eventlog' forced build property
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
X-List-Received-Date: Thu, 14 Jul 2016 17:06:29 -0000

Add a new 'create_eventlog' custom property to the configurations that
could potentially create a toaster event log. In the case of "nightly.conf",
ensure the property is passed to the Triggered builds.

[YOCTO #9884]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 buildset-config.controller/nightly-arm-lsb.conf    | 4 ++++
 buildset-config.controller/nightly-arm.conf        | 4 ++++
 buildset-config.controller/nightly-arm64.conf      | 4 ++++
 buildset-config.controller/nightly-mips-lsb.conf   | 4 ++++
 buildset-config.controller/nightly-mips.conf       | 4 ++++
 buildset-config.controller/nightly-mips64.conf     | 4 ++++
 buildset-config.controller/nightly-no-x11.conf     | 4 ++++
 buildset-config.controller/nightly-ppc-lsb.conf    | 4 ++++
 buildset-config.controller/nightly-ppc.conf        | 4 ++++
 buildset-config.controller/nightly-x32.conf        | 4 ++++
 buildset-config.controller/nightly-x86-64-lsb.conf | 4 ++++
 buildset-config.controller/nightly-x86-64.conf     | 4 ++++
 buildset-config.controller/nightly-x86-lsb.conf    | 4 ++++
 buildset-config.controller/nightly-x86.conf        | 4 ++++
 buildset-config.controller/nightly.conf            | 7 ++++++-
 15 files changed, 62 insertions(+), 1 deletion(-)

diff --git a/buildset-config.controller/nightly-arm-lsb.conf b/buildset-config.controller/nightly-arm-lsb.conf
index eb8d3eb..f94db21 100644
--- a/buildset-config.controller/nightly-arm-lsb.conf
+++ b/buildset-config.controller/nightly-arm-lsb.conf
@@ -10,6 +10,10 @@ repos: [{'poky':
         {'meta-qt3':
             {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
+props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
diff --git a/buildset-config.controller/nightly-arm.conf b/buildset-config.controller/nightly-arm.conf
index 2e6c829..f4c3fb8 100644
--- a/buildset-config.controller/nightly-arm.conf
+++ b/buildset-config.controller/nightly-arm.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}}]
+props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
diff --git a/buildset-config.controller/nightly-arm64.conf b/buildset-config.controller/nightly-arm64.conf
index 32a5492..3986c93 100644
--- a/buildset-config.controller/nightly-arm64.conf
+++ b/buildset-config.controller/nightly-arm64.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
                 'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}}]
+props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
diff --git a/buildset-config.controller/nightly-mips-lsb.conf b/buildset-config.controller/nightly-mips-lsb.conf
index 81faaad..65fb4ec 100644
--- a/buildset-config.controller/nightly-mips-lsb.conf
+++ b/buildset-config.controller/nightly-mips-lsb.conf
@@ -10,6 +10,10 @@ repos: [{'poky':
         {'meta-qt3':
             {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
+props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
diff --git a/buildset-config.controller/nightly-mips.conf b/buildset-config.controller/nightly-mips.conf
index e419ce4..1dbad7e 100644
--- a/buildset-config.controller/nightly-mips.conf
+++ b/buildset-config.controller/nightly-mips.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}}]
+props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
diff --git a/buildset-config.controller/nightly-mips64.conf b/buildset-config.controller/nightly-mips64.conf
index 13f8573..73cb577 100644
--- a/buildset-config.controller/nightly-mips64.conf
+++ b/buildset-config.controller/nightly-mips64.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}}]
+props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
diff --git a/buildset-config.controller/nightly-no-x11.conf b/buildset-config.controller/nightly-no-x11.conf
index 4ef1b35..063ae89 100644
--- a/buildset-config.controller/nightly-no-x11.conf
+++ b/buildset-config.controller/nightly-no-x11.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}}]
+props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
diff --git a/buildset-config.controller/nightly-ppc-lsb.conf b/buildset-config.controller/nightly-ppc-lsb.conf
index 7cf05c1..5944240 100644
--- a/buildset-config.controller/nightly-ppc-lsb.conf
+++ b/buildset-config.controller/nightly-ppc-lsb.conf
@@ -10,6 +10,10 @@ repos: [{'poky':
         {'meta-qt3':
             {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
+props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
diff --git a/buildset-config.controller/nightly-ppc.conf b/buildset-config.controller/nightly-ppc.conf
index 16413c3..1e26307 100644
--- a/buildset-config.controller/nightly-ppc.conf
+++ b/buildset-config.controller/nightly-ppc.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}}]
+props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
diff --git a/buildset-config.controller/nightly-x32.conf b/buildset-config.controller/nightly-x32.conf
index 2ec5b87..e811a30 100644
--- a/buildset-config.controller/nightly-x32.conf
+++ b/buildset-config.controller/nightly-x32.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}}]
+props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
diff --git a/buildset-config.controller/nightly-x86-64-lsb.conf b/buildset-config.controller/nightly-x86-64-lsb.conf
index b0bb0a5..784f23d 100644
--- a/buildset-config.controller/nightly-x86-64-lsb.conf
+++ b/buildset-config.controller/nightly-x86-64-lsb.conf
@@ -10,6 +10,10 @@ repos: [{'poky':
         {'meta-qt3':
             {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
+props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
diff --git a/buildset-config.controller/nightly-x86-64.conf b/buildset-config.controller/nightly-x86-64.conf
index 92e5866..93df577 100644
--- a/buildset-config.controller/nightly-x86-64.conf
+++ b/buildset-config.controller/nightly-x86-64.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}}]
+props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
diff --git a/buildset-config.controller/nightly-x86-lsb.conf b/buildset-config.controller/nightly-x86-lsb.conf
index 34b6780..1381b4c 100644
--- a/buildset-config.controller/nightly-x86-lsb.conf
+++ b/buildset-config.controller/nightly-x86-lsb.conf
@@ -10,6 +10,10 @@ repos: [{'poky':
         {'meta-qt3':
             {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
+props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
diff --git a/buildset-config.controller/nightly-x86.conf b/buildset-config.controller/nightly-x86.conf
index a5c9f0a..07fb34c 100644
--- a/buildset-config.controller/nightly-x86.conf
+++ b/buildset-config.controller/nightly-x86.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}}]
+props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
diff --git a/buildset-config.controller/nightly.conf b/buildset-config.controller/nightly.conf
index 2ac83dc..0f9dd4e 100644
--- a/buildset-config.controller/nightly.conf
+++ b/buildset-config.controller/nightly.conf
@@ -74,6 +74,10 @@ props: [{'release_me':{'prop_type':'ChoiceStringParameter',
                        'name': 'prefered_kernel',
                        'default': 'linux-yocto',
                        'label':'<hr><h3> PREFERRED_PROVIDER_virtual/kernel (default is "linux-yocto"):</h3>'}},
+        {'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr><h3> Should a Toaster event log be created as part of the image creation?:</h3>'}},
         {'deploy_artifacts':{'prop_type':'ChoiceStringParameter',
                        'choices': ['True', 'False'],
                        'name': 'deploy_artifacts',
@@ -87,7 +91,8 @@ steps: [{'SetDest':{}},
                             'atextprepend': 'SOURCE_MIRROR_FETCH = "1"\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'universe -c fetch'}},
-        {'TriggerBuilds': {'schedulerName': 'main-build', 'waitForFinish': 'True',
+        {'TriggerBuilds': {'copy_properties': ['custom_create_eventlog'],
+                           'schedulerName': 'main-build', 'waitForFinish': 'True',
                            'schedulerNames': {'nightly-arm': {}, 'nightly-arm-lsb': {},
                            'nightly-mips': {}, 'nightly-mips-lsb': {},
                            'nightly-multilib': {}, 'nightly-x32': {},
-- 
2.5.5


