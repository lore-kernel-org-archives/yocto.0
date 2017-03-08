Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AAAFE00804; Wed,  8 Mar 2017 07:56:15 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B802CE007BA
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 07:56:11 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP; 08 Mar 2017 07:56:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,264,1486454400"; d="scan'208";a="73741520"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by fmsmga005.fm.intel.com with ESMTP; 08 Mar 2017 07:56:10 -0800
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Wed,  8 Mar 2017 09:56:59 -0600
Message-Id: <20170308155659.14202-1-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [qa-tools][PATCH] testopia_update: Improvements on update action functionality
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
X-List-Received-Date: Wed, 08 Mar 2017 15:56:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Some improvements were applied when using option
action=create :

   - Create a new option to update test runs by ID
   - Create functions to load results and check missing test cases
   - Add warning to use –testrun-id
   - Improvements to update_test_run using exiting data of test run
   - Create function get test run details by ID
   - Create Dummy product to use on cases when specific product is not
     relevant

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update.py                  | 60 +++++++++++++++++++++++++++++--------
 testopia_update/product/__init__.py | 17 +++++++++--
 2 files changed, 61 insertions(+), 16 deletions(-)

diff --git a/testopia_update.py b/testopia_update.py
index 044074a..9cd9ad1 100755
--- a/testopia_update.py
+++ b/testopia_update.py
@@ -17,6 +17,29 @@ ACTIONS = ('create', 'update')
 BRANCHES = ('master', 'jethro', 'dizzy', 'daisy', 'noexists')
 CATEGORIES = ('AUTO', 'MANUAL')
 
+
+def check_missing_tc(env, build, test_run, results):
+    missing = product.update_test_run(test_run, results)
+    for tcid in missing:
+        logger.warn("%s: Test run %d, Case %d wasn't updated" %
+                    (sys.argv[0], test_run['run_id'], tcid))
+
+
+def load_results(results_log):
+    if not results_log:
+        logger.error("%s: For action update --results-log needs to be specified"
+                     % (sys.argv[0]))
+        sys.exit(1)
+    if not os.path.exists(args.results_log):
+        logger.error("%s: Results log (%s) doesn't exists."
+                     % (sys.argv[0], results_log))
+        sys.exit(1)
+
+    res = product.parse_results_log(args.results_log)
+
+    return res
+
+
 def load_opts(args, opts_list, opts):
     for to in opts_list:
         if to in vars(args):
@@ -26,6 +49,9 @@ def load_opts(args, opts_list, opts):
         if not hasattr(opts, to):
             logger.error("%s: Requires testopia %s in arguments or config." % \
                 (sys.argv[0], to))
+            if args.action == "update":
+                logger.warn('for action create you can use only --testrun-id ' +
+                            'and --results-log if test run was already created')
             sys.exit(1)
 
 class Options(object):
@@ -73,6 +99,9 @@ def get_args():
     parser.add_argument('--test-plan', required=False,
         dest="plan_name", help='Name of the test plan of the product, used when \
                                 test plan name is different from product name.')
+    parser.add_argument('--testrun-id', required=False,
+        dest="trun_id", help='Number of the test run to be updated, this \
+                              option should be used along with update action.')
 
     parser.add_argument('--results-log', required=False,
         dest="results_log", help='Results log.')
@@ -131,6 +160,21 @@ if __name__ == '__main__':
             print("%s\n" % p.name)
         sys.exit(0)
 
+    if args.action == 'update' and args.trun_id:
+        args.product_name = 'Dummy'
+        product = get_product_class(args.product_name, products)
+        try:
+            tr = product.get_existing_test_run(int(args.trun_id))
+        except Exception as e:
+            logger.error("%s: Problem found with Test Run %s: \n==>%s"
+                         % (sys.argv[0], args.trun_id, e))
+            sys.exit(1)
+
+        results = load_results(args.results_log)
+        check_missing_tc(tr['environment_id'], tr['build_id'], tr, results)
+
+        sys.exit(0)
+
     load_opts(args, testopia_opts, opts)
 
     params = ['action', 'product_name', 'branch_name', 'env_name']
@@ -205,16 +249,8 @@ if __name__ == '__main__':
                 " and ID (%s)." % (sys.argv[0], template_test_run['run_id'],
                 test_run['summary'], test_run['run_id']))
     elif args.action == "update":
-        if not args.results_log:
-            logger.error("%s: For update --results-log needs to be specified." \
-                % (sys.argv[0]))
-            sys.exit(1)
-        if not os.path.exists(args.results_log):
-            logger.error("%s: Results log (%s) don't exists." \
-                % (sys.argv[0], args.results_log))
-            sys.exit(1)
+        results = load_results(args.results_log)
 
-        results = product.parse_results_log(args.results_log)
         test_run = product.get_test_run(test_plan, env, build, args.project_date,
                 args.project_version, args.category_name, args.optional)
         if not test_run:
@@ -224,8 +260,6 @@ if __name__ == '__main__':
                 args.optional))
             sys.exit(1)
 
-        missing = product.update_test_run(env, build, test_run, results)
-        for tcid in missing:
-            logger.warn("%s: Product %s, Test run %d, Case %d wasn't updated" %\
-                    (sys.argv[0], args.product_name, test_run['run_id'], tcid))
+        check_missing_tc(env, build, test_run, results)
+
     sys.exit(0)
diff --git a/testopia_update/product/__init__.py b/testopia_update/product/__init__.py
index 18b112e..f31190c 100644
--- a/testopia_update/product/__init__.py
+++ b/testopia_update/product/__init__.py
@@ -160,6 +160,7 @@ class Product(object):
         results = {}
         with open(log_file, "r") as f:
             for line in f:
+                line = line.strip()
                 m = regex_comp.search(line)
                 if m:
                     results[int(m.group('case_id'))] = m.group('status')
@@ -174,15 +175,14 @@ class Product(object):
         else:
             return 0
 
-    def update_test_run(self, env, build, tr, results):
+    def update_test_run(self, tr, results):
         missing = []
-
         test_case_ids = self._get_test_case_ids(tr)
         for tcid in test_case_ids:
             if tcid in results:
                 status_id = self._get_status_id(results[tcid])
                 self.testopia.testcaserun_update(tr['run_id'], tcid,
-                        build['build_id'], env['environment_id'],
+                        tr['build_id'], tr['environment_id'],
                         case_run_status_id=status_id)
                 continue
 
@@ -190,6 +190,15 @@ class Product(object):
 
         return missing
 
+    def get_existing_test_run(self, testrun_id):
+        tr_id = self.testopia.testrun_get(testrun_id)
+
+        return tr_id
+
+class DummyProduct(Product):
+    #Dummy product to use when specific product is not required
+    name = 'Dummy'
+
 def get_products(testopia, opts, config, logger, **kwargs):
 
 
@@ -220,6 +229,8 @@ def get_products(testopia, opts, config, logger, **kwargs):
     products.append(esdk.eSDKProduct(testopia, opts, logger, config, **kwargs))
     products.append(kernel.KernelProduct(testopia, opts, logger, config, **kwargs))
     products.append(general_runtime.GeneralRuntimeProduct(testopia, opts, logger, config, **kwargs))
+    products.append(DummyProduct(testopia, opts, logger, config, **kwargs))
+
 
     return products
 
-- 
2.11.0


