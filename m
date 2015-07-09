Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6B14E00A49; Thu,  9 Jul 2015 13:33:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ACB0E00A45
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 13:33:41 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Jul 2015 13:33:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,442,1432623600"; d="scan'208";a="761497480"
Received: from mlopezva-mobl2.zpn.intel.com ([10.219.24.79])
	by orsmga002.jf.intel.com with ESMTP; 09 Jul 2015 13:33:40 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Jul 2015 15:33:33 -0500
Message-Id: <1436474014-12101-2-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1436474014-12101-1-git-send-email-mariano.lopez@linux.intel.com>
References: <1436474014-12101-1-git-send-email-mariano.lopez@linux.intel.com>
Subject: [rrs][PATCH 1/2] views.py: Changed date format to iso
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
X-List-Received-Date: Thu, 09 Jul 2015 20:33:42 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

Changed the day format to iso. Also, the outdated
field in the recipes views was changed from days
to the date the recipe was last updated.

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 rrs/views.py | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/rrs/views.py b/rrs/views.py
index 7fd2e8f..d583acb 100644
--- a/rrs/views.py
+++ b/rrs/views.py
@@ -207,7 +207,7 @@ def _get_recipe_list(milestone):
                     recipe_last_updated_dict_all.get(recipe['id'])
                 if recipe_last_updated:
                     recipe_date = recipe_last_updated['date']
-                    outdated = (current_date - recipe_date.date()).days
+                    outdated = recipe_date.date().isoformat()
                 else:
                     outdated = 'Unknown'
             else:
@@ -360,13 +360,14 @@ def _get_recipe_upgrade_detail(recipe_upgrade):
             .count() > 0:
             is_recipe_maintainer = True
 
+    commit_date = recipe_upgrade.commit_date.date().isoformat()
     commit = recipe_upgrade.sha1[:10]
     commit_url = recipe_upgrade.recipe.layerbranch.layer.vcs_web_url + \
         '/commit/?id=' + recipe_upgrade.sha1
 
     rud = RecipeUpgradeDetail(recipe_upgrade.title, recipe_upgrade.version, \
-            release_name, milestone_name, recipe_upgrade.commit_date, \
-            maintainer_name, is_recipe_maintainer, commit, commit_url)
+            release_name, milestone_name, commit_date, maintainer_name, \
+            is_recipe_maintainer, commit, commit_url)
 
     return rud
 
-- 
1.9.1


