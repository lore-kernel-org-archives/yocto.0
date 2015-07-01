Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A4D8E00A96; Wed,  1 Jul 2015 12:08:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A0BBE009D2
	for <yocto@yoctoproject.org>; Wed,  1 Jul 2015 12:08:41 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 01 Jul 2015 12:08:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,388,1432623600"; d="scan'208";a="517384077"
Received: from mlopezva-mobl2.zpn.intel.com ([10.219.16.59])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Jul 2015 12:08:11 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Wed,  1 Jul 2015 14:08:09 -0500
Message-Id: <1435777689-9773-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] views.py: Fix version in current milestone
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
X-List-Received-Date: Wed, 01 Jul 2015 19:08:44 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

Fixed the version displayed in current milestone.
Before the data was obtained from recipe upgrad table
and this allows to fetch the data from the recipe table.

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 rrs/models.py |  7 +++++++
 rrs/views.py  | 16 ++++++++++++----
 2 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/rrs/models.py b/rrs/models.py
index 320670c..f0d4ed3 100644
--- a/rrs/models.py
+++ b/rrs/models.py
@@ -430,6 +430,13 @@ class Raw():
         return stats
 
     @staticmethod
+    def get_re_all():
+        cur = connection.cursor()
+        cur.execute("""SELECT id, pn, pv, summary
+                FROM layerindex_recipe""")
+        return Raw.dictfetchall(cur)
+
+    @staticmethod
     def get_reupg_by_date(date):
         cur = connection.cursor()
         cur.execute("""SELECT re.id, re.pn, re.summary, te.version, rownum FROM (
diff --git a/rrs/views.py b/rrs/views.py
index e2aa1ce..4a1e9bb 100644
--- a/rrs/views.py
+++ b/rrs/views.py
@@ -119,10 +119,18 @@ def _get_recipe_list(milestone):
     maintainers_dict_all = {}
     current_date = date.today()
 
-    recipes = Raw.get_reupg_by_date(
-            milestone.end_date)
-    for recipe in recipes:
-        recipes_ids.append(recipe['id'])
+    # If the is the curent milestone take the data recipes table
+    # otherwise take it from recipe upgrade
+    if current_date >= milestone.start_date and \
+            current_date <= milestone.end_date:
+        recipes = Raw.get_re_all()
+    else:
+        recipes = Raw.get_reupg_by_date(milestone.end_date)
+
+    for i,re in enumerate(recipes):
+        if re.has_key('pv'):
+            recipes[i]['version'] = re['pv']
+        recipes_ids.append(re['id'])
 
     if recipe_upstream_history:
         recipe_upstream_all = Raw.get_reup_by_recipes_and_date(
-- 
1.9.1


