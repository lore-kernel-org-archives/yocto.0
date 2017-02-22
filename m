Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37DF5E009D7; Wed, 22 Feb 2017 09:12:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 900B6E0098A
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 09:12:14 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP; 22 Feb 2017 09:12:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,195,1484035200"; d="scan'208";a="68345099"
Received: from jgperezc.zpn.intel.com (HELO jgperezc-MOBL1.zpn.intel.com)
	([10.219.4.33])
	by fmsmga005.fm.intel.com with ESMTP; 22 Feb 2017 09:12:14 -0800
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Wed, 22 Feb 2017 11:12:40 -0600
Message-Id: <1487783562-22965-1-git-send-email-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [qa-tools][PATCH 1/3] testopia_update/product: Fix regex to match test case id
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
X-List-Received-Date: Wed, 22 Feb 2017 17:12:16 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Add space to the regex to match all the digits of the test case id

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update/product/__init__.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/testopia_update/product/__init__.py b/testopia_update/product/__init__.py
index 689d004..d7cb984 100644
--- a/testopia_update/product/__init__.py
+++ b/testopia_update/product/__init__.py
@@ -147,7 +147,7 @@ class Product(object):
         return new_test_run
 
     def parse_results_log(self, log_file):
-        regex = "^.*RESULTS.*(?P<case_id>\d+): (?P<status>PASSED|FAILED)$"
+        regex = "^.*RESULTS.* (?P<case_id>\d+): (?P<status>PASSED|FAILED)$"
         if hasattr(self, 'results_regex'):
             regex = getattr(self, 'results_regex')
 
-- 
2.1.4


