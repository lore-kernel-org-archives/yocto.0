Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDAB5E00D7F; Wed,  6 Dec 2017 23:37:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1B41E00D72
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 23:37:43 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vB77bgnO014754
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 6 Dec 2017 23:37:42 -0800 (PST)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 6 Dec 2017 23:37:41 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 7 Dec 2017 15:37:07 +0800
Message-ID: <a8691b895a4f243eeeb91418800f95c6bd98906d.1512630627.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1512630627.git.liezhi.yang@windriver.com>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 02/12] upgradehelper.py: support upgrade multiple recipes
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
X-List-Received-Date: Thu, 07 Dec 2017 07:37:52 -0000
Content-Type: text/plain

Now we can use:
$ upgradehelper.py recipe1 recipe2

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 upgradehelper.py | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index d439a4c..220e459 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -74,7 +74,7 @@ def parse_cmdline():
     parser = argparse.ArgumentParser(description='Package Upgrade Helper',
                                      formatter_class=argparse.RawTextHelpFormatter,
                                      epilog=help_text)
-    parser.add_argument("recipe", help="recipe to be upgraded")
+    parser.add_argument("recipe", nargs = '+', action='store', default='', help="recipe to be upgraded")
 
     parser.add_argument("-t", "--to_version",
                         help="version to upgrade the recipe to")
@@ -928,7 +928,7 @@ if __name__ == "__main__":
                     level=debug_levels[args.debug_level - 1])
     settings, maintainer_override = parse_config_file(args.config_file)
 
-    recipes = args.recipe.split()
+    recipes = args.recipe
 
     if len(recipes) == 1 and recipes[0] == "all":
         updater = UniverseUpdater()
@@ -942,9 +942,12 @@ if __name__ == "__main__":
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
2.7.4


