Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B232E00E88; Thu, 21 Dec 2017 08:33:15 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB3CAE00E82
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:14 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761410"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:13 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:18 +0200
Message-Id: <022c9cc2522acbd672eda7f26fadccd9233705b1.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 10/21] upgradehelper.py: replace the confusing 'maintainer' command line option
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:15 -0000

It wasn't clear what the option does, and why it need to be on the command line,
so the replacement is a 'global_maintainer_override' config file setting which
does the same thing, in a cleaner fashion.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 README           | 7 ++++++-
 upgradehelper.py | 9 +++------
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/README b/README
index 00a390a..20b2e5d 100644
--- a/README
+++ b/README
@@ -28,6 +28,7 @@ Setup
 --------------- snip ---------------
 [maintainer_override]
 # mails for recipe upgrades will go to john.doe instead of jane.doe, etc
+# see also the global_maintainer_override option
 jane.doe@doe.com=john.doe@doe.com
 johhny.bravo@bravo.com=john.doe@doe.com
 
@@ -38,6 +39,10 @@ blacklist=python glibc gcc
 # only recipes belonging to maintainers in whitelist will be attempted
 maintainers_whitelist=jane.doe@doe.com john.doe@doe.com johhny.bravo@bravo.com
 
+# email for all recipe upgrades will go to john.doe, except those listed
+# in specific maintainer_override entries above
+global_maintainer_override=john.doe@doe.com
+
 # SMTP server
 smtp=smtp.my-server.com:25
 
@@ -84,7 +89,7 @@ INHERIT =+ "distrodata"
 
 WARNING: if you are using the default maintainers.inc file supplied
          with Poky (in meta-yocto) and you don't set a
-         maintainers_whitelist or maintainer_override in the
+         maintainers_whitelist or (global_)maintainer_override in the
          upgrade-helper configuration as above, and you specify "all"
          on the command line, the script will automatically send out
          emails to the default maintainers. Please be careful not to
diff --git a/upgradehelper.py b/upgradehelper.py
index d5a7112..4623199 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -79,8 +79,6 @@ def parse_cmdline():
 
     parser.add_argument("-t", "--to_version",
                         help="version to upgrade the recipe to")
-    parser.add_argument("-m", "--maintainer",
-                        help="maintainer of the recipe")
 
     parser.add_argument("-d", "--debug-level", type=int, default=4, choices=range(1, 6),
                         help="set the debug level: CRITICAL=1, ERROR=2, WARNING=3, INFO=4, DEBUG=5")
@@ -325,6 +323,8 @@ class Updater(object):
 
         if pkg_ctx['MAINTAINER'] in maintainer_override:
             to_addr = maintainer_override[pkg_ctx['MAINTAINER']]
+        elif 'global_maintainer_override' in settings:
+            to_addr = settings['global_maintainer_override']
         else:
             to_addr = pkg_ctx['MAINTAINER']
 
@@ -677,10 +677,7 @@ class UniverseUpdater(Updater):
                     next_ver = row[2]
                 status = row[11]
                 revision = row[12]
-                if self.args.maintainer:
-                    maintainer = self.args.maintainer
-                else:
-                    maintainer = row[14]
+                maintainer = row[14]
                 no_upgrade_reason = row[15]
 
                 if status == 'UPDATE' and not no_upgrade_reason:
-- 
2.15.1


