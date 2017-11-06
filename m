Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CDEEE00D2E; Mon,  6 Nov 2017 14:45:02 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A5D4E00D20
	for <yocto@yoctoproject.org>; Mon,  6 Nov 2017 14:45:01 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Nov 2017 14:45:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,354,1505804400"; 
   d="scan'208";a="4184713"
Received: from scetola-mac01.jf.intel.com ([10.54.74.141])
	by orsmga002.jf.intel.com with ESMTP; 06 Nov 2017 14:44:59 -0800
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  6 Nov 2017 14:44:54 -0800
Message-Id: <20171106224457.8855-2-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.14.2
In-Reply-To: <20171106224457.8855-1-stephano.cetola@linux.intel.com>
References: <20171106224457.8855-1-stephano.cetola@linux.intel.com>
Cc: joshua.g.lock@intel.com
Subject: [yocto-autobuilder][PATCH 1/4] buildset-config.meta-intel: add oe-selftest buildsets
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
X-List-Received-Date: Mon, 06 Nov 2017 22:45:02 -0000

These buildset configs add RunOeSelftest steps for x86, x86-64,
corei7 core2-32 and qemux86-64.

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 .../nightly-oe-selftest-core2-32.conf              | 31 ++++++++++++++++++++++
 .../nightly-oe-selftest-corei7.conf                | 31 ++++++++++++++++++++++
 .../nightly-oe-selftest-x86-64.conf                | 31 ++++++++++++++++++++++
 .../nightly-oe-selftest-x86.conf                   | 31 ++++++++++++++++++++++
 .../nightly-oe-selftest.conf                       | 30 +++++++++++++++++++++
 5 files changed, 154 insertions(+)
 create mode 100644 buildset-config.meta-intel/nightly-oe-selftest-core2-32.conf
 create mode 100644 buildset-config.meta-intel/nightly-oe-selftest-corei7.conf
 create mode 100644 buildset-config.meta-intel/nightly-oe-selftest-x86-64.conf
 create mode 100644 buildset-config.meta-intel/nightly-oe-selftest-x86.conf
 create mode 100644 buildset-config.meta-intel/nightly-oe-selftest.conf

