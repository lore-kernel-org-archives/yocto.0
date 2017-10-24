Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9556E00CF9; Tue, 24 Oct 2017 07:34:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C229AE00CEF
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 07:34:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Oct 2017 07:34:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,428,1503385200"; 
   d="scan'208";a="1376523"
Received: from paokafor-mobl.amr.corp.intel.com ([10.254.119.141])
	by orsmga002.jf.intel.com with ESMTP; 24 Oct 2017 07:34:43 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Oct 2017 07:34:37 -0700
Message-Id: <20171024143437.91450-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.14.2
Subject: [yocto-autobuilder][PATCH] meta-intel: add CheckYoctoCompat to nightly
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
X-List-Received-Date: Tue, 24 Oct 2017 14:34:46 -0000

Rocko introduces yocto-check-layer-wrapper which creates a separate
build dir to run yocto-check-layer inside.

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 buildset-config.meta-intel/nightly-meta-intel.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/buildset-config.meta-intel/nightly-meta-intel.conf b/buildset-config.meta-intel/nightly-meta-intel.conf
index ae14c6966..dc6548948 100644
--- a/buildset-config.meta-intel/nightly-meta-intel.conf
+++ b/buildset-config.meta-intel/nightly-meta-intel.conf
@@ -89,6 +89,7 @@ props: [{'release_me':{'prop_type':'ChoiceStringParameter',
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
+        {'CheckYoctoCompat': {'layers': ['meta-intel']}},
         {'TriggerBuilds': {'copy_properties': ['custom_deploy_artifacts', 'custom_prefered_kernel', 'custom_kmeta', 'custom_kbranch', 'custom_srcrev_meta', 'custom_srcrev_machine', 'custom_srcuri_meta', 'custom_srcuri_machine'],
                            'schedulerName': 'main-build', 'waitForFinish': 'True', 
                            'schedulerNames': {'intel-core2-32':{}, 'intel-core2-32-lsb':{}, 
-- 
2.14.2


