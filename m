Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9ECC8E0080D; Mon, 26 Sep 2016 11:25:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 925EDE007B7
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 11:25:53 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u8QIPrZ6016023
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Sep 2016 11:25:53 -0700 (PDT)
Received: from yow-lhowlett-d0.wrs.com (128.224.56.234) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Mon, 26 Sep 2016 11:25:52 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 26 Sep 2016 14:25:33 -0400
Message-ID: <1474914338-26310-6-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH 05/10] layerindex: Add distribution to web interface and model.
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
X-List-Received-Date: Mon, 26 Sep 2016 18:25:55 -0000
Content-Type: text/plain

Add the distributions to the index.  This looks a lot like the machines
and allows users to search for a particular distribution.

Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
---
 layerindex/admin.py                     | 11 +++++
 layerindex/models.py                    | 14 ++++++
 layerindex/recipeparse.py               |  5 +++
 layerindex/restviews.py                 | 10 ++++-
 layerindex/tools/import_classic.py      |  2 +
 layerindex/update_layer.py              | 46 +++++++++++++++++++-
 layerindex/urls.py                      |  3 ++
 layerindex/urls_branch.py               |  6 ++-
 layerindex/views.py                     | 29 ++++++++++++-
 templates/layerindex/detail.html        | 23 ++++++++++
 templates/layerindex/distributions.html | 76 +++++++++++++++++++++++++++++++++
 templates/layerindex/layers.html        |  1 +
 templates/layerindex/machines.html      |  1 +
 templates/layerindex/recipes.html       |  1 +
 14 files changed, 224 insertions(+), 4 deletions(-)
 create mode 100644 templates/layerindex/distributions.html

diff --git a/layerindex/admin.py b/layerindex/admin.py
index accb954..8164644 100644
--- a/layerindex/admin.py
+++ b/layerindex/admin.py
@@ -75,6 +75,16 @@ class MachineAdmin(admin.ModelAdmin):
     def has_delete_permission(self, request, obj=None):
         return False
 
+class DistributionAdmin(admin.ModelAdmin):
+    search_fields = ['name']
+    list_filter = ['layerbranch__layer__name', 'layerbranch__branch__name']
+    readonly_fields = Distribution._meta.get_all_field_names()
+    def has_add_permission(self, request, obj=None):
+        return False
+    def has_delete_permission(self, request, obj=None):
+        return False
+
+
 class BBAppendAdmin(admin.ModelAdmin):
     search_fields = ['filename']
     list_filter = ['layerbranch__layer__name', 'layerbranch__branch__name']
@@ -111,6 +121,7 @@ admin.site.register(LayerNote, LayerNoteAdmin)
 admin.site.register(Recipe, RecipeAdmin)
 admin.site.register(RecipeFileDependency)
 admin.site.register(Machine, MachineAdmin)
+admin.site.register(Distribution, DistributionAdmin)
 admin.site.register(BBAppend, BBAppendAdmin)
 admin.site.register(BBClass, BBClassAdmin)
 admin.site.register(RecipeChangeset, RecipeChangesetAdmin)
diff --git a/layerindex/models.py b/layerindex/models.py
index 3fd16d4..6aec030 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -361,6 +361,20 @@ class Machine(models.Model):
     def __str__(self):
         return '%s (%s)' % (self.name, self.layerbranch.layer.name)
 
+class Distribution(models.Model):
+    layerbranch = models.ForeignKey(LayerBranch)
+    name = models.CharField(max_length=255)
+    description = models.CharField(max_length=255)
+
+    updated = models.DateTimeField(auto_now=True)
+
+    def vcs_web_url(self):
+        url = self.layerbranch.file_url(os.path.join('conf/distro/%s.conf' % self.name))
+        return url or ''
+
+    def __str__(self):
+        return '%s (%s)' % (self.name, self.layerbranch.layer.name)
+
 
 class BBAppend(models.Model):
     layerbranch = models.ForeignKey(LayerBranch)
diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index 7f995ec..61d6fd4 100644
--- a/layerindex/recipeparse.py
+++ b/layerindex/recipeparse.py
@@ -152,6 +152,7 @@ def get_var_files(fn, varlist, d):
     return varfiles
 
 machine_conf_re = re.compile(r'conf/machine/([^/.]*).conf$')
+distro_conf_re = re.compile(r'conf/distro/([^/.]*).conf$')
 bbclass_re = re.compile(r'classes/([^/.]*).bbclass$')
 def detect_file_type(path, subdir_start):
     typename = None
