Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C943E00AB7; Mon, 17 Aug 2015 08:30:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8F77E00A38
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 08:30:39 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 17 Aug 2015 08:30:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,695,1432623600"; d="scan'208";a="785364139"
Received: from mlopezva-mobl2.zpn.intel.com (HELO localhost.localdomain)
	([10.219.24.49])
	by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2015 08:30:26 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Mon, 17 Aug 2015 10:30:12 -0500
Message-Id: <1439825413-6276-2-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1439825413-6276-1-git-send-email-mariano.lopez@linux.intel.com>
References: <1439825413-6276-1-git-send-email-mariano.lopez@linux.intel.com>
Subject: [rrs][PATCH 1/2] rrs/views.py: Added percentages for navbar
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
X-List-Received-Date: Mon, 17 Aug 2015 15:30:41 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

This adds the percentage for all the recipes types
(up-to-date, not updated, unknown, can't be updated)
so it can be displayed in the navbar.

This also adds the number of the recipes not updated
at the begining of the period and number of recipes
updated in the period.

The changes in the frontend are still missing, this
just adds the functionality.

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 rrs/views.py | 71 ++++++++++++++++++++++++++++++++++++++++++++++--------------
 1 file changed, 55 insertions(+), 16 deletions(-)

diff --git a/rrs/views.py b/rrs/views.py
index e446c0d..01f14f5 100644
--- a/rrs/views.py
+++ b/rrs/views.py
@@ -47,22 +47,8 @@ def _get_milestone_statistics(milestone, maintainer_name=None):
     )
 
     if maintainer_name is None:
-        if recipe_upstream_history_first:
-            recipes_not_upgraded = \
-                Raw.get_reup_by_date(recipe_upstream_history_first.id)
-            if recipes_not_upgraded:
-                recipes_upgraded = \
-                    Raw.get_reupg_by_dates_and_recipes(
-                        milestone.start_date, milestone.end_date, recipes_not_upgraded)
-                milestone_statistics['all'] = \
-                    float(len(recipes_upgraded))/float(len(recipes_not_upgraded))
-            else:
-                milestone_statistics['all'] = 0
-        else:
-            milestone_statistics['all'] = 0
-
-        milestone_statistics['percentage'] = "%.0f" % \
-            (float(milestone_statistics['all']) * 100.0)
+        milestone_statistics['all'] = \
+            RecipeUpstream.get_all_recipes(recipe_upstream_history).count()
         milestone_statistics['up_to_date'] = \
             RecipeUpstream.get_recipes_up_to_date(recipe_upstream_history).count()
         milestone_statistics['not_updated'] = \
@@ -71,6 +57,39 @@ def _get_milestone_statistics(milestone, maintainer_name=None):
             RecipeUpstream.get_recipes_cant_be_updated(recipe_upstream_history).count()
         milestone_statistics['unknown'] = \
             RecipeUpstream.get_recipes_unknown(recipe_upstream_history).count()
+        milestone_statistics['percentage'] = 0
+        milestone_statistics['all_upgraded'] = 0
+        milestone_statistics['all_not_upgraded'] = 0
+        milestone_statistics['percentage_up_to_date'] = 0
+        milestone_statistics['percentage_not_updated'] = 0
+        milestone_statistics['percentage_cant_be_updated'] = 0
+        milestone_statistics['percentage_unknown'] = 0
+
+        if recipe_upstream_history_first:
+            recipes_not_upgraded = \
+                Raw.get_reup_by_date(recipe_upstream_history_first.id)
+            if recipes_not_upgraded:
+                recipes_upgraded = \
+                    Raw.get_reupg_by_dates_and_recipes(
+                        milestone.start_date, milestone.end_date, recipes_not_upgraded)
+                milestone_statistics['percentage'] = "%.0f" % \
+                    ((float(len(recipes_upgraded)) * 100.0)
+                    /float(len(recipes_not_upgraded)))
+                milestone_statistics['all_upgraded'] = len(recipes_upgraded)
+                milestone_statistics['all_not_upgraded'] = len(recipes_not_upgraded)
+                milestone_statistics['percentage_up_to_date'] = "%.0f" % \
+                    (float(milestone_statistics['up_to_date']) * 100.0 \
+                    /float(milestone_statistics['all']))
+                milestone_statistics['percentage_not_updated'] = "%.0f" % \
+                    (float(milestone_statistics['not_updated']) * 100.0 \
+                    /float(milestone_statistics['all']))
+                milestone_statistics['percentage_cant_be_updated'] = "%.0f" % \
+                    (float(milestone_statistics['cant_be_updated']) * 100.0 \
+                    /float(milestone_statistics['all']))
+                milestone_statistics['percentage_unknown'] = "%.0f" % \
+                    (float(milestone_statistics['unknown']) * 100.0
+                    /float(milestone_statistics['all']))
+
     else:
         recipe_maintainer_history = Raw.get_remahi_by_end_date(
                 milestone.end_date)
@@ -259,10 +278,20 @@ class RecipeListView(ListView):
         context['all_milestones'] = Milestone.get_by_release_name(self.release_name)
 
         context['recipes_percentage'] = self.milestone_statistics['percentage']
+        context['recipes_all_upgraded'] = self.milestone_statistics['all_upgraded']
+        context['recipes_all_not_upgraded'] = self.milestone_statistics['all_not_upgraded']
         context['recipes_up_to_date'] = self.milestone_statistics['up_to_date']
         context['recipes_not_updated'] = self.milestone_statistics['not_updated']
         context['recipes_cant_be_updated'] = self.milestone_statistics['cant_be_updated']
         context['recipes_unknown'] = self.milestone_statistics['unknown']
+        context['recipes_percentage_up_to_date'] = \
+            self.milestone_statistics['percentage_up_to_date']
+        context['recipes_percentage_not_updated'] = \
+            self.milestone_statistics['percentage_not_updated']
+        context['recipes_percentage_cant_be_updated'] = \
+            self.milestone_statistics['percentage_cant_be_updated']
+        context['recipes_percentage_unknown'] = \
+            self.milestone_statistics['percentage_unknown']
 
         context['recipe_list_count'] = self.recipe_list_count
 
@@ -519,10 +548,20 @@ class MaintainerListView(ListView):
         context['all_milestones'] = Milestone.get_by_release_name(self.release_name)
 
         context['recipes_percentage'] = self.milestone_statistics['percentage']
+        context['recipes_all_upgraded'] = self.milestone_statistics['all_upgraded']
+        context['recipes_all_not_upgraded'] = self.milestone_statistics['all_not_upgraded']
         context['recipes_up_to_date'] = self.milestone_statistics['up_to_date']
         context['recipes_not_updated'] = self.milestone_statistics['not_updated']
         context['recipes_cant_be_updated'] = self.milestone_statistics['cant_be_updated']
         context['recipes_unknown'] = self.milestone_statistics['unknown']
+        context['recipes_percentage_up_to_date'] = \
+            self.milestone_statistics['percentage_up_to_date']
+        context['recipes_percentage_not_updated'] = \
+            self.milestone_statistics['percentage_not_updated']
+        context['recipes_percentage_cant_be_updated'] = \
+            self.milestone_statistics['percentage_cant_be_updated']
+        context['recipes_percentage_unknown'] = \
+            self.milestone_statistics['percentage_unknown']
 
         context['maintainer_count'] = self.maintainer_count
         context['intervals'] = self.intervals
-- 
1.9.1


