Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46519E009F6; Mon, 20 Jun 2016 14:27:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61F62E009CA
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 14:27:53 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jun 2016 14:27:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,500,1459839600"; d="scan'208";a="991683543"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.159])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2016 14:27:50 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 20 Jun 2016 16:27:50 -0500
Message-Id: <1466458070-20099-3-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1466458070-20099-1-git-send-email-anibal.limon@linux.intel.com>
References: <1466458070-20099-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Subject: [[PATCH][AUH] 3/3] upgradehelper.py: Disable _order_pkgs_to_upgrade functionality
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
X-List-Received-Date: Mon, 20 Jun 2016 21:27:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The _order_pkgs_to_upgrade function order a set of packages to
be upgraded based on bitbake dependency graph, currently _order_pkgs_to_upgrade
is broken so disable it while fix.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 386cbcc..239fd88 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -500,8 +500,9 @@ class Updater(object):
         return pkgs_to_upgrade_ordered
 
     def run(self, package_list=None):
-        pkgs_to_upgrade = self._order_pkgs_to_upgrade(
-                self._get_packages_to_upgrade(package_list))
+        #pkgs_to_upgrade = self._order_pkgs_to_upgrade(
+        #        self._get_packages_to_upgrade(package_list))
+        pkgs_to_upgrade = self._get_packages_to_upgrade(package_list)
         total_pkgs = len(pkgs_to_upgrade)
 
         pkgs_ctx = {}
-- 
2.1.4


