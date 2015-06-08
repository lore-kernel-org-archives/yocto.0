Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 412BAE00945; Mon,  8 Jun 2015 13:36:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11871E005B9
	for <yocto@yoctoproject.org>; Mon,  8 Jun 2015 13:36:25 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 08 Jun 2015 13:36:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,575,1427785200"; d="scan'208";a="584291933"
Received: from mlopezva-mobl2.zpn.intel.com ([10.219.16.36])
	by orsmga003.jf.intel.com with ESMTP; 08 Jun 2015 13:36:23 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Mon,  8 Jun 2015 15:35:46 -0500
Message-Id: <1433795746-13293-2-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1433795746-13293-1-git-send-email-mariano.lopez@linux.intel.com>
References: <1433795746-13293-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailman-Approved-At: Mon, 08 Jun 2015 13:48:24 -0700
Cc: Mariano Lopez <mariano.lopez@linux.intel.com>
Subject: [rrs][PATCH 2/2] rrs/views.py: Changed ORM to raw SQL calls
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

Allow to use the new raw SQL call to get better performance in the
web page. Also removed SQL queries inside loops.
This is only for two views: recipes and maintainers

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 rrs/views.py | 118 ++++++++++++++++++++++++++++++-----------------------------
 1 file changed, 61 insertions(+), 57 deletions(-)

diff --git a/rrs/views.py b/rrs/views.py
index c90fb37..ad741f6 100644
--- a/rrs/views.py
+++ b/rrs/views.py
@@ -12,7 +12,7 @@ from django.core.urlresolvers import resolve
 from layerindex.models import Recipe
 from rrs.models import Release, Milestone, Maintainer, RecipeMaintainerHistory, \
         RecipeMaintainer, RecipeUpstreamHistory, RecipeUpstream, \
-        RecipeDistro, RecipeUpgrade
+        RecipeDistro, RecipeUpgrade, Raw
 
 def _check_url_params(upstream_status, maintainer_name):
     get_object_or_404(Maintainer, name=maintainer_name)
@@ -53,28 +53,27 @@ def _get_milestone_statistics(milestone, maintainer_name=None):
         milestone_statistics['unknown'] = \
             RecipeUpstream.get_recipes_unknown(recipe_upstream_history).count()
     else:
-        recipe_maintainer_history = RecipeMaintainerHistory.get_by_end_date(
-            milestone.end_date)
-        recipe_maintainer_all = RecipeMaintainer.objects.filter(history = recipe_maintainer_history,
-            maintainer__name = maintainer_name)
+        recipe_maintainer_history = Raw.get_remahi_by_end_date(
+                milestone.end_date)
+        recipe_maintainer_all = Raw.get_re_by_mantainer_and_date(
+                maintainer_name, recipe_maintainer_history[0])
         milestone_statistics['all'] = len(recipe_maintainer_all)
-
-        recipe_upstream_all = []
-        for rm in recipe_maintainer_all:
-            ru_qry = RecipeUpstream.objects.filter(recipe = rm.recipe, history =
-                        recipe_upstream_history)
-            if ru_qry:
-                recipe_upstream_all.append(ru_qry[0])
+        if recipe_upstream_history:
+            recipe_upstream_all = Raw.get_reup_by_recipes_and_date(
+                    recipe_maintainer_all, recipe_upstream_history.id)
+        else:
+            recipe_upstream_all = Raw.get_reup_by_recipes_and_date(
+                    recipe_maintainer_all)
 
         milestone_statistics['up_to_date'] = 0
         milestone_statistics['not_updated'] = 0
         milestone_statistics['cant_be_updated'] = 0
         milestone_statistics['unknown'] = 0
         for ru in recipe_upstream_all:
-            if ru.status == 'Y':
+            if ru['status'] == 'Y':
                 milestone_statistics['up_to_date'] += 1
-            elif ru.status == 'N':
-                if ru.no_update_reason == '':
+            elif ru['status'] == 'N':
+                if ru['no_update_reason'] == '':
                     milestone_statistics['not_updated'] += 1
                 else:
                     milestone_statistics['cant_be_updated'] += 1
@@ -106,8 +105,8 @@ class RecipeList():
         self.summary = summary
 
 def _get_recipe_list(milestone):
-    recipe_maintainer_history = RecipeMaintainerHistory.get_by_end_date(
-        milestone.end_date)
+    recipe_maintainer_history = Raw.get_remahi_by_end_date(
+                milestone.end_date)
 
     recipe_upstream_history = RecipeUpstreamHistory.get_last_by_date_range(
         milestone.start_date,
@@ -115,57 +114,62 @@ def _get_recipe_list(milestone):
     )
 
     recipe_list = []
