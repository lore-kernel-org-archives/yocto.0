Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BF29E00953; Mon, 29 May 2017 13:17:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 447EBE00812
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 13:17:13 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 May 2017 13:17:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,415,1491289200"; d="scan'208";a="1135968552"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by orsmga001.jf.intel.com with ESMTP; 29 May 2017 13:17:12 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Mon, 29 May 2017 15:18:58 -0500
Message-Id: <20170529201858.7801-2-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170529201858.7801-1-jose.perez.carranza@linux.intel.com>
References: <20170529201858.7801-1-jose.perez.carranza@linux.intel.com>
MIME-Version: 1.0
Subject: [qa-tools][PATCH 2/2] testopia_update.py: Add functionality for setup clone-templates
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

Add action “setup” to do a different actions on the exiting Testopia DB,
also add validation for the specific option used on this new action,
sub-option “-clone-templates” implemented to help on the setup for new
release and cloning form the same bran or form one branch to another.

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update.py | 65 +++++++++++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 57 insertions(+), 8 deletions(-)

diff --git a/testopia_update.py b/testopia_update.py
index b3e900d..fa8d10c 100755
--- a/testopia_update.py
+++ b/testopia_update.py
@@ -5,7 +5,6 @@ import sys
 import argparse
 import logging
 import ConfigParser
-import types
 
 from external.testopia import Testopia
 from testopia_update.product import get_products, get_product_class
@@ -13,8 +12,9 @@ from testopia_update.product import get_products, get_product_class
 DEFAULT_CONFIG_FILE = "testopia_update.config"
 DEFAULT_STORE_LOCATION = "/tmp/testopia_update"
 
-ACTIONS = ('create', 'update')
-BRANCHES = ('master', 'jethro', 'dizzy', 'daisy', 'noexists', 'morty', "pyro")
+ACTIONS = ('create', 'update', 'setup')
+BRANCHES = ('master', 'jethro', 'dizzy', 'daisy', 'noexists', 'morty', "krogoth",
+            "pyro")
 CATEGORIES = ('AUTO', 'MANUAL')
 
 
@@ -41,16 +41,28 @@ def load_results(results_log):
 
 
 def load_opts(args, opts_list, opts):
+
+    invalid_opts = ['old_project_version', 'clone_templates', 'new_branch']
+
+    if args.action == "create" or args.action == "update":
+        for invarg in invalid_opts:
+            if getattr(args, invarg):
+                logger.error("option %s not availabe for %s  action "
+                             % (invarg, args.action))
+                sys.exit(1)
+
     for to in opts_list:
         if to in vars(args):
             arg = getattr(args, to)
             if arg:
                 setattr(opts, to, arg)
+
         if not hasattr(opts, to):
             logger.error("%s: Requires testopia %s in arguments or config." % \
                 (sys.argv[0], to))
+
             if args.action == "update":
-                logger.warn('for action create you can use only --testrun-id ' +
+                logger.warn('for action update you can use only --testrun-id ' +
                             'and --results-log if test run was already created')
             sys.exit(1)
 
@@ -59,7 +71,8 @@ def connect_to_testopia():
     config = None
     opts = Options()
 
-    testopia_config = ['url', 'username', 'password', 'store_location']
+    #testopia_config = ['url', 'username', 'password', 'store_location']
+    testopia_config = ['url', 'username', 'password']
 
     if not args.config and os.path.exists(DEFAULT_CONFIG_FILE):
         args.config = DEFAULT_CONFIG_FILE
@@ -73,8 +86,8 @@ def connect_to_testopia():
 
     load_opts(args, testopia_config, opts)
 
-    if not os.path.exists(opts.store_location):
-        os.makedirs(opts.store_location)
+    if not os.path.exists(DEFAULT_STORE_LOCATION):
+        os.makedirs(DEFAULT_STORE_LOCATION)
 
     return opts, config
 
@@ -99,7 +112,7 @@ def get_args():
 
     parser.add_argument('-a', '--action', required=False, dest='action',
         choices=ACTIONS,
-        help='Action to execute can be create or update.')
+        help='Action to execute can be create, update or setup')
     parser.add_argument('-p', '--product', required=False,
         dest="product_name", help='Product to create or update.')
     parser.add_argument('-c', '--category', required=False,
@@ -131,6 +144,16 @@ def get_args():
     parser.add_argument('--results-log', required=False,
         dest="results_log", help='Results log.')
 
+    parser.add_argument('--old-project-version', required=False,
+        dest="old_project_version", help='Version of the project to clone from')
+
+    parser.add_argument('--clone-templates', required=False,
+        dest="clone_templates", help='clone templates from one brnach to \
+                                      another or same branch (only avaibale) \
+                                      with setup action', const='Y', nargs='?')
+    parser.add_argument('--new-branch', required=False,
+        dest="new_branch", help='New branch to clone the Templates')
+
     parser.add_argument('--verbose', required=False, action="store_true",
         dest="verbose", default=False, help='Enable verbose mode.')
     parser.add_argument('--debug', required=False, action="store_true",
@@ -172,6 +195,32 @@ if __name__ == '__main__':
             print("%s\n" % p.name)
         sys.exit(0)
 
+    if args.action == 'setup':
+        setup_opts = ['clone_templates', 'project_version','branch_name',
+                      'old_project_version', 'product_name']
+
+        load_opts(args, setup_opts, opts)
+
+        product = get_product_class(args.product_name, products)
+        test_plan = product.get_test_plan(args.branch_name)
+        temp_summary = 'TRTEMP_' +  args.old_project_version
+        temp_list = product.get_test_run_list(test_plan,temp_summary)
+        if not temp_list:
+            logger.error("%s: No templates found with %s string on %s"
+                         % (sys.argv[0], temp_summary, args.branch_name))
+
+        for tr in temp_list:
+            if args.new_branch and args.new_branch != args.branch_name:
+               kwargs['new_branch'] = args.new_branch
+
+            new_template = product.clone_template(tr, args.old_project_version,
+                                              args.project_version, **kwargs)
+            logger.info("%s: Template was created with (%d), Summary (%s)"
+                        % (sys.argv[0], new_template['run_id'],
+                           new_template['summary']))
+        sys.exit(0)
+
+
     if args.action == 'update' and args.trun_id:
         args.product_name = 'Dummy'
         product = get_product_class(args.product_name, products)
-- 
2.11.0