@@ -171,6 +172,10 @@ def detect_file_type(path, subdir_start):
             if res:
                 typename = 'bbclass'
                 return (typename, None, res.group(1))
+            res = distro_conf_re.match(subpath)
+            if res:
+                typename = 'distribution'
+                return (typename, None, res.group(1))
 
     if typename == 'recipe' or typename == 'bbappend':
         if subdir_start:
diff --git a/layerindex/restviews.py b/layerindex/restviews.py
index b33d3d1..1efe11a 100644
--- a/layerindex/restviews.py
+++ b/layerindex/restviews.py
@@ -1,4 +1,4 @@
-from layerindex.models import Branch, LayerItem, LayerNote, LayerBranch, LayerDependency, Recipe, Machine
+from layerindex.models import Branch, LayerItem, LayerNote, LayerBranch, LayerDependency, Recipe, Machine, Distribution
 from rest_framework import viewsets, serializers
 from layerindex.querysethelper import params_to_queryset, get_search_tuple
 
@@ -56,3 +56,11 @@ class MachineSerializer(serializers.ModelSerializer):
 class MachineViewSet(ParametricSearchableModelViewSet):
     queryset = Machine.objects.all()
     serializer_class = MachineSerializer
+
+class DistributionSerializer(serializers.ModelSerializer):
+    class Meta:
+        model = Distribution
+
+class DistributionViewSet(ParametricSearchableModelViewSet):
+    queryset = Distribution.objects.all()
+    serializer_class = DistributionSerializer
diff --git a/layerindex/tools/import_classic.py b/layerindex/tools/import_classic.py
index 45ccaa9..7d26ef6 100755
--- a/layerindex/tools/import_classic.py
+++ b/layerindex/tools/import_classic.py
@@ -160,6 +160,7 @@ def main():
         layerdir_start = os.path.normpath(oeclassicpath) + os.sep
         layerrecipes = Recipe.objects.filter(layerbranch=layerbranch)
         layermachines = Machine.objects.filter(layerbranch=layerbranch)
+        layerdistributions = Distribution.objects.filter(layerbranch=layerbranch)
         layerappends = BBAppend.objects.filter(layerbranch=layerbranch)
         layerclasses = BBClass.objects.filter(layerbranch=layerbranch)
 
@@ -172,6 +173,7 @@ def main():
 
         layerrecipes.delete()
         layermachines.delete()
+        layerdistributions.delete()
         layerappends.delete()
         layerclasses.delete()
         for root, dirs, files in os.walk(oeclassicpath):
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 13b508f..a937000 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -115,6 +115,19 @@ def update_machine_conf_file(path, machine):
                 break
     machine.description = desc
 
+def update_distribution_conf_file(path, distribution):
+    logger.debug('Updating distribution %s' % path)
+    desc = ""
+    with open(path, 'r') as f:
+        for line in f:
+            if line.startswith('#@NAME:'):
+                desc = line[7:].strip()
+            if line.startswith('#@DESCRIPTION:'):
+                desc = line[14:].strip()
+                desc = re.sub(r'Distribtuion configuration for( running)*( an)*( the)*', '', desc)
+                break
+    distribution.description = desc
+
 def main():
     if LooseVersion(git.__version__) < '0.3.1':
         logger.error("Version of GitPython is too old, please install GitPython (python-git) 0.3.1 or later in order to use this script")
@@ -161,7 +174,7 @@ def main():
 
     utils.setup_django()
     import settings
-    from layerindex.models import LayerItem, LayerBranch, Recipe, RecipeFileDependency, Machine, BBAppend, BBClass
+    from layerindex.models import LayerItem, LayerBranch, Recipe, RecipeFileDependency, Machine, Distribution, BBAppend, BBClass
     from django.db import transaction
 
     logger.setLevel(options.loglevel)
@@ -269,6 +282,7 @@ def main():
             layerdir_start = os.path.normpath(layerdir) + os.sep
             layerrecipes = Recipe.objects.filter(layerbranch=layerbranch)
             layermachines = Machine.objects.filter(layerbranch=layerbranch)
+            layerdistributions = Distribution.objects.filter(layerbranch=layerbranch)
             layerappends = BBAppend.objects.filter(layerbranch=layerbranch)
             layerclasses = BBClass.objects.filter(layerbranch=layerbranch)
             if layerbranch.vcs_last_rev != topcommit.hexsha or options.reload:
@@ -384,6 +398,15 @@ def main():
                                 else:
                                     logger.warn("Renamed machine %s could not be found" % oldpath)
                                     other_adds.append(diffitem)