diff --git a/buildset-config.meta-intel/nightly-oe-selftest-core2-32.conf b/buildset-config.meta-intel/nightly-oe-selftest-core2-32.conf
new file mode 100644
index 000000000..e174e82e8
--- /dev/null
+++ b/buildset-config.meta-intel/nightly-oe-selftest-core2-32.conf
@@ -0,0 +1,31 @@
+[nightly-oe-selftest-core2-32]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
+             'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
+        {'meta-intel':
+            {'repourl':'git://git.yoctoproject.org/meta-intel',
+             'layerversion':{'intel':'meta-intel'},
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'intel-core2-32', 'SDKMACHINE' : 'i686',
+                            'distro': 'poky', 'nosstate': True,
+                            'packages': 'rpm', 'buildhistory' : False,
+                            'prserv': False}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto',
+                                'bsplayer': True, 'bspprovider': 'intel',
+                                'packages': 'rpm', 'buildhistory' : False,
+                                'prserv': False}},
+        {'BuildImages': {'images': 'core-image-minimal'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs': ['meta-selftest']}},
+        {'RunOeSelftest': {}},
+        {'DownloadErrorReports': {}},
+        {'SendErrorReport': {}}]
diff --git a/buildset-config.meta-intel/nightly-oe-selftest-corei7.conf b/buildset-config.meta-intel/nightly-oe-selftest-corei7.conf
new file mode 100644
index 000000000..e2e71272c
--- /dev/null
+++ b/buildset-config.meta-intel/nightly-oe-selftest-corei7.conf
@@ -0,0 +1,31 @@
+[nightly-oe-selftest-corei7]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
+             'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
+        {'meta-intel':
+            {'repourl':'git://git.yoctoproject.org/meta-intel',
+             'layerversion':{'intel':'meta-intel'},
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'intel-corei7-64', 'SDKMACHINE' : 'i686',
+                            'distro': 'poky', 'nosstate': True,
+                            'packages': 'rpm', 'buildhistory' : False,
+                            'prserv': False}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto',
+                                'bsplayer': True, 'bspprovider': 'intel',
+                                'packages': 'rpm', 'buildhistory' : False,
+                                'prserv': False}},
+        {'BuildImages': {'images': 'core-image-minimal'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs': ['meta-selftest']}},
+        {'RunOeSelftest': {}},
+        {'DownloadErrorReports': {}},
+        {'SendErrorReport': {}}]
diff --git a/buildset-config.meta-intel/nightly-oe-selftest-x86-64.conf b/buildset-config.meta-intel/nightly-oe-selftest-x86-64.conf
new file mode 100644
index 000000000..98c08e160
--- /dev/null
+++ b/buildset-config.meta-intel/nightly-oe-selftest-x86-64.conf
@@ -0,0 +1,31 @@
+[nightly-oe-selftest-x86-64]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
+             'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
+        {'meta-intel':
+            {'repourl':'git://git.yoctoproject.org/meta-intel',
+             'layerversion':{'intel':'meta-intel'},
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto',
+                                'bsplayer': True, 'bspprovider': 'intel',
+                                'layerdirs': ['meta-intel', 'meta-intel/meta-tlk']}},
+        {'CreateAutoConf': {'machine': 'genericx86-64', 'SDKMACHINE' : 'i686',
+                            'distro': 'poky', 'nosstate': True,
+                            'packages': 'rpm', 'buildhistory' : False,
+                            'prserv': False}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {'images': 'core-image-minimal'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs': ['meta-selftest']}},
+        {'RunOeSelftest': {}},
+        {'DownloadErrorReports': {}},
+        {'SendErrorReport': {}}]
diff --git a/buildset-config.meta-intel/nightly-oe-selftest-x86.conf b/buildset-config.meta-intel/nightly-oe-selftest-x86.conf
new file mode 100644
index 000000000..2c2b794fc
--- /dev/null
+++ b/buildset-config.meta-intel/nightly-oe-selftest-x86.conf
@@ -0,0 +1,31 @@
+[nightly-oe-selftest-x86]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
+             'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
+        {'meta-intel':
+            {'repourl':'git://git.yoctoproject.org/meta-intel',
+             'layerversion':{'intel':'meta-intel'},
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto',
+                                'bsplayer': True, 'bspprovider': 'intel',
+                                'layerdirs': ['meta-intel', 'meta-intel/meta-tlk']}},
+        {'CreateAutoConf': {'machine': 'genericx86', 'SDKMACHINE' : 'i686',
+                            'distro': 'poky', 'nosstate': True,
+                            'packages': 'rpm', 'buildhistory' : False,
+                            'prserv': False}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {'images': 'core-image-minimal'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs': ['meta-selftest']}},
+        {'RunOeSelftest': {}},
+        {'DownloadErrorReports': {}},
+        {'SendErrorReport': {}}]
diff --git a/buildset-config.meta-intel/nightly-oe-selftest.conf b/buildset-config.meta-intel/nightly-oe-selftest.conf
new file mode 100644
index 000000000..02586eeb6
--- /dev/null
+++ b/buildset-config.meta-intel/nightly-oe-selftest.conf
@@ -0,0 +1,30 @@
+[nightly-oe-selftest]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
+             'branch':'master'}},
+        {'meta-tlk':
+            {'repourl':'git://git.yoctoproject.org/meta-tlk',
+             'autoinclude': False,
+             'branch':'master'}},
+        {'meta-intel':
+            {'repourl':'git://git.yoctoproject.org/meta-intel',
+             'layerversion':{'intel':'meta-intel'},
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto',
+                                'bsplayer': True, 'bspprovider': 'intel',
+                                'layerdirs': ['meta-intel', 'meta-intel/meta-tlk']}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64',
+                            'distro': 'poky', 'packages': 'rpm',
+                            'buildhistory' : False, 'prserv': False}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {'images': 'core-image-minimal'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs': ['meta-selftest']}},
+        {'RunOeSelftest': {}},
+        {'DownloadErrorReports': {}},
+        {'SendErrorReport': {}}]
-- 
2.14.2


