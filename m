Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FB5EE0082E; Tue, 21 Feb 2017 08:46:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68552E00566
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 08:46:53 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga104.jf.intel.com with ESMTP; 21 Feb 2017 08:46:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,190,1484035200"; d="scan'208";a="1132932276"
Received: from jgperezc.zpn.intel.com ([10.219.4.33])
	by fmsmga002.fm.intel.com with ESMTP; 21 Feb 2017 08:46:51 -0800
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue, 21 Feb 2017 10:47:18 -0600
Message-Id: <1487695638-2475-1-git-send-email-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <58A62C47.8090203>
References: <58A62C47.8090203>
Subject: [qa-tools][PATCH V2] testopia-update: Add suport for current format of templates
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
X-List-Received-Date: Tue, 21 Feb 2017 16:46:56 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Currently the tempates has a format as below:

TRTEMP_<RELEASE>_<MANUAL/AUTO>_<COMPONENT>_<OPTIONAL>

Hence the logic was adapted to follow above structure and also a
commit paramater was added to follow the format of build as follows:

RELEASE MILESTONE_rc#

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update.py                  | 11 ++++++-----
 testopia_update/product/__init__.py | 26 ++++++++++++++------------
 2 files changed, 20 insertions(+), 17 deletions(-)

diff --git a/testopia_update.py b/testopia_update.py
index 249d163..1c2db63 100755
--- a/testopia_update.py
+++ b/testopia_update.py
@@ -15,7 +15,7 @@ DEFAULT_STORE_LOCATION = "/tmp/testopia_update"
 
 ACTIONS = ('create', 'update')
 BRANCHES = ('master', 'jethro', 'dizzy', 'daisy', 'noexists')
-CATEGORIES = ('Full pass', 'Weekly')
+CATEGORIES = ('AUTO', 'MANUAL')
 
 class Options(object):
     pass
@@ -68,6 +68,7 @@ def get_args():
     parser.add_argument('--debug', required=False, action="store_true",
         dest="debug", default=False, help='Enable debug mode.')
 
+
     return parser.parse_args()
 
 if __name__ == '__main__':
@@ -87,7 +88,7 @@ if __name__ == '__main__':
     testopia_opts = testopia_config + ['action', 'product_name', 'category_name',
         'project_version', 'project_milestone', 'project_revision',
         'project_date']
- 
+
     config = None
     if not args.config and os.path.exists(DEFAULT_CONFIG_FILE):
         args.config = DEFAULT_CONFIG_FILE
@@ -172,8 +173,8 @@ if __name__ == '__main__':
             sys.exit(1)
 
     if args.action == "create":
-        template_test_run = product.get_template_test_run(test_plan, args.project_version,
-                args.category_name, args.optional)
+        template_test_run = product.get_template_test_run(test_plan,
+                args.project_version, args.category_name, args.optional)
         if not template_test_run:
             logger.error("%s: Product %s can't find test run with: "\
                 "%s, %s, %s." % (sys.argv[0], args.product_name,
@@ -189,7 +190,7 @@ if __name__ == '__main__':
                 args.optional))
             sys.exit(1)
         logger.info("%s: Test run was created with Template (%d), Summary (%s)"\
-                " and ID (%s)." % (sys.argv[0], template_test_run['run_id'], 
+                " and ID (%s)." % (sys.argv[0], template_test_run['run_id'],
                 test_run['summary'], test_run['run_id']))
     elif args.action == "update":
         if not args.results_log:
diff --git a/testopia_update/product/__init__.py b/testopia_update/product/__init__.py
index 04f9dac..689d004 100644
--- a/testopia_update/product/__init__.py
+++ b/testopia_update/product/__init__.py
@@ -1,5 +1,6 @@
 import re
 
+
 class Product(object):
     def __init__(self, testopia, opts, logger, config):
         self.testopia = testopia
@@ -45,8 +46,8 @@ class Product(object):
     def _format_build_name(self, project_version, project_revision):
         return "%s: %s" % (project_version, project_revision)
 
-    def get_build(self, tp, project_version, project_milestone,
-            project_revision, project_date):
+    def get_build(self, tp, project_version, project_milestone, project_revision,
+                  project_date):
         builds = self.testopia.product_get_builds(tp['product_id'])
         build_name = self._format_build_name(project_milestone, project_revision)
         for b in builds:
@@ -66,14 +67,14 @@ class Product(object):
     def _get_test_run_summary_alternatives(self, ttype, project_version,
             category_name, optional):
         summary_alts = []
-        summary_alts.append('%s - %s - %s - %s' % (ttype, self.name,
-            project_version, category_name))
-        summary_alts.append('%s - %s - %s' % (ttype, project_version,
+        summary_alts.append('%s_%s_%s_%s' % (ttype, project_version,
+            category_name, self.name))
+        summary_alts.append('%s_%s_%s' % (ttype, project_version,
             category_name))
-        summary_alts.append('%s - %s' % (ttype, category_name))
-        if optional: 
+        summary_alts.append('%s_%s' % (ttype, category_name))
+        if optional:
             for idx, sa in enumerate(summary_alts):
-                summary_alts[idx] = sa + " - %s" % optional
+                summary_alts[idx] = sa + "_%s" % optional
         return summary_alts
 
     def get_template_test_run(self, tp, project_version, category_name,
@@ -85,7 +86,7 @@ class Product(object):
             first match of summary in test runs.
         """
 
-        summary_alts = self._get_test_run_summary_alternatives("TEMPLATE", 
+        summary_alts = self._get_test_run_summary_alternatives("TRTEMP",
             project_version, category_name, optional)
         tp_test_runs = self.testopia.testplan_get_test_runs(tp['plan_id'])
 
@@ -100,7 +101,7 @@ class Product(object):
 
     def get_test_run(self, tp, env, build, project_date, project_version,
             category_name, optional):
-        summary_alts = self._get_test_run_summary_alternatives(project_date, 
+        summary_alts = self._get_test_run_summary_alternatives(project_date,
             project_version, category_name, optional)
         tp_test_runs = self.testopia.testplan_get_test_runs(tp['plan_id'])
 
@@ -133,8 +134,9 @@ class Product(object):
 
         return project_version
 
-    def create_test_run(self, tp, env, build, template_tr, project_version, project_date):
-        summary = template_tr['summary'].replace('TEMPLATE', project_date)
+    def create_test_run(self, tp, env, build, template_tr, project_version,
+                        project_date):
+        summary = template_tr['summary'].replace('TRTEMP', project_date)
 
         test_case_ids = self._get_test_case_ids(template_tr)
         new_test_run = self.testopia.testrun_create(build['build_id'],
-- 
2.1.4


