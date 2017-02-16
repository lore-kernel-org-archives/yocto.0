Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 453ECE006EA; Thu, 16 Feb 2017 14:37:07 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4732E00510
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 14:37:04 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Feb 2017 14:36:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,169,1484035200"; d="scan'208";a="1109464450"
Received: from jgperezc.zpn.intel.com ([10.219.4.33])
	by fmsmga001.fm.intel.com with ESMTP; 16 Feb 2017 14:36:56 -0800
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 16:37:08 -0600
Message-Id: <1487284628-8916-1-git-send-email-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] qa-tools: Add suport for current format of templates
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
X-List-Received-Date: Thu, 16 Feb 2017 22:37:07 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Currently the tempates has a format as below:

TRTEMP_<RELEASE>_<MANUAL/AUTO>_<COMPONENT>_<OPTIONAL>

Hence the logic was adapted to follow above structure and also a
commit paramater was added to follow the format of build as follows:

RELEASE MILESTONE_rc#

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update.py                  | 30 ++++++++++++++++------------
 testopia_update/product/__init__.py | 39 +++++++++++++++++++++----------------
 2 files changed, 40 insertions(+), 29 deletions(-)

diff --git a/testopia_update.py b/testopia_update.py
index 249d163..af281c9 100755
--- a/testopia_update.py
+++ b/testopia_update.py
@@ -15,7 +15,7 @@ DEFAULT_STORE_LOCATION = "/tmp/testopia_update"
 
 ACTIONS = ('create', 'update')
 BRANCHES = ('master', 'jethro', 'dizzy', 'daisy', 'noexists')
-CATEGORIES = ('Full pass', 'Weekly')
+CATEGORIES = ('AUTO', 'MANUAL')
 
 class Options(object):
     pass
@@ -60,6 +60,9 @@ def get_args():
     parser.add_argument('--project-date', required=False,
         dest="project_date", help='SCM version/revision date of the project.')
 
+    parser.add_argument('--commit', required=False,
+        dest="commit", help='Poky commit')
+
     parser.add_argument('--results-log', required=False,
         dest="results_log", help='Results log.')
 
@@ -68,6 +71,7 @@ def get_args():
     parser.add_argument('--debug', required=False, action="store_true",
         dest="debug", default=False, help='Enable debug mode.')
 
+
     return parser.parse_args()
 
 if __name__ == '__main__':
@@ -86,8 +90,8 @@ if __name__ == '__main__':
     testopia_config = ['url', 'username', 'password', 'store_location']
     testopia_opts = testopia_config + ['action', 'product_name', 'category_name',
         'project_version', 'project_milestone', 'project_revision',
-        'project_date']
- 
+        'project_date','commit']
+
     config = None
     if not args.config and os.path.exists(DEFAULT_CONFIG_FILE):
         args.config = DEFAULT_CONFIG_FILE
@@ -103,10 +107,10 @@ if __name__ == '__main__':
             arg = getattr(args, to)
             if arg:
                 setattr(opts, to, arg)
-        if not hasattr(opts, to):
-            logger.error("%s: Requires testopia %s in arguments or config." % \
-                (sys.argv[0], to))
-            sys.exit(1)
+#        if not hasattr(opts, to):
+#            logger.error("%s: Requires testopia %s in arguments or config." % \
+#                (sys.argv[0], to))
+#            sys.exit(1)
 
     if not os.path.exists(opts.store_location):
         os.makedirs(opts.store_location)
