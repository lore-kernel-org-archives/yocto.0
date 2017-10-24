Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4164E00CF9; Tue, 24 Oct 2017 07:36:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2563FE00CFF
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 07:36:46 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Oct 2017 07:36:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,428,1503385200"; 
   d="scan'208";a="1377111"
Received: from paokafor-mobl.amr.corp.intel.com ([10.254.119.141])
	by orsmga002.jf.intel.com with ESMTP; 24 Oct 2017 07:36:45 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Oct 2017 07:36:43 -0700
Message-Id: <20171024143643.91520-3-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.14.2
In-Reply-To: <20171024143643.91520-1-stephano.cetola@linux.intel.com>
References: <20171024143643.91520-1-stephano.cetola@linux.intel.com>
Subject: [yocto-autobuilder][PATCH 2/2] meta-intel: nightly-musl: add 32 bit buildset
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
X-List-Received-Date: Tue, 24 Oct 2017 14:36:46 -0000

On the meta-intel autobuilder, we were only building musl for 64bit
architectures. This adds a buildset for core2-32 arch, and adds that
build to the nightly.

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 buildset-config.meta-intel/nightly-meta-intel.conf |  3 +-
 .../nightly-musl-core2-32.conf                     | 53 ++++++++++++++++++++++
 2 files changed, 55 insertions(+), 1 deletion(-)
 create mode 100644 buildset-config.meta-intel/nightly-musl-core2-32.conf

diff --git a/buildset-config.meta-intel/nightly-meta-intel.conf b/buildset-config.meta-intel/nightly-meta-intel.conf
index 012f71f97..ae14c6966 100644
--- a/buildset-config.meta-intel/nightly-meta-intel.conf
+++ b/buildset-config.meta-intel/nightly-meta-intel.conf
@@ -95,7 +95,8 @@ steps: [{'SetDest':{}},
                              'intel-core2-32-lsb-rt':{}, 'intel-core2-32-rt':{},
                              'intel-corei7-64':{}, 'intel-corei7-64-lsb':{},
                              'intel-corei7-64-lsb-rt':{}, 'intel-corei7-64-rt':{}, 
-                             'intel-quark':{}, 'nightly-musl':{}, 'nightly-x32':{},
+                             'intel-quark':{}, 'nightly-musl':{},
+                             'nightly-musl-core2-32':{}, 'nightly-x32':{}},
                              'schedulerNames_nowait' : {'nightly-meta-intel-world':{}}}},
         {'CreateIntelBSPPackage': {'machine': 'intel-core2-32'}},
         {'CreateIntelBSPPackage': {'machine': 'intel-corei7-64'}},
diff --git a/buildset-config.meta-intel/nightly-musl-core2-32.conf b/buildset-config.meta-intel/nightly-musl-core2-32.conf
new file mode 100644
index 000000000..0b952a7fe
--- /dev/null
+++ b/buildset-config.meta-intel/nightly-musl-core2-32.conf
@@ -0,0 +1,53 @@
+[nightly-musl-core2-32]
+builders: ['yocto-ab-master.ostc.intel.com', 'yocto-ab01.ostc.intel.com', 'yocto-ab02.ostc.intel.com', 'yocto-ab03.ostc.intel.com', 'yocto-ab04.ostc.intel.com']
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
+             'branch':'master'}},
+        {'meta-intel':
+            {'repourl':'git://git.yoctoproject.org/meta-intel',
+             'layerversion':{'intel':'meta-intel'},
+             'branch':'master'}}]
+props: [{'kmeta':{'prop_type':'StringParameter',
+                       'size': 15,
+                       'name': 'kmeta',
+                       'default': '',
+                       'label':'<hr><h3> branch for KMETA_${MACHINE} (default is blank):</h3>'}},
+        {'srcrev_meta':{'prop_type':'StringParameter',
+                       'size': 15,
+                       'name': 'srcrev_meta',
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is blank):<br></h3>'}},
+        {'srcuri_meta':{'prop_type':'StringParameter',
+                       'size': 50,
+                       'name': 'srcuri_meta',
+                       'default': '',
+                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KMETA append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}},
+        {'kbranch':{'prop_type':'StringParameter',
+                       'size': 15,
+                       'name': 'kbranch',
+                       'default': '',
+                       'label':'<hr><h3> branch for KBRANCH_${MACHINE} (default is blank):</h3>'}},
+        {'srcrev_machine':{'prop_type':'StringParameter',
+                       'size': 15,
+                       'name': 'srcrev_machine',
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KBRANCH. (default is blank):<br></h3>'}},
+        {'srcuri_machine':{'prop_type':'StringParameter',
+                       'size': 50,
+                       'name': 'srcuri_machine',
+                       'default': '',
+                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KBRANCH append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'intel-core2-32', 'SDKMACHINE' : 'x86_64',
+                            'buildhistory' : False, 'distro': 'poky',
+                            'atextappend' : '\nTCLIBC="musl"\n' }},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto',
+                                'bsplayer': True, 'bspprovider': 'intel',
+                                'layerdirs': ['meta-intel', 'meta-intel/meta-tlk']}},
+        {'BuildImages': {'images':  'core-image-minimal core-image-full-cmdline core-image-sato world'}},
+        {'DownloadErrorReports': {}},
+        {'SendErrorReport': {}}]
-- 
2.14.2


