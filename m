Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B0DCE008D2; Wed, 11 Nov 2015 14:33:58 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F13AE0049B
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 14:33:54 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 11 Nov 2015 14:33:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,278,1444719600"; d="scan'208";a="598559580"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Nov 2015 14:33:54 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Nov 2015 16:34:17 -0600
Message-Id: <1447281269-18444-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1447281269-18444-1-git-send-email-anibal.limon@linux.intel.com>
References: <1447281269-18444-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] PATCHv2 01/13] upgradehelper.py: Add step for build gcc-runtime at init.
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
X-List-Received-Date: Wed, 11 Nov 2015 22:33:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When try to upgrade a recipe the first recipe in the list
takes too much time because gcc-runtime build is needed.

So add previous step to build gcc-runtime for every machine.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/upgradehelper.py b/upgradehelper.py
index b5a8abd..bb19b65 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -467,6 +467,11 @@ class Updater(object):
             W("No recipes attempted, not sending status mail!")
 
     def run(self, package_list=None):
+        I(" Building gcc runtimes ...")
+        for machine in self.machines:
+            I("  building gcc runtime for %s" % machine)
+            self.bb.complete("gcc-runtime", machine)
+
         pkgs_to_upgrade = self._get_packages_to_upgrade(package_list)
 
         total_pkgs = len(pkgs_to_upgrade)
-- 
2.1.4


