Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B26AE00E38; Thu, 21 Dec 2017 08:33:07 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B113E00E27
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:06 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761300"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:04 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:10 +0200
Message-Id: <fff8fb7d2b97606482be226f8d0b0a6206f6abf8.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 02/21] upgradehelper.py: support upgrade multiple recipes
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:07 -0000

From: Robert Yang <liezhi.yang@windriver.com>

Now we can use:
$ upgradehelper.py recipe1 recipe2

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 upgradehelper.py | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 4797fd8..c81e748 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -75,7 +75,7 @@ def parse_cmdline():
     parser = argparse.ArgumentParser(description='Package Upgrade Helper',
                                      formatter_class=argparse.RawTextHelpFormatter,
                                      epilog=help_text)
-    parser.add_argument("recipe", help="recipe to be upgraded")
+    parser.add_argument("recipe", nargs = '+', action='store', default='', help="recipe to be upgraded")
 
     parser.add_argument("-t", "--to_version",
                         help="version to upgrade the recipe to")
@@ -792,7 +792,7 @@ if __name__ == "__main__":
                     level=debug_levels[args.debug_level - 1])
     settings, maintainer_override = parse_config_file(args.config_file)
 
-    recipes = args.recipe.split()
+    recipes = args.recipe
 
     if len(recipes) == 1 and recipes[0] == "all":
         updater = UniverseUpdater()
@@ -806,9 +806,12 @@ if __name__ == "__main__":
             args.maintainer = "Upgrade Helper <%s>" % \
                 settings.get('from', 'uh@not.set')
 
-        pkg_list = [(args.recipe, args.to_version, args.maintainer)]
+        pkg_list = [(recipes[0], args.to_version, args.maintainer)]
         updater = Updater(args.auto_mode, args.send_emails, args.skip_compilation)
         updater.run(pkg_list)
+    elif len(recipes) > 1 and args.to_version:
+        E(" -t is only supported when upgrade one recipe\n")
+        exit(1)
     else:
         updater = UniverseUpdater(recipes)
         updater.run()
-- 
2.15.1


