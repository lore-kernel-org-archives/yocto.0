Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85011E00BD5; Tue, 13 Jun 2017 08:45:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00AACE00B51
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 08:45:16 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Jun 2017 08:45:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,338,1493708400"; d="scan'208";a="980308262"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by orsmga003.jf.intel.com with ESMTP; 13 Jun 2017 08:45:14 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue, 13 Jun 2017 10:47:25 -0500
Message-Id: <20170613154728.19002-1-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [qa-tools][PATCH 1/4] external/testopia: Modify commands to get Product and Environment
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
X-List-Received-Date: Tue, 13 Jun 2017 15:45:18 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Modify commands to get Product and Environment name providing
the ID.

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 external/testopia.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/external/testopia.py b/external/testopia.py
index f2f2d45..a82b32e 100755
--- a/external/testopia.py
+++ b/external/testopia.py
@@ -627,7 +627,7 @@ class Testopia(object):
 
         Result: The product name for the respective id or empty string if an error occurs.
         """
-        return self.do_command("Product.lookup_name_by_id", [self._number_noop(id)])
+        return self.do_command("TestopiaProduct.get", [self._number_noop(id)])
 
 
     def product_get_milestones(self, product_id):
@@ -1629,7 +1629,7 @@ class Testopia(object):
 
         Result: The TestRun environment name for the respective id or empty string if an error occurs.
         """
-        return self.do_command("TestRun.lookup_environment_name_by_id", [self._number_noop(id)])
+        return self.do_command("Environment.get", [self._number_noop(id)])
 
 
     ############################## TestCaseRun ##################################
-- 
2.11.0


