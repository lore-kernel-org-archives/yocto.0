Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09777E00A4C; Sun,  6 May 2018 20:36:17 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDCF2E00A4C
	for <yocto@yoctoproject.org>; Sun,  6 May 2018 20:36:15 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 May 2018 20:36:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,372,1520924400"; d="scan'208";a="47241953"
Received: from kllim-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.70.238])
	by FMSMGA003.fm.intel.com with ESMTP; 06 May 2018 20:36:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  7 May 2018 15:35:42 +1200
Message-Id: <0163c7c984be787ec228db3cedb181fa8cde041b.1525663905.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <cover.1525663905.git.paul.eggleton@linux.intel.com>
References: <cover.1525663905.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 1/2] Drop old raw recipe export code
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
X-List-Received-Date: Mon, 07 May 2018 03:36:17 -0000

We're about to replace this with a proper CSV export function, so we
don't need this dead code hanging around anymore.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/urls.py                  | 8 +-------
 layerindex/urls_branch.py           | 2 +-
 layerindex/views.py                 | 7 -------
 templates/layerindex/rawrecipes.txt | 2 --
 4 files changed, 2 insertions(+), 17 deletions(-)
 delete mode 100644 templates/layerindex/rawrecipes.txt

diff --git a/layerindex/urls.py b/layerindex/urls.py
index b0b74314..f80606fc 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -8,7 +8,7 @@ from django.conf.urls import *
 from django.views.generic import TemplateView, DetailView, ListView, RedirectView
 from django.views.defaults import page_not_found
 from django.core.urlresolvers import reverse_lazy
-from layerindex.views import LayerListView, LayerReviewListView, LayerReviewDetailView, RecipeSearchView, MachineSearchView, PlainTextListView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, HistoryListView, EditProfileFormView, AdvancedRecipeSearchView, BulkChangeView, BulkChangeSearchView, bulk_change_edit_view, bulk_change_patch_view, BulkChangeDeleteView, RecipeDetailView, RedirectParamsView, ClassicRecipeSearchView, ClassicRecipeDetailView, ClassicRecipeStatsView, LayerUpdateDetailView, UpdateListView, UpdateDetailView, StatsView, publish_view
+from layerindex.views import LayerListView, LayerReviewListView, LayerReviewDetailView, RecipeSearchView, MachineSearchView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, HistoryListView, EditProfileFormView, AdvancedRecipeSearchView, BulkChangeView, BulkChangeSearchView, bulk_change_edit_view, bulk_change_patch_view, BulkChangeDeleteView, RecipeDetailView, RedirectParamsView, ClassicRecipeSearchView, ClassicRecipeDetailView, ClassicRecipeStatsView, LayerUpdateDetailView, UpdateListView, UpdateDetailView, StatsView, publish_view
 from layerindex.models import LayerItem, Recipe, RecipeChangeset
 from rest_framework import routers
 from . import restviews
@@ -101,12 +101,6 @@ urlpatterns = [
             name="bulk_change_delete"),
     url(r'^branch/(?P<branch>[-\w]+)/',
         include('layerindex.urls_branch')),
-    #url(r'^raw/recipes.txt$',
-    #    PlainTextListView.as_view(
-    #        queryset=Recipe.objects.order_by('pn', 'layerbranch__layer'),
-    #        context_object_name='recipe_list',
-    #        template_name='layerindex/rawrecipes.txt'),
-    #        name='recipe_list_raw'),
     url(r'^updates/$',
         UpdateListView.as_view(
             template_name='layerindex/updatelist.html'),
diff --git a/layerindex/urls_branch.py b/layerindex/urls_branch.py
index a71af1ce..0e41435e 100644
--- a/layerindex/urls_branch.py
+++ b/layerindex/urls_branch.py
@@ -7,7 +7,7 @@
 from django.conf.urls import *
 from django.views.defaults import page_not_found
 from django.core.urlresolvers import reverse_lazy
-from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, DistroSearchView, ClassSearchView, PlainTextListView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView, LayerUpdateDetailView
+from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, DistroSearchView, ClassSearchView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView, LayerUpdateDetailView
 
 urlpatterns = [
     url(r'^$', 
diff --git a/layerindex/views.py b/layerindex/views.py
index bc3cddfa..dbf08497 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -771,13 +771,6 @@ class ClassSearchView(ListView):
         context['this_url_name'] = resolve(self.request.path_info).url_name
         return context
 
-class PlainTextListView(ListView):
-    def render_to_response(self, context):
-        "Returns a plain text response rendering of the template"
-        template = get_template(self.template_name)
-        return HttpResponse(template.render(context),
-                                 content_type='text/plain')
-
 class HistoryListView(ListView):
     context_object_name = "revisions"
     paginate_by = 50
diff --git a/templates/layerindex/rawrecipes.txt b/templates/layerindex/rawrecipes.txt
deleted file mode 100644
index c1911c9c..00000000
--- a/templates/layerindex/rawrecipes.txt
+++ /dev/null
@@ -1,2 +0,0 @@
-{% for recipe in recipe_list %}{{ recipe.layerbranch.layer.name }}	{{ recipe.pn }}	{{ recipe.pv }}	{{ recipe.full_path }}
-{% endfor %}
-- 
2.14.3


