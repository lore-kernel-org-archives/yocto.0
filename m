Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66CE8E009D9; Thu,  9 Jul 2015 12:46:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E016E009D9
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 12:46:48 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Jul 2015 12:46:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,441,1432623600"; d="scan'208";a="761468065"
Received: from mlopezva-mobl2.zpn.intel.com ([10.219.24.79])
	by orsmga002.jf.intel.com with ESMTP; 09 Jul 2015 12:46:47 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Jul 2015 14:46:36 -0500
Message-Id: <1436471196-10909-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [rrs][PATCHv2 2/3] views.py: Changed the behavior of percentage done
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
X-List-Received-Date: Thu, 09 Jul 2015 19:46:52 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

This changes the percetage done from recipes up to date
in the period to percentage of not updated recipes that
were updated in the period.

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 rrs/views.py | 36 +++++++++++++++++++++++++++---------
 1 file changed, 27 insertions(+), 9 deletions(-)

diff --git a/rrs/views.py b/rrs/views.py
index fc43d7d..7fd2e8f 100644
--- a/rrs/views.py
+++ b/rrs/views.py
@@ -40,10 +40,29 @@ def _get_milestone_statistics(milestone, maintainer_name=None):
         milestone.start_date,
         milestone.end_date
     )
+    recipe_upstream_history_first = \
+        RecipeUpstreamHistory.get_first_by_date_range(
+            milestone.start_date,
+            milestone.end_date,
+    )
 
     if maintainer_name is None:
-        milestone_statistics['all'] = \
-            RecipeUpstream.get_all_recipes(recipe_upstream_history).count()
+        if recipe_upstream_history_first:
+            recipes_not_upgraded = \
+                Raw.get_reup_by_date(recipe_upstream_history_first.id)
+            if recipes_not_upgraded:
+                recipes_upgraded = \
+                    Raw.get_reupg_by_dates_and_recipes(
+                        milestone.start_date, milestone.end_date, recipes_not_upgraded)
+                milestone_statistics['all'] = \
+                    float(len(recipes_upgraded))/float(len(recipes_not_upgraded))
+            else:
+                milestone_statistics['all'] = 0
+        else:
+            milestone_statistics['all'] = 0
+
+        milestone_statistics['percentage'] = "%.0f" % \
+            (float(milestone_statistics['all']) * 100.0)
         milestone_statistics['up_to_date'] = \
             RecipeUpstream.get_recipes_up_to_date(recipe_upstream_history).count()
         milestone_statistics['not_updated'] = \
@@ -79,13 +98,12 @@ def _get_milestone_statistics(milestone, maintainer_name=None):
                     milestone_statistics['cant_be_updated'] += 1
             else:
                 milestone_statistics['unknown'] += 1
-
-    if milestone_statistics['all'] == 0:
-        milestone_statistics['percentage'] = 0
-    else:
-        milestone_statistics['percentage'] = "%.0f" % \
-            ((float(milestone_statistics['up_to_date']) /
-                float(milestone_statistics['all'])) * 100)
+        if milestone_statistics['all'] == 0:
+            milestone_statistics['percentage'] = '0'
+        else:
+            milestone_statistics['percentage'] = "%.0f" % \
+                ((float(milestone_statistics['up_to_date']) /
+                    float(milestone_statistics['all'])) * 100)
 
     return milestone_statistics
 
-- 
1.9.1


