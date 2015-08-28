Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BD55E00C0F; Fri, 28 Aug 2015 09:48:18 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55B0BE00AF6
	for <yocto@yoctoproject.org>; Fri, 28 Aug 2015 09:48:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 28 Aug 2015 09:47:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,425,1437462000"; d="scan'208";a="792954952"
Received: from cbshires-mobl1.amr.corp.intel.com (HELO
	mlopezva-MOBL2.amr.corp.intel.com) ([10.252.129.15])
	by fmsmga002.fm.intel.com with ESMTP; 28 Aug 2015 09:47:45 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Fri, 28 Aug 2015 11:47:41 -0500
Message-Id: <1440780461-8378-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [rrs][PATCH] rrs/views: Fix mismatch in summary and recipe list
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
X-List-Received-Date: Fri, 28 Aug 2015 16:48:18 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

This fixes the issue with the mismatch in the
statistics bar and the recipe list. The mismatch
is caused by the gcc-source recipe, because every
version of the recipe is counted in Upstream History
but not in Recipe Upgrade.

Also added the TODO.rrs to track bugs and issues with
rrs.

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 TODO.rrs      |  4 ++++
 rrs/models.py | 35 +++++++++++++++++++++++++++++++++++
 rrs/views.py  | 16 +++++++---------
 3 files changed, 46 insertions(+), 9 deletions(-)
 create mode 100644 TODO.rrs

diff --git a/TODO.rrs b/TODO.rrs
new file mode 100644
index 0000000..8f1acf9
--- /dev/null
+++ b/TODO.rrs
@@ -0,0 +1,4 @@
+TODO:
+
+Bugs:
+  - gcc-source recipe has his own recipes per version. This is triggered in gcc-source.inc
diff --git a/rrs/models.py b/rrs/models.py
index abc9d5b..186e56f 100644
--- a/rrs/models.py
+++ b/rrs/models.py
@@ -429,6 +429,41 @@ class Raw():
         return stats
 
     @staticmethod
+    def get_reup_statistics(date, date_id):
+        """ Special case to get recipes statistics removing gcc-source duplicates """
+        recipes = []
+        updated = 0
+        not_updated = 0
+        cant = 0
+        unknown = 0
+
+        all_recipes = Raw.get_reupg_by_date(date)
+        for re in all_recipes:
+            recipes.append(re["id"])
+
+        if date_id:
+            recipes = str(recipes).strip('[]')
+            qry = """SELECT id, status, no_update_reason
+                    FROM rrs_RecipeUpstream"""
+            qry += "\nWHERE history_id = '%s'" % str(date_id.id)
+            qry += "\nAND recipe_id IN (%s);" % recipes
+            cur = connection.cursor()
+            cur.execute(qry)
+
+            for re in Raw.dictfetchall(cur):
+                if re["status"] == "Y":
+                    updated += 1
+                elif re["status"]  == "N" and re["no_update_reason"] == "":
+                    not_updated += 1
+                elif re["status"] == "N":
+                    cant += 1
+                # We count downgrade as unknown
+                else:
+                    unknown += 1
+
+        return (updated, not_updated, cant, unknown)
+
+    @staticmethod
     def get_reup_by_recipes_and_date(recipes_id, date_id=None):
         """ Get Recipe Upstream based on Recipes and Recipe Upstream History """
         stats = []
diff --git a/rrs/views.py b/rrs/views.py
index 01f14f5..8cbbe49 100644
--- a/rrs/views.py
+++ b/rrs/views.py
@@ -47,16 +47,14 @@ def _get_milestone_statistics(milestone, maintainer_name=None):
     )
 
     if maintainer_name is None:
+        t_updated, t_not_updated, t_cant, t_unknown = \
+            Raw.get_reup_statistics(milestone.end_date, recipe_upstream_history)
         milestone_statistics['all'] = \
-            RecipeUpstream.get_all_recipes(recipe_upstream_history).count()
-        milestone_statistics['up_to_date'] = \
-            RecipeUpstream.get_recipes_up_to_date(recipe_upstream_history).count()
-        milestone_statistics['not_updated'] = \
-            RecipeUpstream.get_recipes_not_updated(recipe_upstream_history).count()
-        milestone_statistics['cant_be_updated'] = \
-            RecipeUpstream.get_recipes_cant_be_updated(recipe_upstream_history).count()
-        milestone_statistics['unknown'] = \
-            RecipeUpstream.get_recipes_unknown(recipe_upstream_history).count()
+            t_updated + t_not_updated + t_cant + t_unknown
+        milestone_statistics['up_to_date'] = t_updated
+        milestone_statistics['not_updated'] = t_not_updated
+        milestone_statistics['cant_be_updated'] = t_cant
+        milestone_statistics['unknown'] = t_unknown
         milestone_statistics['percentage'] = 0
         milestone_statistics['all_upgraded'] = 0
         milestone_statistics['all_not_upgraded'] = 0
-- 
1.9.1


