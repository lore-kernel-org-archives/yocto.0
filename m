Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A611AE00A64; Tue, 28 Jul 2015 07:27:35 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BB3BE00992
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2015 07:27:33 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 28 Jul 2015 07:27:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,563,1432623600"; d="scan'208";a="531671530"
Received: from mlopezva-mobl2.zpn.intel.com (HELO localhost.localdomain)
	([10.219.56.19])
	by FMSMGA003.fm.intel.com with ESMTP; 28 Jul 2015 07:27:32 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue, 28 Jul 2015 09:27:16 -0500
Message-Id: <1438093638-7722-2-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1438093638-7722-1-git-send-email-mariano.lopez@linux.intel.com>
References: <1438093638-7722-1-git-send-email-mariano.lopez@linux.intel.com>
Subject: [rrs][PATCH 1/3] views.py: Show last updated date for all recipes
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
X-List-Received-Date: Tue, 28 Jul 2015 14:27:35 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

This changes the behavior of the last update column
and show the date for all the recipes, including the
up to date recipes.

[YOCTO #8018]

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 rrs/views.py | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/rrs/views.py b/rrs/views.py
index ee68254..e446c0d 100644
--- a/rrs/views.py
+++ b/rrs/views.py
@@ -196,14 +196,13 @@ def _get_recipe_list(milestone):
             no_update_reason = recipe_upstream['no_update_reason']
 
             #Get how long the recipe hasn't been updated
-            if recipe_upstream['status'] != 'Y':
-                recipe_last_updated = \
-                    recipe_last_updated_dict_all.get(recipe['id'])
-                if recipe_last_updated:
-                    recipe_date = recipe_last_updated['date']
-                    outdated = recipe_date.date().isoformat()
+            recipe_last_updated = \
+                recipe_last_updated_dict_all.get(recipe['id'])
+            if recipe_last_updated:
+                recipe_date = recipe_last_updated['date']
+                outdated = recipe_date.date().isoformat()
             else:
-                outdated = 'Up-to-date'
+                outdated = ""
 
         maintainer_name =  maintainers_dict_all.get(recipe['id'], '')
         recipe_list_item = RecipeList(recipe['id'], recipe['pn'], recipe['summary'])
-- 
1.9.1


