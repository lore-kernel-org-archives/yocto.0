Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web12.2119.1593125874946626116
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jun 2020 15:57:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: amber.n.elliot@intel.com)
IronPort-SDR: wjkgQeQeejhnydemI77sqCoQ/P/2u5fjQYNOMmmdr5IzgLVg2YrlOFnUFe9McOcxv7OVfmiRA3
 coy+rJzNBx/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="144197880"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="144197880"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:55 -0700
IronPort-SDR: 3a657c28eOvgw+4sQEQCZ1tc6dkgRcG8VdE2rAthEXmTzbYoDsGfNE/JgF2zJ7aHiwavIKUMbe
 Xzbpz/aJw+HQ==
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="299295914"
Received: from rbommagx-mobl1.amr.corp.intel.com (HELO localhost.localdomain) ([10.209.186.34])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:54 -0700
From: "Amber Elliot" <amber.n.elliot@intel.com>
To: yocto@lists.yoctoproject.org
Cc: Amber Elliot <amber.n.elliot@intel.com>
Subject: [layerindexweb][PATCH 2/7] Updating models and imports for Django 2.2 upgrade.
Date: Thu, 25 Jun 2020 15:57:34 -0700
Message-Id: <20200625225739.32402-3-amber.n.elliot@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200625225739.32402-1-amber.n.elliot@intel.com>
References: <20200625225739.32402-1-amber.n.elliot@intel.com>

Removed all obsolete references to django.core.urlresolvers. Added the
newly required on_delete fields to foreign key relationships in models.py
and in all migrations.

Signed-off-by: Amber Elliot  <amber.n.elliot@intel.com>
---
 layerindex/auth_views.py                      |  2 +-
 layerindex/middleware.py                      |  2 +-
 layerindex/migrations/0001_initial.py         | 36 +++++------
 layerindex/migrations/0002_distro.py          |  2 +-
 layerindex/migrations/0005_layerupdate.py     |  4 +-
 .../migrations/0010_add_dependencies.py       |  2 +-
 layerindex/migrations/0011_source.py          |  2 +-
 layerindex/migrations/0013_patch.py           |  2 +-
 .../0023_layerupdate_layer_branch_finalise.py |  4 +-
 layerindex/models.py                          | 59 +++++++++----------
 layerindex/urls.py                            |  2 +-
 layerindex/urls_branch.py                     |  2 +-
 layerindex/views.py                           |  2 +-
 urls.py                                       |  4 +-
 14 files changed, 62 insertions(+), 63 deletions(-)

