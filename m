Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B40B3E00C6E; Wed, 26 Jul 2017 18:15:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37ACBE00C60
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 18:15:18 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jul 2017 18:15:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,417,1496127600"; d="scan'208";a="1199726848"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2017 18:15:12 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 26 Jul 2017 18:15:09 -0700
Message-Id: <1501118109-27312-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Cc: joshua.g.lock@intel.com
Subject: [yocto-autobuilder][PATCH] /buildset-config.meta-intel/yoctoAB.conf
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
X-List-Received-Date: Thu, 27 Jul 2017 01:15:19 -0000

Remove the deprecated configs for jasperforest, crownbay, sugarbay, and nuc.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 buildset-config.meta-intel/yoctoAB.conf | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/buildset-config.meta-intel/yoctoAB.conf b/buildset-config.meta-intel/yoctoAB.conf
index 7ad8cc7..cf959e8 100644
--- a/buildset-config.meta-intel/yoctoAB.conf
+++ b/buildset-config.meta-intel/yoctoAB.conf
@@ -2,5 +2,4 @@
 order: ['nightly-meta-intel', 'nightly-meta-intel-world', 'nightly-musl',
         'nightly-x32', 'intel-corei7-64', 'intel-corei7-64-lsb', 
         'intel-corei7-64-rt', 'intel-corei7-64-lsb-rt', 'intel-core2-32', 
-        'intel-core2-32-rt', 'intel-core2-32-lsb-rt', 'intel-quark', 
-        'nuc', 'nuc-lsb', 'sugarbay', 'sugarbay-lsb']
+        'intel-core2-32-rt', 'intel-core2-32-lsb-rt', 'intel-quark']
-- 
2.7.0


