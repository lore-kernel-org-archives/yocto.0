Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3061E00B48; Mon,  4 Dec 2017 16:17:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B537AE00B48
	for <yocto@yoctoproject.org>; Mon,  4 Dec 2017 16:17:38 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Dec 2017 16:17:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,362,1508828400"; d="scan'208";a="156068583"
Received: from arbrindl-dev.jf.intel.com ([10.7.199.57])
	by orsmga004.jf.intel.com with ESMTP; 04 Dec 2017 16:17:38 -0800
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  4 Dec 2017 16:17:45 -0800
Message-Id: <370a3b4903691eb42777fed7f9bb21e1812d0d0a.1512432610.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1512432610.git.amanda.r.brindle@intel.com>
References: <cover.1512432610.git.amanda.r.brindle@intel.com>
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex-web][PATCH v2 1/1] update_layer.py: Save and show recipe dependencies
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
X-List-Received-Date: Tue, 05 Dec 2017 00:17:39 -0000

Added a model for the PACKAGECONFIG variable, which has a one to
many relationship with the Recipe model.

Added models for static build dependencies and dynamic build
dependenices, both of which have a many to many relationship with
the Recipe model.

These objects are created in update_layer.py and are displayed on the
Recipe detail page.

Added a depends search option for recipes, allowing users to search for
recipes based on the recipe's build dependencies.

Fixes [YOCTO #12129]
Fixes [YOCTO #11415]

Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
---
 layerindex/admin.py                            | 20 ++++++++++-
 layerindex/migrations/0010_add_dependencies.py | 50 ++++++++++++++++++++++++++
 layerindex/models.py                           | 24 +++++++++++++
 layerindex/update_layer.py                     | 38 ++++++++++++++++++++
 layerindex/views.py                            | 11 +++++-
 templates/layerindex/recipedetail.html         | 33 +++++++++++++++++
 6 files changed, 174 insertions(+), 2 deletions(-)
 create mode 100644 layerindex/migrations/0010_add_dependencies.py

diff --git a/layerindex/admin.py b/layerindex/admin.py
index a7d024b..ed0307c 100644
--- a/layerindex/admin.py
+++ b/layerindex/admin.py
@@ -89,12 +89,27 @@ class LayerUpdateAdmin(admin.ModelAdmin):
 class RecipeAdmin(admin.ModelAdmin):
     search_fields = ['filename', 'pn']
     list_filter = ['layerbranch__layer__name', 'layerbranch__branch__name']
-    readonly_fields = [fieldname for fieldname in Recipe._meta.get_all_field_names() if fieldname not in  ['recipefiledependency', 'classicrecipe']]
+    readonly_fields = [fieldname for fieldname in Recipe._meta.get_all_field_names() if fieldname not in  ['recipefiledependency', 'classicrecipe', 'packageconfig']]
     def has_add_permission(self, request, obj=None):
         return False
     def has_delete_permission(self, request, obj=None):
         return False
 
+class PackageConfigAdmin(admin.ModelAdmin):
+    search_fields = ['feature']
+    list_display = ('feature',)
+    ordering = ('feature',)
+
+class StaticBuildDepAdmin(admin.ModelAdmin):
+    search_fields = ['name']
+    list_display = ('name',)
+    filter_horizontal = ('recipes',)
+
+class DynamicBuildDepAdmin(admin.ModelAdmin):
+    search_fields = ['name']
+    list_display = ('name',)
+    filter_horizontal = ('package_configs',)
+
 class ClassicRecipeAdmin(admin.ModelAdmin):
     search_fields = ['filename', 'pn']
     list_filter = ['layerbranch__layer__name', 'layerbranch__branch__name']
@@ -159,6 +174,9 @@ admin.site.register(LayerDependency, LayerDependencyAdmin)
 admin.site.register(LayerNote, LayerNoteAdmin)
 admin.site.register(Update, UpdateAdmin)
 admin.site.register(LayerUpdate, LayerUpdateAdmin)
+admin.site.register(PackageConfig, PackageConfigAdmin)
+admin.site.register(StaticBuildDep, StaticBuildDepAdmin)
+admin.site.register(DynamicBuildDep, DynamicBuildDepAdmin)
 admin.site.register(Recipe, RecipeAdmin)
 admin.site.register(RecipeFileDependency)
 admin.site.register(Machine, MachineAdmin)
diff --git a/layerindex/migrations/0010_add_dependencies.py b/layerindex/migrations/0010_add_dependencies.py
new file mode 100644
index 0000000..16cd776
--- /dev/null
+++ b/layerindex/migrations/0010_add_dependencies.py
@@ -0,0 +1,50 @@
+# -*- coding: utf-8 -*-
+from __future__ import unicode_literals
+
+from django.db import migrations, models
+
+
+class Migration(migrations.Migration):
+
+    dependencies = [
+        ('layerindex', '0009_layerbranch_collection'),
+    ]
+
+    operations = [
+        migrations.CreateModel(
+            name='DynamicBuildDep',
+            fields=[
+                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='ID', auto_created=True)),
+                ('name', models.CharField(max_length=255)),
+            ],
+        ),
+        migrations.CreateModel(
+            name='PackageConfig',
+            fields=[
+                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='ID', auto_created=True)),
+                ('feature', models.CharField(max_length=255)),
+                ('with_option', models.CharField(max_length=255, blank=True)),
+                ('without_option', models.CharField(max_length=255, blank=True)),
+                ('build_deps', models.CharField(max_length=255, blank=True)),
+                ('recipe', models.ForeignKey(to='layerindex.Recipe')),
+            ],
+        ),
+        migrations.CreateModel(
+            name='StaticBuildDep',
+            fields=[
+                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='ID', auto_created=True)),
+                ('name', models.CharField(max_length=255)),
+                ('recipes', models.ManyToManyField(to='layerindex.Recipe')),
+            ],
+        ),
+        migrations.AddField(
+            model_name='dynamicbuilddep',
+            name='package_configs',
+            field=models.ManyToManyField(to='layerindex.PackageConfig'),
+        ),
+        migrations.AddField(
+            model_name='dynamicbuilddep',
+            name='recipes',
+            field=models.ManyToManyField(to='layerindex.Recipe'),
+        ),
+    ]
diff --git a/layerindex/models.py b/layerindex/models.py
index b39518a..6fdef04 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -357,6 +357,30 @@ class Recipe(models.Model):
     def __str__(self):
         return os.path.join(self.filepath, self.filename)
 
