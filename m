Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB481E006D8; Tue,  7 Mar 2017 05:58:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86510E00519
	for <yocto@yoctoproject.org>; Tue,  7 Mar 2017 05:58:05 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Mar 2017 05:58:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,258,1484035200"; d="scan'208";a="73754473"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by fmsmga006.fm.intel.com with ESMTP; 07 Mar 2017 05:58:04 -0800
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue,  7 Mar 2017 07:58:54 -0600
Message-Id: <20170307135854.3662-1-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [qa-tools][PATCH v2] testopia_update: Add option to define test plan
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
X-List-Received-Date: Tue, 07 Mar 2017 13:58:09 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

There are cases where the test plan and the product name are not equal hence
an option is added to handle those cases and define the test plan to work on.

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update.py                  | 13 +++++++++---
 testopia_update/product/__init__.py | 40 ++++++++++++++++++++-----------------
 2 files changed, 32 insertions(+), 21 deletions(-)

diff --git a/testopia_update.py b/testopia_update.py
index 9b35188..044074a 100755
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
@@ -115,8 +118,12 @@ if __name__ == '__main__':
     if not os.path.exists(opts.store_location):
         os.makedirs(opts.store_location)
 
+    kwargs = {}
+    if args.plan_name:
+        kwargs['plan_name'] = args.plan_name
+
     testopia = Testopia(opts.username, opts.password, opts.url, sslverify=False)
-    products = get_products(testopia, opts, logger, config)
+    products = get_products(testopia, opts, logger, config, **kwargs)
 
     if args.list_products:
         print("List of available products: \n")
@@ -141,8 +148,8 @@ if __name__ == '__main__':
 
     test_plan = product.get_test_plan(args.branch_name)
     if not test_plan:
-        logger.error("%s: Test plan for product %s and branch %s not exists."\
-             % (sys.argv[0], args.product_name, args.branch_name))
+        logger.error("%s: Test plan %s for product %s and branch %s not exists."\
+             % (sys.argv[0], product.plan ,args.product_name, args.branch_name))
 
         sys.exit(1)
 
diff --git a/testopia_update/product/__init__.py b/testopia_update/product/__init__.py
index e401824..18b112e 100644
--- a/testopia_update/product/__init__.py
+++ b/testopia_update/product/__init__.py
@@ -1,13 +1,17 @@
 import re
 
-
 class Product(object):
-    def __init__(self, testopia, opts, logger, config):
+    def __init__(self, testopia, opts, logger, config, **kwargs):
         self.testopia = testopia
         self.opts = opts
         self.logger = logger
         self.config = config
 
+        if 'plan_name' in kwargs:
+            self.plan = kwargs['plan_name']
+        else:
+            self.plan = self.name
+
     def support(self, name):
         if self.name == name:
             return True
@@ -16,11 +20,11 @@ class Product(object):
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
@@ -68,7 +72,7 @@ class Product(object):
             category_name, optional):
         summary_alts = []
         summary_alts.append('%s_%s_%s_%s' % (ttype, project_version,
-            category_name, self.name))
+            category_name, self.plan))
         summary_alts.append('%s_%s_%s' % (ttype, project_version,
             category_name))
         summary_alts.append('%s_%s' % (ttype, category_name))
@@ -186,7 +190,7 @@ class Product(object):
 
         return missing
 
-def get_products(testopia, opts, config, logger):
+def get_products(testopia, opts, config, logger, **kwargs):
 
 
     from . import bitbake
@@ -204,18 +208,18 @@ def get_products(testopia, opts, config, logger):
 
     products = []
 
-    products.append(bitbake.BitbakeProduct(testopia, opts, logger, config))
-    products.append(bsp_qemu.BSPQEMUProduct(testopia, opts, logger, config))
-    products.append(meta_yocto.MetaYoctoProduct(testopia, opts, logger, config))
-    products.append(oe_core.OECoreProduct(testopia, opts, logger, config))
-    products.append(runtime.RuntimeProduct(testopia, opts, logger, config))
-    products.append(toaster.ToasterProduct(testopia, opts, logger, config))
-    products.append(adt.ADTProduct(testopia, opts, logger, config))
-    products.append(crops.CROPSProduct(testopia, opts, logger, config))
-    products.append(eclipse_plugin.EclipePluginProduct(testopia, opts, logger, config))
-    products.append(esdk.eSDKProduct(testopia, opts, logger, config))
-    products.append(kernel.KernelProduct(testopia, opts, logger, config))
-    products.append(general_runtime.GeneralRuntimeProduct(testopia, opts, logger, config))
+    products.append(bitbake.BitbakeProduct(testopia, opts, logger, config, **kwargs))
+    products.append(bsp_qemu.BSPQEMUProduct(testopia, opts, logger, config, **kwargs))
+    products.append(meta_yocto.MetaYoctoProduct(testopia, opts, logger, config, **kwargs))
+    products.append(oe_core.OECoreProduct(testopia, opts, logger, config, **kwargs))
+    products.append(runtime.RuntimeProduct(testopia, opts, logger, config, **kwargs))
+    products.append(toaster.ToasterProduct(testopia, opts, logger, config, **kwargs))
+    products.append(adt.ADTProduct(testopia, opts, logger, config, **kwargs))
+    products.append(crops.CROPSProduct(testopia, opts, logger, config, **kwargs))
+    products.append(eclipse_plugin.EclipePluginProduct(testopia, opts, logger, config, **kwargs))
+    products.append(esdk.eSDKProduct(testopia, opts, logger, config, **kwargs))
+    products.append(kernel.KernelProduct(testopia, opts, logger, config, **kwargs))
+    products.append(general_runtime.GeneralRuntimeProduct(testopia, opts, logger, config, **kwargs))
 
     return products
 
-- 
2.11.0


