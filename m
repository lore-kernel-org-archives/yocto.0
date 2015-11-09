Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB159E00A9A; Mon,  9 Nov 2015 14:01:21 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D149E009C3
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 14:01:19 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Nov 2015 14:01:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,267,1444719600"; d="scan'208";a="832113790"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 09 Nov 2015 14:01:15 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  9 Nov 2015 16:01:38 -0600
Message-Id: <1447106501-470-8-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1447106501-470-1-git-send-email-anibal.limon@linux.intel.com>
References: <1447106501-470-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 07/10][AUH] upgradehelper.py: Improve work directory structure
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
X-List-Received-Date: Mon, 09 Nov 2015 22:01:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add work directory with datetime suffix to preserve recipe upgrades.

Create tree folders all, succeed and failed,
	all	- Contains all the recipes work
	succeed	- Contains a symlinks to the recipes that successful
		  upgrade
	failed	- Contains a symlinks to the recipes that fail
		  upgrade

This helps to navigate over patches that have a successful upgrade.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index ae40fb1..aeb9cf1 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -132,9 +132,16 @@ class Updater(object):
         if not os.path.exists(self.uh_dir):
             os.mkdir(self.uh_dir)
 
-        self.uh_work_dir = os.path.join(self.uh_dir, "work")
-        if not os.path.exists(self.uh_work_dir):
-            os.mkdir(self.uh_work_dir)
+        self.uh_work_dir = os.path.join(self.uh_dir, "work-%s" % \
+                datetime.now().strftime("%Y%m%d%H%M"))
+        os.mkdir(self.uh_work_dir)
+
+        self.uh_recipes_all_dir = os.path.join(self.uh_work_dir, "all")
+        os.mkdir(self.uh_recipes_all_dir)
+        self.uh_recipes_succeed_dir = os.path.join(self.uh_work_dir, "succeed")
+        os.mkdir(self.uh_recipes_succeed_dir)
+        self.uh_recipes_failed_dir = os.path.join(self.uh_work_dir, "failed")
+        os.mkdir(self.uh_recipes_failed_dir)
 
         self.bb = Bitbake(get_build_dir())
         self.git = None
@@ -223,10 +230,7 @@ class Updater(object):
         self.env = self._get_env(self.pn)
 
     def _create_workdir(self):
-        self.workdir = os.path.join(self.uh_work_dir, self.pn)
-
-        if os.path.exists(self.workdir):
-            shutil.rmtree(self.workdir)
+        self.workdir = os.path.join(self.uh_recipes_all_dir, self.pn)
         os.mkdir(self.workdir)
 
     def _detect_repo(self):
@@ -490,6 +494,9 @@ class Updater(object):
                         I(" %s: %s" % (self.pn, msg))
                     step()
 
+                os.symlink(self.workdir, os.path.join( \
+                    self.uh_recipes_succeed_dir, self.pn))
+
                 I(" %s: Upgrade SUCCESSFUL! Please test!" % self.pn)
             except Exception as e:
                 if isinstance(e, UpgradeNotNeededError):
@@ -511,6 +518,9 @@ class Updater(object):
 
                 error = e
 
+                os.symlink(self.workdir, os.path.join( \
+                    self.uh_recipes_failed_dir, self.pn))
+
             self._commit_changes()
 
             self.pkg_upgrade_handler(error)
-- 
2.1.4


