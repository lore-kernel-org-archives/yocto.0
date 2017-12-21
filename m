Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A497BE00E7B; Thu, 21 Dec 2017 08:33:10 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FAD7E00E51
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:10 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761337"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:09 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:14 +0200
Message-Id: <015f9d8d85d16fc4b5c09ff320306c23a1217e32.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 06/21] upgradehelper.py: always do upgrade when recipes are specified
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:10 -0000

From: Robert Yang <liezhi.yang@windriver.com>

For example, first run:
$ upgradehelper.py less -d 5
It did the upgrade

Second run:
$ upgradehelper.py less -d 5
DEBUG: Skipping upgrade of less: is in history and not 30 days passed

Let it always do the upgrade makes it easier to use when do upgrade locally.
It will still do the check when the recipe is all.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 upgradehelper.py | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 2061bfb..3c40918 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -756,7 +756,10 @@ class UniverseUpdater(Updater):
 
         pkgs_list = []
         for pkg in self._parse_checkpkg_file(last_checkpkg_file):
-            if self._pkg_upgradable(pkg[0], pkg[1], pkg[2]):
+            # Always do the upgrade if recipes are specified
+            if self.recipes and pkg[0] in self.recipes:
+                pkgs_list.append(pkg)
+            elif self._pkg_upgradable(pkg[0], pkg[1], pkg[2]):
                 pkgs_list.append(pkg)
 
         return pkgs_list
-- 
2.15.1


