Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0ACADE0096A; Fri, 26 Jun 2015 12:35:53 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BB74E006C6
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 12:35:49 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Jun 2015 12:35:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,686,1427785200"; d="scan'208";a="753894662"
Received: from mlopezva-mobl2.zpn.intel.com ([10.219.16.65])
	by orsmga002.jf.intel.com with ESMTP; 26 Jun 2015 12:35:48 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Fri, 26 Jun 2015 14:35:31 -0500
Message-Id: <1435347331-11932-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] views.py: Add how long a recipe hasn't been updated
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
X-List-Received-Date: Fri, 26 Jun 2015 19:35:53 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

This add a tooltip in the upstream status field that
show how long the recipe hasn't been updated.

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 rrs/models.py              | 15 +++++++++++++++
 rrs/views.py               | 23 ++++++++++++++++++++++-
 templates/rrs/recipes.html |  8 ++++----
 3 files changed, 41 insertions(+), 5 deletions(-)

diff --git a/rrs/models.py b/rrs/models.py
index 320670c..77e8442 100644
--- a/rrs/models.py
+++ b/rrs/models.py
@@ -448,6 +448,21 @@ class Raw():
         return Raw.dictfetchall(cur)
 
     @staticmethod
+    def get_reup_by_last_updated(date):
+        cur = connection.cursor()
+        cur.execute("""SELECT te.recipe_id, te.status, te.date, te.rownum FROM(
+                    SELECT  recipe_id, status, date, ROW_NUMBER() OVER(
+                        PARTITION BY recipe_id
+                        ORDER BY date DESC
+                    ) AS rownum
+                    FROM rrs_RecipeUpstream
+                    WHERE status = 'Y'
+                    AND date <= %s) AS te
+            WHERE te.rownum = 1;
+            """, [date])
+        return Raw.dictfetchall(cur)
+
+    @staticmethod
     def dictfetchall(cursor):
         "Returns all rows from a cursor as a dict"
         desc = cursor.description
diff --git a/rrs/views.py b/rrs/views.py
index ad741f6..b0a5935 100644
--- a/rrs/views.py
+++ b/rrs/views.py
@@ -3,7 +3,7 @@ import urllib
 import csv
 from django.http import HttpResponse
 
-from datetime import date
+from datetime import date, datetime
 from django.http import Http404
 from django.shortcuts import get_object_or_404
 from django.views.generic import ListView, DetailView
@@ -96,6 +96,7 @@ class RecipeList():
     summary = None
     upstream_status = None
     upstream_version = None
+    outdated = None
     maintainer_name = None
     no_update_reason = None
 
@@ -116,6 +117,7 @@ def _get_recipe_list(milestone):
     recipe_list = []
     recipes_ids = []
     recipe_upstream_dict_all = {}
+    recipe_last_updated_dict_all = {}
     maintainers_dict_all = {}
     current_date = date.today()
 
@@ -127,12 +129,17 @@ def _get_recipe_list(milestone):
     if recipe_upstream_history:
         recipe_upstream_all = Raw.get_reup_by_recipes_and_date(
                 recipes_ids, recipe_upstream_history.id)
+        recipe_last_updated = Raw.get_reup_by_last_updated(
+                milestone.end_date)
         maintainers_all = Raw.get_ma_by_recipes_and_date(
                 recipes_ids, recipe_maintainer_history[0])
         for reup in recipe_upstream_all:
             recipe_upstream_dict_all[reup['recipe_id']] = reup
+        for rela in recipe_last_updated:
+            recipe_last_updated_dict_all[rela['recipe_id']] = rela
         for ma in maintainers_all:
             maintainers_dict_all[ma['recipe_id']] = ma['name']
+
     else:
         recipe_upstream_all = None
 
@@ -140,6 +147,7 @@ def _get_recipe_list(milestone):
         upstream_version = ''
         upstream_status = ''
         no_update_reason = ''
+        outdated = ''
 
         if recipe_upstream_history:
             recipe_upstream = recipe_upstream_dict_all.get(recipe['id'])
@@ -167,11 +175,24 @@ def _get_recipe_list(milestone):
             upstream_version = recipe_upstream['version']
             no_update_reason = recipe_upstream['no_update_reason']
 
+            #Get how long the recipe hasn't been updated
+            if recipe_upstream['status'] != 'Y':
+                recipe_last_updated = \
+                    recipe_last_updated_dict_all.get(recipe['id'])
+                if recipe_last_updated:
+                    recipe_date = recipe_last_updated['date']
+                    outdated = (current_date - recipe_date.date()).days
+                else:
+                    outdated = 'Unknown'
+            else:
+                outdated = 'Up-to-date'
+
         maintainer_name =  maintainers_dict_all.get(recipe['id'], '')
         recipe_list_item = RecipeList(recipe['id'], recipe['pn'], recipe['summary'])
         recipe_list_item.version = recipe['version']
         recipe_list_item.upstream_status = upstream_status
         recipe_list_item.upstream_version = upstream_version
+        recipe_list_item.outdated = outdated
         recipe_list_item.maintainer_name = maintainer_name
         recipe_list_item.no_update_reason = no_update_reason
         recipe_list.append(recipe_list_item)
diff --git a/templates/rrs/recipes.html b/templates/rrs/recipes.html
index 493b7cf..ca3c93e 100644
--- a/templates/rrs/recipes.html
+++ b/templates/rrs/recipes.html
@@ -88,13 +88,13 @@
     <td class="version_column">{{ r.version }}</td>
     <td class="upstream_version_column">{{ r.upstream_version }}</td>
     {% if r.upstream_status == "Up-to-date" %}
-    <td class="text-success">
+    <td class="text-success" data-toggle="tooltip" title="{{r.outdated}}">
     {% elif r.upstream_status == "Not updated" %}
-    <td class="text-error">
+    <td class="text-error" data-toggle="tooltip" title="{{r.outdated}}">
     {% elif r.upstream_status == "Can't be updated" %}
-    <td class="muted">
+    <td class="muted" data-toggle="tooltip" title="{{r.outdated}}">
     {% else %}
-    <td class="text-warning">
+    <td class="text-warning" data-toggle="tooltip" title="{{r.outdated}}">
     {% endif %}
         {{ r.upstream_status }}
     </td>
-- 
1.9.1


