Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85CC1E00B58; Thu, 18 May 2017 14:21:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3468FE00B49
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 14:21:38 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 May 2017 14:21:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,360,1491289200"; d="scan'208";a="103906746"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.128.129])
	by fmsmga005.fm.intel.com with ESMTP; 18 May 2017 14:21:28 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 18 May 2017 16:21:43 -0500
Message-Id: <1495142506-11581-4-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1495142506-11581-1-git-send-email-anibal.limon@linux.intel.com>
References: <1495142506-11581-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH][PATCH] 3/6] upgradehelper.py: Add ability to run UniverseUpdater over certain recipes
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
X-List-Received-Date: Thu, 18 May 2017 21:21:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

[YOCTO #8962]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 31 +++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index f7b87c6..6732fb2 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -655,9 +655,12 @@ class Updater(object):
                 self.send_status_mail(statistics_summary)
 
 class UniverseUpdater(Updater):
-    def __init__(self):
+    def __init__(self, recipes=None):
         Updater.__init__(self, True, True)
 
+        # to filter recipes in upgrade
+        self.recipes = recipes
+
         # read history file
         self.history_file = os.path.join(get_build_dir(), "upgrade-helper", "history.uh")
         self.history = dict()
@@ -694,11 +697,16 @@ class UniverseUpdater(Updater):
             I(" Removing tmp directory ...")
             shutil.rmtree(os.path.join(get_build_dir(), "tmp"))
 
-    def _check_upstream_versions(self, packages=[("universe", None, None)]):
+    def _check_upstream_versions(self):
         I(" Fetching upstream version(s) ...")
 
+        if self.recipes:
+            recipe = " ".join(self.recipes)
+        else:
+            recipe = 'universe'
+
         try:
-            self.bb.checkpkg(" ".join([p[0] for p in packages]))
+            self.bb.checkpkg(recipe)
         except Error as e:
             for line in e.stdout.split('\n'):
                 if line.find("ERROR: Task do_checkpkg does not exist") == 0:
@@ -876,16 +884,14 @@ if __name__ == "__main__":
                     level=debug_levels[args.debug_level - 1])
     settings, maintainer_override = parse_config_file(args.config_file)
 
-    if args.recipe == "all":
+    recipes = args.recipe.split()
+
+    if len(recipes) == 1 and recipes[0] == "all":
         updater = UniverseUpdater()
         updater.run()
-    else:
-        if not args.to_version:
-            E(" For upgrade only one recipe you must specify --to_version\n")
-            exit(1)
-
+    elif len(recipes) == 1 and args.to_version:
         if not args.maintainer and args.send_emails:
-            E(" For upgrade only one recipe and send email you must specify --maintainer\n")
+            E(" For upgrade one recipe and send email you must specify --maintainer\n")
             exit(1)
 
         if not args.maintainer:
@@ -895,3 +901,8 @@ if __name__ == "__main__":
         pkg_list = [(args.recipe, args.to_version, args.maintainer)]
         updater = Updater(args.auto_mode, args.send_emails, args.skip_compilation)
         updater.run(pkg_list)
+    else:
+        updater = UniverseUpdater(recipes)
+        updater.run()
+
+
-- 
2.1.4


