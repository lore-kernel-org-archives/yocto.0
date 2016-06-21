Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D37E2E0098A; Tue, 21 Jun 2016 07:38:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76325E00972
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 07:38:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 21 Jun 2016 07:38:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,504,1459839600"; d="scan'208";a="980433817"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.146])
	by orsmga001.jf.intel.com with ESMTP; 21 Jun 2016 07:38:12 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Jun 2016 07:38:00 -0700
Message-Id: <1466519880-5600-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCHv2] nightly-world-lsb.conf: skip Publish step so artifacts don't overwrite nightly-world ones
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
X-List-Received-Date: Tue, 21 Jun 2016 14:38:15 -0000

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
v2: delete line, rather than commenting it out

 buildset-config.controller/nightly-world-lsb.conf | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/buildset-config.controller/nightly-world-lsb.conf b/buildset-config.controller/nightly-world-lsb.conf
index 4c9994c..472a714 100644
--- a/buildset-config.controller/nightly-world-lsb.conf
+++ b/buildset-config.controller/nightly-world-lsb.conf
@@ -21,6 +21,5 @@ steps: [{'SetDest':{}},
                             'distro': 'poky-lsb'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'world'}},
-        {'SendErrorReport': {}},
-        {'PublishArtifacts': {'artifacts': ['ipk', 'rpm', 'deb']}}]
+        {'SendErrorReport': {}}]
 
-- 
2.5.5


