Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08EBDE00DC9; Thu, 14 Dec 2017 08:35:50 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1887E00D9D
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:47 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726684"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:46 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:36:00 +0200
Message-Id: <fbccfa00967305bb3866d0f610cd4b83b8b7a28c.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 20/20] upgradehelper.py: revert commits that failed to build
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:50 -0000

From: Alexander Kanavin <alex.kanavin@gmail.com>

This helps avoid 'cascading build failures' where one failed update
holds up everything else.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 modules/utils/git.py | 3 +++
 upgradehelper.py     | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/modules/utils/git.py b/modules/utils/git.py
index 0e812b9..749d24d 100644
--- a/modules/utils/git.py
+++ b/modules/utils/git.py
@@ -61,6 +61,9 @@ class Git(object):
         else:
             return self._cmd("commit -a --author=\"" + author + "\" -m \"" + commit_message + "\"")
 
+    def revert(self, commit):
+        return self._cmd("revert --no-edit " + commit)
+
     def create_patch(self, out_dir):
         return self._cmd("format-patch -M10 -1 -o " + out_dir)
 
diff --git a/upgradehelper.py b/upgradehelper.py
index 58fa0a6..71ee0b0 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -414,6 +414,9 @@ class Updater(object):
             else:
                 I(" %s: Save patch in directory: %s." %
                     (pkg_ctx['PN'], pkg_ctx['workdir']))
+            if pkg_ctx['error'] is not None:
+                I("Due to build errors, the commit will also be reverted to avoid cascading upgrade failures.")
+                self.git.revert("HEAD")
         except Error as e:
             msg = ''
 
-- 
2.15.0


