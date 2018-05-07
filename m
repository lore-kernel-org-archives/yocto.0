Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61685E00C5B; Sun,  6 May 2018 20:36:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6152FE00C4B
	for <yocto@yoctoproject.org>; Sun,  6 May 2018 20:36:19 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 May 2018 20:36:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,372,1520924400"; d="scan'208";a="47241961"
Received: from kllim-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.70.238])
	by FMSMGA003.fm.intel.com with ESMTP; 06 May 2018 20:36:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  7 May 2018 15:35:43 +1200
Message-Id: <5be1d731d1a4df7528f6a46183aefdceb9949279.1525663905.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <cover.1525663905.git.paul.eggleton@linux.intel.com>
References: <cover.1525663905.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/2] Add CSV export for layer recipes
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
X-List-Received-Date: Mon, 07 May 2018 03:36:20 -0000

Add the ability to export the recipe listing for a layer to a CSV file
for importing into external tools. At the moment we include name,
version and license, but there is a parameter that lets you specify the
fields to include in the URL if desired.

Implements [YOCTO #12722].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/urls_branch.py        |  5 ++++-
 layerindex/views.py              | 22 ++++++++++++++++++++++
 templates/layerindex/detail.html | 14 +++++++-------
 3 files changed, 33 insertions(+), 8 deletions(-)

diff --git a/layerindex/urls_branch.py b/layerindex/urls_branch.py
index 0e41435e..2809147b 100644
--- a/layerindex/urls_branch.py
+++ b/layerindex/urls_branch.py
@@ -7,7 +7,7 @@
 from django.conf.urls import *
 from django.views.defaults import page_not_found
 from django.core.urlresolvers import reverse_lazy
-from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, DistroSearchView, ClassSearchView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView, LayerUpdateDetailView
+from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, DistroSearchView, ClassSearchView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView, LayerUpdateDetailView, layer_export_recipes_csv_view
 
 urlpatterns = [
     url(r'^$', 
@@ -20,6 +20,9 @@ urlpatterns = [
         LayerDetailView.as_view(
             template_name='layerindex/detail.html'),
             name='layer_item'),
+    url(r'^layer/(?P<slug>[-\w]+)/recipes/csv/$',
+        layer_export_recipes_csv_view,
+        name='layer_export_recipes_csv'),
     url(r'^recipes/$',
         RecipeSearchView.as_view(
             template_name='layerindex/recipes.html'),
diff --git a/layerindex/views.py b/layerindex/views.py
index dbf08497..06d35261 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -1022,3 +1022,25 @@ class StatsView(TemplateView):
                 machine_count=Count('layerbranch__machine', distinct=True),
                 distro_count=Count('layerbranch__distro', distinct=True))
         return context
+
+
+def layer_export_recipes_csv_view(request, branch, slug):
+    import csv
+    layer = get_object_or_404(LayerItem, name=slug)
+    layerbranch = layer.get_layerbranch(branch)
+
+    response = HttpResponse(content_type='text/csv')
+    response['Content-Disposition'] = 'attachment; filename="recipes_%s_%s.csv"' % (layer.name, layerbranch.branch.name)
+
+    fieldlist = request.GET.get('fields', 'pn,pv,license').split(',')
+    recipe_fields = [f.name for f in Recipe._meta.get_fields() if not (f.auto_created and f.is_relation)]
+    for field in fieldlist:
+        if field not in recipe_fields:
+            return HttpResponse('Field %s is invalid' % field)
+
+    writer = csv.writer(response)
+    for recipe in layerbranch.sorted_recipes():
+        values = [getattr(recipe, field) for field in fieldlist]
+        writer.writerow(values)
+
+    return response
diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
index 220d475b..67c21126 100644
--- a/templates/layerindex/detail.html
+++ b/templates/layerindex/detail.html
@@ -199,13 +199,13 @@
                         <div class="navbar-inner">
                             <a class="brand pull-left">{{ layeritem.name }} recipes <span class="muted">({{ layerbranch.sorted_recipes.count }})</span></a>
 
-                            <ul class="nav pull-right">
-                                <li>
-                                    <form action="" class="navbar-search pull-right" id="filter-form">
-                                        <input type="text" placeholder="Search recipes" class="search-query" id="filter">
-                                    </form>
-                                </li>
-                            </ul>
+                            <div class="pull-right">
+                                <a href="{% url 'layer_export_recipes_csv' layerbranch.branch.name layerbranch.layer.name %}" class="btn"><i class="icon-file"></i> Export CSV</a>
+
+                                <form action="" class="navbar-search nav-spacer pull-right" id="filter-form">
+                                    <input type="text" placeholder="Search recipes" class="search-query" id="filter">
+                                </form>
+                            </div>
                         </div>
                     </div>
 
-- 
2.14.3


