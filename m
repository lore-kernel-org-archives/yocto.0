Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1022FE00CD5; Mon,  4 Sep 2017 14:39:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4489E00CC9
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 14:39:30 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga105.jf.intel.com with ESMTP; 04 Sep 2017 14:39:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,476,1498546800"; d="scan'208";a="125511631"
Received: from yctb05.ostc.intel.com ([10.54.69.59])
	by orsmga004.jf.intel.com with ESMTP; 04 Sep 2017 14:39:28 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: yocto@yoctoproject.org
Date: Mon,  4 Sep 2017 14:39:26 -0700
Message-Id: <20170904213926.15876-1-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.12.3
Cc: richard.purdie@linuxfoundation.com
Subject: [PATCH] nightly-oe-selftest.conf: instruct to sign rpm packages serially
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
X-List-Received-Date: Mon, 04 Sep 2017 21:39:31 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

Under high workloads, there are situations where the rpm file-chunk
signing fails due to lack of memory resouces, so indicate the
system to sign serially. The following log is what it has been
observed recently:

    ERROR: bc-1.06-r3 do_package_write_rpm: Function failed: Failed to sign RPM packages: gpg: signing failed: Cannot allocate memory
    gpg: signing failed: Cannot allocate memory
    error: gpg exec failed (2)

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 buildset-config.controller/nightly-oe-selftest.conf | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/buildset-config.controller/nightly-oe-selftest.conf b/buildset-config.controller/nightly-oe-selftest.conf
index 8704946d9..1237f9b73 100644
--- a/buildset-config.controller/nightly-oe-selftest.conf
+++ b/buildset-config.controller/nightly-oe-selftest.conf
@@ -10,7 +10,8 @@ steps: [{'SetDest':{}},
         {'GetDistroVersion' : {'distro': 'poky'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64',
                             'distro': 'poky', 'packages': 'rpm',
-                            'buildhistory' : False, 'prserv': False}},
+                            'buildhistory' : False, 'prserv': False,
+                            'RPM_GPG_SIGN_CHUNK' : 1}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'SELFTEST-PRE'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs': ['meta-selftest']}},
-- 
2.12.3


