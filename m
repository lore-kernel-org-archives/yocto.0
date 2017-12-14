Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4946AE00D79; Thu, 14 Dec 2017 08:35:28 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D745AE00D1C
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:27 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726560"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:26 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:43 +0200
Message-Id: <1f33a6d120c19d6a74f10131a97704e0b53f97cf.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 03/20] upgradehelper.py: do not manipulate git branches.
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:28 -0000

From: Alexander Kanavin <alex.kanavin@gmail.com>

Let's just write the commits into the current branch, and leave
branch management to some other tool.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 upgradehelper.py | 25 -------------------------
 1 file changed, 25 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 651345b..5fb65cd 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -695,30 +695,6 @@ class UniverseUpdater(Updater):
 
         return recipes
 
-    def _update_master(self):
-        if self.opts['layer_mode'] == 'yes':
-            I(" Sync poky master ...")
-            self.poky_git.reset_hard()
-            self.poky_git.clean_untracked()
-            self.poky_git.checkout_branch("master")
-            self.poky_git.pull()
-
-        I(" Drop all uncommited changes (including untracked) ...")
-        self.git.reset_hard()
-        self.git.clean_untracked()
-
-        self.git.checkout_branch("master")
-        try:
-            self.git.delete_branch("upgrades")
-        except Error:
-            pass
-        if self.opts['layer_mode'] == 'yes':
-            I(" Sync %s master ..." % self.opts['layer_name'])
-        else:
-            I(" Sync poky master ...")
-        self.git.pull()
-        self.git.create_branch("upgrades")
-
     def _prepare(self):
         if settings.get("clean_sstate", "no") == "yes" and \
                 os.path.exists(os.path.join(get_build_dir(), "sstate-cache")):
@@ -857,7 +833,6 @@ class UniverseUpdater(Updater):
                 self._get_status_msg(pkg_ctx['error']))
 
     def run(self):
-        self._update_master()
         self._prepare()
         super(UniverseUpdater, self).run()
 
-- 
2.15.0


