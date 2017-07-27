Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AFCBE00CC1; Thu, 27 Jul 2017 09:35:17 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16EA6E00CF1
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 09:35:12 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga104.jf.intel.com with ESMTP; 27 Jul 2017 09:35:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,421,1496127600"; d="scan'208";a="1177057917"
Received: from pequod.jf.intel.com ([10.54.74.4])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jul 2017 09:35:06 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 27 Jul 2017 09:34:18 -0700
Message-Id: <20170727163418.50349-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.13.3
Subject: [yocto-autobuilder][PATCH] buildset-config/nightly-refkit: add modify bblayers step
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
X-List-Received-Date: Thu, 27 Jul 2017 16:35:17 -0000

Add the new modification step, and remove the second buildimages
test. The second buildimages test aims to change the distro to
"nodistro" and rerun the build. In order to do that we'll need to add
some functionality. For now, we will simply do one buildimage step
until the second step has been flushed out.

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 buildset-config.controller/nightly-refkit.conf | 53 +-------------------------
 1 file changed, 1 insertion(+), 52 deletions(-)

diff --git a/buildset-config.controller/nightly-refkit.conf b/buildset-config.controller/nightly-refkit.conf
index 1d2487da6..eb120eded 100644
--- a/buildset-config.controller/nightly-refkit.conf
+++ b/buildset-config.controller/nightly-refkit.conf
@@ -18,29 +18,7 @@ steps: [{'SetDest':{}},
                             'prserv': False, 'nosstate': True,
                             'SDKMACHINE' : 'x86_64',
                             'atextappend': '\nrequire conf/distro/include/refkit-ci.inc\n'}},
-        {'CreateBBLayersConf': {'buildprovider' : 'oe',
-                                'layerdirs': ['refkit/meta-intel',
-                                              'refkit/meta-refkit',
-                                              'meta-selftest',
-                                              'refkit/meta-refkit-gateway',
-                                              'refkit/meta-refkit-computervision',
-                                              'refkit/meta-oic',
-                                              'refkit/meta-iot-web',
-                                              'refkit/meta-iotqa',
-                                              'refkit/meta-security',
-                                              'refkit/meta-security-isafw',
-                                              'refkit/meta-intel-realsense',
-                                              'refkit/meta-clang',
-                                              'refkit/meta-flatpak',
-                                              'refkit/meta-refkit-industrial',
-                                              'refkit/meta-ros',
-                                              'refkit/meta-openembedded/meta-filesystems',
-                                              'refkit/meta-openembedded/meta-gnome',
-                                              'refkit/meta-openembedded/meta-networking',
-                                              'refkit/meta-openembedded/meta-oe',
-                                              'refkit/meta-openembedded/meta-perl',
-                                              'refkit/meta-openembedded/meta-python',
-                                              'refkit/meta-refkit-core']}},
+        {'ModBBLayersConf': {}},
         {'ScrapeTargets': {'source': 'refkit/meta-refkit/conf/distro/include/refkit-ci.inc',
                            'targetsvar': 'REFKIT_CI_BUILD_TARGETS'}},
         {'BuildImages': {'images': '#SCRAPEDTARGETS',
@@ -50,35 +28,6 @@ steps: [{'SetDest':{}},
                            'targetsvar': 'REFKIT_CI_POSTBUILD_SELFTESTS'}},
         {'RunOeSelftest': {'tests': '#SCRAPEDTARGETS'}},
         {'RemoveTmpFiles': {'files': 'build/conf'}},
-        {'RunPreamble': {}},
-        {'CreateAutoConf': {'machine': 'qemux86-64', 'packages': 'ipk',
-                            'distro': 'poky', 'buildhistory' : False,
-                            'prserv': False, 'nosstate': True,
-                            'SDKMACHINE' : 'x86_64', 'tmpdir': 'tmp-poky'}},
-        {'CreateBBLayersConf': {'buildprovider' : 'yocto',
-                                'layerdirs': ['refkit/meta-intel',
-                                              'meta-selftest',
-                                              'refkit/meta-refkit',
-                                              'refkit/meta-refkit-gateway',
-                                              'refkit/meta-refkit-computervision',
-                                              'refkit/meta-oic',
-                                              'refkit/meta-iot-web',
-                                              'refkit/meta-iotqa',
-                                              'refkit/meta-security',
-                                              'refkit/meta-security-isafw',
-                                              'refkit/meta-intel-realsense',
-                                              'refkit/meta-clang',
-                                              'refkit/meta-flatpak',
-                                              'refkit/meta-refkit-industrial',
-                                              'refkit/meta-ros',
-                                              'refkit/meta-openembedded/meta-filesystems',
-                                              'refkit/meta-openembedded/meta-gnome',
-                                              'refkit/meta-openembedded/meta-networking',
-                                              'refkit/meta-openembedded/meta-oe',
-                                              'refkit/meta-openembedded/meta-perl',
-                                              'refkit/meta-openembedded/meta-python',
-                                              'refkit/meta-refkit-core']}},
-        {'BuildImages': {'images': 'refkit-image-common'}},
         {'DownloadErrorReports': {}},
         {'SendErrorReport': {}}
         ]
-- 
2.13.3


