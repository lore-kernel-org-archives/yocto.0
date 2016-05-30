Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13E16E00CBC; Sun, 29 May 2016 21:33:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E720BE00C62
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 21:32:55 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 May 2016 21:32:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,387,1459839600"; d="scan'208";a="964884378"
Received: from jialelim-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.139.83])
	by orsmga001.jf.intel.com with ESMTP; 29 May 2016 21:32:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 30 May 2016 16:31:16 +1200
Message-Id: <2e7cb445da013364c6c7c5fcb0c0b3432357afad.1464581354.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1464581354.git.paul.eggleton@linux.intel.com>
References: <cover.1464581354.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1464581354.git.paul.eggleton@linux.intel.com>
References: <cover.1464581354.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 5/5] Increase size of Recipe provides and license fields
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
X-List-Received-Date: Mon, 30 May 2016 04:33:09 -0000

Fix "data truncated" warnings/errors when loading data for OE-Core:
* PROVIDES for recipe packagegroup-base is ~1452 characters
* LICENSE for recipe linux-firmware is ~1053 characters

(These aren't shown with SQLite, only with something like MariaDB where
column sizes are enforced.)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 TODO                                               |   1 -
 ...ld_recipe_license__chg_field_recipe_provides.py | 202 +++++++++++++++++++++
 layerindex/models.py                               |   4 +-
 3 files changed, 204 insertions(+), 3 deletions(-)
 create mode 100644 layerindex/migrations/0012_auto__chg_field_recipe_license__chg_field_recipe_provides.py

diff --git a/TODO b/TODO
index 9ab7aa7..b5e8974 100644
--- a/TODO
+++ b/TODO
@@ -11,7 +11,6 @@ TODO:
 
 Bugs
 * Duplication of first maintainer when editing to add a second?
-* PROVIDES column appears to be too short for some recipes
 
 Other
 * Full-text search on layer contents
diff --git a/layerindex/migrations/0012_auto__chg_field_recipe_license__chg_field_recipe_provides.py b/layerindex/migrations/0012_auto__chg_field_recipe_license__chg_field_recipe_provides.py
new file mode 100644
index 0000000..52cc264
--- /dev/null
+++ b/layerindex/migrations/0012_auto__chg_field_recipe_license__chg_field_recipe_provides.py
@@ -0,0 +1,202 @@
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
+
+        # Changing field 'Recipe.license'
+        db.alter_column('layerindex_recipe', 'license', self.gf('django.db.models.fields.CharField')(max_length=2048))
+
+        # Changing field 'Recipe.provides'
+        db.alter_column('layerindex_recipe', 'provides', self.gf('django.db.models.fields.CharField')(max_length=2048))
+
+    def backwards(self, orm):
+
+        # Changing field 'Recipe.license'
+        db.alter_column('layerindex_recipe', 'license', self.gf('django.db.models.fields.CharField')(max_length=100))
+
+        # Changing field 'Recipe.provides'
+        db.alter_column('layerindex_recipe', 'provides', self.gf('django.db.models.fields.CharField')(max_length=255))
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
+            'updated': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now': 'True', 'blank': 'True'}),
+            'updates_enabled': ('django.db.models.fields.BooleanField', [], {'default': 'True'})
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
+            'license': ('django.db.models.fields.CharField', [], {'max_length': '2048', 'blank': 'True'}),
+            'pn': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
+            'provides': ('django.db.models.fields.CharField', [], {'max_length': '2048', 'blank': 'True'}),
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
index 6c5f65f..8d82846 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -238,10 +238,10 @@ class Recipe(models.Model):
     summary = models.CharField(max_length=200, blank=True)
     description = models.TextField(blank=True)
     section = models.CharField(max_length=100, blank=True)
-    license = models.CharField(max_length=100, blank=True)
+    license = models.CharField(max_length=2048, blank=True)
     homepage = models.URLField(blank=True)
     bugtracker = models.URLField(blank=True)
-    provides = models.CharField(max_length=255, blank=True)
+    provides = models.CharField(max_length=2048, blank=True)
     bbclassextend = models.CharField(max_length=100, blank=True)
     inherits = models.CharField(max_length=255, blank=True)
     updated = models.DateTimeField(auto_now = True)
-- 
2.5.5


