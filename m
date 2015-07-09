Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5BB0E009D9; Thu,  9 Jul 2015 08:39:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7427FE009B8
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 08:39:25 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 09 Jul 2015 08:39:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,440,1432623600"; d="scan'208";a="761326794"
Received: from mlopezva-mobl2.zpn.intel.com ([10.219.24.79])
	by orsmga002.jf.intel.com with ESMTP; 09 Jul 2015 08:39:24 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Jul 2015 10:39:12 -0500
Message-Id: <1436456354-6416-2-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1436456354-6416-1-git-send-email-mariano.lopez@linux.intel.com>
References: <1436456354-6416-1-git-send-email-mariano.lopez@linux.intel.com>
Subject: [rrs][PATCH 1/3] models.py: Added Raw SQL for percentage updated
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
X-List-Received-Date: Thu, 09 Jul 2015 15:39:25 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

This adds SQL queries that will be used for the
percentage of recipes updated in a period.

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 rrs/models.py | 44 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/rrs/models.py b/rrs/models.py
index 4608f9f..1ce63df 100644
--- a/rrs/models.py
+++ b/rrs/models.py
@@ -235,6 +235,16 @@ class RecipeUpstreamHistory(models.Model):
             return None
 
     @staticmethod
+    def get_first_by_date_range(start, end):
+        history = RecipeUpstreamHistory.objects.filter(start_date__gte = start,
+                start_date__lte = end).order_by('start_date')
+
+        if history:
+            return history[0]
+        else:
+            return None
+
+    @staticmethod
     def get_last():
         history = RecipeUpstreamHistory.objects.filter().order_by('-start_date')
 
@@ -475,6 +485,40 @@ class Raw():
         return Raw.dictfetchall(cur)
 
     @staticmethod
+    def get_reup_by_date(date_id):
+        cur = connection.cursor()
+        cur.execute("""SELECT DISTINCT recipe_id
+                    FROM rrs_RecipeUpstream
+                    WHERE status = 'N'
+                    AND history_id = %s
+                    """, [date_id])
+        return [i[0] for i in cur.fetchall()]
+
+    @staticmethod
+    def get_reupg_by_dates(start_date, end_date):
+        cur = connection.cursor()
+        cur.execute("""SELECT id, recipe_id, maintainer_id, author_date, commit_date
+                    FROM rrs_recipeupgrade
+                    WHERE commit_date >= %s
+                    AND commit_date <= %s
+                    ORDER BY commit_date DESC;
+                    """, [start_date, end_date])
+        return Raw.dictfetchall(cur)
+
+    @staticmethod
+    def get_reupg_by_dates_and_recipes(start_date, end_date, recipes_id):
+        recipes = str(recipes_id).strip('[]')
+
+        cur = connection.cursor()
+        qry = """SELECT DISTINCT recipe_id
+                FROM rrs_RecipeUpgrade"""
+        qry += "\nWHERE commit_date >= '%s'" % str(start_date)
+        qry += "\nAND commit_date <= '%s'" % str(end_date)
+        qry += "\nAND recipe_id IN (%s);" % recipes
+        cur.execute(qry)
+        return Raw.dictfetchall(cur)
+
+    @staticmethod
     def dictfetchall(cursor):
         "Returns all rows from a cursor as a dict"
         desc = cursor.description
-- 
1.9.1