+    recipes_ids = []
+    recipe_upstream_dict_all = {}
+    maintainers_dict_all = {}
     current_date = date.today()
-    for recipe in Recipe.objects.filter().order_by('pn'):
-        if current_date >= milestone.start_date and \
-            current_date <= milestone.end_date:
-            version = recipe.pv
-        else:
-            rup = RecipeUpgrade.get_by_recipe_and_date(recipe,
-                    milestone.end_date)
 
-            if rup is None: # Recipe don't exit in this Milestone
-                continue
-
-            version = rup.version
+    recipes = Raw.get_reupg_by_date(
+            milestone.end_date)
+    for recipe in recipes:
+        recipes_ids.append(recipe['id'])
+
+    if recipe_upstream_history:
+        recipe_upstream_all = Raw.get_reup_by_recipes_and_date(
+                recipes_ids, recipe_upstream_history.id)
+        maintainers_all = Raw.get_ma_by_recipes_and_date(
+                recipes_ids, recipe_maintainer_history[0])
+        for reup in recipe_upstream_all:
+            recipe_upstream_dict_all[reup['recipe_id']] = reup
+        for ma in maintainers_all:
+            maintainers_dict_all[ma['recipe_id']] = ma['name']
+    else:
+        recipe_upstream_all = None
 
+    for recipe in recipes:
         upstream_version = ''
         upstream_status = ''
         no_update_reason = ''
+
         if recipe_upstream_history:
-            recipe_upstream = RecipeUpstream.get_by_recipe_and_history(
-                    recipe, recipe_upstream_history)
-
-            if recipe_upstream is None:
-                recipe_upstream = RecipeUpstream()
-                recipe_upstream.history = recipe_upstream_history
-                recipe_upstream.recipe = recipe
-                recipe_upstream.version = ''
-                recipe_upstream.type = 'M' # Manual
-                recipe_upstream.status = 'U' # Unknown
-                recipe_upstream.no_update_reason = ''
-                recipe_upstream.date = recipe_upstream_history.end_date
-                recipe_upstream.save()
-
-            if recipe_upstream.status == 'N' and recipe_upstream.no_update_reason:
-                recipe_upstream.status = 'C'
+            recipe_upstream = recipe_upstream_dict_all.get(recipe['id'])
+            if not recipe_upstream:
+                recipe_add =  Recipe.objects.filter(id = recipe['id'])[0]
+                recipe_upstream_add = RecipeUpstream()
+                recipe_upstream_add.history = recipe_upstream_history
+                recipe_upstream_add.recipe = recipe_add
+                recipe_upstream_add.version = ''
+                recipe_upstream_add.type = 'M' # Manual
+                recipe_upstream_add.status = 'U' # Unknown
+                recipe_upstream_add.no_update_reason = ''
+                recipe_upstream_add.date = recipe_upstream_history.end_date
+                recipe_upstream_add.save()
+                recipe_upstream = {'version': '', 'status': 'U', 'type': 'M',
+                        'no_update_reason': ''}
+
+            if recipe_upstream['status'] == 'N' and recipe_upstream['no_update_reason']:
+                recipe_upstream['status'] = 'C'
             upstream_status = \
-                RecipeUpstream.RECIPE_UPSTREAM_STATUS_CHOICES_DICT[
-                         recipe_upstream.status]
+                    RecipeUpstream.RECIPE_UPSTREAM_STATUS_CHOICES_DICT[
+                        recipe_upstream['status']]
             if upstream_status == 'Downgrade':
                 upstream_status = 'Unknown' # Downgrade is displayed as Unknown
-            upstream_version = recipe_upstream.version
-            no_update_reason = recipe_upstream.no_update_reason
-
-        maintainer = RecipeMaintainer.get_maintainer_by_recipe_and_history(
-                recipe, recipe_maintainer_history)
-        if maintainer is None:
-            maintainer_name = ''
-        else:
-            maintainer_name = maintainer.name
+            upstream_version = recipe_upstream['version']
+            no_update_reason = recipe_upstream['no_update_reason']
 
-        recipe_list_item = RecipeList(recipe.id, recipe.pn, recipe.summary)
-        recipe_list_item.version = version
+        maintainer_name =  maintainers_dict_all.get(recipe['id'], '')
+        recipe_list_item = RecipeList(recipe['id'], recipe['pn'], recipe['summary'])
+        recipe_list_item.version = recipe['version']
         recipe_list_item.upstream_status = upstream_status
         recipe_list_item.upstream_version = upstream_version
         recipe_list_item.maintainer_name = maintainer_name
-- 
1.9.1


