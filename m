Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD9ADE00D92; Wed,  6 Dec 2017 23:37:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A205CE00D6C
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 23:37:45 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id vB77biOa014547
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 6 Dec 2017 23:37:44 -0800
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 6 Dec 2017 23:37:43 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 7 Dec 2017 15:37:08 +0800
Message-ID: <1c77f0c34f9d3d2e580d679e52bb8be794ded44f.1512630627.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1512630627.git.liezhi.yang@windriver.com>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 03/12] upgradehelper.py: use UniverseUpdater for all cases
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
X-List-Received-Date: Thu, 07 Dec 2017 07:37:53 -0000
Content-Type: text/plain

* Use UniverseUpdater() for the following 3 cases:
  + Upgrade all recipes
  + Upgrade 1 recipe
    - '--maintainer' is not a must when any more when use --send-emails, the
      maintainer be got from distrodata.
  + Upgrade multiple recipes

* Use "args" as the parameter of UniverseUpdater() and Updater(), this can make
  the parameters simple, and easy for extending.

* Make upgrade "all" recipes respect the args, it didn't care --send-emails or
  --maintainer which would suprise the user.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 upgradehelper.py | 68 +++++++++++++++++++++++++-------------------------------
 1 file changed, 30 insertions(+), 38 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 220e459..4a3f3f0 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -128,10 +128,11 @@ def parse_config_file(config_file):
     return (settings, maintainer_override)
 
 class Updater(object):
-    def __init__(self, auto_mode=False, send_email=False, skip_compilation=False):
+    def __init__(self, args):
         build_dir = get_build_dir()
 
         self.bb = Bitbake(build_dir)
+        self.args = args
 
         try:
             self.base_env = self.bb.env()
@@ -141,7 +142,7 @@ class Updater(object):
             E( " Bitbake output:\n%s" % (e.stdout))
             exit(1)
 
-        self._set_options(auto_mode, send_email, skip_compilation)
+        self._set_options()
 
         self._make_dirs(build_dir)
 
@@ -150,7 +151,7 @@ class Updater(object):
         self.email_handler = Email(settings)
         self.statistics = Statistics()
 
-    def _set_options(self, auto_mode, send_email, skip_compilation):
+    def _set_options(self):
         self.opts = {}
         self.opts['layer_mode'] = settings.get('layer_mode', '')
         if self.opts['layer_mode'] == 'yes':
@@ -174,11 +175,11 @@ class Updater(object):
             self.opts['machines'] = settings.get('machines',
                 'qemux86 qemux86-64 qemuarm qemumips qemuppc').split()
 
-        self.opts['interactive'] = not auto_mode
-        self.opts['send_email'] = send_email
+        self.opts['interactive'] = not self.args.auto_mode
+        self.opts['send_email'] = self.args.send_emails
         self.opts['author'] = "Upgrade Helper <%s>" % \
                 settings.get('from', 'uh@not.set')
-        self.opts['skip_compilation'] = skip_compilation
+        self.opts['skip_compilation'] = self.args.skip_compilation
         self.opts['buildhistory'] = self._buildhistory_is_enabled()
         self.opts['testimage'] = self._testimage_is_enabled()
 
@@ -659,17 +660,25 @@ class Updater(object):
                 self.send_status_mail(statistics_summary)
 
 class UniverseUpdater(Updater):
-    def __init__(self, recipes=None):
-        Updater.__init__(self, True, True)
+    def __init__(self, args):
+        Updater.__init__(self, args)
+
+        if len(args.recipe) == 1 and args.recipe[0] == "all":
+            self.recipes = []
+        else:
+            self.recipes = args.recipe
 
         # to filter recipes in upgrade
-        if not recipes and self.opts['layer_mode'] == 'yes':
+        if not self.recipes and self.opts['layer_mode'] == 'yes':
             # when layer mode is enabled and no recipes are specified
             # we need to figure out what recipes are provided by the
             # layer to try upgrade
             self.recipes = self._get_recipes_by_layer()
-        else:
-            self.recipes = recipes
+
+        if args.to_version:
+            if len(self.recipes) != 1:
+                E(" -t is only supported when upgrade one recipe\n")
+                exit(1)
 
         # read history file
         self.history_file = os.path.join(get_build_dir(), "upgrade-helper", "history.uh")
@@ -772,9 +781,15 @@ class UniverseUpdater(Updater):
 
                 pn = row[0]
                 cur_ver = row[1]
-                next_ver = row[2]
+                if self.args.to_version:
+                    next_ver = self.args.to_version
+                else:
+                    next_ver = row[2]
                 status = row[11]
-                maintainer = row[14]
+                if self.args.maintainer:
+                    maintainer = self.args.maintainer
+                else:
+                    maintainer = row[14]
                 no_upgrade_reason = row[15]
 
                 if status == 'UPDATE' and not no_upgrade_reason:
@@ -928,28 +943,5 @@ if __name__ == "__main__":
                     level=debug_levels[args.debug_level - 1])
     settings, maintainer_override = parse_config_file(args.config_file)
 
-    recipes = args.recipe
-
-    if len(recipes) == 1 and recipes[0] == "all":
-        updater = UniverseUpdater()
-        updater.run()
-    elif len(recipes) == 1 and args.to_version:
-        if not args.maintainer and args.send_emails:
-            E(" For upgrade one recipe and send email you must specify --maintainer\n")
-            exit(1)
-
-        if not args.maintainer:
-            args.maintainer = "Upgrade Helper <%s>" % \
-                settings.get('from', 'uh@not.set')
-
-        pkg_list = [(recipes[0], args.to_version, args.maintainer)]
-        updater = Updater(args.auto_mode, args.send_emails, args.skip_compilation)
-        updater.run(pkg_list)
-    elif len(recipes) > 1 and args.to_version:
-        E(" -t is only supported when upgrade one recipe\n")
-        exit(1)
-    else:
-        updater = UniverseUpdater(recipes)
-        updater.run()
-
-
+    updater = UniverseUpdater(args)
+    updater.run()
-- 
2.7.4


