Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7238E00D79; Thu, 14 Dec 2017 08:35:29 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05583E00D79
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:28 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726564"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:27 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:44 +0200
Message-Id: <08271be55c1a10513f2678953224e5efce45485a.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 04/20] upgradehelper.py: support updates to a new vcs revision.
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:29 -0000

From: Alexander Kanavin <alex.kanavin@gmail.com>

Devtool has support for this, and it's useful when the upstream
never issues new versions; in this situation we can simply
attempt to update to the latest revision.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 upgradehelper.py | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 5fb65cd..c11993a 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -526,13 +526,14 @@ class Updater(object):
         pkgs_ctx = {}
 
         I(" ########### The list of recipes to be upgraded #############")
-        for p, v, m in pkgs_to_upgrade:
-            I(" %s, %s, %s" % (p, v, m))
+        for p, v, m, r in pkgs_to_upgrade:
+            I(" %s, %s, %s, %s" % (p, v, m, r))
 
             pkgs_ctx[p] = {}
             pkgs_ctx[p]['PN'] = p
             pkgs_ctx[p]['NPV'] = v
             pkgs_ctx[p]['MAINTAINER'] = m
+            pkgs_ctx[p]['NSRCREV'] = r
 
             pkgs_ctx[p]['base_dir'] = self.uh_recipes_all_dir
         I(" ############################################################")
@@ -555,7 +556,7 @@ class Updater(object):
         succeeded_pkgs_ctx = []
         failed_pkgs_ctx = []
         attempted_pkgs = 0
-        for pn, _, _ in pkgs_to_upgrade:
+        for pn, _, _, _ in pkgs_to_upgrade:
             pkg_ctx = pkgs_ctx[pn]
             pkg_ctx['error'] = None
 
@@ -738,11 +739,12 @@ class UniverseUpdater(Updater):
                 cur_ver = row[1]
                 next_ver = row[2]
                 status = row[11]
+                revision = row[12]
                 maintainer = row[14]
                 no_upgrade_reason = row[15]
 
                 if status == 'UPDATE' and not no_upgrade_reason:
-                    pkgs_list.append((pn, next_ver, maintainer))
+                    pkgs_list.append((pn, next_ver, maintainer, revision))
                 else:
                     if no_upgrade_reason:
                         D(" Skip package %s (status = %s, current version = %s," \
-- 
2.15.0


