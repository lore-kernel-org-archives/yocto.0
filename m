Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 644BFE00DD0; Wed, 28 Feb 2018 06:31:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0B81E00816
	for <yocto@yoctoproject.org>; Wed, 28 Feb 2018 06:31:33 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Feb 2018 06:31:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,405,1515484800"; d="scan'208";a="34308541"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by fmsmga001.fm.intel.com with ESMTP; 28 Feb 2018 06:31:31 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Feb 2018 16:25:35 +0200
Message-Id: <20180228142535.13884-1-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
Subject: [auh][PATCH] upgradehelper.py: fix arguments to _pkg_upgradable()
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
X-List-Received-Date: Wed, 28 Feb 2018 14:31:34 -0000

Maintainer whitelisting was broken, in particular.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 upgradehelper.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index b22b915..169e9ce 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -718,7 +718,7 @@ class UniverseUpdater(Updater):
             # Always do the upgrade if recipes are specified
             if self.recipes and pkg[0] in self.recipes:
                 pkgs_list.append(pkg)
-            elif self._pkg_upgradable(pkg[0], pkg[1], pkg[2]):
+            elif self._pkg_upgradable(pkg[0], pkg[2], pkg[3]):
                 pkgs_list.append(pkg)
 
         return pkgs_list
-- 
2.15.1


