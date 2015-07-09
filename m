Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A9F0E00A70; Thu,  9 Jul 2015 08:39:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95839E00A45
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 08:39:27 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 09 Jul 2015 08:39:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,440,1432623600"; d="scan'208";a="761326797"
Received: from mlopezva-mobl2.zpn.intel.com ([10.219.24.79])
	by orsmga002.jf.intel.com with ESMTP; 09 Jul 2015 08:39:27 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Jul 2015 10:39:13 -0500
Message-Id: <1436456354-6416-3-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1436456354-6416-1-git-send-email-mariano.lopez@linux.intel.com>
References: <1436456354-6416-1-git-send-email-mariano.lopez@linux.intel.com>
Subject: [rrs][PATCH 2/3] views.py: Changed the behavior of percentage done
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
X-List-Received-Date: Thu, 09 Jul 2015 15:39:29 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

This changes the percetage done from recipes up to date
in the period to percentage of not updated recipes that
were updated in the period.

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 rrs/views.py | 33 ++++++++++++++++++++++++---------
 1 file changed, 24 insertions(+), 9 deletions(-)

diff --git a/rrs/views.py b/rrs/views.py
index fc43d7d..8716753 100644
--- a/rrs/views.py
+++ b/rrs/views.py
@@ -40,10 +40,26 @@ def _get_milestone_statistics(milestone, maintainer_name=None):
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
+            recipes_upgraded = \
+                Raw.get_reupg_by_dates_and_recipes(
+                    milestone.start_date, milestone.end_date, recipes_not_upgraded)
+            milestone_statistics['all'] = \
+                float(len(recipes_upgraded))/float(len(recipes_not_upgraded))
+        else:
+            milestone_statistics['all'] = 0
+
+        milestone_statistics['percentage'] = "%.0f" % \
+            (float(milestone_statistics['all']) * 100.0)
         milestone_statistics['up_to_date'] = \
             RecipeUpstream.get_recipes_up_to_date(recipe_upstream_history).count()
         milestone_statistics['not_updated'] = \
@@ -79,13 +95,12 @@ def _get_milestone_statistics(milestone, maintainer_name=None):
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


