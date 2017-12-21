Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B8F9E00E84; Thu, 21 Dec 2017 08:33:14 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACCDEE00E82
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:13 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761394"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:12 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:17 +0200
Message-Id: <cb85036f3f8574ecaeba16409fd69b84b0fc2f88.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 09/21] upgradehelper.py: drop automatic mode
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:14 -0000

No longer used since migration to devtool: all upgrades are automatic

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 README           | 6 ++----
 upgradehelper.py | 6 +-----
 2 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/README b/README
index 60dbef9..00a390a 100644
--- a/README
+++ b/README
@@ -134,12 +134,10 @@ Usage
 
 Some manual usage examples:
 
-* To upgrade the xmodmap recipe to the latest available version,
-  interactively:
+* To upgrade the xmodmap recipe to the latest available version:
     $ upgrade-helper.py xmodmap
 
-* To upgrade the xmodmap recipe to a user specified version,
-  interactively:
+* To upgrade the xmodmap recipe to a user specified version:
     $ upgrade-helper.py xmodmap -t 1.2.3
 
 * To attempt to upgrade all recipes and automatically send email
diff --git a/upgradehelper.py b/upgradehelper.py
index 711d3b3..d5a7112 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -60,7 +60,7 @@ from steps import upgrade_steps
 from testimage import TestImage
 
 help_text = """Usage examples:
-* To upgrade xmodmap recipe to the latest available version, interactively:
+* To upgrade xmodmap recipe to the latest available version:
     $ upgrade-helper.py xmodmap
 
 * To attempt to upgrade all recipes and automatically send email messages
@@ -82,9 +82,6 @@ def parse_cmdline():
     parser.add_argument("-m", "--maintainer",
                         help="maintainer of the recipe")
 
-    parser.add_argument("-a", "--auto-mode", action="store_true", default=False,
-                        help="disable interactive mode")
-
     parser.add_argument("-d", "--debug-level", type=int, default=4, choices=range(1, 6),
                         help="set the debug level: CRITICAL=1, ERROR=2, WARNING=3, INFO=4, DEBUG=5")
     parser.add_argument("-e", "--send-emails", action="store_true", default=False,
@@ -178,7 +175,6 @@ class Updater(object):
             self.opts['machines'] = settings.get('machines',
                 'qemux86 qemux86-64 qemuarm qemumips qemuppc').split()
 
-        self.opts['interactive'] = not self.args.auto_mode
         self.opts['send_email'] = self.args.send_emails
         self.opts['author'] = "Upgrade Helper <%s>" % \
                 settings.get('from', 'uh@not.set')
-- 
2.15.1


