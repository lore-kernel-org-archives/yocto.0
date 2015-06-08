Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33EA2E0094C; Mon,  8 Jun 2015 13:36:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDF6AE00496
	for <yocto@yoctoproject.org>; Mon,  8 Jun 2015 13:36:20 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 08 Jun 2015 13:36:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,575,1427785200"; d="scan'208";a="584291869"
Received: from mlopezva-mobl2.zpn.intel.com ([10.219.16.36])
	by orsmga003.jf.intel.com with ESMTP; 08 Jun 2015 13:36:19 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Mon,  8 Jun 2015 15:35:45 -0500
Message-Id: <1433795746-13293-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
X-Mailman-Approved-At: Mon, 08 Jun 2015 13:48:24 -0700
Cc: Mariano Lopez <mariano.lopez@linux.intel.com>
Subject: [rrs][PATCH 1/2] rrs/models.py: Added raw SQL calls
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
X-List-Received-Date: Mon, 08 Jun 2015 20:36:27 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

The raw calls are going to be used instead of Django's ORM.
This improves the performance of the webpage.

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 rrs/models.py | 102 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 102 insertions(+)

diff --git a/rrs/models.py b/rrs/models.py
index c909daf..320670c 100644
--- a/rrs/models.py
+++ b/rrs/models.py
@@ -12,6 +12,7 @@ sys.path.insert(0, os.path.realpath(os.path.join(os.path.dirname(__file__), '../
 from datetime import date
 
 from django.db import models
+from django.db import connection
 from django.db.models.query import Q
 from layerindex.models import Recipe
 
@@ -353,3 +354,104 @@ class RecipeUpgrade(models.Model):
     def __unicode__(self):
         return '%s: (%s, %s)' % (self.recipe.pn, self.version,
                         self.commit_date)
+
+class Raw():
+
+    @staticmethod
+    def get_remahi_by_end_date(date):
+        cur = connection.cursor()
+
+        cur.execute("""SELECT id
+                FROM rrs_RecipeMaintainerHistory
+                WHERE date <= %s
+                ORDER BY date DESC
+                LIMIT 1;
+                """, [str(date)])
+
+        ret = cur.fetchone()
+
+        if not ret:
+            cur.execute("""SELECT id
+                FROM rrs_RecipeMaintainerHistory
+                ORDER BY date
+                LIMIT 1;""")
+            ret = cur.fetchone()
+
+        return ret
+
+    @staticmethod
+    def get_re_by_mantainer_and_date(maintainer, date_id):
+        recipes = []
+        cur = connection.cursor()
+
+        cur.execute("""SELECT DISTINCT rema.recipe_id
+                FROM rrs_RecipeMaintainer as rema
+                INNER JOIN rrs_maintainer AS ma
+                ON rema.maintainer_id = ma.id
+                WHERE rema.history_id = %s AND ma.name = %s;
+                """, [date_id, maintainer])
+
+        for re in cur.fetchall():
+            recipes.append(re[0])
+        return recipes
+
+    @staticmethod
+    def get_reup_by_recipes_and_date(recipes_id, date_id=None):
+        stats = []
+        recipes = str(recipes_id).strip('[]')
+
+        if date_id:
+            qry = """SELECT recipe_id, status, no_update_reason, version
+                    FROM rrs_RecipeUpstream"""
+            qry += "\nWHERE history_id = '%s' AND" % str(date_id)
+            qry += "\nrecipe_id IN (%s)\n" % recipes
+            cur = connection.cursor()
+            cur.execute(qry)
+            stats = Raw.dictfetchall(cur)
+
+        return stats
+
+    @staticmethod
+    def get_ma_by_recipes_and_date(recipes_id, date_id=None):
+        stats = []
+        recipes = str(recipes_id).strip('[]')
+
+        if date_id:
+            qry = """SELECT rema.recipe_id, ma.name
+                    FROM rrs_RecipeMaintainer AS rema
+                    INNER JOIN rrs_Maintainer AS ma
+                    ON rema.maintainer_id = ma.id"""
+            qry += "\nWHERE rema.history_id = '%s' AND" % str(date_id)
+            qry += "\nrema.recipe_id IN (%s)\n" % recipes
+            cur = connection.cursor()
+            cur.execute(qry)
+            stats = Raw.dictfetchall(cur)
+
+        return stats
+
+    @staticmethod
+    def get_reupg_by_date(date):
+        cur = connection.cursor()
+        cur.execute("""SELECT re.id, re.pn, re.summary, te.version, rownum FROM (
+                    SELECT recipe_id, version, commit_date,
+                    ROW_NUMBER() OVER(
+                        PARTITION BY recipe_id
+                        ORDER BY commit_date DESC
+                    ) AS rownum
+                    FROM rrs_RecipeUpgrade
+                    WHERE commit_date <= %s) AS te
+                INNER JOIN layerindex_Recipe AS re
+                ON te.recipe_id = re.id
+                WHERE rownum = 1
+                ORDER BY re.pn;
+                """, [date])
+        return Raw.dictfetchall(cur)
+
+    @staticmethod
+    def dictfetchall(cursor):
+        "Returns all rows from a cursor as a dict"
+        desc = cursor.description
+        return [
+            dict(zip([col[0] for col in desc], row))
+            for row in cursor.fetchall()
+        ]
-- 
1.9.1


