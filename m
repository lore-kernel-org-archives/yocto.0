Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30504E00D7B; Thu, 14 Dec 2017 08:35:27 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6D65E00D1C
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:26 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726555"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:25 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:42 +0200
Message-Id: <bd66d19e69e332906680949571d50f1342707983.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 02/20] upgradehelper.py: always run checkpkg
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:27 -0000

From: Alexander Kanavin <alex.kanavin@gmail.com>

There was code to skip upstream version check if it was performed
recently, which was actually broken as it didn't verify that
checkpkg.csv already contains the package we want to update.
Let's just drop the whole logic and run checkpkg always.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 upgradehelper.py | 33 ++-------------------------------
 1 file changed, 2 insertions(+), 31 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 1356aef..651345b 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -829,43 +829,14 @@ class UniverseUpdater(Updater):
         return True
 
     def _get_packages_to_upgrade(self, packages=None):
-        last_date_checked = None
-        last_master_commit = None
-        last_checkpkg_file = None
-        current_date = date.isoformat(date.today())
-        try:
-            stdout = self.git.last_commit("master")
-            cur_master_commit = stdout
-        except Error:
-            cur_master_commit = "unknown"
-
-        if os.path.exists(get_build_dir() + "/upgrade-helper/last_checkpkg_run"):
-            with open(get_build_dir() + "/upgrade-helper/last_checkpkg_run") as last_check:
-                line = last_check.read()
-                last_date_checked = line.split(',')[0]
-                last_master_commit = line.split(',')[1]
-                last_checkpkg_file = line.split(',')[2]
-                if not os.path.exists(last_checkpkg_file):
-                    last_checkpkg_file = None
-
-        if last_master_commit != cur_master_commit or last_date_checked != current_date or \
-                last_checkpkg_file is None:
-            self._check_upstream_versions()
-            last_checkpkg_file = os.path.realpath(get_build_dir() + "/tmp/log/checkpkg.csv")
-        else:
-            I(" Using last checkpkg.csv file since last master commit and last"
-              " check date are the same ...")
+        self._check_upstream_versions()
+        last_checkpkg_file = os.path.realpath(get_build_dir() + "/tmp/log/checkpkg.csv")
 
         pkgs_list = []
         for pkg in self._parse_checkpkg_file(last_checkpkg_file):
             if self._pkg_upgradable(pkg[0], pkg[1], pkg[2]):
                 pkgs_list.append(pkg)
 
-        # Update last_checkpkg_run only after the version check has been completed
-        with open(get_build_dir() + "/upgrade-helper/last_checkpkg_run", "w+") as last_check:
-            last_check.write(current_date + "," + cur_master_commit + "," +
-                             last_checkpkg_file)
-
         return pkgs_list
 
     def _update_history(self, pn, new_ver, maintainer, upgrade_status):
-- 
2.15.0


