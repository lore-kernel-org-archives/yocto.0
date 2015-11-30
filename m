Return-Path: <alejandro.franco@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81AD9E00888; Mon, 30 Nov 2015 14:02:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36015E007D5
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 14:02:37 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 30 Nov 2015 14:02:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,366,1444719600"; d="scan'208";a="697336841"
Received: from afshjern.zpn.intel.com ([10.219.5.144])
	by orsmga003.jf.intel.com with ESMTP; 30 Nov 2015 14:02:15 -0800
From: Alex Franco <alejandro.franco@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 30 Nov 2015 16:03:05 -0600
Message-Id: <1448920985-995-1-git-send-email-alejandro.franco@linux.intel.com>
X-Mailer: git-send-email 2.6.2
Cc: paul.eggleton@intel.com
Subject: [PATCHv2] [layerindex-web] recipe blacklisted information
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
X-List-Received-Date: Mon, 30 Nov 2015 22:02:41 -0000

Display blacklisted information for recipes on Layerindex, in the
recipe details, as well as the recipe search page, and layer page
tables. This information is pulled from the PNBLACKLIST variable.
Includes a hover text containing the reason for blacklist labels.

Changes to Django and Layerindex files:
- models.py, update.py
- migration file
- templates and static content (stylesheet)

[YOCTO #7855]

Signed-off-by: Alex Franco <alejandro.franco@linux.intel.com>
---
 .../0010_auto__add_field_recipe_blacklisted.py     | 197 +++++++++++++++++++++
 layerindex/models.py                               |   1 +
 layerindex/static/css/additional.css               |  19 +-
 layerindex/update.py                               |   1 +
 templates/layerindex/detail.html                   |   3 +-
 templates/layerindex/recipedetail.html             |  13 +-
 templates/layerindex/recipes.html                  |   3 +-
 7 files changed, 232 insertions(+), 5 deletions(-)
 create mode 100644 layerindex/migrations/0010_auto__add_field_recipe_blacklisted.py

diff --git a/layerindex/migrations/0010_auto__add_field_recipe_blacklisted.py b/layerindex/migrations/0010_auto__add_field_recipe_blacklisted.py
new file mode 100644
index 0000000..e1bb12c
--- /dev/null
+++ b/layerindex/migrations/0010_auto__add_field_recipe_blacklisted.py
@@ -0,0 +1,197 @@
+# -*- coding: utf-8 -*-
+from south.utils import datetime_utils as datetime
+from south.db import db
+from south.v2 import SchemaMigration
+from django.db import models
+
+
+class Migration(SchemaMigration):
+
+    def forwards(self, orm):
+        # Adding field 'Recipe.blacklisted'
+        db.add_column('layerindex_recipe', 'blacklisted',
+                      self.gf('django.db.models.fields.CharField')(default='', max_length=255, blank=True),
+                      keep_default=False)
+
+
+    def backwards(self, orm):
+        # Deleting field 'Recipe.blacklisted'
+        db.delete_column('layerindex_recipe', 'blacklisted')
+
+
+    models = {
+        'auth.group': {
+            'Meta': {'object_name': 'Group'},
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '80'}),
+            'permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'})
+        },
+        'auth.permission': {
+            'Meta': {'ordering': "('content_type__app_label', 'content_type__model', 'codename')", 'unique_together': "(('content_type', 'codename'),)", 'object_name': 'Permission'},
+            'codename': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
+            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['contenttypes.ContentType']"}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
+        },
+        'auth.user': {
+            'Meta': {'object_name': 'User'},
+            'date_joined': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
+            'email': ('django.db.models.fields.EmailField', [], {'max_length': '75', 'blank': 'True'}),
+            'first_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
+            'groups': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Group']", 'symmetrical': 'False', 'blank': 'True'}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'is_active': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
+            'is_staff': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
+            'is_superuser': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
+            'last_login': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
+            'last_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
+            'password': ('django.db.models.fields.CharField', [], {'max_length': '128'}),
+            'user_permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'}),
+            'username': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '30'})
+        },
+        'contenttypes.contenttype': {
+            'Meta': {'ordering': "('name',)", 'unique_together': "(('app_label', 'model'),)", 'object_name': 'ContentType', 'db_table': "'django_content_type'"},
+            'app_label': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'model': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
+            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
+        },
+        'layerindex.bbappend': {
+            'Meta': {'object_name': 'BBAppend'},
+            'filename': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
+            'filepath': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'layerbranch': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.LayerBranch']"})
+        },
+        'layerindex.bbclass': {
+            'Meta': {'object_name': 'BBClass'},
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'layerbranch': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.LayerBranch']"}),
+            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
+        },
+        'layerindex.branch': {
+            'Meta': {'object_name': 'Branch'},
+            'bitbake_branch': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
+            'short_description': ('django.db.models.fields.CharField', [], {'max_length': '50', 'blank': 'True'}),
+            'sort_priority': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
+            'updated': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now': 'True', 'blank': 'True'})
+        },
+        'layerindex.classicrecipe': {
+            'Meta': {'object_name': 'ClassicRecipe', '_ormbases': ['layerindex.Recipe']},
+            'classic_category': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
+            'cover_comment': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
+            'cover_layerbranch': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.LayerBranch']", 'null': 'True', 'on_delete': 'models.SET_NULL', 'blank': 'True'}),
+            'cover_pn': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
+            'cover_status': ('django.db.models.fields.CharField', [], {'default': "'U'", 'max_length': '1'}),
+            'cover_verified': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
+            'recipe_ptr': ('django.db.models.fields.related.OneToOneField', [], {'to': "orm['layerindex.Recipe']", 'unique': 'True', 'primary_key': 'True'})
+        },
+        'layerindex.layerbranch': {
+            'Meta': {'object_name': 'LayerBranch'},
+            'actual_branch': ('django.db.models.fields.CharField', [], {'max_length': '80', 'blank': 'True'}),
+            'branch': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.Branch']"}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'layer': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.LayerItem']"}),
+            'updated': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'}),
+            'vcs_last_commit': ('django.db.models.fields.DateTimeField', [], {'null': 'True', 'blank': 'True'}),
+            'vcs_last_fetch': ('django.db.models.fields.DateTimeField', [], {'null': 'True', 'blank': 'True'}),
+            'vcs_last_rev': ('django.db.models.fields.CharField', [], {'max_length': '80', 'blank': 'True'}),
+            'vcs_subdir': ('django.db.models.fields.CharField', [], {'max_length': '40', 'blank': 'True'})
+        },
+        'layerindex.layerdependency': {
+            'Meta': {'object_name': 'LayerDependency'},
+            'dependency': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'dependents_set'", 'to': "orm['layerindex.LayerItem']"}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'layerbranch': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'dependencies_set'", 'to': "orm['layerindex.LayerBranch']"})
+        },
+        'layerindex.layeritem': {
+            'Meta': {'object_name': 'LayerItem'},
+            'classic': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
+            'description': ('django.db.models.fields.TextField', [], {}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'index_preference': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
+            'layer_type': ('django.db.models.fields.CharField', [], {'max_length': '1'}),
+            'mailing_list_url': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'}),
+            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '40'}),
+            'status': ('django.db.models.fields.CharField', [], {'default': "'N'", 'max_length': '1'}),
+            'summary': ('django.db.models.fields.CharField', [], {'max_length': '200'}),
+            'updated': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'}),
+            'usage_url': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
+            'vcs_url': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
+            'vcs_web_file_base_url': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
+            'vcs_web_tree_base_url': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
+            'vcs_web_url': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'})
+        },
+        'layerindex.layermaintainer': {
+            'Meta': {'object_name': 'LayerMaintainer'},
+            'email': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'layerbranch': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.LayerBranch']"}),
+            'name': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
+            'responsibility': ('django.db.models.fields.CharField', [], {'max_length': '200', 'blank': 'True'}),
+            'status': ('django.db.models.fields.CharField', [], {'default': "'A'", 'max_length': '1'})
+        },
+        'layerindex.layernote': {
+            'Meta': {'object_name': 'LayerNote'},
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'layer': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.LayerItem']"}),
+            'text': ('django.db.models.fields.TextField', [], {})
+        },
+        'layerindex.machine': {
+            'Meta': {'object_name': 'Machine'},
+            'description': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'layerbranch': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.LayerBranch']"}),
+            'name': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
+            'updated': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'})
+        },
+        'layerindex.recipe': {
+            'Meta': {'object_name': 'Recipe'},
+            'bbclassextend': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
+            'blacklisted': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
+            'bugtracker': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'}),
+            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
+            'filename': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
+            'filepath': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
+            'homepage': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'inherits': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
+            'layerbranch': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.LayerBranch']"}),
+            'license': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
+            'pn': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
+            'provides': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
+            'pv': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
+            'section': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
+            'summary': ('django.db.models.fields.CharField', [], {'max_length': '200', 'blank': 'True'}),
+            'updated': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'})
+        },
+        'layerindex.recipechange': {
+            'Meta': {'object_name': 'RecipeChange'},
+            'bugtracker': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'}),
+            'changeset': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.RecipeChangeset']"}),
+            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
+            'homepage': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'license': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
+            'recipe': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'+'", 'to': "orm['layerindex.Recipe']"}),
+            'section': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
+            'summary': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'})
+        },
+        'layerindex.recipechangeset': {
+            'Meta': {'object_name': 'RecipeChangeset'},
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'name': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
+            'user': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['auth.User']"})
+        },
+        'layerindex.recipefiledependency': {
+            'Meta': {'object_name': 'RecipeFileDependency'},
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'layerbranch': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'+'", 'to': "orm['layerindex.LayerBranch']"}),
+            'path': ('django.db.models.fields.CharField', [], {'max_length': '255', 'db_index': 'True'}),
+            'recipe': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.Recipe']"})
+        }
+    }
+
+    complete_apps = ['layerindex']
\ No newline at end of file
diff --git a/layerindex/models.py b/layerindex/models.py
index c9e9620..cde8fe3 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -244,6 +244,7 @@ class Recipe(models.Model):
     bbclassextend = models.CharField(max_length=100, blank=True)
     inherits = models.CharField(max_length=255, blank=True)
     updated = models.DateTimeField(auto_now = True)
