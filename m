Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 240ABE009CE; Mon, 20 Jun 2016 14:27:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16C72E00984
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 14:27:53 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jun 2016 14:27:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,500,1459839600"; d="scan'208";a="991683538"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.159])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2016 14:27:49 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 20 Jun 2016 16:27:49 -0500
Message-Id: <1466458070-20099-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1466458070-20099-1-git-send-email-anibal.limon@linux.intel.com>
References: <1466458070-20099-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Subject: [[PATCH][AUH] 2/3] upgradehelper.py: Move build of gcc runtime after discover packages
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
X-List-Received-Date: Mon, 20 Jun 2016 21:27:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

If no packages are found to upgrade, it didn't make sense to build
gcc runtime before is only a waste of time.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 29 +++++++++++++++--------------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 499c539..386cbcc 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -500,20 +500,6 @@ class Updater(object):
         return pkgs_to_upgrade_ordered
 
     def run(self, package_list=None):
-        I(" Building gcc runtimes ...")
-        for machine in self.opts['machines']:
-            I("  building gcc runtime for %s" % machine)
-            try:
-                self.bb.complete("gcc-runtime", machine)
-            except Exception as e:
-                E(" Can't build gcc-runtime for %s." % machine)
-
-                if isinstance(e, Error):
-                    E(e.stdout)
-                else:
-                    import traceback
-                    traceback.print_exc(file=sys.stdout)
-
         pkgs_to_upgrade = self._order_pkgs_to_upgrade(
                 self._get_packages_to_upgrade(package_list))
         total_pkgs = len(pkgs_to_upgrade)
@@ -532,6 +518,21 @@ class Updater(object):
             pkgs_ctx[p]['base_dir'] = self.uh_recipes_all_dir
         I(" ############################################################")
 
+        if pkgs_to_upgrade:
+            I(" Building gcc runtimes ...")
+            for machine in self.opts['machines']:
+                I("  building gcc runtime for %s" % machine)
+                try:
+                    self.bb.complete("gcc-runtime", machine)
+                except Exception as e:
+                    E(" Can't build gcc-runtime for %s." % machine)
+
+                    if isinstance(e, Error):
+                        E(e.stdout)
+                    else:
+                        import traceback
+                        traceback.print_exc(file=sys.stdout)
+
         succeeded_pkgs_ctx = []
         failed_pkgs_ctx = []
         attempted_pkgs = 0
-- 
2.1.4


