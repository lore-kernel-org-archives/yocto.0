Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E4EBE00C4D; Sun, 29 May 2016 21:32:56 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 375F3E00C1F
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 21:32:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 May 2016 21:32:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,387,1459839600"; d="scan'208";a="964884363"
Received: from jialelim-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.139.83])
	by orsmga001.jf.intel.com with ESMTP; 29 May 2016 21:32:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 30 May 2016 16:31:14 +1200
Message-Id: <a47859e9d8854106bc982a6ae309b3ced08e1b47.1464581354.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1464581354.git.paul.eggleton@linux.intel.com>
References: <cover.1464581354.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1464581354.git.paul.eggleton@linux.intel.com>
References: <cover.1464581354.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 3/5] update.py: allow updating all branches with one command
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
X-List-Received-Date: Mon, 30 May 2016 04:32:56 -0000

Allow updating multiple branches, and if no branches are specified,
update all branches that have a new "updates_enabled" flag field set to
True. This avoids the need to have a separate shell script which runs
update.py for each branch (and thus has hardcoded knowledge of each
active branch in the index, i.e. it needs to be kept up-to-date in
addition to the database.)

The migration will default updates_enabled to True for all branches so
if you wish to take advantage of this functionality, the flag will need
to be set to False for any branches that shouldn't be updated.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README                                             |   7 +-
 .../0011_auto__add_field_branch_updates_enabled.py | 198 +++++++++++++++++++++
 layerindex/models.py                               |   1 +
 layerindex/update.py                               |  70 ++++----
 4 files changed, 239 insertions(+), 37 deletions(-)
 create mode 100644 layerindex/migrations/0011_auto__add_field_branch_updates_enabled.py

diff --git a/README b/README
index 84edee2..ff0a7a5 100644
--- a/README
+++ b/README
@@ -119,11 +119,8 @@ On a regular basis you need to run the update script:
 path/to/layerindex/update.py
 
 This will fetch all of the layer repositories, analyse their contents
-and update the database with the results. Note that if you set up more
-than just the master branch in the database, you will need to run the
-script once for each branch using -b (or --branch) to specify the
-branch name. Run the script with --help for further information on
-available options.
+and update the database with the results. Run the script with --help for
+further information on available options.
 
 
 Maintenance
diff --git a/layerindex/migrations/0011_auto__add_field_branch_updates_enabled.py b/layerindex/migrations/0011_auto__add_field_branch_updates_enabled.py
new file mode 100644
index 0000000..5e2d4bf
--- /dev/null
+++ b/layerindex/migrations/0011_auto__add_field_branch_updates_enabled.py
@@ -0,0 +1,198 @@
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
+        # Adding field 'Branch.updates_enabled'
+        db.add_column('layerindex_branch', 'updates_enabled',
+                      self.gf('django.db.models.fields.BooleanField')(default=True),
+                      keep_default=False)
+
+
+    def backwards(self, orm):
+        # Deleting field 'Branch.updates_enabled'
+        db.delete_column('layerindex_branch', 'updates_enabled')
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
index e0d85ea..6c5f65f 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -19,6 +19,7 @@ class Branch(models.Model):
     bitbake_branch = models.CharField(max_length=50)
     short_description = models.CharField(max_length=50, blank=True)
     sort_priority = models.IntegerField(blank=True, null=True)
+    updates_enabled = models.BooleanField('Enable updates', default=True, help_text='Enable automatically updating layer metadata for this branch via the update script')
 
     updated = models.DateTimeField(auto_now = True, default = datetime.now)
 
diff --git a/layerindex/update.py b/layerindex/update.py
index f7cb25c..ee4138d 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -57,8 +57,8 @@ def main():
     %prog [options]""")
 
     parser.add_option("-b", "--branch",
-            help = "Specify branch to update",
-            action="store", dest="branch", default='master')
+            help = "Specify branch(es) to update (use commas to separate multiple). Default is all enabled branches.",
+            action="store", dest="branch", default='')
     parser.add_option("-l", "--layer",
             help = "Specify layers to update (use commas to separate multiple). Default is all published layers.",
             action="store", dest="layers")
@@ -92,14 +92,19 @@ def main():
 
     utils.setup_django()
     import settings
-    from layerindex.models import LayerItem
+    from layerindex.models import Branch, LayerItem
 
     logger.setLevel(options.loglevel)
 
-    branch = utils.get_branch(options.branch)
-    if not branch:
-        logger.error("Specified branch %s is not valid" % options.branch)
-        sys.exit(1)
+    if options.branch:
+        branches = options.branch.split(',')
+        for branch in branches:
+            if not utils.get_branch(branch):
+                logger.error("Specified branch %s is not valid" % branch)
+                sys.exit(1)
+    else:
+        branchquery = Branch.objects.filter(updates_enabled=True)
+        branches = [branch.name for branch in branchquery]
 
     fetchdir = settings.LAYER_FETCH_DIR
     if not fetchdir:
@@ -164,31 +169,32 @@ def main():
         # We now do this by calling out to a separate script; doing otherwise turned out to be
         # unreliable due to leaking memory (we're using bitbake internals in a manner in which
         # they never get used during normal operation).
-        for layer in layerquery:
-            if layer.vcs_url in failedrepos:
-                logger.info("Skipping update of layer %s as fetch of repository %s failed" % (layer.name, layer.vcs_url))
-
-            urldir = layer.get_fetch_dir()
-            repodir = os.path.join(fetchdir, urldir)
-
-            cmd = 'python update_layer.py -l %s -b %s' % (layer.name, options.branch)
-            if options.reload:
-                cmd += ' --reload'
-            if options.fullreload:
-                cmd += ' --fullreload'
-            if options.nocheckout:
-                cmd += ' --nocheckout'
-            if options.dryrun:
-                cmd += ' -n'
-            if options.loglevel == logging.DEBUG:
-                cmd += ' -d'
-            elif options.loglevel == logging.ERROR:
-                cmd += ' -q'
-            logger.debug('Running layer update command: %s' % cmd)
-            ret = run_command_interruptible(cmd)
-            if ret == 254:
-                # Interrupted by user, break out of loop
-                break
+        for branch in branches:
+            for layer in layerquery:
+                if layer.vcs_url in failedrepos:
+                    logger.info("Skipping update of layer %s as fetch of repository %s failed" % (layer.name, layer.vcs_url))
+
+                urldir = layer.get_fetch_dir()
+                repodir = os.path.join(fetchdir, urldir)
+
+                cmd = 'python update_layer.py -l %s -b %s' % (layer.name, branch)
+                if options.reload:
+                    cmd += ' --reload'
+                if options.fullreload:
+                    cmd += ' --fullreload'
+                if options.nocheckout:
+                    cmd += ' --nocheckout'
+                if options.dryrun:
+                    cmd += ' -n'
+                if options.loglevel == logging.DEBUG:
+                    cmd += ' -d'
+                elif options.loglevel == logging.ERROR:
+                    cmd += ' -q'
+                logger.debug('Running layer update command: %s' % cmd)
+                ret = run_command_interruptible(cmd)
+                if ret == 254:
+                    # Interrupted by user, break out of loop
+                    break
 
     finally:
         utils.unlock_file(lockfile)
-- 
2.5.5


