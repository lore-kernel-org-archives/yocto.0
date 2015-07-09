Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FDDDE00A49; Thu,  9 Jul 2015 14:47:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 890E7E009D9
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 14:47:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 09 Jul 2015 14:47:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,442,1432623600"; d="scan'208";a="726007931"
Received: from mlopezva-mobl2.zpn.intel.com ([10.219.24.79])
	by orsmga001.jf.intel.com with ESMTP; 09 Jul 2015 14:47:49 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Jul 2015 16:47:47 -0500
Message-Id: <1436478467-23222-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] models.py: Code cleanup
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
X-List-Received-Date: Thu, 09 Jul 2015 21:47:58 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

Cleaned up the class Raw to have better readability.
Also added docstring to methods in this class.

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 rrs/models.py | 176 +++++++++++++++++++++++++++++++++-------------------------
 1 file changed, 99 insertions(+), 77 deletions(-)

diff --git a/rrs/models.py b/rrs/models.py
index 1ce63df..2631cce 100644
--- a/rrs/models.py
+++ b/rrs/models.py
@@ -371,55 +371,57 @@ class RecipeUpgrade(models.Model):
                         self.commit_date)
 
 class Raw():
+    """ Raw SQL call to improve performance
+
+        Table abbrevations:
+        re:     Recipe
+        ma:     Maintainer
+        reup:   Recipe Upstream
+        reupg:  Recipe Ugrade
+        rema:   Recipe Maintainer
+        remahi: Recipe Maintainer History
+    """
 
     @staticmethod
-    def get_remahi_by_end_date(date):
+    def get_re_all():
+        """ Get all Recipes """
         cur = connection.cursor()
-
-        cur.execute("""SELECT id
-                FROM rrs_RecipeMaintainerHistory
-                WHERE date <= %s
-                ORDER BY date DESC
-                LIMIT 1;
-                """, [str(date)])
-
-        ret = cur.fetchone()
-
-        if not ret:
-            cur.execute("""SELECT id
-                FROM rrs_RecipeMaintainerHistory
-                ORDER BY date
-                LIMIT 1;""")
-            ret = cur.fetchone()
-
-        return ret
+        cur.execute("""SELECT id, pn, pv, summary
+                        FROM layerindex_Recipe;
+                    """)
+        return Raw.dictfetchall(cur)
 
     @staticmethod
     def get_re_by_mantainer_and_date(maintainer, date_id):
+        """ Get Recipes based on Maintainer and Recipe Maintainer History """
         recipes = []
         cur = connection.cursor()
 
         cur.execute("""SELECT DISTINCT rema.recipe_id
-                FROM rrs_RecipeMaintainer as rema
-                INNER JOIN rrs_maintainer AS ma
-                ON rema.maintainer_id = ma.id
-                WHERE rema.history_id = %s AND ma.name = %s;
-                """, [date_id, maintainer])
+                        FROM rrs_RecipeMaintainer AS rema
+                        INNER JOIN rrs_maintainer AS ma
+                        ON rema.maintainer_id = ma.id
+                        WHERE rema.history_id = %s 
+                        AND ma.name = %s;
+                    """, [date_id, maintainer])
 
         for re in cur.fetchall():
             recipes.append(re[0])
         return recipes
 
     @staticmethod
-    def get_reup_by_recipes_and_date(recipes_id, date_id=None):
+    def get_ma_by_recipes_and_date(recipes_id, date_id=None):
+        """ Get Maintainer based on Recipes and Recipe Upstream History """
         stats = []
         recipes = str(recipes_id).strip('[]')
 
         if date_id:
-            qry = """SELECT recipe_id, status, no_update_reason, version
-                    FROM rrs_RecipeUpstream"""
-            qry += "\nWHERE history_id = '%s' AND" % str(date_id)
-            qry += "\nrecipe_id IN (%s)\n" % recipes
+            qry = """SELECT rema.recipe_id, ma.name
+                    FROM rrs_RecipeMaintainer AS rema
+                    INNER JOIN rrs_Maintainer AS ma
+                    ON rema.maintainer_id = ma.id"""
+            qry += "\nWHERE rema.history_id = '%s'" % str(date_id)
+            qry += "\nAND rema.recipe_id IN (%s);" % recipes
             cur = connection.cursor()
             cur.execute(qry)
             stats = Raw.dictfetchall(cur)
@@ -427,17 +429,16 @@ class Raw():
         return stats
 
     @staticmethod
-    def get_ma_by_recipes_and_date(recipes_id, date_id=None):
+    def get_reup_by_recipes_and_date(recipes_id, date_id=None):
+        """ Get Recipe Upstream based on Recipes and Recipe Upstream History """
         stats = []
         recipes = str(recipes_id).strip('[]')
 
         if date_id:
-            qry = """SELECT rema.recipe_id, ma.name
-                    FROM rrs_RecipeMaintainer AS rema
-                    INNER JOIN rrs_Maintainer AS ma
-                    ON rema.maintainer_id = ma.id"""
-            qry += "\nWHERE rema.history_id = '%s' AND" % str(date_id)
-            qry += "\nrema.recipe_id IN (%s)\n" % recipes
+            qry = """SELECT recipe_id, status, no_update_reason, version
+                    FROM rrs_RecipeUpstream"""
+            qry += "\nWHERE history_id = '%s'" % str(date_id)
+            qry += "\nAND recipe_id IN (%s);" % recipes
             cur = connection.cursor()
             cur.execute(qry)
             stats = Raw.dictfetchall(cur)
@@ -445,68 +446,65 @@ class Raw():
         return stats
 
     @staticmethod
-    def get_re_all():
-        cur = connection.cursor()
-        cur.execute("""SELECT id, pn, pv, summary
-                FROM layerindex_recipe""")
-        return Raw.dictfetchall(cur)
-
-    @staticmethod
-    def get_reupg_by_date(date):
-        cur = connection.cursor()
-        cur.execute("""SELECT re.id, re.pn, re.summary, te.version, rownum FROM (
-                    SELECT recipe_id, version, commit_date,
-                    ROW_NUMBER() OVER(
-                        PARTITION BY recipe_id
-                        ORDER BY commit_date DESC
-                    ) AS rownum
-                    FROM rrs_RecipeUpgrade
-                    WHERE commit_date <= %s) AS te
-                INNER JOIN layerindex_Recipe AS re
-                ON te.recipe_id = re.id
-                WHERE rownum = 1
-                ORDER BY re.pn;
-                """, [date])
-        return Raw.dictfetchall(cur)
-
-    @staticmethod
     def get_reup_by_last_updated(date):
+        """ Get last time the Recipes were upgraded """
         cur = connection.cursor()
         cur.execute("""SELECT te.recipe_id, te.status, te.date, te.rownum FROM(
-                    SELECT  recipe_id, status, date, ROW_NUMBER() OVER(
-                        PARTITION BY recipe_id
-                        ORDER BY date DESC
-                    ) AS rownum
-                    FROM rrs_RecipeUpstream
-                    WHERE status = 'Y'
-                    AND date <= %s) AS te
-            WHERE te.rownum = 1;
-            """, [date])
+                            SELECT recipe_id, status, date, ROW_NUMBER() OVER(
+                                PARTITION BY recipe_id
+                                ORDER BY date DESC
+                            ) AS rownum
+                        FROM rrs_RecipeUpstream
+                        WHERE status = 'Y'
+                        AND date <= %s) AS te
+                        WHERE te.rownum = 1;
+                    """, [date])
         return Raw.dictfetchall(cur)
 
     @staticmethod
     def get_reup_by_date(date_id):