+class PackageConfig(models.Model):
+    recipe = models.ForeignKey(Recipe)
+    feature = models.CharField(max_length=255)
+    with_option = models.CharField(max_length=255, blank=True)
+    without_option = models.CharField(max_length=255, blank=True)
+    build_deps = models.CharField(max_length=255, blank=True)
+
+    def __str__(self):
+        return "%s - %s" % (self.recipe, self.feature)
+
+class StaticBuildDep(models.Model):
+    recipes = models.ManyToManyField(Recipe)
+    name = models.CharField(max_length=255)
+
+    def __str__(self):
+        return self.name
+
+class DynamicBuildDep(models.Model):
+    package_configs = models.ManyToManyField(PackageConfig)
+    recipes = models.ManyToManyField(Recipe)
+    name = models.CharField(max_length=255)
+
+    def __str__(self):
+        return self.name
 
 class RecipeFileDependency(models.Model):
     recipe = models.ForeignKey(Recipe)
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index d91c00e..c0fa8bc 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -57,6 +57,7 @@ def split_recipe_fn(path):
 
 def update_recipe_file(tinfoil, data, path, recipe, layerdir_start, repodir):
     fn = str(os.path.join(path, recipe.filename))
+    from layerindex.models import PackageConfig, StaticBuildDep, DynamicBuildDep
     try:
         logger.debug('Updating recipe %s' % fn)
         if hasattr(tinfoil, 'parse_recipe_file'):
@@ -81,6 +82,43 @@ def update_recipe_file(tinfoil, data, path, recipe, layerdir_start, repodir):
         recipe.blacklisted = envdata.getVarFlag('PNBLACKLIST', recipe.pn, True) or ""
         recipe.save()
 
+        # Handle static build dependencies for this recipe
+        static_dependencies = envdata.getVar("DEPENDS", True) or ""
+        for dep in static_dependencies.split():
+            static_build_dependency = StaticBuildDep.objects.get_or_create(name=dep)
+            static_build_dependency[0].save()
+            static_build_dependency[0].recipes.add(recipe)
+
+        # Handle the PACKAGECONFIG variables for this recipe
+        package_config_VarFlags = envdata.getVarFlags("PACKAGECONFIG")
+        for key, value in package_config_VarFlags.items():
+            if key == "doc":
+                continue
+            package_config = PackageConfig()
+            package_config.feature = key
+            package_config.recipe = recipe
+            package_config_vals = value.split(",")
+            try:
+                package_config.build_deps = package_config_vals[2]
+            except IndexError:
+                pass
+            try:
+                package_config.with_option = package_config_vals[0]
+            except IndexError:
+                pass
+            try:
+                package_config.without_option = package_config_vals[1]
+            except IndexError:
+                pass
+            package_config.save()
+            # Handle the dynamic dependencies for the PACKAGECONFIG variable
+            if package_config.build_deps:
+                for dep in package_config.build_deps.split():
+                    dynamic_build_dependency = DynamicBuildDep.objects.get_or_create(name=dep)
+                    dynamic_build_dependency[0].save()
+                    dynamic_build_dependency[0].package_configs.add(package_config)
+                    dynamic_build_dependency[0].recipes.add(recipe)
+
         # Get file dependencies within this layer
         deps = envdata.getVar('__depends', True)
         filedeps = []