+    blacklisted = models.CharField(max_length=255, blank=True)
 
     def vcs_web_url(self):
         url = self.layerbranch.file_url(os.path.join(self.filepath, self.filename))
diff --git a/layerindex/static/css/additional.css b/layerindex/static/css/additional.css
index f76582c..e6cf526 100644
--- a/layerindex/static/css/additional.css
+++ b/layerindex/static/css/additional.css
@@ -200,14 +200,29 @@ padding: 8px;
     margin-left: 8px;
 }
 
-.icon-hdd {
+.label-inverse, .icon-hdd {
     margin-left: 6px;
 }
 
-.icon-hdd:hover {
+.label-inverse:hover, .icon-hdd:hover {
     cursor: pointer;
 }
 
+.label-inverse:hover {
+    background-color: #999;
+}
+
 ul.unstyled {
     margin-bottom: 0;
 }
+
+blockquote.span7.warn {
+    border-color: #c09853;
+    margin-bottom: 0;
+    margin-left: 0;
+    min-height: 0;
+}
+
+.valign-middle {
+    vertical-align: middle;
+}
diff --git a/layerindex/update.py b/layerindex/update.py
index 1e96da6..3680498 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -69,6 +69,7 @@ def update_recipe_file(data, path, recipe, layerdir_start, repodir):
         gr = set(data.getVar("__inherit_cache", True) or [])
         lr = set(envdata.getVar("__inherit_cache", True) or [])
         recipe.inherits = ' '.join(sorted({split_recipe_fn(r)[0] for r in lr if r not in gr}))
+        recipe.blacklisted = envdata.getVarFlag('PNBLACKLIST', recipe.pn, True) or ""
         recipe.save()
 
         # Get file dependencies within this layer
diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
index 8a734ff..feb2c6c 100644
--- a/templates/layerindex/detail.html
+++ b/templates/layerindex/detail.html
@@ -198,7 +198,7 @@
                         <tbody>
                             {% for recipe in layerbranch.sorted_recipes %}
                                 <tr>
-                                    <td><a href="{% url recipe recipe.id %}">{{ recipe.name }}</a>{% if 'image' in recipe.inherits.split %}<i class="icon-hdd"></i>{% endif %}</td>
+                                    <td><a href="{% url recipe recipe.id %}">{{ recipe.name }}</a>{% if 'image' in recipe.inherits.split %}<i class="icon-hdd"></i>{% endif %}{% if recipe.blacklisted %}<span class="label label-inverse" title="{{ recipe.blacklisted }}">blacklisted</span>{% endif %}</td>
                                     <td>{{ recipe.pv }}</td>
                                     <td class="span8">{{ recipe.short_desc }}</td>
                                 </tr>
@@ -323,6 +323,7 @@
                 })
 
                 $('.icon-hdd').tooltip({title:"Inherits image"});
