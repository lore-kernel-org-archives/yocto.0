Return-Path: <alejandro.franco@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3715E009D4; Tue,  2 Jun 2015 13:37:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A98FE009C8
	for <yocto@yoctoproject.org>; Tue,  2 Jun 2015 13:37:05 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 02 Jun 2015 13:37:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,541,1427785200"; d="scan'208";a="580896020"
Received: from afshjern.zpn.intel.com ([10.219.4.61])
	by orsmga003.jf.intel.com with ESMTP; 02 Jun 2015 13:37:04 -0700
From: Alex Franco <alejandro.franco@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  2 Jun 2015 15:36:06 -0500
Message-Id: <1433277366-16113-2-git-send-email-alejandro.franco@linux.intel.com>
X-Mailer: git-send-email 2.4.1
In-Reply-To: <1433277366-16113-1-git-send-email-alejandro.franco@linux.intel.com>
References: <1433277366-16113-1-git-send-email-alejandro.franco@linux.intel.com>
X-Mailman-Approved-At: Wed, 03 Jun 2015 08:08:33 -0700
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 2/2] [layerindex-web] Add recipe inherit migration file
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
X-List-Received-Date: Tue, 02 Jun 2015 20:37:07 -0000

New file: 0009_auto__add_field_recipe_inherits.py

Django migration file, to add the inherits column to the recipe table.

[YOCTO #7575]

Signed-off-by: Alex Franco <alejandro.franco@linux.intel.com>
---
 .../0009_auto__add_field_recipe_inherits.py        | 196 +++++++++++++++++++++
 1 file changed, 196 insertions(+)
 create mode 100644 layerindex/migrations/0009_auto__add_field_recipe_inherits.py

diff --git a/layerindex/migrations/0009_auto__add_field_recipe_inherits.py b/layerindex/migrations/0009_auto__add_field_recipe_inherits.py
new file mode 100644
index 0000000..dd0490c
--- /dev/null
+++ b/layerindex/migrations/0009_auto__add_field_recipe_inherits.py
@@ -0,0 +1,196 @@
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
+        # Adding field 'Recipe.inherits'
+        db.add_column('layerindex_recipe', 'inherits',
+                      self.gf('django.db.models.fields.CharField')(default='', max_length=255, blank=True),
+                      keep_default=False)
+
+
+    def backwards(self, orm):
+        # Deleting field 'Recipe.inherits'
+        db.delete_column('layerindex_recipe', 'inherits')
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
-- 
2.4.1