diff --git a/layerindex/views.py b/layerindex/views.py
index 414c770..b8bb1f3 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -10,7 +10,7 @@ from django.http import HttpResponse, HttpResponseRedirect, HttpResponseForbidde
 from django.core.urlresolvers import reverse, reverse_lazy, resolve
 from django.core.exceptions import PermissionDenied
 from django.template import RequestContext
-from layerindex.models import Branch, LayerItem, LayerMaintainer, LayerBranch, LayerDependency, LayerNote, Update, LayerUpdate, Recipe, Machine, Distro, BBClass, BBAppend, RecipeChange, RecipeChangeset, ClassicRecipe
+from layerindex.models import Branch, LayerItem, LayerMaintainer, LayerBranch, LayerDependency, LayerNote, Update, LayerUpdate, Recipe, Machine, Distro, BBClass, BBAppend, RecipeChange, RecipeChangeset, ClassicRecipe, StaticBuildDep, DynamicBuildDep
 from datetime import datetime
 from django.views.generic import TemplateView, DetailView, ListView
 from django.views.generic.edit import CreateView, DeleteView, UpdateView
@@ -428,6 +428,13 @@ class RecipeSearchView(ListView):
         for item in query_items:
             if item.startswith('inherits:'):
                 inherits.append(item.split(':')[1])
+
+            # support searches by build dependencies
+            elif item.startswith('depends:'):
+                static_build_dependencies = StaticBuildDep.objects.filter(name=item.split(':')[1])[0]
+                dynamic_build_dependencies = DynamicBuildDep.objects.filter(name=item.split(':')[1])[0]
+                init_qs = init_qs.filter(Q(staticbuilddep=static_build_dependencies) | Q(dynamicbuilddep=dynamic_build_dependencies)).distinct()
+
             # support searches by layer name
             elif item.startswith('layer:'):
                 query_layername = item.split(':')[1].strip().lower()
@@ -845,6 +852,8 @@ class RecipeDetailView(DetailView):
                 if append.matches_recipe(recipe):
                     verappends.append(append)
             context['verappends'] = verappends
+            context['packageconfigs'] = recipe.packageconfig_set.order_by('feature')
+            context['staticdependencies'] = recipe.staticbuilddep_set.order_by('name')
         return context
 
 
diff --git a/templates/layerindex/recipedetail.html b/templates/layerindex/recipedetail.html
index 5b83886..6f1303a 100644
--- a/templates/layerindex/recipedetail.html
+++ b/templates/layerindex/recipedetail.html
@@ -112,6 +112,39 @@
                                 {% endif %}
                             </td>
                         </tr>
+                        <tr>
+                            <th>Dependencies</th>
+                            <td>
+                                {% if staticdependencies %}
+                                    <ul class="unstyled">
+                                        {% for dep in staticdependencies %}
+                                            <li> {{dep.name}} </li>
+                                        {% endfor %}
+                                    </ul>
+                                {% endif %}
+                                {% if packageconfigs %}
+                                    <ul class="unstyled">
+                                        {% for pc in packageconfigs %}
+                                            {% for dep in pc.dynamicbuilddep_set.all %}
+                                            <li> {{dep.name}}<a data-toggle="tooltip" title="PACKAGECONFIG[{{pc.feature}}] = {{pc.with_option}},{{pc.without_option}}" i class="icon-cog"> </a> </li>
+                                            {% endfor %}
+                                        {% endfor %}
+                                    </ul>
+                                {% endif %}
+                            </td>
+                        </tr>
+                        <tr>
+                            <th>Package Configs</th>
+                            <td>
+                                {% if packageconfigs %}
+                                    <ul class="unstyled">
+                                        {% for pc in packageconfigs %}
+                                            <li> PACKAGECONFIG[{{ pc.feature }}] = "{{pc.with_option}},{{pc.without_option}},{{pc.build_deps}}," </li>
+                                        {% endfor %}
+                                    </ul>
+                                {% endif %}
+                            </td>
+                        </tr>
                     </tbody>
                 </table>
 
-- 
2.7.4