+                $('.label-inverse').tooltip();
             });
         });
     </script>
diff --git a/templates/layerindex/recipedetail.html b/templates/layerindex/recipedetail.html
index 3b8c79b..7dbb362 100644
--- a/templates/layerindex/recipedetail.html
+++ b/templates/layerindex/recipedetail.html
@@ -30,9 +30,20 @@
         <div class="row-fluid">
 
             <div class="page-header">
-                <h1>{{ recipe.name }} {{ recipe.pv }}</h1>
+                <h1>{{ recipe.name }} {{ recipe.pv }} {% if recipe.blacklisted %} <span class="label label-inverse valign-middle">blacklisted</span> {% endif %}</h1>
             </div>
 
+            {% if recipe.blacklisted %}
+                <div class="alert">
+                    <div class="row-fluid">
+                        <p>This recipe is <strong>blacklisted</strong> by the <a href="{% url layer_item recipe.layerbranch.branch.name recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a> layer. The reason provided is:</p>
+                        <blockquote class="span7 warn">
+                            <p>{{ recipe.blacklisted }}</p>
+                        </blockquote>
+                    </div>
+                </div>
+            {% endif %}
+
                 <table class="table table-striped table-bordered">
                     <tbody>
                         <tr>
diff --git a/templates/layerindex/recipes.html b/templates/layerindex/recipes.html
index 322d7c6..c2141a4 100644
--- a/templates/layerindex/recipes.html
+++ b/templates/layerindex/recipes.html
@@ -52,7 +52,7 @@
                     <tbody>
                         {% for recipe in recipe_list %}
                             <tr {% if recipe.preferred_count > 0 %}class="muted"{% endif %}>
-                                <td><a href="{% url recipe recipe.id %}">{{ recipe.name }}</a>{% if 'image' in recipe.inherits.split %}<i class="icon-hdd"></i>{% endif %}</td>
+                                <td><a href="{% url recipe recipe.id %}">{{ recipe.name }}</a>{% if 'image' in recipe.inherits.split %}<i class="icon-hdd"></i>{% endif %}{% if recipe.blacklisted %}<span class="label label-inverse" title="{{ recipe.blacklisted }}">blacklisted</span>{% endif %}</td>
                                 <td>{{ recipe.pv }}</td>
                                 <td>{{ recipe.short_desc }}</td>
                                 <td><a href="{% url layer_item url_branch recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a></td>
@@ -84,6 +84,7 @@
             firstfield.focus()
 
         $('.icon-hdd').tooltip({title:"Inherits image"});
+        $('.label-inverse').tooltip();
     });
 </script>
 {% endblock %}
-- 
1.8.4.5


