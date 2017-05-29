Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80D32E00B1B; Mon, 29 May 2017 13:17:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAFD0E0080F
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 13:17:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 May 2017 13:17:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,415,1491289200"; d="scan'208";a="1135968550"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by orsmga001.jf.intel.com with ESMTP; 29 May 2017 13:17:09 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Mon, 29 May 2017 15:18:57 -0500
Message-Id: <20170529201858.7801-1-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [qa-tools][PATCH 1/2] init: Add functionality to clone templates
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
X-List-Received-Date: Mon, 29 May 2017 20:17:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Add “clone_template” function that allow cloning in the same branch or
for X to Y branch, also add “get_test_run_list” to do a query of test
runs with specific summary and specific test plan.

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update/product/__init__.py | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/testopia_update/product/__init__.py b/testopia_update/product/__init__.py
index f31190c..ba34d02 100644
--- a/testopia_update/product/__init__.py
+++ b/testopia_update/product/__init__.py
@@ -150,6 +150,26 @@ class Product(object):
 
         return new_test_run
 
+    def clone_template(self, test_run, old_project_version, new_project_version,
+            **kwargs):
+        if 'new_branch' in kwargs:
+            plan_id = self.get_test_plan(kwargs['new_branch'])['plan_id']
+        else:
+            plan_id = test_run['plan_id']
+
+        test_case_ids = self._get_test_case_ids(test_run)
+        summary = test_run['summary'].replace(old_project_version,
+            new_project_version)
+
+        summary = summary.replace('TEMPLATE','TRTEMP')
+
+        new_test_run = self.testopia.testrun_create(test_run['build_id'],
+            test_run['environment_id'], plan_id, summary,
+            self.testopia.userId, product_version=new_project_version)
+        self.testopia.testrun_add_cases(test_case_ids, new_test_run['run_id'])
+
+        return new_test_run
+
     def parse_results_log(self, log_file):
         regex = "^.*RESULTS.* (?P<case_id>\d+): (?P<status>PASSED|FAILED)$"
         if hasattr(self, 'results_regex'):
@@ -195,6 +215,12 @@ class Product(object):
 
         return tr_id
 
+    def get_test_run_list(self, test_plan, temp_summary):
+        list_test_runs = self.testopia.testrun_list(plan_id=test_plan['plan_id'],
+                                               summary=temp_summary)
+
+        return list_test_runs
+
 class DummyProduct(Product):
     #Dummy product to use when specific product is not required
     name = 'Dummy'
-- 
2.11.0


