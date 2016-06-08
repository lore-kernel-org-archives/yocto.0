Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A98D1E00D57; Wed,  8 Jun 2016 06:21:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44AC9E00D18
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 06:21:17 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jun 2016 06:21:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,439,1459839600"; d="scan'208";a="824134110"
Received: from mshirsix-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.147.125])
	by orsmga003.jf.intel.com with ESMTP; 08 Jun 2016 06:21:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 Jun 2016 01:20:05 +1200
Message-Id: <64ad015d363361ed43ca999727f8b139975fa735.1465391621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH v2 12/15] Handle Python 2 and Python 3 branches in the same index
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
X-List-Received-Date: Wed, 08 Jun 2016 13:21:57 -0000

Add a model to support setting a python command and virtualenv per
branch, which allows you to parse master with python3 and krogoth with
python2 for example.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README                                             |  22 ++-
 layerindex/admin.py                                |   1 +
 ...ronment__add_field_branch_update_environment.py | 218 +++++++++++++++++++++
 layerindex/models.py                               |  19 +-
 layerindex/update.py                               |   7 +-
 5 files changed, 259 insertions(+), 8 deletions(-)
 create mode 100644 layerindex/migrations/0013_auto__add_pythonenvironment__add_field_branch_update_environment.py

diff --git a/README b/README
index b3374c9..fa5c3b2 100644
--- a/README
+++ b/README
@@ -99,17 +99,27 @@ Setup instructions:
         next to your login name at the top right, click on the
         newly added layer entry, and then click on "Publish Layer".
 
