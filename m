Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89C17E00B6F; Wed, 13 Jan 2016 13:50:36 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EB51E00B67
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 13:50:33 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jan 2016 13:50:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,291,1449561600"; d="scan'208";a="633000565"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.151])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Jan 2016 13:50:31 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jan 2016 15:52:11 -0600
Message-Id: <1452721931-18829-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1452721931-18829-1-git-send-email-anibal.limon@linux.intel.com>
References: <1452721931-18829-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[PATCH][AUH] 2/2] steps.py: Adds {pack, unpack}_original_workdir.
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
X-List-Received-Date: Wed, 13 Jan 2016 21:50:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The original workdir directory is needed for make diff's for example
when license change [1], in order to avoid deletion of original workdir
when recipe is upgraded.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>

[1] https://lists.yoctoproject.org/pipermail/yocto/2016-January/028025.html

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 modules/steps.py | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/modules/steps.py b/modules/steps.py
index 2685b80..0c527a4 100644
--- a/modules/steps.py
+++ b/modules/steps.py
@@ -20,6 +20,7 @@
 
 import os
 import sys
+import subprocess
 
 from logging import debug as D
 from logging import info as I
@@ -99,6 +100,19 @@ def buildhistory_init(bb, git, opts, pkg_ctx):
 def unpack_original(bb, git, opts, pkg_ctx):
     pkg_ctx['recipe'].unpack()
 
+def pack_original_workdir(bb, git, opts, pkg_ctx):
+    recipe_workdir = os.path.dirname(pkg_ctx['env']['S'])
+    pkg_ctx['recipe_workdir_tarball'] = os.path.join(pkg_ctx['workdir'],
+            'original_workdir.tar.gz')
+
+    try:
+        subprocess.call(["tar", "-chzf", pkg_ctx['recipe_workdir_tarball'],
+                         recipe_workdir], stdout=subprocess.PIPE,
+                         stderr=subprocess.PIPE)
+    except:
+        W(" %s, Can't compress original workdir, if license diff" \
+          " is needed will show full file." % pkg_ctx['PN'])
+
 def rename(bb, git, opts, pkg_ctx):
     pkg_ctx['recipe'].rename()
 
@@ -112,6 +126,15 @@ def cleanall(bb, git, opts, pkg_ctx):
 def fetch(bb, git, opts, pkg_ctx):
     pkg_ctx['recipe'].fetch()
 
+def unpack_original_workdir(bb, git, opts, pkg_ctx):
+    try:
+        subprocess.call(["tar", "-xhzf", pkg_ctx['recipe_workdir_tarball'],
+                         "-C", "/"], stdout=subprocess.PIPE,
+                         stderr=subprocess.PIPE)
+        os.unlink(pkg_ctx['recipe_workdir_tarball'])
+    except:
+        pass
+
 def compile(bb, git, opts, pkg_ctx):
     if opts['skip_compilation']:
         W(" %s: Compilation was skipped by user choice!")
@@ -136,9 +159,11 @@ upgrade_steps = [
     (detect_recipe_type, None),
     (buildhistory_init, None),
     (unpack_original, "Fetch & unpack original version ..."),
+    (pack_original_workdir, None),
     (rename, "Renaming recipes, reset PR (if exists) ..."),
     (cleanall, "Clean all ..."),
     (fetch, "Fetch new version (old checksums) ..."),
+    (unpack_original_workdir, None),
     (compile, None),
     (buildhistory_diff, None)
 ]
-- 
2.1.4