+        """ Get Recipes not up to date based on Recipe Upstream History """
         cur = connection.cursor()
         cur.execute("""SELECT DISTINCT recipe_id
-                    FROM rrs_RecipeUpstream
-                    WHERE status = 'N'
-                    AND history_id = %s
+                        FROM rrs_RecipeUpstream
+                        WHERE status = 'N'
+                        AND history_id = %s
                     """, [date_id])
         return [i[0] for i in cur.fetchall()]
 
     @staticmethod
+    def get_reupg_by_date(date):
+        """ Get info for Recipes for the milestone """
+        cur = connection.cursor()
+        cur.execute("""SELECT re.id, re.pn, re.summary, te.version, rownum FROM (
+                            SELECT recipe_id, version, commit_date, ROW_NUMBER() OVER(
+                                PARTITION BY recipe_id
+                                ORDER BY commit_date DESC
+                            ) AS rownum
+                        FROM rrs_RecipeUpgrade
+                        WHERE commit_date <= %s) AS te
+                        INNER JOIN layerindex_Recipe AS re
+                        ON te.recipe_id = re.id
+                        WHERE rownum = 1
+                        ORDER BY re.pn;
+                        """, [date])
+        return Raw.dictfetchall(cur)
+
+    @staticmethod
     def get_reupg_by_dates(start_date, end_date):
+        """ Get Recipe Upgrade for the milestone """
         cur = connection.cursor()
         cur.execute("""SELECT id, recipe_id, maintainer_id, author_date, commit_date
-                    FROM rrs_recipeupgrade
-                    WHERE commit_date >= %s
-                    AND commit_date <= %s
-                    ORDER BY commit_date DESC;
+                        FROM rrs_RecipeUpgrade
+                        WHERE commit_date >= %s
+                        AND commit_date <= %s
+                        ORDER BY commit_date DESC;
                     """, [start_date, end_date])
         return Raw.dictfetchall(cur)
 
     @staticmethod
     def get_reupg_by_dates_and_recipes(start_date, end_date, recipes_id):
+        """  Get Recipe Upgrade for the milestone based on Recipes """
         recipes = str(recipes_id).strip('[]')
 
         cur = connection.cursor()
@@ -519,6 +517,30 @@ class Raw():
         return Raw.dictfetchall(cur)
 
     @staticmethod
+    def get_remahi_by_end_date(date):
+        """ Get the latest Recipe Maintainer History for the milestone """
+        cur = connection.cursor()
+
+        cur.execute("""SELECT id
+                        FROM rrs_RecipeMaintainerHistory
+                        WHERE date <= %s
+                        ORDER BY date DESC
+                        LIMIT 1;
+                    """, [str(date)])
+
+        ret = cur.fetchone()
+
+        if not ret:
+            cur.execute("""SELECT id
+                        FROM rrs_RecipeMaintainerHistory
+                        ORDER BY date
+                        LIMIT 1;
+                        """)
+            ret = cur.fetchone()
+
+        return ret
+
+    @staticmethod
     def dictfetchall(cursor):
         "Returns all rows from a cursor as a dict"
         desc = cursor.description
-- 
1.9.1


