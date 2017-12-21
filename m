Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D4F1E00E7B; Thu, 21 Dec 2017 08:33:11 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6370FE00E51
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:11 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761353"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:10 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:15 +0200
Message-Id: <accff6fd851501034393c397a19cf4951e10813a.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 07/21] upgradehelper.py: print info when recipe is skipped to upgrade
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:11 -0000

From: Robert Yang <liezhi.yang@windriver.com>

This makes debug easier.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 upgradehelper.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 3c40918..80ea4f4 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -691,11 +691,11 @@ class UniverseUpdater(Updater):
                     pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))
                 else:
                     if no_upgrade_reason:
-                        D(" Skip package %s (status = %s, current version = %s," \
+                        I(" Skip package %s (status = %s, current version = %s," \
                             " next version = %s, no upgrade reason = %s)" %
                             (pn, status, cur_ver, next_ver, no_upgrade_reason))
                     else:
-                        D(" Skip package %s (status = %s, current version = %s," \
+                        I(" Skip package %s (status = %s, current version = %s," \
                             " next version = %s)" %
                             (pn, status, cur_ver, next_ver))
         return pkgs_list
-- 
2.15.1


