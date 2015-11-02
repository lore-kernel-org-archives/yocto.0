Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CBDFE00AFD; Mon,  2 Nov 2015 08:25:44 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C55FE00AF2
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 08:25:42 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 02 Nov 2015 08:25:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,234,1444719600"; d="scan'208";a="592607599"
Received: from jdurndel-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.28.210])
	by FMSMGA003.fm.intel.com with ESMTP; 02 Nov 2015 08:25:40 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  2 Nov 2015 16:25:20 +0000
Message-Id: <1446481520-28845-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.1.0
Subject: [layerindex-web][PATCH] update.py: fix splitting on _ when getting class inheritance
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
X-List-Received-Date: Mon, 02 Nov 2015 16:25:44 -0000

The code to populate the inherits information was using a function
designed to get the recipe name from a file path, but unlike recipe
filenames, the underscore isn't treated as special in class filenames
and in fact it's quite common to use underscores there; we were ending
up with items in the inherit list such as "populate" and "rootfs". Use
the standard python os.path functions to do the splitting instead and
avoid this.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 1e96da6..7497743 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -68,7 +68,7 @@ def update_recipe_file(data, path, recipe, layerdir_start, repodir):
         # Handle recipe inherits for this recipe
         gr = set(data.getVar("__inherit_cache", True) or [])
         lr = set(envdata.getVar("__inherit_cache", True) or [])
-        recipe.inherits = ' '.join(sorted({split_recipe_fn(r)[0] for r in lr if r not in gr}))
+        recipe.inherits = ' '.join(sorted({os.path.splitext(os.path.basename(r))[0] for r in lr if r not in gr}))
         recipe.save()
 
         # Get file dependencies within this layer
-- 
2.1.0