diff --git a/layerindex/auth_views.py b/layerindex/auth_views.py
index d10c750..a147a9c 100644
--- a/layerindex/auth_views.py
+++ b/layerindex/auth_views.py
@@ -12,7 +12,7 @@ from django.contrib.auth.views import (PasswordResetConfirmView,
 from django.contrib.sites.shortcuts import get_current_site
 
 from django.core.exceptions import PermissionDenied
-from django.core.urlresolvers import reverse
+from django.urls import reverse
 from django.http import HttpResponseRedirect, HttpResponse
 from django.shortcuts import render
 from django.utils.decorators import method_decorator
diff --git a/layerindex/middleware.py b/layerindex/middleware.py
index cea207e..afe34a3 100644
--- a/layerindex/middleware.py
+++ b/layerindex/middleware.py
@@ -6,7 +6,7 @@
 
 from django.utils.deprecation import MiddlewareMixin
 from django.http import HttpResponseRedirect
-from django.core.urlresolvers import reverse
+from django.urls import reverse
 from reversion.middleware import RevisionMiddleware
 import settings
 import re
diff --git a/layerindex/migrations/0001_initial.py b/layerindex/migrations/0001_initial.py
index d08a1aa..c9517ef 100644
--- a/layerindex/migrations/0001_initial.py
+++ b/layerindex/migrations/0001_initial.py
@@ -69,7 +69,7 @@ class Migration(migrations.Migration):
                 ('vcs_last_commit', models.DateTimeField(verbose_name='Last commit date', blank=True, null=True)),
                 ('actual_branch', models.CharField(verbose_name='Actual Branch', blank=True, help_text='Name of the actual branch in the repository matching the core branch', max_length=80)),
                 ('updated', models.DateTimeField(auto_now=True)),
-                ('branch', models.ForeignKey(to='layerindex.Branch')),
+                ('branch', models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.Branch')),
             ],
             options={
                 'verbose_name_plural': 'Layer branches',
@@ -116,7 +116,7 @@ class Migration(migrations.Migration):
                 ('email', models.CharField(max_length=255)),
                 ('responsibility', models.CharField(blank=True, help_text='Specific area(s) this maintainer is responsible for, if not the entire layer', max_length=200)),
                 ('status', models.CharField(default='A', max_length=1, choices=[('A', 'Active'), ('I', 'Inactive')])),
-                ('layerbranch', models.ForeignKey(to='layerindex.LayerBranch')),
+                ('layerbranch', models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.LayerBranch')),
             ],
         ),
         migrations.CreateModel(
@@ -124,7 +124,7 @@ class Migration(migrations.Migration):
             fields=[
                 ('id', models.AutoField(primary_key=True, verbose_name='ID', auto_created=True, serialize=False)),
                 ('text', models.TextField()),
-                ('layer', models.ForeignKey(to='layerindex.LayerItem')),
+                ('layer', models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.LayerItem')),
             ],
         ),
         migrations.CreateModel(
@@ -134,7 +134,7 @@ class Migration(migrations.Migration):
                 ('name', models.CharField(max_length=255)),
                 ('description', models.CharField(max_length=255)),
                 ('updated', models.DateTimeField(auto_now=True)),
-                ('layerbranch', models.ForeignKey(to='layerindex.LayerBranch')),
+                ('layerbranch', models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.LayerBranch')),
             ],
         ),
         migrations.CreateModel(
@@ -184,7 +184,7 @@ class Migration(migrations.Migration):
             fields=[
                 ('id', models.AutoField(primary_key=True, verbose_name='ID', auto_created=True, serialize=False)),
                 ('name', models.CharField(max_length=255)),
-                ('user', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
+                ('user', models.ForeignKey(on_delete=models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
             ],
         ),
         migrations.CreateModel(
@@ -192,7 +192,7 @@ class Migration(migrations.Migration):
             fields=[
                 ('id', models.AutoField(primary_key=True, verbose_name='ID', auto_created=True, serialize=False)),
                 ('path', models.CharField(db_index=True, max_length=255)),
-                ('layerbranch', models.ForeignKey(related_name='+', to='layerindex.LayerBranch')),
+                ('layerbranch', models.ForeignKey(on_delete=models.deletion.CASCADE, related_name='+', to='layerindex.LayerBranch')),
             ],
             options={
                 'verbose_name_plural': 'Recipe file dependencies',
@@ -201,7 +201,7 @@ class Migration(migrations.Migration):
         migrations.CreateModel(
             name='ClassicRecipe',
             fields=[
-                ('recipe_ptr', models.OneToOneField(primary_key=True, to='layerindex.Recipe', auto_created=True, parent_link=True, serialize=False)),
+                ('recipe_ptr', models.OneToOneField(on_delete=models.deletion.CASCADE, primary_key=True, to='layerindex.Recipe', auto_created=True, parent_link=True, serialize=False)),
                 ('cover_pn', models.CharField(verbose_name='Covering recipe', blank=True, max_length=100)),
                 ('cover_status', models.CharField(default='U', max_length=1, choices=[('U', 'Unknown'), ('N', 'Not available'), ('R', 'Replaced'), ('P', 'Provided (BBCLASSEXTEND)'), ('C', 'Provided (PACKAGECONFIG)'), ('O', 'Obsolete'), ('E', 'Equivalent functionality'), ('D', 'Direct match')])),
                 ('cover_verified', models.BooleanField(default=False)),
@@ -216,57 +216,57 @@ class Migration(migrations.Migration):
         migrations.AddField(
             model_name='recipefiledependency',
             name='recipe',
-            field=models.ForeignKey(to='layerindex.Recipe'),
+            field=models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.Recipe'),
         ),
         migrations.AddField(
             model_name='recipechange',
             name='changeset',
-            field=models.ForeignKey(to='layerindex.RecipeChangeset'),
+            field=models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.RecipeChangeset'),
         ),
         migrations.AddField(
             model_name='recipechange',
             name='recipe',
-            field=models.ForeignKey(related_name='+', to='layerindex.Recipe'),
+            field=models.ForeignKey(on_delete=models.deletion.CASCADE, related_name='+', to='layerindex.Recipe'),
         ),
         migrations.AddField(
             model_name='recipe',
             name='layerbranch',
-            field=models.ForeignKey(to='layerindex.LayerBranch'),
+            field=models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.LayerBranch'),
         ),
         migrations.AddField(
             model_name='layerdependency',
             name='dependency',
-            field=models.ForeignKey(related_name='dependents_set', to='layerindex.LayerItem'),
+            field=models.ForeignKey(on_delete=models.deletion.CASCADE, related_name='dependents_set', to='layerindex.LayerItem'),
         ),
         migrations.AddField(
             model_name='layerdependency',
             name='layerbranch',
-            field=models.ForeignKey(related_name='dependencies_set', to='layerindex.LayerBranch'),
+            field=models.ForeignKey(on_delete=models.deletion.CASCADE, related_name='dependencies_set', to='layerindex.LayerBranch'),
         ),
         migrations.AddField(
             model_name='layerbranch',
             name='layer',
-            field=models.ForeignKey(to='layerindex.LayerItem'),
+            field=models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.LayerItem'),
         ),
         migrations.AddField(
             model_name='branch',
             name='update_environment',
-            field=models.ForeignKey(to='layerindex.PythonEnvironment', blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL),
+            field=models.ForeignKey(to='layerindex.PythonEnvironment', blank=True, null=True, on_delete=models.deletion.SET_NULL),
         ),
         migrations.AddField(
             model_name='bbclass',
             name='layerbranch',
-            field=models.ForeignKey(to='layerindex.LayerBranch'),
+            field=models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.LayerBranch'),
         ),
         migrations.AddField(
             model_name='bbappend',
             name='layerbranch',
-            field=models.ForeignKey(to='layerindex.LayerBranch'),
+            field=models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.LayerBranch'),
         ),
         migrations.AddField(
             model_name='classicrecipe',
             name='cover_layerbranch',
-            field=models.ForeignKey(to='layerindex.LayerBranch', verbose_name='Covering layer', blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL),
+            field=models.ForeignKey(to='layerindex.LayerBranch', verbose_name='Covering layer', blank=True, null=True, on_delete=models.deletion.SET_NULL),
         ),
         migrations.RunPython(create_master_branch, reverse_code=migrations.RunPython.noop),
     ]
diff --git a/layerindex/migrations/0002_distro.py b/layerindex/migrations/0002_distro.py
index 732007d..ac94cb6 100644
--- a/layerindex/migrations/0002_distro.py
+++ b/layerindex/migrations/0002_distro.py
@@ -18,7 +18,7 @@ class Migration(migrations.Migration):
                 ('name', models.CharField(max_length=255)),
                 ('description', models.CharField(max_length=255)),
                 ('updated', models.DateTimeField(auto_now=True)),
-                ('layerbranch', models.ForeignKey(to='layerindex.LayerBranch')),
+                ('layerbranch', models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.LayerBranch')),
             ],
         ),
     ]
diff --git a/layerindex/migrations/0005_layerupdate.py b/layerindex/migrations/0005_layerupdate.py
index 3cf4ab2..7a6cb40 100644
--- a/layerindex/migrations/0005_layerupdate.py
+++ b/layerindex/migrations/0005_layerupdate.py
@@ -20,7 +20,7 @@ class Migration(migrations.Migration):
                 ('errors', models.IntegerField(default=0)),
                 ('warnings', models.IntegerField(default=0)),
                 ('log', models.TextField(blank=True)),
-                ('layerbranch', models.ForeignKey(to='layerindex.LayerBranch')),
+                ('layerbranch', models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.LayerBranch')),
             ],
         ),
         migrations.CreateModel(
@@ -41,6 +41,6 @@ class Migration(migrations.Migration):
         migrations.AddField(
             model_name='layerupdate',
             name='update',
-            field=models.ForeignKey(to='layerindex.Update'),
+            field=models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.Update'),
         ),
     ]
diff --git a/layerindex/migrations/0010_add_dependencies.py b/layerindex/migrations/0010_add_dependencies.py
index 16cd776..cedf140 100644
--- a/layerindex/migrations/0010_add_dependencies.py
+++ b/layerindex/migrations/0010_add_dependencies.py
@@ -26,7 +26,7 @@ class Migration(migrations.Migration):
                 ('with_option', models.CharField(max_length=255, blank=True)),
                 ('without_option', models.CharField(max_length=255, blank=True)),
                 ('build_deps', models.CharField(max_length=255, blank=True)),
-                ('recipe', models.ForeignKey(to='layerindex.Recipe')),
+                ('recipe', models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.Recipe')),
             ],
         ),
         migrations.CreateModel(
diff --git a/layerindex/migrations/0011_source.py b/layerindex/migrations/0011_source.py
index 515e71c..3ab97dc 100644
--- a/layerindex/migrations/0011_source.py
+++ b/layerindex/migrations/0011_source.py
@@ -16,7 +16,7 @@ class Migration(migrations.Migration):
             fields=[
                 ('id', models.AutoField(verbose_name='ID', primary_key=True, serialize=False, auto_created=True)),
                 ('url', models.CharField(max_length=255)),
-                ('recipe', models.ForeignKey(to='layerindex.Recipe')),
+                ('recipe', models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.Recipe')),
             ],
         ),
     ]
diff --git a/layerindex/migrations/0013_patch.py b/layerindex/migrations/0013_patch.py
index 9e7180e..b54e75c 100644
--- a/layerindex/migrations/0013_patch.py
+++ b/layerindex/migrations/0013_patch.py
@@ -19,7 +19,7 @@ class Migration(migrations.Migration):
                 ('src_path', models.CharField(max_length=255)),
                 ('status', models.CharField(default='U', choices=[('U', 'Unknown'), ('A', 'Accepted'), ('P', 'Pending'), ('I', 'Inappropriate'), ('B', 'Backport'), ('S', 'Submitted'), ('D', 'Denied')], max_length=1)),
                 ('status_extra', models.CharField(blank=True, max_length=255)),
-                ('recipe', models.ForeignKey(to='layerindex.Recipe')),
+                ('recipe', models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.Recipe')),
             ],
             options={
                 'verbose_name_plural': 'Patches',
diff --git a/layerindex/migrations/0023_layerupdate_layer_branch_finalise.py b/layerindex/migrations/0023_layerupdate_layer_branch_finalise.py
index ba6b72f..d9737c7 100644
--- a/layerindex/migrations/0023_layerupdate_layer_branch_finalise.py
+++ b/layerindex/migrations/0023_layerupdate_layer_branch_finalise.py
@@ -15,12 +15,12 @@ class Migration(migrations.Migration):
         migrations.AlterField(
             model_name='layerupdate',
             name='branch',
-            field=models.ForeignKey(to='layerindex.Branch'),
+            field=models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.Branch'),
         ),
         migrations.AlterField(
             model_name='layerupdate',
             name='layer',
-            field=models.ForeignKey(to='layerindex.LayerItem'),
+            field=models.ForeignKey(on_delete=models.deletion.CASCADE, to='layerindex.LayerItem'),
         ),
         migrations.RemoveField(
             model_name='layerupdate',
diff --git a/layerindex/models.py b/layerindex/models.py
index 04888be..4d75bed 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -7,7 +7,7 @@
 from django.db import models
 from datetime import datetime
 from django.contrib.auth.models import User
-from django.core.urlresolvers import reverse
+from django.urls import reverse
 from django.core.validators import URLValidator
 from django.db.models.signals import pre_save
 from django.dispatch import receiver
@@ -140,7 +140,6 @@ class LayerItem(models.Model):
     mailing_list_url = models.URLField('Mailing list URL', blank=True, help_text='URL of the info page for a mailing list for discussing the layer, if any')
     index_preference = models.IntegerField('Preference', default=0, help_text='Number used to find preferred recipes in recipe search results (higher number is greater preference)')
     comparison = models.BooleanField('Comparison', default=False, help_text='Is this a comparison layer?')
-
     updated = models.DateTimeField(auto_now=True)
 
     class Meta:
@@ -196,7 +195,7 @@ class LayerItem(models.Model):
 
 
 class LayerRecipeExtraURL(models.Model):
-    layer = models.ForeignKey(LayerItem)
+    layer = models.ForeignKey(LayerItem, on_delete=models.CASCADE)
     name = models.CharField(max_length=50, help_text='Name to display for link')
     url = models.CharField('URL', max_length=255, help_text='Template for URL to link to (macros: %pn% %pv% %branch% %actual_branch%)')
 
@@ -229,8 +228,8 @@ class YPCompatibleVersion(models.Model):
         return self.name
 
 class LayerBranch(models.Model):
-    layer = models.ForeignKey(LayerItem)
-    branch = models.ForeignKey(Branch)
+    layer = models.ForeignKey(LayerItem, on_delete=models.CASCADE)
+    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
     collection = models.CharField('Layer Collection', max_length=40, null=True, blank=True, help_text='Name of the collection that the layer provides for the purpose of expressing dependencies (as specified in BBFILE_COLLECTIONS). Can only contain letters, numbers and dashes.')
     version = models.CharField('Layer Version', max_length=10, null=True, blank=True, help_text='The layer version for this particular branch.')
     vcs_subdir = models.CharField('Repository subdirectory', max_length=40, blank=True, help_text='Subdirectory within the repository where the layer is located, if not in the root (usually only used if the repository contains more than one layer)')
@@ -375,7 +374,7 @@ class LayerMaintainer(models.Model):
         ('A', 'Active'),
         ('I', 'Inactive'),
     )
-    layerbranch = models.ForeignKey(LayerBranch)
+    layerbranch = models.ForeignKey(LayerBranch, on_delete=models.CASCADE)
     name = models.CharField(max_length=255)
     email = models.CharField(max_length=255)
     responsibility = models.CharField(max_length=200, blank=True, help_text='Specific area(s) this maintainer is responsible for, if not the entire layer')
@@ -389,8 +388,8 @@ class LayerMaintainer(models.Model):
 
 
 class LayerDependency(models.Model):
-    layerbranch = models.ForeignKey(LayerBranch, related_name='dependencies_set')
-    dependency = models.ForeignKey(LayerItem, related_name='dependents_set')
+    layerbranch = models.ForeignKey(LayerBranch, related_name='dependencies_set', on_delete=models.CASCADE)
+    dependency = models.ForeignKey(LayerItem, related_name='dependents_set', on_delete=models.CASCADE)
     required = models.BooleanField(default=True)
 
     class Meta:
@@ -401,7 +400,7 @@ class LayerDependency(models.Model):
 
 
 class LayerNote(models.Model):
-    layer = models.ForeignKey(LayerItem)
+    layer = models.ForeignKey(LayerItem, on_delete=models.CASCADE)
     text = models.TextField()
 
     def __str__(self):
@@ -409,9 +408,9 @@ class LayerNote(models.Model):
 
 
 class LayerUpdate(models.Model):
-    layer = models.ForeignKey(LayerItem)
-    branch = models.ForeignKey(Branch)
-    update = models.ForeignKey(Update)
+    layer = models.ForeignKey(LayerItem, on_delete=models.CASCADE)
+    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
+    update = models.ForeignKey(Update, on_delete=models.CASCADE)
     started = models.DateTimeField()
     finished = models.DateTimeField(blank=True, null=True)
     errors = models.IntegerField(default=0)
@@ -456,7 +455,7 @@ class LayerUpdate(models.Model):
 
 
 class Recipe(models.Model):
-    layerbranch = models.ForeignKey(LayerBranch)
+    layerbranch = models.ForeignKey(LayerBranch, on_delete=models.CASCADE)
     filename = models.CharField(max_length=255)
     filepath = models.CharField(max_length=255, blank=True)
     pn = models.CharField(max_length=100, blank=True)
@@ -527,7 +526,7 @@ class Recipe(models.Model):
 
 
 class Source(models.Model):
-    recipe = models.ForeignKey(Recipe)
+    recipe = models.ForeignKey(Recipe, on_delete=models.CASCADE)
     url = models.CharField(max_length=255)
     sha256sum = models.CharField(max_length=64, blank=True)
 
@@ -561,7 +560,7 @@ class Patch(models.Model):
         ('S', 'Submitted'),
         ('D', 'Denied'),
         ]
-    recipe = models.ForeignKey(Recipe)
+    recipe = models.ForeignKey(Recipe, on_delete=models.CASCADE)
     path = models.CharField(max_length=255)
     src_path = models.CharField(max_length=255)
     status = models.CharField(max_length=1, choices=PATCH_STATUS_CHOICES, default='U')
@@ -610,7 +609,7 @@ class Patch(models.Model):
 
 
 class PackageConfig(models.Model):
-    recipe = models.ForeignKey(Recipe)
+    recipe = models.ForeignKey(Recipe, on_delete=models.CASCADE)
     feature = models.CharField(max_length=255)
     with_option = models.CharField(max_length=255, blank=True)
     without_option = models.CharField(max_length=255, blank=True)
@@ -638,8 +637,8 @@ class DynamicBuildDep(models.Model):
         return self.name
 
 class RecipeFileDependency(models.Model):
-    recipe = models.ForeignKey(Recipe)
-    layerbranch = models.ForeignKey(LayerBranch, related_name='+')
+    recipe = models.ForeignKey(Recipe, on_delete=models.CASCADE)
+    layerbranch = models.ForeignKey(LayerBranch, related_name='+', on_delete=models.CASCADE)
     path = models.CharField(max_length=255, db_index=True)
 
     class Meta:
@@ -715,8 +714,8 @@ class ClassicRecipe(Recipe):
 
 
 class ComparisonRecipeUpdate(models.Model):
-    update = models.ForeignKey(Update)
-    recipe = models.ForeignKey(ClassicRecipe)
+    update = models.ForeignKey(Update, on_delete=models.CASCADE)
+    recipe = models.ForeignKey(ClassicRecipe, on_delete=models.CASCADE)
     meta_updated = models.BooleanField(default=False)
     link_updated = models.BooleanField(default=False)
 
@@ -725,7 +724,7 @@ class ComparisonRecipeUpdate(models.Model):
 
 
 class Machine(models.Model):
-    layerbranch = models.ForeignKey(LayerBranch)
+    layerbranch = models.ForeignKey(LayerBranch, on_delete=models.CASCADE)
     name = models.CharField(max_length=255)
     description = models.CharField(max_length=255)
 
@@ -739,7 +738,7 @@ class Machine(models.Model):
         return '%s (%s)' % (self.name, self.layerbranch.layer.name)
 
 class Distro(models.Model):
-    layerbranch = models.ForeignKey(LayerBranch)
+    layerbranch = models.ForeignKey(LayerBranch, on_delete=models.CASCADE)
     name = models.CharField(max_length=255)
     description = models.CharField(max_length=255)
 
@@ -754,7 +753,7 @@ class Distro(models.Model):
 
 
 class BBAppend(models.Model):
-    layerbranch = models.ForeignKey(LayerBranch)
+    layerbranch = models.ForeignKey(LayerBranch, on_delete=models.CASCADE)
     filename = models.CharField(max_length=255)
     filepath = models.CharField(max_length=255, blank=True)
 
@@ -780,7 +779,7 @@ class BBAppend(models.Model):
 
 
 class BBClass(models.Model):
-    layerbranch = models.ForeignKey(LayerBranch)
+    layerbranch = models.ForeignKey(LayerBranch, on_delete=models.CASCADE)
     name = models.CharField(max_length=100)
 
     class Meta:
@@ -796,7 +795,7 @@ class BBClass(models.Model):
 
 
 class IncFile(models.Model):
-    layerbranch = models.ForeignKey(LayerBranch)
+    layerbranch = models.ForeignKey(LayerBranch, on_delete=models.CASCADE)
     path = models.CharField(max_length=255)
 
     def vcs_web_url(self):
@@ -808,7 +807,7 @@ class IncFile(models.Model):
 
 
 class RecipeChangeset(models.Model):
-    user = models.ForeignKey(User)
+    user = models.ForeignKey(User, on_delete=models.CASCADE)
     name = models.CharField(max_length=255)
 
     def __str__(self):
@@ -825,8 +824,8 @@ class RecipeChange(models.Model):
         'bugtracker': 'BUGTRACKER',
     }
 
-    changeset = models.ForeignKey(RecipeChangeset)
-    recipe = models.ForeignKey(Recipe, related_name='+')
+    changeset = models.ForeignKey(RecipeChangeset, on_delete=models.CASCADE)
+    recipe = models.ForeignKey(Recipe, related_name='+', on_delete=models.CASCADE)
     summary = models.CharField(max_length=100, blank=True)
     description = models.TextField(blank=True)
     section = models.CharField(max_length=100, blank=True)
@@ -882,7 +881,7 @@ class SecurityQuestion(models.Model):
 
 
 class UserProfile(models.Model):
-    user = models.OneToOneField(User)
+    user = models.OneToOneField(User, on_delete=models.CASCADE)
     answer_attempts = models.IntegerField(default=0)
 
     def __str__(self):
@@ -891,7 +890,7 @@ class UserProfile(models.Model):
 
 class SecurityQuestionAnswer(models.Model):
     user = models.ForeignKey(UserProfile, on_delete=models.CASCADE)
-    security_question = models.ForeignKey(SecurityQuestion)
+    security_question = models.ForeignKey(SecurityQuestion, on_delete=models.CASCADE)
     answer = models.CharField(max_length = 250, null=False)
 
     def __str__(self):
diff --git a/layerindex/urls.py b/layerindex/urls.py
index 6208753..ab2d028 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -7,7 +7,7 @@
 from django.conf.urls import *
 from django.views.generic import TemplateView, DetailView, ListView, RedirectView
 from django.views.defaults import page_not_found
-from django.core.urlresolvers import reverse_lazy
+from django.urls import reverse_lazy
 from layerindex.views import LayerListView, LayerReviewListView, LayerReviewDetailView, RecipeSearchView, \
     MachineSearchView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, \
     HistoryListView, EditProfileFormView, AdvancedRecipeSearchView, BulkChangeView, BulkChangeSearchView, \
diff --git a/layerindex/urls_branch.py b/layerindex/urls_branch.py
index 2fa925a..9756f90 100644
--- a/layerindex/urls_branch.py
+++ b/layerindex/urls_branch.py
@@ -6,7 +6,7 @@
 
 from django.conf.urls import *
 from django.views.defaults import page_not_found
-from django.core.urlresolvers import reverse_lazy
+from django.urls import reverse_lazy
 from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, DistroSearchView, ClassSearchView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView, LayerUpdateDetailView, layer_export_recipes_csv_view, comparison_update_view
 
 urlpatterns = [
diff --git a/layerindex/views.py b/layerindex/views.py
index 6c72191..f9799cf 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -21,7 +21,7 @@ from django.contrib.auth.models import Permission, User
 from django.contrib.messages.views import SuccessMessageMixin
 from django.contrib.sites.models import Site
 from django.core.exceptions import PermissionDenied
-from django.core.urlresolvers import resolve, reverse, reverse_lazy
+from django.urls import resolve, reverse, reverse_lazy
 from django.db import transaction
 from django.db.models import Count, Q
 from django.db.models.functions import Lower
diff --git a/urls.py b/urls.py
index 41324da..67d64b2 100644
--- a/urls.py
+++ b/urls.py
@@ -6,7 +6,7 @@
 # All rights reserved.
 
 from django.conf.urls import include, url
-from django.core.urlresolvers import reverse_lazy
+from django.urls import reverse_lazy
 from django.views.generic import RedirectView, TemplateView
 from layerindex.auth_views import CaptchaRegistrationView, CaptchaPasswordResetView, delete_account_view, \
     PasswordResetSecurityQuestions
@@ -17,7 +17,7 @@ import settings
 
 urlpatterns = [
     url(r'^layerindex/', include('layerindex.urls')),
-    url(r'^admin/', include(admin.site.urls)),
+    url(r'^admin/', admin.site.urls),
     url(r'^accounts/password_reset/$',
         CaptchaPasswordResetView.as_view(
             email_template_name='registration/password_reset_email.txt',
-- 
2.17.1

