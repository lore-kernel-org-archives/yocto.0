Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B42CE00D41; Fri, 15 Dec 2017 13:07:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AC54E00CE8
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 13:07:20 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Dec 2017 13:07:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,406,1508828400"; d="scan'208";a="18623398"
Received: from arbrindl-dev.jf.intel.com ([10.7.199.57])
	by orsmga002.jf.intel.com with ESMTP; 15 Dec 2017 13:07:20 -0800
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Dec 2017 13:06:53 -0800
Message-Id: <5817a0319e3db4f60d9936b6156805be0fe52cfa.1513371419.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1513371419.git.amanda.r.brindle@intel.com>
References: <cover.1513371419.git.amanda.r.brindle@intel.com>
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex-web][PATCH v3 1/1] update_layer.py: Save and show recipe dependencies
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
X-List-Received-Date: Fri, 15 Dec 2017 21:07:24 -0000

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
 layerindex/views.py                            | 17 ++++++++-
 templates/layerindex/recipedetail.html         | 41 +++++++++++++++++++++
 6 files changed, 188 insertions(+), 2 deletions(-)
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
index 414c770..ccb85b8 100644
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
@@ -428,6 +428,19 @@ class RecipeSearchView(ListView):
         for item in query_items:
             if item.startswith('inherits:'):
                 inherits.append(item.split(':')[1])
+
+            # support searches by build dependencies
+            elif item.startswith('depends:'):
+                depsearch = item.split(':')[1]
+                qobj = Q(pk__in=[])
+                static_build_dependencies = StaticBuildDep.objects.filter(name=depsearch).first()
+                dynamic_build_dependencies = DynamicBuildDep.objects.filter(name=depsearch).first()
+                if static_build_dependencies:
+                    qobj |= Q(staticbuilddep=static_build_dependencies)
+                if dynamic_build_dependencies:
+                    qobj |= Q(dynamicbuilddep=dynamic_build_dependencies)
+                init_qs = init_qs.filter(qobj).distinct()
+
             # support searches by layer name
             elif item.startswith('layer:'):
                 query_layername = item.split(':')[1].strip().lower()
@@ -845,6 +858,8 @@ class RecipeDetailView(DetailView):
                 if append.matches_recipe(recipe):
                     verappends.append(append)
             context['verappends'] = verappends
+            context['packageconfigs'] = recipe.packageconfig_set.order_by('feature')
+            context['staticdependencies'] = recipe.staticbuilddep_set.order_by('name')
         return context
 
 
diff --git a/templates/layerindex/recipedetail.html b/templates/layerindex/recipedetail.html
index 5b83886..4164f11 100644
--- a/templates/layerindex/recipedetail.html
+++ b/templates/layerindex/recipedetail.html
@@ -112,6 +112,39 @@
                                 {% endif %}
                             </td>
                         </tr>
+                        <tr>
+                            <th>Dependencies <i class="icon-exclamation-sign" data-toggle="tooltip" title="NOTE: Dependencies may vary based on configuration"></i></th>
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
+                                            <li> {{dep.name}}<i class="icon-cog" data-toggle="tooltip" title="If &quot;{{pc.feature}}&quot; is set in PACKAGECONFIG"></i></li>
+                                            {% endfor %}
+                                        {% endfor %}
+                                    </ul>
+                                {% endif %}
+                            </td>
+                        </tr>
+                        <tr>
+                            <th>PACKAGECONFIG options</th>
+                            <td>
+                                {% if packageconfigs %}
+                                    <ul class="unstyled">
+                                        {% for pc in packageconfigs %}
+                                            <li> {{ pc.feature }} </li>
+                                        {% endfor %}
+                                    </ul>
+                                {% endif %}
+                            </td>
+                        </tr>
                     </tbody>
                 </table>
 
@@ -149,3 +182,11 @@
 {% endautoescape %}
 
 {% endblock %}
+
+{% block scripts %}
+    <script>
+        $(document).ready(function() {
+            $('[data-toggle="tooltip"]').tooltip();
+        });
+    </script>
+{% endblock %}
-- 
2.7.4


