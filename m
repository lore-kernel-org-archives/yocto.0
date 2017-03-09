Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E3A6E007BA; Wed,  8 Mar 2017 16:38:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFF9BE004D2
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 16:38:34 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP; 08 Mar 2017 16:38:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,266,1486454400"; d="scan'208";a="73297352"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by orsmga005.jf.intel.com with ESMTP; 08 Mar 2017 16:38:33 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  8 Mar 2017 16:38:23 -0800
Message-Id: <1489019903-24755-1-git-send-email-tracy.graydon@intel.com>
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
X-List-Received-Date: Thu, 09 Mar 2017 00:38:35 -0000

Update yoctoAB.conf to reflect what is currently used in production and
add nightly-musl and nightly-x32 builds to the configuration.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 buildset-config.meta-intel/yoctoAB.conf | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/buildset-config.meta-intel/yoctoAB.conf b/buildset-config.meta-intel/yoctoAB.conf
index ad22a8a..7ad8cc7 100644
--- a/buildset-config.meta-intel/yoctoAB.conf
+++ b/buildset-config.meta-intel/yoctoAB.conf
@@ -1,7 +1,6 @@
 [BuildSets]
-order: ['nightly-meta-intel', 'nightly-meta-intel-world',
-        'intel-corei7-64', 'intel-corei7-64-lsb',
-        'intel-corei7-64-rt', 'intel-corei7-64-lsb-rt', 'intel-core2-32',
-        'intel-core2-32-rt', 'intel-core2-32-lsb-rt',
-        'intel-quark', 'nuc', 'nuc-lsb', 'sugarbay', 
-        'sugarbay-lsb']
+order: ['nightly-meta-intel', 'nightly-meta-intel-world', 'nightly-musl',
+        'nightly-x32', 'intel-corei7-64', 'intel-corei7-64-lsb', 
+        'intel-corei7-64-rt', 'intel-corei7-64-lsb-rt', 'intel-core2-32', 
+        'intel-core2-32-rt', 'intel-core2-32-lsb-rt', 'intel-quark', 
+        'nuc', 'nuc-lsb', 'sugarbay', 'sugarbay-lsb']
-- 
2.7.0


