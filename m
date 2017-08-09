Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 781A6E00B65; Wed,  9 Aug 2017 10:17:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9868E00970
	for <yocto@yoctoproject.org>; Wed,  9 Aug 2017 10:17:56 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Aug 2017 10:17:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,348,1498546800"; d="scan'208";a="1001822821"
Received: from pequod.jf.intel.com ([10.54.74.4])
	by orsmga003.jf.intel.com with ESMTP; 09 Aug 2017 10:17:56 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  9 Aug 2017 10:17:19 -0700
Message-Id: <20170809171719.55053-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.13.3
Subject: [yocto-autobuilder][PATCH] buildset-config.controller/nightly-refkit.conf: add poky distro build
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
X-List-Received-Date: Wed, 09 Aug 2017 17:17:57 -0000

In order to test the meta-refkit-core layer we need to remove any
layers not required to build refkit-image-minimal and set the distro
equal to something other than refkit. We also do not want to use the
refkit templateconf. Here, we remove the config files from the
previous build and regenerate them with distro = poky, calling
oe-init inside poky rather than inside refkit. The only layers we
need to add for refkit are "core" and "meta-intel".

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 buildset-config.controller/nightly-refkit.conf | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/buildset-config.controller/nightly-refkit.conf b/buildset-config.controller/nightly-refkit.conf
index 5fdfe4fc7..187c1b117 100644
--- a/buildset-config.controller/nightly-refkit.conf
+++ b/buildset-config.controller/nightly-refkit.conf
@@ -29,6 +29,17 @@ steps: [{'SetDest':{}},
         {'ScrapeTargets': {'source': 'refkit/meta-refkit/conf/distro/include/refkit-ci.inc',
                            'targetsvar': 'REFKIT_CI_POSTBUILD_SELFTESTS'}},
         {'RunOeSelftest': {'tests': '#SCRAPEDTARGETS'}},
+        {'RemoveTmpFiles': {'files': 'build/conf'}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'intel-corei7-64', 'packages': 'ipk',
+                            'distro': 'poky', 'buildhistory' : False,
+                            'prserv': False, 'nosstate': True,
+                            'SDKMACHINE' : 'x86_64'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto',
+                                'layerdirs': ['refkit/meta-intel',
+                                'refkit/meta-refkit-core']}},
+        {'BuildImages': {'images': 'refkit-image-minimal'}},
         {'DownloadErrorReports': {}},
         {'SendErrorReport': {}}
         ]
-- 
2.13.3


