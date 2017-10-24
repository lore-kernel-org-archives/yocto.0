Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88C62E00D03; Tue, 24 Oct 2017 07:36:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CA87E00CF9
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 07:36:46 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Oct 2017 07:36:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,428,1503385200"; 
   d="scan'208";a="1377107"
Received: from paokafor-mobl.amr.corp.intel.com ([10.254.119.141])
	by orsmga002.jf.intel.com with ESMTP; 24 Oct 2017 07:36:45 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Oct 2017 07:36:42 -0700
Message-Id: <20171024143643.91520-2-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.14.2
In-Reply-To: <20171024143643.91520-1-stephano.cetola@linux.intel.com>
References: <20171024143643.91520-1-stephano.cetola@linux.intel.com>
Subject: [yocto-autobuilder][PATCH 1/2] nightly-musl-x86-64: add 64bit musl build
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

We were building with musl on 32 bit platforms but not on 64 bit.
This adds a 64 bit musl buildset that is similar to the 32 bit one
and also adds that buildset to the list of builds for nightly.

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 buildset-config.controller/nightly-musl-x86-64.conf | 18 ++++++++++++++++++
 buildset-config.controller/nightly.conf             |  1 +
 2 files changed, 19 insertions(+)
 create mode 100644 buildset-config.controller/nightly-musl-x86-64.conf

diff --git a/buildset-config.controller/nightly-musl-x86-64.conf b/buildset-config.controller/nightly-musl-x86-64.conf
new file mode 100644
index 000000000..2222e9c3f
--- /dev/null
+++ b/buildset-config.controller/nightly-musl-x86-64.conf
@@ -0,0 +1,18 @@
+[nightly-musl-x86-64]
+builders: ['centos7.yocto.io', 'debian8.yocto.io', 'fedora25.yocto.io', 'fedora26.yocto.io', 'tumbleweed.yocto.io', 'opensuse423.yocto.io', 'ubuntu1604.yocto.io', 'ubuntu1704.yocto.io', 'debian9.yocto.io']
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64',
+                            'buildhistory' : False, 'distro': 'poky',
+                            'atextappend' : '\nTCLIBC="musl"\n' }},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {'images':  'core-image-minimal core-image-full-cmdline core-image-sato-sdk world'}},
+        {'RunSanityTests': {'images': 'core-image-minimal core-image-full-cmdline core-image-sato-sdk'}},
+        {'DownloadErrorReports': {}},
+        {'SendErrorReport': {}}]
diff --git a/buildset-config.controller/nightly.conf b/buildset-config.controller/nightly.conf
index dde6c535f..51ddf6e5b 100644
--- a/buildset-config.controller/nightly.conf
+++ b/buildset-config.controller/nightly.conf
@@ -121,6 +121,7 @@ steps: [{'SetDest':{}},
                            'nightly-world-lsb':{},
                            'poky-tiny': {}, 'buildtools': {},
                            'nightly-musl': {}, 'nightly-no-x11': {},
+                           'nightly-musl-x86-64': {},
                            'nightly-qa-extras': {}, 'nightly-oe-selftest': {},
                            'nightly-refkit': {}}}},
         {'PrepPkgIndex' : {}},
-- 
2.14.2


