Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9E98E00B99; Tue, 13 Jun 2017 08:45:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9382E00B99
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 08:45:20 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Jun 2017 08:45:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,338,1493708400"; d="scan'208";a="980308280"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by orsmga003.jf.intel.com with ESMTP; 13 Jun 2017 08:45:20 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue, 13 Jun 2017 10:47:28 -0500
Message-Id: <20170613154728.19002-4-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170613154728.19002-1-jose.perez.carranza@linux.intel.com>
References: <20170613154728.19002-1-jose.perez.carranza@linux.intel.com>
MIME-Version: 1.0
Subject: [qa-tools][PATCH 4/4] testopia_update: Add support to create_wiki functionality
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
X-List-Received-Date: Tue, 13 Jun 2017 15:45:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Add option that allows using –create-wiki under setup option,this potion
takes date and project as a parameter and search for tests runs and
generates the wiki report data in a file.

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update.py | 78 ++++++++++++++++++++++++++++++++++++++++--------------
 1 file changed, 58 insertions(+), 20 deletions(-)

diff --git a/testopia_update.py b/testopia_update.py
index b438cff..0015d69 100755
--- a/testopia_update.py
+++ b/testopia_update.py
@@ -8,6 +8,7 @@ import ConfigParser
 
 from external.testopia import Testopia
 from testopia_update.product import get_products, get_product_class
+from testopia_update.utils.wikimaker import create_wiki
 
 DEFAULT_CONFIG_FILE = "testopia_update.config"
 DEFAULT_STORE_LOCATION = "/tmp/testopia_update"
@@ -153,6 +154,10 @@ def get_args():
         dest="clone_templates", help='clone templates from one branch to \
                                       another or same branch (only available) \
                                       with setup action', const='Y', nargs='?')
+    parser.add_argument('--create-wiki', required=False,
+        dest="create_wiki", help='create a wiki page for the final report of \
+                                      the QA test cycle  (only available \
+                                      with setup action)', const='Y', nargs='?')
     parser.add_argument('--new-branch', required=False,
         dest="new_branch", help='New branch to clone the Templates')
 
@@ -204,34 +209,67 @@ if __name__ == '__main__':
             args.product_name = 'Dummy'
             product = get_product_class(args.product_name, products)
             summary = 'TRTEMP_' +  args.project_version
+
             templates = product.get_test_run_list(None, summary)
             for t in templates:
                 print ("%s - %s " % (t['run_id'], t['summary']))
+
         sys.exit(0)
 
     if args.action == 'setup':
-        setup_opts = ['clone_templates', 'project_version','branch_name',
-                      'old_project_version', 'product_name']
+        if args.clone_templates:
+            setup_opts = ['clone_templates', 'project_version','branch_name',
+                           'old_project_version', 'product_name']
 
-        load_opts(args, setup_opts, opts)
+            load_opts(args, setup_opts, opts)
+
+            product = get_product_class(args.product_name, products)
+            test_plan = product.get_test_plan(args.branch_name)
+            temp_summary = 'TRTEMP_' +  args.old_project_version
+            temp_list = product.get_test_run_list(test_plan,temp_summary)
+            if not temp_list:
+                logger.error("%s: No templates found with %s string on %s"
+                             % (sys.argv[0], temp_summary, args.branch_name))
+
+            for tr in temp_list:
+                if args.new_branch and args.new_branch != args.branch_name:
+                    kwargs['new_branch'] = args.new_branch
+
+                    new_template = product.clone_template(tr,
+                                   args.old_project_version,args.project_version,
+                                   **kwargs)
+
+                    logger.info("%s: Template was created with (%d), Summary (%s)"
+                                % (sys.argv[0], new_template['run_id'],
+                                new_template['summary']))
+
+        elif args.create_wiki:
+            setup_opts = ['create_wiki', 'project_date', 'project_version']
+
+            load_opts(args, setup_opts, opts)
+
+            args.product_name = 'Dummy'
+            product = get_product_class(args.product_name, products)
+            summary = args.project_date + '_' + args.project_version
+
+            templates = product.get_test_run_list(None, summary)
+            wikivars = ''
+            wikivars_list = []
+            idx=0
+            for t in templates:
+                idx += 1
+                plan = product.get_test_plan_by_id(t['plan_id'])
+                prod = testopia.product_lookup_name_by_id(plan['product_id'])
+                env = product.get_environment_by_id(t['environment_id'])
+                env_name = env['name'].replace(' ','_')
+                var = str(idx) + '_' + str(prod['name']) + '_' + env_name
+                wikivars_list.append(var)
+                wikivars += ''.join(["{{#vardefine:", var, '|  ',
+                str(t['run_id']), '}}', '\n' ])
+
+            print(wikivars)
+            create_wiki(wikivars, wikivars_list)
 
-        product = get_product_class(args.product_name, products)
-        test_plan = product.get_test_plan(args.branch_name)
-        temp_summary = 'TRTEMP_' +  args.old_project_version
-        temp_list = product.get_test_run_list(test_plan,temp_summary)
-        if not temp_list:
-            logger.error("%s: No templates found with %s string on %s"
-                         % (sys.argv[0], temp_summary, args.branch_name))
-
-        for tr in temp_list:
-            if args.new_branch and args.new_branch != args.branch_name:
-               kwargs['new_branch'] = args.new_branch
-
-            new_template = product.clone_template(tr, args.old_project_version,
-                                              args.project_version, **kwargs)
-            logger.info("%s: Template was created with (%d), Summary (%s)"
-                        % (sys.argv[0], new_template['run_id'],
-                           new_template['summary']))
         sys.exit(0)
 
 
-- 
2.11.0