+                            elif oldtypename == 'distribution':
+                                results = layerdistributions.filter(name=oldfilename)
+                                if len(results):
+                                    logger.debug("Rename distribution %s to %s" % (results[0], newfilename))
+                                    results[0].name = newfilename
+                                    results[0].save()
+                                else:
+                                    logger.warn("Renamed distribution %s could not be found" % oldpath)
+                                    other_adds.append(diffitem)
                             elif oldtypename == 'bbclass':
                                 results = layerclasses.filter(name=oldfilename)
                                 if len(results):
@@ -422,6 +445,8 @@ def main():
                                 layerappends.filter(filepath=filepath).filter(filename=filename).delete()
                             elif typename == 'machine':
                                 layermachines.filter(name=filename).delete()
+                            elif typename == 'distribution':
+                                layerdistributions.filter(name=filename).delete()
                             elif typename == 'bbclass':
                                 layerclasses.filter(name=filename).delete()
 
@@ -452,6 +477,12 @@ def main():
                                 machine.name = filename
                                 update_machine_conf_file(os.path.join(repodir, path), machine)
                                 machine.save()
+                            elif typename == 'distribution':
+                                distribution = Distribution()
+                                distribution.layerbranch = layerbranch
+                                distribution.name = filename
+                                update_distribution_conf_file(os.path.join(repodir, path), distribution)
+                                distribution.save()
                             elif typename == 'bbclass':
                                 bbclass = BBClass()
                                 bbclass.layerbranch = layerbranch
@@ -483,6 +514,12 @@ def main():
                                     machine = results[0]
                                     update_machine_conf_file(os.path.join(repodir, path), machine)
                                     machine.save()
+                            elif typename == 'distribuiton':
+                                results = layerdistribuitons.filter(name=filename)
+                                if results:
+                                    distribuiton = results[0]
+                                    update_distribuiton_conf_file(os.path.join(repodir, path), distribuiton)
+                                    distribuiton.save()
 
                             deps = RecipeFileDependency.objects.filter(layerbranch=layerbranch).filter(path=path)
                             for dep in deps:
@@ -523,6 +560,7 @@ def main():
                             layerrecipe_fns.append(fullpath)
 
                     layermachines.delete()
+                    layerdistributions.delete()
                     layerappends.delete()
                     layerclasses.delete()
                     for root, dirs, files in os.walk(layerdir):
@@ -550,6 +588,12 @@ def main():
                                 machine.name = filename
                                 update_machine_conf_file(fullpath, machine)
                                 machine.save()
+                            elif typename == 'distribution':
+                                distribution = Distribution()
+                                distribution.layerbranch = layerbranch
+                                distribution.name = filename
+                                update_distribution_conf_file(fullpath, distribution)
+                                distribution.save()
                             elif typename == 'bbclass':
                                 bbclass = BBClass()
                                 bbclass.layerbranch = layerbranch
diff --git a/layerindex/urls.py b/layerindex/urls.py
index cbd29ad..836543c 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -21,6 +21,7 @@ router.register(r'layerBranches', restviews.LayerBranchViewSet)
 router.register(r'layerDependencies', restviews.LayerDependencyViewSet)
 router.register(r'recipes', restviews.RecipeViewSet)
 router.register(r'machines', restviews.MachineViewSet)
