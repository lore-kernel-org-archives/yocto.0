Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C6B5E007E8; Thu,  8 Dec 2016 09:08:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFF8DE006EA
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 09:08:38 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga103.fm.intel.com with ESMTP; 08 Dec 2016 09:08:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,320,1477983600"; d="scan'208";a="38292963"
Received: from pequod.jf.intel.com ([10.7.201.50])
	by orsmga004.jf.intel.com with ESMTP; 08 Dec 2016 09:08:37 -0800
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2016 09:07:36 -0800
Message-Id: <20161208170736.10328-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.10.2
Subject: [yocto-autobuilder][PATCH] nightly.conf: add deploy_artifacts to copy_properties
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
X-List-Received-Date: Thu, 08 Dec 2016 17:08:43 -0000

In order for the build slaves to process the "deploy artifacts"
property, it needs to be passed in when the builds are triggered.

This fixes [YOCTO 10229]

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 buildset-config.controller/nightly.conf | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/buildset-config.controller/nightly.conf b/buildset-config.controller/nightly.conf
index b811f68..4ed255d 100644
--- a/buildset-config.controller/nightly.conf
+++ b/buildset-config.controller/nightly.conf
@@ -84,7 +84,8 @@ steps: [{'SetDest':{}},
                             'atextprepend': 'SOURCE_MIRROR_FETCH = "1"\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'universe -c fetch'}},
-        {'TriggerBuilds': {'copy_properties': ['custom_create_eventlog', 'custom_yocto_number', 'is_release'],
+        {'TriggerBuilds': {'copy_properties': ['custom_create_eventlog',
+                           'custom_yocto_number', 'is_release', 'custom_deploy_artifacts'],
                            'schedulerName': 'main-build', 'waitForFinish': 'True',
                            'schedulerNames': {'nightly-arm': {}, 'nightly-arm-lsb': {},
                            'nightly-mips': {}, 'nightly-mips-lsb': {},
-- 
2.10.2


