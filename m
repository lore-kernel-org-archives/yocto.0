Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D10FE00F3E; Mon, 19 Feb 2018 19:46:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DC7AE00F1D
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 19:46:42 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Feb 2018 19:46:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,537,1511856000"; d="scan'208";a="28405915"
Received: from ngorski-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.160.197])
	by FMSMGA003.fm.intel.com with ESMTP; 19 Feb 2018 19:46:39 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 20 Feb 2018 16:45:54 +1300
Message-Id: <20180220034558.14341-2-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <20180220034558.14341-1-paul.eggleton@linux.intel.com>
References: <20180220034558.14341-1-paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/6] Add statistics page
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
X-List-Received-Date: Tue, 20 Feb 2018 03:46:43 -0000

Add a page with basic statistics for the index - number of layers,
recipes, classes, machines and distros on an overall basis (distinct
names) and per branch, since I've been asked a few times for this kind
of information. It's currently only linked from the Tools menu for
logged-in users, but the URL will work for anyone.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/urls.py              |  6 ++++-
 layerindex/views.py             | 17 ++++++++++++
 templates/base.html             |  1 +
 templates/layerindex/stats.html | 60 +++++++++++++++++++++++++++++++++++++++++
 4 files changed, 83 insertions(+), 1 deletion(-)
 create mode 100644 templates/layerindex/stats.html

diff --git a/layerindex/urls.py b/layerindex/urls.py
index 7deaf23..d2f9eab 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -8,7 +8,7 @@ from django.conf.urls import *
 from django.views.generic import TemplateView, DetailView, ListView, RedirectView
 from django.views.defaults import page_not_found
 from django.core.urlresolvers import reverse_lazy
-from layerindex.views import LayerListView, LayerReviewListView, LayerReviewDetailView, RecipeSearchView, MachineSearchView, PlainTextListView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, HistoryListView, EditProfileFormView, AdvancedRecipeSearchView, BulkChangeView, BulkChangeSearchView, bulk_change_edit_view, bulk_change_patch_view, BulkChangeDeleteView, RecipeDetailView, RedirectParamsView, ClassicRecipeSearchView, ClassicRecipeDetailView, ClassicRecipeStatsView, LayerUpdateDetailView, UpdateListView, UpdateDetailView
+from layerindex.views import LayerListView, LayerReviewListView, LayerReviewDetailView, RecipeSearchView, MachineSearchView, PlainTextListView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, HistoryListView, EditProfileFormView, AdvancedRecipeSearchView, BulkChangeView, BulkChangeSearchView, bulk_change_edit_view, bulk_change_patch_view, BulkChangeDeleteView, RecipeDetailView, RedirectParamsView, ClassicRecipeSearchView, ClassicRecipeDetailView, ClassicRecipeStatsView, LayerUpdateDetailView, UpdateListView, UpdateDetailView, StatsView
 from layerindex.models import LayerItem, Recipe, RecipeChangeset
 from rest_framework import routers
 from . import restviews
@@ -127,6 +127,10 @@ urlpatterns = patterns('',
         TemplateView.as_view(
             template_name='layerindex/about.html'),
             name="about"),
+    url(r'^stats/$',
+        StatsView.as_view(
+            template_name='layerindex/stats.html'),
+            name='stats'),
     url(r'^oe-classic/$',
         RedirectView.as_view(url=reverse_lazy('classic_recipe_search'), permanent=False),
             name='classic'),
diff --git a/layerindex/views.py b/layerindex/views.py
index 4f6c2c9..95812ca 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -1007,3 +1007,20 @@ class ClassicRecipeStatsView(TemplateView):
             'jquery_on_ready': False,
         }
         return context
+
+
+class StatsView(TemplateView):
+    def get_context_data(self, **kwargs):
+        context = super(StatsView, self).get_context_data(**kwargs)
+        context['layercount'] = LayerItem.objects.count()
+        context['recipe_count_distinct'] = Recipe.objects.values('pn').distinct().count()
+        context['class_count_distinct'] = BBClass.objects.values('name').distinct().count()
+        context['machine_count_distinct'] = Machine.objects.values('name').distinct().count()
+        context['distro_count_distinct'] = Distro.objects.values('name').distinct().count()
+        context['perbranch'] = Branch.objects.order_by('sort_priority').annotate(
+                layer_count=Count('layerbranch', distinct=True),
+                recipe_count=Count('layerbranch__recipe', distinct=True),
+                class_count=Count('layerbranch__bbclass', distinct=True),
+                machine_count=Count('layerbranch__machine', distinct=True),
+                distro_count=Count('layerbranch__distro', distinct=True))
+        return context
diff --git a/templates/base.html b/templates/base.html
index 8a3b8fe..a9d7c83 100644
--- a/templates/base.html
+++ b/templates/base.html
@@ -73,6 +73,7 @@
                             <li><a href="{% url 'bulk_change' %}">Bulk Change</a></li>
                             <li><a href="{% url 'duplicates' 'master' %}">Duplicates</a></li>
                             <li><a href="{% url 'update_list' %}">Updates</a></li>
+                            <li><a href="{% url 'stats' %}">Statistics</a></li>
                         </ul>
                     </li>
                     {% endif %}
diff --git a/templates/layerindex/stats.html b/templates/layerindex/stats.html
new file mode 100644
index 0000000..3c4971b
--- /dev/null
+++ b/templates/layerindex/stats.html
@@ -0,0 +1,60 @@
+{% extends "base.html" %}
+{% load i18n %}
+{% load static %}
+
+{% comment %}
+
+  layerindex-web - statistics page template
+
+  Copyright (C) 2018 Intel Corporation
+  Licensed under the MIT license, see COPYING.MIT for details
+
+{% endcomment %}
+
+
+<!--
+{% block title_append %} - statistics{% endblock %}
+-->
+
+{% block content %}
+{% autoescape on %}
+
+<h2>Statistics</h2>
+
+<h3>Overall</h3>
+<dl class="dl-horizontal">
+    <dt>Layers</dt><dd>{{ layercount }}</dd>
+    <dt>Recipes</dt><dd>{{ recipe_count_distinct }} (distinct names)</dd>
+    <dt>Machines</dt><dd>{{ machine_count_distinct }} (distinct names)</dd>
+    <dt>Classes</dt><dd>{{ class_count_distinct }} (distinct names)</dd>
+    <dt>Distros</dt><dd>{{ distro_count_distinct }} (distinct names)</dd>
+</dl>
+
+<h3>Per branch</h3>
+
+<table class="table">
+    <thead>
+        <th>Branch</th>
+        <th style="text-align: right">Layers</th>
+        <th style="text-align: right">Recipes</th>
+        <th style="text-align: right">Machines</th>
+        <th style="text-align: right">Classes</th>
+        <th style="text-align: right">Distros</th>
+    </thead>
+    <tbody>
+        {% for branch in perbranch %}
+        <tr {% if not branch.updates_enabled %}class="muted"{% endif %}>
+            <td>{{ branch.name }}</td>
+            <td style="text-align: right">{{ branch.layer_count }}</td>
+            <td style="text-align: right">{{ branch.recipe_count }}</td>
+            <td style="text-align: right">{{ branch.machine_count }}</td>
+            <td style="text-align: right">{{ branch.class_count }}</td>
+            <td style="text-align: right">{{ branch.distro_count }}</td>
+        </tr>
+        {% endfor %}
+    </tbody>
+</table>
+
+{% endautoescape %}
+{% endblock %}
+
-- 
2.14.3


