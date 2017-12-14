Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2E86E00DB1; Thu, 14 Dec 2017 08:35:44 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57029E00DA8
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:44 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726652"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:43 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:57 +0200
Message-Id: <64b7f1b17df3c90f0c951ebb6994a3090e087ef5.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 17/20] upgradehelper.py: add all changes before committing them
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:44 -0000

From: Alexander Kanavin <alex.kanavin@gmail.com>

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 modules/utils/git.py | 3 +++
 upgradehelper.py     | 1 +
 2 files changed, 4 insertions(+)

diff --git a/modules/utils/git.py b/modules/utils/git.py
index a6f5422..0e812b9 100644
--- a/modules/utils/git.py
+++ b/modules/utils/git.py
@@ -52,6 +52,9 @@ class Git(object):
     def stash(self):
         return self._cmd("stash")
 
+    def add(self, src):
+        return self._cmd("add " + src)
+
     def commit(self, commit_message, author=None):
         if author is None:
             return self._cmd("commit -a -s -m \"" + commit_message + "\"")
diff --git a/upgradehelper.py b/upgradehelper.py
index 043d334..d1f441c 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -402,6 +402,7 @@ class Updater(object):
             pkg_ctx['patch_file'] = None
 
             I(" %s: Auto commit changes ..." % pkg_ctx['PN'])
+            self.git.add(pkg_ctx['recipe_dir'])
             self.git.commit(pkg_ctx['commit_msg'], self.opts['author'])
 
             stdout = self.git.create_patch(pkg_ctx['workdir'])
-- 
2.15.0


