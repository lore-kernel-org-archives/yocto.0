Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C83C3E00A28; Mon,  3 Aug 2015 12:04:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B9D5E00902
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 12:04:34 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Aug 2015 12:04:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,603,1432623600"; d="scan'208";a="775902869"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.5.54])
	by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2015 12:04:32 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Aug 2015 14:04:29 -0500
Message-Id: <1438628679-8626-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1438628679-8626-1-git-send-email-anibal.limon@linux.intel.com>
References: <1438628679-8626-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCHv2 01/11][auh] upgradehelper.py: Only run with one recipe or all.
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
X-List-Received-Date: Mon, 03 Aug 2015 19:04:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When try to upgrading a recipe is an interactive process it needs
specify the version to upgrade, for simplify the upgrade process
only support one recipe at time.

Now supported modes:

Batch mode for upgrade universe recipes to upstream version detected,
	$ ./upgradehelper.py all

Interactive mode for upgrade one recipe to user provided version,
	$ ./upgradehelper.py recipe --to_version VERSION

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 34 ++++++++++------------------------
 1 file changed, 10 insertions(+), 24 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index d6ac7fd..63b30e4 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -65,7 +65,7 @@ def parse_cmdline():
     parser = argparse.ArgumentParser(description='Package Upgrade Helper',
                                      formatter_class=argparse.RawTextHelpFormatter,
                                      epilog=help_text)
-    parser.add_argument("recipe", nargs="+", help="recipe to be upgraded")
+    parser.add_argument("recipe", help="recipe to be upgraded")
 
     parser.add_argument("-t", "--to_version",
                         help="version to upgrade the recipe to")
@@ -507,14 +507,6 @@ class Updater(object):
 
             self.statistics.update(self.pn, self.new_ver, self.maintainer, error)
 
-            if self.interactive and attempted_pkgs < total_pkgs:
-                I(" %s: Proceed to next recipe? (Y/n)" % self.pn)
-                answer = sys.stdin.readline().strip().upper()
-
-                if answer != 'Y' and answer != '':
-                    I("Aborted by user!")
-                    exit(0)
-
         if (attempted_pkgs > 1):
             I("%s" % self.statistics.pkg_stats())
             if self.send_email:
@@ -700,24 +692,18 @@ if __name__ == "__main__":
 
     settings, maintainer_override = parse_config_file(args.config_file)
 
-    if len(args.recipe) == 1 and args.recipe[0] == "all":
+    if args.recipe == "all":
         updater = UniverseUpdater()
         updater.run()
-    elif len(args.recipe) >= 1:
-        if len(args.recipe) == 1:
-            if not args.to_version:
-                E(" For upgrade only one recipe you must specify --to_version\n")
-                exit(1)
-
-            if not args.maintainer and args.send_emails:
-                E(" For upgrade only one recipe and send email you must specify --maintainer\n")
-                exit(1)
+    else:
+        if not args.to_version:
+            E(" For upgrade only one recipe you must specify --to_version\n")
+            exit(1)
 
-            pkg_list = [(args.recipe[0], args.to_version, args.maintainer)]
-        else:
-            pkg_list = []
-            for pkg in args.recipe:
-                pkg_list.append((pkg, None, None))
+        if not args.maintainer and args.send_emails:
+            E(" For upgrade only one recipe and send email you must specify --maintainer\n")
+            exit(1)
 
+        pkg_list = [(args.recipe, args.to_version, args.maintainer)]
         updater = Updater(args.auto_mode, args.send_emails, args.skip_compilation)
         updater.run(pkg_list)
-- 
1.9.1


