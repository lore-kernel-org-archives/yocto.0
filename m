Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B71FFE00724; Mon,  6 Mar 2017 10:10:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59F77E004D2
	for <yocto@yoctoproject.org>; Mon,  6 Mar 2017 10:10:25 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Mar 2017 10:10:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,254,1484035200"; d="scan'208";a="73392188"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by fmsmga006.fm.intel.com with ESMTP; 06 Mar 2017 10:10:24 -0800
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Mon,  6 Mar 2017 12:11:13 -0600
Message-Id: <20170306181113.30713-1-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [qa-tools][PATCH] testopia_update: Add option to define test plan
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
X-List-Received-Date: Mon, 06 Mar 2017 18:10:27 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

There are cases where the test plan and the product name are not equal hence
an option is added to handle those cases and define thetest plan to work on.

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update.py                  | 11 +++++++++--
 testopia_update/product/__init__.py |  6 +++---
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/testopia_update.py b/testopia_update.py
index 9b35188..1dd40cd 100755
--- a/testopia_update.py
+++ b/testopia_update.py
@@ -70,6 +70,9 @@ def get_args():
         dest="project_revision", help='SCM Revision of the project.')
     parser.add_argument('--project-date', required=False,
         dest="project_date", help='SCM version/revision date of the project.')
+    parser.add_argument('--test-plan', required=False,
+        dest="plan_name", help='Name of the test plan of the product, used when \
+                                test plan name is different from product name.')
 
     parser.add_argument('--results-log', required=False,
         dest="results_log", help='Results log.')
@@ -139,10 +142,14 @@ if __name__ == '__main__':
             (sys.argv[0], args.product_name))
         sys.exit(1)
 
+    product.plan = args.plan_name
+    if not product.plan:
+        product.plan = product.name
+
     test_plan = product.get_test_plan(args.branch_name)
     if not test_plan:
-        logger.error("%s: Test plan for product %s and branch %s not exists."\
-             % (sys.argv[0], args.product_name, args.branch_name))
+        logger.error("%s: Test plan %s for product %s and branch %s not exists."\
+             % (sys.argv[0], product.plan ,args.product_name, args.branch_name))
 
         sys.exit(1)
 
diff --git a/testopia_update/product/__init__.py b/testopia_update/product/__init__.py
index e401824..023fb02 100644
--- a/testopia_update/product/__init__.py
+++ b/testopia_update/product/__init__.py
@@ -16,11 +16,11 @@ class Product(object):
     def get_test_plan(self, branch_name):
         tp = None
 
-        tp_name = '%s: %s branch' % (self.name, branch_name)
+        tp_name = '%s: %s branch' % (self.plan, branch_name)
 
         tp = self.testopia.testplan_list(name=tp_name)
         if not tp:
-            tp_alt_name = '%s: %s branch' % (self.name, branch_name.lower())
+            tp_alt_name = '%s: %s branch' % (self.plan, branch_name.lower())
             tp = self.testopia.testplan_list(name=tp_alt_name)
 
         if tp:
@@ -68,7 +68,7 @@ class Product(object):
             category_name, optional):
         summary_alts = []
         summary_alts.append('%s_%s_%s_%s' % (ttype, project_version,
-            category_name, self.name))
+            category_name, self.plan))
         summary_alts.append('%s_%s_%s' % (ttype, project_version,
             category_name))
         summary_alts.append('%s_%s' % (ttype, category_name))
-- 
2.11.0


