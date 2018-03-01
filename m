Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CC1AE00E08; Thu,  1 Mar 2018 06:37:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 040F7E00B1A
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 06:37:46 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Mar 2018 06:37:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,408,1515484800"; d="scan'208";a="208093346"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 01 Mar 2018 06:37:45 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  1 Mar 2018 16:31:49 +0200
Message-Id: <20180301143149.9307-1-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
Subject: [auh][PATCH] Do not hardcode the location of tmp directory
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
X-List-Received-Date: Thu, 01 Mar 2018 14:37:47 -0000

Get it from bitbake instead.

[YOCTO #12566]

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 upgradehelper.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 169e9ce..d868cde 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -602,9 +602,9 @@ class UniverseUpdater(Updater):
             I(" Removing sstate directory ...")
             shutil.rmtree(os.path.join(get_build_dir(), "sstate-cache"))
         if settings.get("clean_tmp", "no") == "yes" and \
-                os.path.exists(os.path.join(get_build_dir(), "tmp")):
+                os.path.exists(self.base_env['TMPDIR']):
             I(" Removing tmp directory ...")
-            shutil.rmtree(os.path.join(get_build_dir(), "tmp"))
+            shutil.rmtree(self.base_env['TMPDIR'])
 
     def _check_upstream_versions(self):
         I(" Fetching upstream version(s) ...")
@@ -711,7 +711,7 @@ class UniverseUpdater(Updater):
 
     def _get_packages_to_upgrade(self, packages=None):
         self._check_upstream_versions()
-        last_checkpkg_file = os.path.realpath(get_build_dir() + "/tmp/log/checkpkg.csv")
+        last_checkpkg_file = os.path.realpath(self.base_env['TMPDIR'] + "/log/checkpkg.csv")
 
         pkgs_list = []
         for pkg in self._parse_checkpkg_file(last_checkpkg_file):
-- 
2.15.1


