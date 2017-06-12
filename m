Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17AA3E00A38; Mon, 12 Jun 2017 13:07:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6AE8E00A38
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 13:07:22 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Jun 2017 13:07:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,334,1493708400"; d="scan'208";a="867169019"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by FMSMGA003.fm.intel.com with ESMTP; 12 Jun 2017 13:07:21 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Mon, 12 Jun 2017 15:09:34 -0500
Message-Id: <20170612200934.4640-1-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [qa-tools][PATCH] testopia_update: Add functionality to list templates
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
X-List-Received-Date: Mon, 12 Jun 2017 20:07:26 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Add support to list available templates per specific releases

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update.py                  | 18 ++++++++++++++++--
 testopia_update/product/__init__.py |  9 +++++++--
 2 files changed, 23 insertions(+), 4 deletions(-)

diff --git a/testopia_update.py b/testopia_update.py
index fa8d10c..b438cff 100755
--- a/testopia_update.py
+++ b/testopia_update.py
@@ -109,6 +109,8 @@ def get_args():
 
     parser.add_argument('--list-products', required=False, action="store_true",
         dest="list_products", default=False, help='List available products.')
+    parser.add_argument('--list-templates', required=False, action="store_true",
+        dest="list_templates", default=False, help='List available templates.')
 
     parser.add_argument('-a', '--action', required=False, dest='action',
         choices=ACTIONS,
@@ -148,8 +150,8 @@ def get_args():
         dest="old_project_version", help='Version of the project to clone from')
 
     parser.add_argument('--clone-templates', required=False,
-        dest="clone_templates", help='clone templates from one brnach to \
-                                      another or same branch (only avaibale) \
+        dest="clone_templates", help='clone templates from one branch to \
+                                      another or same branch (only available) \
                                       with setup action', const='Y', nargs='?')
     parser.add_argument('--new-branch', required=False,
         dest="new_branch", help='New branch to clone the Templates')
@@ -195,6 +197,18 @@ if __name__ == '__main__':
             print("%s\n" % p.name)
         sys.exit(0)
 
+    if args.list_templates:
+        if not args.project_version:
+            logger.error("--project-version should be specified")
+        else:
+            args.product_name = 'Dummy'
+            product = get_product_class(args.product_name, products)
+            summary = 'TRTEMP_' +  args.project_version
+            templates = product.get_test_run_list(None, summary)
+            for t in templates:
+                print ("%s - %s " % (t['run_id'], t['summary']))
+        sys.exit(0)
+
     if args.action == 'setup':
         setup_opts = ['clone_templates', 'project_version','branch_name',
                       'old_project_version', 'product_name']
diff --git a/testopia_update/product/__init__.py b/testopia_update/product/__init__.py
index ba34d02..a24196a 100644
--- a/testopia_update/product/__init__.py
+++ b/testopia_update/product/__init__.py
@@ -216,8 +216,13 @@ class Product(object):
         return tr_id
 
     def get_test_run_list(self, test_plan, temp_summary):
-        list_test_runs = self.testopia.testrun_list(plan_id=test_plan['plan_id'],
-                                               summary=temp_summary)
+        try:
+            plan_id = test_plan['plan_id']
+        except:
+            plan_id = test_plan
+
+        list_test_runs = self.testopia.testrun_list(plan_id,
+                                                    summary=temp_summary)
 
         return list_test_runs
 
-- 
2.11.0


