Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64F04E00D92; Thu, 14 Dec 2017 08:35:30 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A67BE00D79
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:30 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726568"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:29 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:45 +0200
Message-Id: <4757516e6eb8cd3cc84ac5a9761b92673a8a4b2a.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 05/20] upgradehelper.py: add the old recipe version in pkg_ctx
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:30 -0000

From: Alexander Kanavin <alex.kanavin@gmail.com>

So that it can be later used in the commit message.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 upgradehelper.py | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index c11993a..9a59941 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -526,12 +526,13 @@ class Updater(object):
         pkgs_ctx = {}
 
         I(" ########### The list of recipes to be upgraded #############")
-        for p, v, m, r in pkgs_to_upgrade:
-            I(" %s, %s, %s, %s" % (p, v, m, r))
+        for p, ov, nv, m, r in pkgs_to_upgrade:
+            I(" %s, %s, %s, %s, %s" % (p, ov, nv, m, r))
 
             pkgs_ctx[p] = {}
             pkgs_ctx[p]['PN'] = p
-            pkgs_ctx[p]['NPV'] = v
+            pkgs_ctx[p]['PV'] = ov
+            pkgs_ctx[p]['NPV'] = nv
             pkgs_ctx[p]['MAINTAINER'] = m
             pkgs_ctx[p]['NSRCREV'] = r
 
@@ -556,7 +557,7 @@ class Updater(object):
         succeeded_pkgs_ctx = []
         failed_pkgs_ctx = []
         attempted_pkgs = 0
-        for pn, _, _, _ in pkgs_to_upgrade:
+        for pn, _, _, _, _ in pkgs_to_upgrade:
             pkg_ctx = pkgs_ctx[pn]
             pkg_ctx['error'] = None
 
@@ -744,7 +745,7 @@ class UniverseUpdater(Updater):
                 no_upgrade_reason = row[15]
 
                 if status == 'UPDATE' and not no_upgrade_reason:
-                    pkgs_list.append((pn, next_ver, maintainer, revision))
+                    pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))
                 else:
                     if no_upgrade_reason:
                         D(" Skip package %s (status = %s, current version = %s," \
-- 
2.15.0