+router.register(r'distributions', restviews.DistributionViewSet)
 
 urlpatterns = patterns('',
     url(r'^$',
@@ -37,6 +38,8 @@ urlpatterns = patterns('',
         RedirectView.as_view(url=reverse_lazy('recipe_search', args=('master',)), permanent=False)),
     url(r'^machines/$',
         RedirectView.as_view(url=reverse_lazy('machine_search', args=('master',)), permanent=False)),
+    url(r'^distributions/$',
+        RedirectView.as_view(url=reverse_lazy('distribution_search', args=('master',)), permanent=False)),
  
     url(r'^submit/$', edit_layer_view, {'template_name': 'layerindex/submitlayer.html'}, name="submit_layer"),
     url(r'^submit/thanks$',
diff --git a/layerindex/urls_branch.py b/layerindex/urls_branch.py
index 3313290..ba37c15 100644
--- a/layerindex/urls_branch.py
+++ b/layerindex/urls_branch.py
@@ -7,7 +7,7 @@
 from django.conf.urls import *
 from django.views.defaults import page_not_found
 from django.core.urlresolvers import reverse_lazy
-from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, PlainTextListView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView
+from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, DistributionSearchView, PlainTextListView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView
 
 urlpatterns = patterns('',
     url(r'^$', 
@@ -28,6 +28,10 @@ urlpatterns = patterns('',
         MachineSearchView.as_view(
             template_name='layerindex/machines.html'),
             name='machine_search'),
+    url(r'^distributions/$',
+        DistributionSearchView.as_view(
+            template_name='layerindex/distributions.html'),
+            name='distribution_search'),
     url(r'^edit/(?P<slug>[-\w]+)/$', edit_layer_view, {'template_name': 'layerindex/editlayer.html'}, name="edit_layer"),
     url(r'^duplicates/$',
         DuplicatesView.as_view(
diff --git a/layerindex/views.py b/layerindex/views.py
index 3f9525d..24ebad4 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -10,7 +10,7 @@ from django.http import HttpResponse, HttpResponseRedirect, HttpResponseForbidde
 from django.core.urlresolvers import reverse, reverse_lazy, resolve
 from django.core.exceptions import PermissionDenied
 from django.template import RequestContext
-from layerindex.models import Branch, LayerItem, LayerMaintainer, LayerBranch, LayerDependency, LayerNote, Recipe, Machine, BBClass, BBAppend, RecipeChange, RecipeChangeset, ClassicRecipe
+from layerindex.models import Branch, LayerItem, LayerMaintainer, LayerBranch, LayerDependency, LayerNote, Recipe, Machine, Distribution, BBClass, BBAppend, RecipeChange, RecipeChangeset, ClassicRecipe
 from datetime import datetime
 from itertools import chain
 from django.views.generic import TemplateView, DetailView, ListView
@@ -326,6 +326,7 @@ class LayerDetailView(DetailView):
         if layerbranch:
             context['layerbranch'] = layerbranch
             context['machines'] = layerbranch.machine_set.order_by('name')
+            context['distributions'] = layerbranch.distribution_set.order_by('name')
             context['appends'] = layerbranch.bbappend_set.order_by('filename')
             context['classes'] = layerbranch.bbclass_set.order_by('name')
         context['url_branch'] = self.kwargs['branch']
@@ -596,6 +597,32 @@ class MachineSearchView(ListView):
         return context
 
 
+class DistributionSearchView(ListView):
+    context_object_name = 'distribution_list'
+    paginate_by = 50
+
+    def get_queryset(self):
+        _check_url_branch(self.kwargs)
+        query_string = self.request.GET.get('q', '')
+        init_qs = Distribution.objects.filter(layerbranch__branch__name=self.kwargs['branch'])
+        if query_string.strip():
+            entry_query = simplesearch.get_query(query_string, ['name', 'description'])
+            return init_qs.filter(entry_query).order_by('name', 'layerbranch__layer')
+
+        if 'q' in self.request.GET:
+            return init_qs.order_by('name', 'layerbranch__layer')
+
+        # Be consistent with RecipeSearchView
+        return Distribution.objects.none()
+
+    def get_context_data(self, **kwargs):
+        context = super(DistributionSearchView, self).get_context_data(**kwargs)
+        context['search_keyword'] = self.request.GET.get('q', '')
+        context['url_branch'] = self.kwargs['branch']
+        context['this_url_name'] = resolve(self.request.path_info).url_name
+        return context
+
+
 class PlainTextListView(ListView):
     def render_to_response(self, context):
         "Returns a plain text response rendering of the template"
diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
index d0d11c0..f83b1f2 100644
--- a/templates/layerindex/detail.html
+++ b/templates/layerindex/detail.html
@@ -168,6 +168,9 @@
             {% if classes.count > 0 %}
                 <li><a href="#classes" data-toggle="tab">Classes</a></li>
             {% endif %}
+            {% if distributions.count > 0 %}
+                <li><a href="#distributions" data-toggle="tab">Distributions</a></li>
+            {% endif %}
         </ul>
 
         <div class="tab-content">
@@ -265,6 +268,26 @@
                     </table>
                 </div>
             {% endif %}
+            {% if distributions.count > 0 %}
+                <div class="tab-pane" id="distributions">
+                    <div class="navbar">
+                        <div class="navbar-inner">
+                                <a class="brand pull-left">{{ layeritem.name }} distributions</a>
+                        </div>
+                    </div>
+
+                    <table class="table table-bordered">
+                        <tbody>
+                            {% for distribution in distributions %}
+                                <tr>
+                                    <td><a href="{{ distribution.vcs_web_url }}">{{ distribution.name }}</a></td>
+                                    <td>{{ distribution.description }}</td>
+                                </tr>
+                            {% endfor %}
+                        </tbody>
+                    </table>
+                </div>
+            {% endif %}
         </div>
  
 
diff --git a/templates/layerindex/distributions.html b/templates/layerindex/distributions.html
new file mode 100644
index 0000000..f9d7755
--- /dev/null
+++ b/templates/layerindex/distributions.html
@@ -0,0 +1,76 @@
+{% extends "base_toplevel.html" %}
+{% load i18n %}
+
+{% comment %}
+
+  layerindex-web - distribution index page template
+
+  Copyright (C) 2013 Intel Corporation
+  Copyright (C) 2016 Wind River Systems
+  Licensed under the MIT license, see COPYING.MIT for details
+
+{% endcomment %}
+
+
+<!--
+{% block title_append %} - distributions{% endblock %}
+-->
+
+{% block navs %}
+{% autoescape on %}
+                            <li><a href="{% url 'layer_list' url_branch %}">Layers</a></li>
+                            <li><a href="{% url 'recipe_search' url_branch %}">Recipes</a></li>
+                            <li><a href="{% url 'machine_search' url_branch %}">Machines</a></li>
+                            <li class="active"><a href="{% url 'distribution_search' url_branch %}">Distributions</a></li>
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
+                        <form id="filter-form" action="{% url 'distribution_search' url_branch %}" method="get">
+                            <input type="text" class="input-xxlarge" id="appendedInputButtons" placeholder="Search distributions" name="q" value="{{ search_keyword }}" />
+                            <button class="btn" type="submit">search</button>
+                        </form>
+                    </div>
+                </div>
+
+{% if distribution_list %}
+                <table class="table table-striped table-bordered distributionstable">
+                    <thead>
+                        <tr>
+                            <th>Distribution name</th>
+                            <th class="span9">Description</th>
+                            <th>Layer</th>
+                        </tr>
+                    </thead>
+
+                    <tbody>
+                        {% for distribution in distribution_list %}
+                            <tr>
+                                <td><a href="{{ distribution.vcs_web_url }}">{{ distribution.name }}</a></td>
+                                <td>{{ distribution.description }}</td>
+                                <td><a href="{% url 'layer_item' url_branch distribution.layerbranch.layer.name %}">{{ distribution.layerbranch.layer.name }}</a></td>
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
+    <p>No matching distributions in database.</p>
+    {% endif %}
+{% endif %}
+
+
+{% endautoescape %}
+
+{% endblock %}
diff --git a/templates/layerindex/layers.html b/templates/layerindex/layers.html
index cfc4ebd..1e647b3 100644
--- a/templates/layerindex/layers.html
+++ b/templates/layerindex/layers.html
@@ -21,6 +21,7 @@
                             <li class="active"><a href="{% url 'layer_list' url_branch %}">Layers</a></li>
                             <li><a href="{% url 'recipe_search' url_branch %}">Recipes</a></li>
                             <li><a href="{% url 'machine_search' url_branch %}">Machines</a></li>
+                            <li><a href="{% url 'distribution_search' url_branch %}">Distributions</a></li>
 {% endautoescape %}
 {% endblock %}
 
diff --git a/templates/layerindex/machines.html b/templates/layerindex/machines.html
index e31433c..867d2cc 100644
--- a/templates/layerindex/machines.html
+++ b/templates/layerindex/machines.html
@@ -20,6 +20,7 @@
                             <li><a href="{% url 'layer_list' url_branch %}">Layers</a></li>
                             <li><a href="{% url 'recipe_search' url_branch %}">Recipes</a></li>
                             <li class="active"><a href="{% url 'machine_search' url_branch %}">Machines</a></li>
+                            <li><a href="{% url 'distribution_search' url_branch %}">Distributions</a></li>
 {% endautoescape %}
 {% endblock %}
 
diff --git a/templates/layerindex/recipes.html b/templates/layerindex/recipes.html
index 74f3bb4..81e081c 100644
--- a/templates/layerindex/recipes.html
+++ b/templates/layerindex/recipes.html
@@ -20,6 +20,7 @@
                             <li><a href="{% url 'layer_list' url_branch %}">Layers</a></li>
                             <li class="active"><a href="{% url 'recipe_search' url_branch %}">Recipes</a></li>
                             <li><a href="{% url 'machine_search' url_branch %}">Machines</a></li>
+                            <li><a href="{% url 'distribution_search' url_branch %}">Distributions</a></li>
 {% endautoescape %}
 {% endblock %}
 
-- 
1.9.1


