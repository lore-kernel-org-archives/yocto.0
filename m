Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90AAFE00C7C; Mon, 27 Nov 2017 16:34:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D991E00BEA
	for <yocto@yoctoproject.org>; Mon, 27 Nov 2017 16:34:10 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Nov 2017 16:34:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,466,1505804400"; d="scan'208";a="12686261"
Received: from arbrindl-dev.jf.intel.com ([10.7.199.57])
	by orsmga002.jf.intel.com with ESMTP; 27 Nov 2017 16:34:09 -0800
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Nov 2017 16:33:35 -0800
Message-Id: <c9c3ca82300e98782ad2fb89a85c3181764dd5f3.1511828935.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1511828935.git.amanda.r.brindle@intel.com>
References: <cover.1511828935.git.amanda.r.brindle@intel.com>
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex-web 1/1] update_layer.py: Save and show recipe dependencies
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
X-List-Received-Date: Tue, 28 Nov 2017 00:34:11 -0000

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

Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
---
 layerindex/admin.py                    | 20 +++++++++++++++++-
 layerindex/models.py                   | 24 +++++++++++++++++++++
 layerindex/update_layer.py             | 38 ++++++++++++++++++++++++++++++++++
 layerindex/views.py                    | 11 +++++++++-
 templates/layerindex/recipedetail.html | 33 +++++++++++++++++++++++++++++
 5 files changed, 124 insertions(+), 2 deletions(-)

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
index 03d47f2..890163a 100644
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
@@ -836,6 +843,8 @@ class RecipeDetailView(DetailView):
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


