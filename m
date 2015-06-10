Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C00A5E009BD; Wed, 10 Jun 2015 09:30:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45EE9E00974
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2015 09:30:15 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 10 Jun 2015 09:30:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,588,1427785200"; d="scan'208";a="585476965"
Received: from yctb03.ostc.intel.com (HELO yctb03.otcr.jf.intel.com)
	([10.23.219.52])
	by orsmga003.jf.intel.com with ESMTP; 10 Jun 2015 09:30:13 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 10 Jun 2015 16:28:45 +0000
Message-Id: <1433953732-29963-5-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.8.4.5
In-Reply-To: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
References: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 04/11][auh] upgradehelper.py: Improve usage when try to upgrade one recipe.
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
X-List-Received-Date: Wed, 10 Jun 2015 16:30:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When try to upgrade only one recipe is needed to specify the version
also when enable send emails it need to have a maintainer to avoid
exception.

[YOCTO #7489]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 4a07d7b..74f9c0a 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -66,10 +66,15 @@ def parse_cmdline():
                                      formatter_class=argparse.RawTextHelpFormatter,
                                      epilog=help_text)
     parser.add_argument("recipe", nargs="+", help="recipe to be upgraded")
+
     parser.add_argument("-t", "--to_version",
                         help="version to upgrade the recipe to")
+    parser.add_argument("-m", "--maintainer",
+                        help="maintainer of the recipe")
+
     parser.add_argument("-a", "--auto-mode", action="store_true", default=False,
                         help="disable interactive mode")
+
     parser.add_argument("-d", "--debug-level", type=int, default=4, choices=range(1, 6),
                         help="set the debug level: CRITICAL=1, ERROR=2, WARNING=3, INFO=4, DEBUG=5")
     parser.add_argument("-e", "--send-emails", action="store_true", default=False,
@@ -686,7 +691,15 @@ if __name__ == "__main__":
         updater.run()
     elif len(args.recipe) >= 1:
         if len(args.recipe) == 1:
-            pkg_list = [(args.recipe[0], args.to_version, None)]
+            if not args.to_version:
+                E(" For upgrade only one recipe you must specify --to_version\n")
+                exit(1)
+
+            if not args.maintainer and args.send_emails:
+                E(" For upgrade only one recipe and send email you must specify --maintainer\n")
+                exit(1)
+
+            pkg_list = [(args.recipe[0], args.to_version, args.maintainer)]
         else:
             pkg_list = []
             for pkg in args.recipe:
-- 
1.8.4.5


