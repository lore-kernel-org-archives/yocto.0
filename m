Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D26D6E009E6; Wed, 10 Jun 2015 09:30:21 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1126E00A21
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2015 09:30:15 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 10 Jun 2015 09:30:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,588,1427785200"; d="scan'208";a="585476984"
Received: from yctb03.ostc.intel.com (HELO yctb03.otcr.jf.intel.com)
	([10.23.219.52])
	by orsmga003.jf.intel.com with ESMTP; 10 Jun 2015 09:30:15 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 10 Jun 2015 16:28:51 +0000
Message-Id: <1433953732-29963-11-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.8.4.5
In-Reply-To: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
References: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 10/11][auh] upgradehelper.py: Change print to logger info.
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
X-List-Received-Date: Wed, 10 Jun 2015 16:30:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Print sentences need to be displayed as information in the logger
this unifies logger facilities.

[YOCTO #7489]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 recipe.py        | 9 ++++-----
 upgradehelper.py | 8 ++++----
 2 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/recipe.py b/recipe.py
index 55eb5bf..6fd8f24 100644
--- a/recipe.py
+++ b/recipe.py
@@ -376,11 +376,11 @@ class Recipe(object):
                   "been updated! View diff? (Y/n)" % (self.env['PN'], license_file))
                 answer = sys.stdin.readline().strip().upper()
                 if answer == '' or answer == 'Y':
-                    print(" ################ Licence file diff #################")
+                    I(" ################ Licence file diff #################")
                     with open(self.license_diff_file) as diff:
-                        print("%s" % diff.read())
-                    print(" ####################################################")
-                print("Retry compilation? (Y/n)")
+                        I("%s" % diff.read())
+                    I(" ####################################################")
+                I(" Retry compilation? (Y/n)")
                 answer = sys.stdin.readline().strip().upper()
                 if answer == '' or answer == 'Y':
                     return True
@@ -647,7 +647,6 @@ class Recipe(object):
 
                     if not self._license_issue_handled(log_file):
                         raise LicenseError()
-
                     #retry
                     self.compile(machine)
                 elif failed_task == "do_fetch":
diff --git a/upgradehelper.py b/upgradehelper.py
index a4aa0ab..be15e1f 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -514,7 +514,7 @@ class Updater(object):
                     exit(0)
 
         if (attempted_pkgs > 1):
-            print("%s" % self.statistics.pkg_stats())
+            I("%s" % self.statistics.pkg_stats())
             if self.send_email:
                 self.send_status_mail()
 
@@ -647,10 +647,10 @@ class UniverseUpdater(Updater):
             last_check.write(current_date + "," + cur_master_commit + "," +
                              last_checkpkg_file)
 
-        print("########### The list of recipes to be upgraded ############")
+        I(" ########### The list of recipes to be upgraded ############")
         for p, v, m in pkgs_list:
-            print("%s,%s,%s" % (p, v, m))
-        print("############################################################")
+            I(" %s, %s, %s" % (p, v, m))
+        I(" ############################################################")
 
         return pkgs_list
 
-- 
1.8.4.5


