Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 566F6E00D12; Tue, 31 Oct 2017 10:29:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40A06E00CF5
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 10:29:34 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	31 Oct 2017 10:29:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,325,1505804400"; d="scan'208";a="167449626"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga005.jf.intel.com with ESMTP; 31 Oct 2017 10:29:34 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 31 Oct 2017 10:28:37 -0700
Message-Id: <e8548c2bc7d8700267cd94765f77223f93790bfe.1509470700.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1509470700.git.amanda.r.brindle@intel.com>
References: <cover.1509470700.git.amanda.r.brindle@intel.com>
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex-web][patch v1 1/1] templates/layerindex/classes.html: Add bbclass search
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
X-List-Received-Date: Tue, 31 Oct 2017 17:29:36 -0000

Add another tab to search for classes.

Fixes [YOCTO #11207]

Signed-off by: Amanda Brindle <amanda.r.brindle@intel.com>
---
 layerindex/restviews.py            | 10 ++++-
 layerindex/urls.py                 |  3 ++
 layerindex/urls_branch.py          |  6 ++-
 layerindex/views.py                | 24 ++++++++++++
 templates/layerindex/classes.html  | 75 ++++++++++++++++++++++++++++++++++++++
 templates/layerindex/distros.html  |  1 +
 templates/layerindex/layers.html   |  1 +
 templates/layerindex/machines.html |  1 +
 templates/layerindex/recipes.html  |  1 +
 9 files changed, 120 insertions(+), 2 deletions(-)
 create mode 100644 templates/layerindex/classes.html

diff --git a/layerindex/restviews.py b/layerindex/restviews.py
index d947bbf..836aa54 100644
--- a/layerindex/restviews.py
+++ b/layerindex/restviews.py
@@ -1,4 +1,4 @@
-from layerindex.models import Branch, LayerItem, LayerNote, LayerBranch, LayerDependency, Recipe, Machine, Distro
+from layerindex.models import Branch, LayerItem, LayerNote, LayerBranch, LayerDependency, Recipe, Machine, Distro, BBClass
 from rest_framework import viewsets, serializers
 from layerindex.querysethelper import params_to_queryset, get_search_tuple
 
@@ -64,3 +64,11 @@ class DistroSerializer(serializers.ModelSerializer):
 class DistroViewSet(ParametricSearchableModelViewSet):
     queryset = Distro.objects.all()
     serializer_class = DistroSerializer
+
+class ClassSerializer(serializers.ModelSerializer):
+    class Meta:
+        model = BBClass
+
+class ClassViewSet(ParametricSearchableModelViewSet):
+    queryset = BBClass.objects.all()
+    serializer_class = ClassSerializer
diff --git a/layerindex/urls.py b/layerindex/urls.py
index b4535d2..6a1cb6a 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -22,6 +22,7 @@ router.register(r'layerDependencies', restviews.LayerDependencyViewSet)
 router.register(r'recipes', restviews.RecipeViewSet)
 router.register(r'machines', restviews.MachineViewSet)
 router.register(r'distros', restviews.DistroViewSet)
+router.register(r'classes', restviews.ClassViewSet)
 
 urlpatterns = patterns('',
     url(r'^$',
@@ -40,6 +41,8 @@ urlpatterns = patterns('',
         RedirectView.as_view(url=reverse_lazy('machine_search', args=('master',)), permanent=False)),
     url(r'^distros/$',
         RedirectView.as_view(url=reverse_lazy('distro_search', args=('master',)), permanent=False)),
+    url(r'^classes/$',
+        RedirectView.as_view(url=reverse_lazy('class_search', args=('master',)), permanent=False)),
  
     url(r'^submit/$', edit_layer_view, {'template_name': 'layerindex/submitlayer.html'}, name="submit_layer"),
     url(r'^submit/thanks$',
diff --git a/layerindex/urls_branch.py b/layerindex/urls_branch.py
index 89659d9..d451896 100644
--- a/layerindex/urls_branch.py
+++ b/layerindex/urls_branch.py
@@ -7,7 +7,7 @@
 from django.conf.urls import *
 from django.views.defaults import page_not_found
 from django.core.urlresolvers import reverse_lazy
-from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, DistroSearchView, PlainTextListView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView, LayerUpdateDetailView
+from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, DistroSearchView, ClassSearchView, PlainTextListView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView, LayerUpdateDetailView
 
 urlpatterns = patterns('',
     url(r'^$', 
@@ -32,6 +32,10 @@ urlpatterns = patterns('',
         DistroSearchView.as_view(
             template_name='layerindex/distros.html'),
             name='distro_search'),
+    url(r'^classes/$',
+        ClassSearchView.as_view(
+            template_name='layerindex/classes.html'),
+            name='class_search'),
     url(r'^edit/(?P<slug>[-\w]+)/$', edit_layer_view, {'template_name': 'layerindex/editlayer.html'}, name="edit_layer"),
     url(r'^duplicates/$',
         DuplicatesView.as_view(
diff --git a/layerindex/views.py b/layerindex/views.py
index 3b22067..03d47f2 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -724,6 +724,30 @@ class DistroSearchView(ListView):
         context['this_url_name'] = resolve(self.request.path_info).url_name
         return context
 
+class ClassSearchView(ListView):
+    context_object_name = 'class_list'
+    paginate_by = 50
+
+    def get_queryset(self):
+        _check_url_branch(self.kwargs)
+        query_string = self.request.GET.get('q', '')
+        init_qs = BBClass.objects.filter(layerbranch__branch__name=self.kwargs['branch'])
+        if query_string.strip():
+            entry_query = simplesearch.get_query(query_string, ['name'])
+            return init_qs.filter(entry_query).order_by('name', 'layerbranch__layer')
+
+        if 'q' in self.request.GET:
+            return init_qs.order_by('name', 'layerbranch__layer')
+
+        # Be consistent with RecipeSearchView
+        return Distro.objects.none()
+
+    def get_context_data(self, **kwargs):
+        context = super(ClassSearchView, self).get_context_data(**kwargs)
+        context['search_keyword'] = self.request.GET.get('q', '')
+        context['url_branch'] = self.kwargs['branch']
+        context['this_url_name'] = resolve(self.request.path_info).url_name
+        return context
 
 class PlainTextListView(ListView):
     def render_to_response(self, context):
diff --git a/templates/layerindex/classes.html b/templates/layerindex/classes.html
new file mode 100644
index 0000000..5ab1b4e
--- /dev/null
+++ b/templates/layerindex/classes.html
@@ -0,0 +1,75 @@
+{% extends "base_toplevel.html" %}
+{% load i18n %}
+
+{% comment %}
+
+  layerindex-web - class index page template
+
+  Copyright (C) 2013 Intel Corporation
+  Copyright (C) 2016 Wind River Systems
+  Licensed under the MIT license, see COPYING.MIT for details
+
+{% endcomment %}
+
+
+<!--
+{% block title_append %} - classes{% endblock %}
+-->
+
+{% block navs %}
+{% autoescape on %}
+                            <li><a href="{% url 'layer_list' url_branch %}">Layers</a></li>
+                            <li><a href="{% url 'recipe_search' url_branch %}">Recipes</a></li>
+                            <li><a href="{% url 'machine_search' url_branch %}">Machines</a></li>
+                            <li><a href="{% url 'distro_search' url_branch %}">Distros</a></li>
+                            <li class="active"><a href="{% url 'class_search' url_branch %}">Classes</a></li>
+{% endautoescape %}
+{% endblock %}
+
+
+{% block content_inner %}
+{% autoescape on %}
+
+
+                <div class="row-fluid">
+                    <div class="input-append">
+                        <form id="filter-form" action="{% url 'class_search' url_branch %}" method="get">
+                            <input type="text" class="input-xxlarge" id="appendedInputButtons" placeholder="Search classes" name="q" value="{{ search_keyword }}" />
+                            <button class="btn" type="submit">search</button>
+                        </form>
+                    </div>
+                </div>
+
+{% if class_list %}
+                <table class="table table-striped table-bordered classestable">
+                    <thead>
+                        <tr>
+                            <th>Class Name</th>
+                            <th>Layer</th>
+                        </tr>
+                    </thead>
+
+                    <tbody>
+                        {% for class in class_list %}
+                            <tr>
+                                <td><a href="{{ class.vcs_web_url }}">{{ class.name }}</a></td>
+                                <td><a href="{% url 'layer_item' url_branch class.layerbranch.layer.name %}">{{ class.layerbranch.layer.name }}</a></td>
+                            </tr>
+                        {% endfor %}
+                    </tbody>
+                </table>
+
+    {% if is_paginated %}
+        {% load pagination %}
+        {% pagination page_obj %}
+    {% endif %}
+{% else %}
+    {% if search_keyword %}
+    <p>No matching classes in database.</p>
+    {% endif %}
+{% endif %}
+
+
+{% endautoescape %}
+
+{% endblock %}
diff --git a/templates/layerindex/distros.html b/templates/layerindex/distros.html
index 7085584..ed17744 100644
--- a/templates/layerindex/distros.html
+++ b/templates/layerindex/distros.html
@@ -22,6 +22,7 @@
                             <li><a href="{% url 'recipe_search' url_branch %}">Recipes</a></li>
                             <li><a href="{% url 'machine_search' url_branch %}">Machines</a></li>
                             <li class="active"><a href="{% url 'distro_search' url_branch %}">Distros</a></li>
+                            <li><a href="{% url 'class_search' url_branch %}">Classes</a></li>
 {% endautoescape %}
 {% endblock %}
 
diff --git a/templates/layerindex/layers.html b/templates/layerindex/layers.html
index f1a3703..11baccd 100644
--- a/templates/layerindex/layers.html
+++ b/templates/layerindex/layers.html
@@ -22,6 +22,7 @@
                             <li><a href="{% url 'recipe_search' url_branch %}">Recipes</a></li>
                             <li><a href="{% url 'machine_search' url_branch %}">Machines</a></li>
                             <li><a href="{% url 'distro_search' url_branch %}">Distros</a></li>
+                            <li><a href="{% url 'class_search' url_branch %}">Classes</a></li>
 {% endautoescape %}
 {% endblock %}
 
diff --git a/templates/layerindex/machines.html b/templates/layerindex/machines.html
index 2a9f947..b5b1365 100644
--- a/templates/layerindex/machines.html
+++ b/templates/layerindex/machines.html
@@ -21,6 +21,7 @@
                             <li><a href="{% url 'recipe_search' url_branch %}">Recipes</a></li>
                             <li class="active"><a href="{% url 'machine_search' url_branch %}">Machines</a></li>
                             <li><a href="{% url 'distro_search' url_branch %}">Distros</a></li>
+                            <li><a href="{% url 'class_search' url_branch %}">Classes</a></li>
 {% endautoescape %}
 {% endblock %}
 
diff --git a/templates/layerindex/recipes.html b/templates/layerindex/recipes.html
index 60a2667..4f073f2 100644
--- a/templates/layerindex/recipes.html
+++ b/templates/layerindex/recipes.html
@@ -21,6 +21,7 @@
                             <li class="active"><a href="{% url 'recipe_search' url_branch %}">Recipes</a></li>
                             <li><a href="{% url 'machine_search' url_branch %}">Machines</a></li>
                             <li><a href="{% url 'distro_search' url_branch %}">Distros</a></li>
+                            <li><a href="{% url 'class_search' url_branch %}">Classes</a></li>
 {% endautoescape %}
 {% endblock %}
 
-- 
2.7.4