-5. Set the site name (as displayed in the top bar and page titles) by
+5. If you need to support multiple branches of OpenEmbedded/BitBake
+   where some require Python 2.x and others require Python 3.x, then
+   you will need to set up "Python environment" records through the
+   admin interface to correspond to these so that the right Python
+   version gets used to parse the branch, and then set the
+   "Update environment" field on each branch record to point to the
+   appropriate environment. If you're using virtualenv you will need
+   separate virtual environments set up for Python 2 and 3 which you
+   should point to in the Python environment record.
+
+6. Set the site name (as displayed in the top bar and page titles) by
    going into the admin interface (http://127.0.0.1:8000/admin/),
    clicking on "Sites" at the bottom, and editing the first entry,
    setting "Display name" to the desired name.
 
-6. You may wish to customise some of the page templates to suit your
+7. You may wish to customise some of the page templates to suit your
    installation, in particular:
    * templates/base.html
    * templates/layerindex/about.html
 
-7. To use layerindex-web with Docker containers, refer to docker/README
+8. To use layerindex-web with Docker containers, refer to docker/README
    keeping in mind you'll need to set up Docker properly as part of the
    setup process.
 
@@ -156,7 +166,7 @@ Bundled nv.d3.js is redistributed under the Apache License 2.0.
 
 Bundled d3.js is redistributed under the BSD License.
 
-All other content is copyright (C) 2013 Intel Corporation and licensed
-under the MIT license (unless otherwise noted) - see COPYING.MIT for
-details.
+All other content is copyright (C) 2013-2016 Intel Corporation and
+licensed under the MIT license (unless otherwise noted) - see
+COPYING.MIT for details.
 
diff --git a/layerindex/admin.py b/layerindex/admin.py
index 77f660b..accb954 100644
--- a/layerindex/admin.py
+++ b/layerindex/admin.py
@@ -115,3 +115,4 @@ admin.site.register(BBAppend, BBAppendAdmin)
 admin.site.register(BBClass, BBClassAdmin)
 admin.site.register(RecipeChangeset, RecipeChangesetAdmin)
 admin.site.register(ClassicRecipe, ClassicRecipeAdmin)
+admin.site.register(PythonEnvironment)
diff --git a/layerindex/migrations/0013_auto__add_pythonenvironment__add_field_branch_update_environment.py b/layerindex/migrations/0013_auto__add_pythonenvironment__add_field_branch_update_environment.py
new file mode 100644
index 0000000..d4c80c6
--- /dev/null
+++ b/layerindex/migrations/0013_auto__add_pythonenvironment__add_field_branch_update_environment.py
@@ -0,0 +1,218 @@
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
+        # Adding model 'PythonEnvironment'
+        db.create_table('layerindex_pythonenvironment', (
+            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
+            ('name', self.gf('django.db.models.fields.CharField')(max_length=50)),
+            ('python_command', self.gf('django.db.models.fields.CharField')(default='python', max_length=255)),
+            ('virtualenv_path', self.gf('django.db.models.fields.CharField')(blank=True, max_length=255)),
+        ))
+        db.send_create_signal('layerindex', ['PythonEnvironment'])
+
+        # Adding field 'Branch.update_environment'
+        db.add_column('layerindex_branch', 'update_environment',
+                      self.gf('django.db.models.fields.related.ForeignKey')(blank=True, to=orm['layerindex.PythonEnvironment'], on_delete=models.SET_NULL, null=True),
+                      keep_default=False)
+
+
+    def backwards(self, orm):
+        # Deleting model 'PythonEnvironment'
+        db.delete_table('layerindex_pythonenvironment')
+
+        # Deleting field 'Branch.update_environment'
+        db.delete_column('layerindex_branch', 'update_environment_id')
+
+
+    models = {
+        'auth.group': {
+            'Meta': {'object_name': 'Group'},
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '80'}),
+            'permissions': ('django.db.models.fields.related.ManyToManyField', [], {'blank': 'True', 'to': "orm['auth.Permission']", 'symmetrical': 'False'})
+        },
+        'auth.permission': {
+            'Meta': {'unique_together': "(('content_type', 'codename'),)", 'ordering': "('content_type__app_label', 'content_type__model', 'codename')", 'object_name': 'Permission'},
+            'codename': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
+            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['contenttypes.ContentType']"}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
+        },
+        'auth.user': {
+            'Meta': {'object_name': 'User'},
+            'date_joined': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
+            'email': ('django.db.models.fields.EmailField', [], {'blank': 'True', 'max_length': '75'}),
+            'first_name': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '30'}),
+            'groups': ('django.db.models.fields.related.ManyToManyField', [], {'blank': 'True', 'to': "orm['auth.Group']", 'related_name': "'user_set'", 'symmetrical': 'False'}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'is_active': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
+            'is_staff': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
+            'is_superuser': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
+            'last_login': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
+            'last_name': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '30'}),
+            'password': ('django.db.models.fields.CharField', [], {'max_length': '128'}),
+            'user_permissions': ('django.db.models.fields.related.ManyToManyField', [], {'blank': 'True', 'to': "orm['auth.Permission']", 'related_name': "'user_set'", 'symmetrical': 'False'}),
+            'username': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '30'})
+        },
+        'contenttypes.contenttype': {
+            'Meta': {'unique_together': "(('app_label', 'model'),)", 'ordering': "('name',)", 'db_table': "'django_content_type'", 'object_name': 'ContentType'},
+            'app_label': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'model': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
+            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
+        },
+        'layerindex.bbappend': {
+            'Meta': {'object_name': 'BBAppend'},
+            'filename': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
+            'filepath': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '255'}),
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
+            'short_description': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '50'}),
+            'sort_priority': ('django.db.models.fields.IntegerField', [], {'blank': 'True', 'null': 'True'}),
+            'update_environment': ('django.db.models.fields.related.ForeignKey', [], {'blank': 'True', 'to': "orm['layerindex.PythonEnvironment']", 'on_delete': 'models.SET_NULL', 'null': 'True'}),
+            'updated': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'blank': 'True', 'auto_now': 'True'}),
+            'updates_enabled': ('django.db.models.fields.BooleanField', [], {'default': 'True'})
+        },
+        'layerindex.classicrecipe': {
+            'Meta': {'object_name': 'ClassicRecipe', '_ormbases': ['layerindex.Recipe']},
+            'classic_category': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '100'}),
+            'cover_comment': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
+            'cover_layerbranch': ('django.db.models.fields.related.ForeignKey', [], {'blank': 'True', 'to': "orm['layerindex.LayerBranch']", 'on_delete': 'models.SET_NULL', 'null': 'True'}),
+            'cover_pn': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '100'}),
+            'cover_status': ('django.db.models.fields.CharField', [], {'default': "'U'", 'max_length': '1'}),
+            'cover_verified': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
+            'recipe_ptr': ('django.db.models.fields.related.OneToOneField', [], {'unique': 'True', 'primary_key': 'True', 'to': "orm['layerindex.Recipe']"})
+        },
+        'layerindex.layerbranch': {
+            'Meta': {'object_name': 'LayerBranch'},
+            'actual_branch': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '80'}),
+            'branch': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.Branch']"}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'layer': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.LayerItem']"}),
+            'updated': ('django.db.models.fields.DateTimeField', [], {'blank': 'True', 'auto_now': 'True'}),
+            'vcs_last_commit': ('django.db.models.fields.DateTimeField', [], {'blank': 'True', 'null': 'True'}),
+            'vcs_last_fetch': ('django.db.models.fields.DateTimeField', [], {'blank': 'True', 'null': 'True'}),
+            'vcs_last_rev': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '80'}),
+            'vcs_subdir': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '40'})
+        },
+        'layerindex.layerdependency': {
+            'Meta': {'object_name': 'LayerDependency'},
+            'dependency': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.LayerItem']", 'related_name': "'dependents_set'"}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'layerbranch': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.LayerBranch']", 'related_name': "'dependencies_set'"})
+        },
+        'layerindex.layeritem': {
+            'Meta': {'object_name': 'LayerItem'},
+            'classic': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
+            'description': ('django.db.models.fields.TextField', [], {}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'index_preference': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
+            'layer_type': ('django.db.models.fields.CharField', [], {'max_length': '1'}),
+            'mailing_list_url': ('django.db.models.fields.URLField', [], {'blank': 'True', 'max_length': '200'}),
+            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '40'}),
+            'status': ('django.db.models.fields.CharField', [], {'default': "'N'", 'max_length': '1'}),
+            'summary': ('django.db.models.fields.CharField', [], {'max_length': '200'}),
+            'updated': ('django.db.models.fields.DateTimeField', [], {'blank': 'True', 'auto_now': 'True'}),
+            'usage_url': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '255'}),
+            'vcs_url': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
+            'vcs_web_file_base_url': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '255'}),
+            'vcs_web_tree_base_url': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '255'}),
+            'vcs_web_url': ('django.db.models.fields.URLField', [], {'blank': 'True', 'max_length': '200'})
+        },
+        'layerindex.layermaintainer': {
+            'Meta': {'object_name': 'LayerMaintainer'},
+            'email': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'layerbranch': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.LayerBranch']"}),
+            'name': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
+            'responsibility': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '200'}),
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
+            'updated': ('django.db.models.fields.DateTimeField', [], {'blank': 'True', 'auto_now': 'True'})
+        },
+        'layerindex.pythonenvironment': {
+            'Meta': {'object_name': 'PythonEnvironment'},
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
+            'python_command': ('django.db.models.fields.CharField', [], {'default': "'python'", 'max_length': '255'}),
+            'virtualenv_path': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '255'})
+        },
+        'layerindex.recipe': {
+            'Meta': {'object_name': 'Recipe'},
+            'bbclassextend': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '100'}),
+            'blacklisted': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '255'}),
+            'bugtracker': ('django.db.models.fields.URLField', [], {'blank': 'True', 'max_length': '200'}),
+            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
+            'filename': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
+            'filepath': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '255'}),
+            'homepage': ('django.db.models.fields.URLField', [], {'blank': 'True', 'max_length': '200'}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'inherits': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '255'}),
+            'layerbranch': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.LayerBranch']"}),
+            'license': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '2048'}),
+            'pn': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '100'}),
+            'provides': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '2048'}),
+            'pv': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '100'}),
+            'section': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '100'}),
+            'summary': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '200'}),
+            'updated': ('django.db.models.fields.DateTimeField', [], {'blank': 'True', 'auto_now': 'True'})
+        },
+        'layerindex.recipechange': {
+            'Meta': {'object_name': 'RecipeChange'},
+            'bugtracker': ('django.db.models.fields.URLField', [], {'blank': 'True', 'max_length': '200'}),
+            'changeset': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.RecipeChangeset']"}),
+            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
+            'homepage': ('django.db.models.fields.URLField', [], {'blank': 'True', 'max_length': '200'}),
+            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
+            'license': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '100'}),
+            'recipe': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.Recipe']", 'related_name': "'+'"}),
+            'section': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '100'}),
+            'summary': ('django.db.models.fields.CharField', [], {'blank': 'True', 'max_length': '100'})
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
+            'layerbranch': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.LayerBranch']", 'related_name': "'+'"}),
+            'path': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '255'}),
+            'recipe': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['layerindex.Recipe']"})
+        }
+    }
+
+    complete_apps = ['layerindex']
\ No newline at end of file
diff --git a/layerindex/models.py b/layerindex/models.py
index e753fbe..3a5796d 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -1,6 +1,6 @@
 # layerindex-web - model definitions
 #