@@ -155,11 +159,13 @@ if __name__ == '__main__':
             sys.exit(1)
 
     build = product.get_build(test_plan, args.project_version,
-        args.project_milestone, args.project_revision, args.project_date)
+        args.project_milestone, args.project_revision, args.project_date,
+        args.commit)
     if not build:
         if args.action == "create":
             build = product.create_build(test_plan, args.project_version,
-                args.project_milestone, args.project_revision, args.project_date)
+                args.project_milestone, args.project_revision, args.project_date,
+                args.commit)
             logger.info("%s: Create build for product %s with: "\
                 "%s, %s, %s, %s." % (sys.argv[0], args.product_name,
                 args.project_version, args.project_milestone,
@@ -172,8 +178,8 @@ if __name__ == '__main__':
             sys.exit(1)
 
     if args.action == "create":
-        template_test_run = product.get_template_test_run(test_plan, args.project_version,
-                args.category_name, args.optional)
+        template_test_run = product.get_template_test_run(test_plan,
+                args.project_version, args.category_name, args.optional)
         if not template_test_run:
             logger.error("%s: Product %s can't find test run with: "\
                 "%s, %s, %s." % (sys.argv[0], args.product_name,
@@ -189,7 +195,7 @@ if __name__ == '__main__':
                 args.optional))
             sys.exit(1)
         logger.info("%s: Test run was created with Template (%d), Summary (%s)"\
-                " and ID (%s)." % (sys.argv[0], template_test_run['run_id'], 
+                " and ID (%s)." % (sys.argv[0], template_test_run['run_id'],
                 test_run['summary'], test_run['run_id']))
     elif args.action == "update":
         if not args.results_log:
diff --git a/testopia_update/product/__init__.py b/testopia_update/product/__init__.py
index 04f9dac..02c6447 100644
--- a/testopia_update/product/__init__.py
+++ b/testopia_update/product/__init__.py
@@ -1,5 +1,6 @@
 import re
 
+
 class Product(object):
     def __init__(self, testopia, opts, logger, config):
         self.testopia = testopia
@@ -42,13 +43,15 @@ class Product(object):
         tp_envs = self.testopia.product_get_environments(tp['product_id'])
         return [tp_env['name'] for tp_env in tp_envs]
 
-    def _format_build_name(self, project_version, project_revision):
-        return "%s: %s" % (project_version, project_revision)
+    def _format_build_name(self, project_version, project_revision, project_commit):
+        return "%s_%s: %s" % (project_version, project_revision, project_commit)
 
-    def get_build(self, tp, project_version, project_milestone,
-            project_revision, project_date):
+    def get_build(self, tp, project_version, project_milestone, project_revision,
+                  project_date, project_commit):
         builds = self.testopia.product_get_builds(tp['product_id'])
-        build_name = self._format_build_name(project_milestone, project_revision)
+        build_name = self._format_build_name(project_milestone, project_revision,
+                                             project_commit)
+        exit
         for b in builds:
             if build_name == b['name'] and project_date == b['description'] \
                     and project_milestone == str(b['milestone']):
@@ -56,8 +59,9 @@ class Product(object):
         return None
 
     def create_build(self, tp, project_version, project_milestone,
-            project_revision, project_date):
-        build_name = self._format_build_name(project_milestone, project_revision)
+            project_revision, project_date, project_commit):
+        build_name = self._format_build_name(project_milestone, project_revision,
+                                             project_commit)
 
         return self.testopia.build_create(build_name, tp['product_id'],
                 description=project_date, milestone=project_milestone,
@@ -66,14 +70,14 @@ class Product(object):
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
@@ -85,7 +89,7 @@ class Product(object):
             first match of summary in test runs.
         """
 
-        summary_alts = self._get_test_run_summary_alternatives("TEMPLATE", 
+        summary_alts = self._get_test_run_summary_alternatives("TRTEMP",
             project_version, category_name, optional)
         tp_test_runs = self.testopia.testplan_get_test_runs(tp['plan_id'])
 
@@ -100,7 +104,7 @@ class Product(object):
 
     def get_test_run(self, tp, env, build, project_date, project_version,
             category_name, optional):
-        summary_alts = self._get_test_run_summary_alternatives(project_date, 
+        summary_alts = self._get_test_run_summary_alternatives(project_date,
             project_version, category_name, optional)
         tp_test_runs = self.testopia.testplan_get_test_runs(tp['plan_id'])
 
@@ -133,8 +137,9 @@ class Product(object):
 
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