-# Copyright (C) 2013 Intel Corporation
+# Copyright (C) 2013-2016 Intel Corporation
 #
 # Licensed under the MIT license, see COPYING.MIT for details
 
@@ -14,12 +14,29 @@ import re
 import posixpath
 
 
+class PythonEnvironment(models.Model):
+    name = models.CharField(max_length=50)
+    python_command = models.CharField(max_length=255, default='python')
+    virtualenv_path = models.CharField(max_length=255, blank=True)
+
+    def get_command(self):
+        if self.virtualenv_path:
+            cmd = '. %s/bin/activate; %s' % (self.virtualenv_path, self.python_command)
+        else:
+            cmd = self.python_command
+        return cmd
+
+    def __str__(self):
+        return self.name
+
+
 class Branch(models.Model):
     name = models.CharField(max_length=50)
     bitbake_branch = models.CharField(max_length=50)
     short_description = models.CharField(max_length=50, blank=True)
     sort_priority = models.IntegerField(blank=True, null=True)
     updates_enabled = models.BooleanField('Enable updates', default=True, help_text='Enable automatically updating layer metadata for this branch via the update script')
+    update_environment = models.ForeignKey(PythonEnvironment, blank=True, null=True, on_delete=models.SET_NULL)
 
     updated = models.DateTimeField(auto_now = True, default = datetime.now)
 
diff --git a/layerindex/update.py b/layerindex/update.py
index 157d46f..ac7de5e 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -177,7 +177,12 @@ def main():
                 urldir = layer.get_fetch_dir()
                 repodir = os.path.join(fetchdir, urldir)
 
-                cmd = 'python update_layer.py -l %s -b %s' % (layer.name, branch)
+                branchobj = utils.get_branch(branch)
+                if branchobj.update_environment:
+                    cmdprefix = branchobj.update_environment.get_command()
+                else:
+                    cmdprefix = 'python'
+                cmd = '%s update_layer.py -l %s -b %s' % (cmdprefix, layer.name, branch)
                 if options.reload:
                     cmd += ' --reload'
                 if options.fullreload:
-- 
2.5.5


