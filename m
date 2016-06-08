Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E55CE00D42; Wed,  8 Jun 2016 06:21:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7DF7E00CED
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 06:21:10 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jun 2016 06:21:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,439,1459839600"; d="scan'208";a="824133938"
Received: from mshirsix-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.147.125])
	by orsmga003.jf.intel.com with ESMTP; 08 Jun 2016 06:21:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 Jun 2016 01:20:02 +1200
Message-Id: <5bc51a4f967d5ec49c57f6ffbdbd799d1a9c98c1.1465391621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH v2 09/15] Support (and require) Python 3
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
X-List-Received-Date: Wed, 08 Jun 2016 13:21:32 -0000

We need to be able to support Python 3 so that we can parse master of
OE-Core with bitbake (which now requires it). This now means the
interface itself and the update script require Python 3.4+.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README                                     |  6 ++++--
 layerindex/bulkchange.py                   | 10 +++++-----
 layerindex/models.py                       | 24 ++++++++++++------------
 layerindex/recipedesc.py                   |  4 ++--
 layerindex/templatetags/addurlparameter.py |  2 +-
 layerindex/tools/import_layer.py           |  2 +-
 layerindex/update.py                       |  2 +-
 layerindex/urls.py                         |  2 +-
 layerindex/utils.py                        |  7 ++++---
 layerindex/views.py                        |  9 +++++----
 10 files changed, 36 insertions(+), 32 deletions(-)

diff --git a/README b/README
index db788df..b3374c9 100644
--- a/README
+++ b/README
@@ -11,6 +11,7 @@ Setup
 
 In order to make use of this application you will need:
 
+* Python 3.4+
 * Django 1.6.x - tested with 1.6.10; newer versions may work, but
   the application has not been tested with 1.7 or newer.
 * For production usage, a web server set up to host Django applications
@@ -32,8 +33,9 @@ In order to make use of this application you will need:
   have to have Django installed, have the same or similar configuration
   in settings.py and have access to the database used by the web
   application):
-  * Python 2.7.3
-  * GitPython (python-git) version 0.3.1 or later
+  * Python 2.7.6+ / Python 3.4+ to match with the version of BitBake
+    for the OpenEmbedded branch being parsed
+  * GitPython (python-git) version 2.0 or later
 
 Setup instructions:
 
diff --git a/layerindex/bulkchange.py b/layerindex/bulkchange.py
index 08d6d78..8102571 100644
--- a/layerindex/bulkchange.py
+++ b/layerindex/bulkchange.py
@@ -50,7 +50,7 @@ def generate_patches(tinfoil, fetchdir, changeset, outputdir):
                     outfile = open(os.path.join(tmpoutdir, patchname), 'w')
                     last_layer = layer
                 recipefile = str(os.path.join(layerfetchdir, layerbranch.vcs_subdir, change.recipe.filepath, change.recipe.filename))
-                varlist = list(set(fields.keys() + meta_vars))
+                varlist = list(set(list(fields.keys()) + meta_vars))
                 varfiles = recipeparse.get_var_files(recipefile, varlist, config_data_copy)
                 filevars = localise_file_vars(recipefile, varfiles, fields.keys())
                 for f, fvars in filevars.items():
@@ -66,7 +66,7 @@ def generate_patches(tinfoil, fetchdir, changeset, outputdir):
     ret = None
     if len(patches) > 1:
         (tmptarfd, tmptarname) = tempfile.mkstemp('.tar.gz', 'bulkchange-', outputdir)
-        tmptarfile = os.fdopen(tmptarfd, "w")
+        tmptarfile = os.fdopen(tmptarfd, "wb")
         tar = tarfile.open(None, "w:gz", tmptarfile)
         for patch in patches:
             patchfn = os.path.join(tmpoutdir, patch)
@@ -75,7 +75,7 @@ def generate_patches(tinfoil, fetchdir, changeset, outputdir):
         ret = tmptarname
     elif len(patches) == 1:
         (tmppatchfd, tmppatchname) = tempfile.mkstemp('.patch', 'bulkchange-', outputdir)
-        tmppatchfile = os.fdopen(tmppatchfd, "w")
+        tmppatchfile = os.fdopen(tmppatchfd, "wb")
         with open(os.path.join(tmpoutdir, patches[0]), "rb") as patchfile:
             shutil.copyfileobj(patchfile, tmppatchfile)
         tmppatchfile.close()
@@ -93,7 +93,7 @@ def patch_recipe(fn, relpath, values):
     remainingnames = {}
     for k in values.keys():
         remainingnames[k] = recipe_progression.index(k) if k in recipe_progression else -1
-    remainingnames = SortedDict(sorted(remainingnames.iteritems(), key=lambda x: x[1]))
+    remainingnames = SortedDict(sorted(remainingnames.items(), key=lambda x: x[1]))
 
     with tempfile.NamedTemporaryFile('w', delete=False) as tf:
         def outputvalue(name):
@@ -234,7 +234,7 @@ def main():
         utils.unlock_file(lockfile)
 
     if outp:
-        print outp
+        print(outp)
     else:
         sys.stderr.write("No changes to write\n")
         sys.exit(1)
diff --git a/layerindex/models.py b/layerindex/models.py
index 8d82846..e753fbe 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -26,7 +26,7 @@ class Branch(models.Model):
     class Meta:
         verbose_name_plural = "Branches"
 
-    def __unicode__(self):
+    def __str__(self):
         return self.name
 
 
@@ -106,7 +106,7 @@ class LayerItem(models.Model):
     def get_absolute_url(self):
         return reverse('layer_item', args=('master',self.name));
 
-    def __unicode__(self):
+    def __str__(self):
         return self.name
 
 
@@ -188,7 +188,7 @@ class LayerBranch(models.Model):
                     url = resolveComponents(url)
             return url
 
-    def __unicode__(self):
+    def __str__(self):
         return "%s: %s" % (self.layer.name, self.branch.name)
 
 
@@ -203,7 +203,7 @@ class LayerMaintainer(models.Model):
     responsibility = models.CharField(max_length=200, blank=True, help_text='Specific area(s) this maintainer is responsible for, if not the entire layer')
     status = models.CharField(max_length=1, choices=MAINTAINER_STATUS_CHOICES, default='A')
 
-    def __unicode__(self):
+    def __str__(self):
         respstr = ""
         if self.responsibility:
             respstr = " (%s)" % self.responsibility
@@ -217,7 +217,7 @@ class LayerDependency(models.Model):
     class Meta:
         verbose_name_plural = "Layer dependencies"
 
-    def __unicode__(self):
+    def __str__(self):
         return "%s depends on %s" % (self.layerbranch.layer.name, self.dependency.name)
 
 
@@ -225,7 +225,7 @@ class LayerNote(models.Model):
     layer = models.ForeignKey(LayerItem)
     text = models.TextField()
 
-    def __unicode__(self):
+    def __str__(self):
         return "%s: %s" % (self.layer.name, self.text)
 
 
@@ -266,7 +266,7 @@ class Recipe(models.Model):
         else:
             return self.filename.split('_')[0]
 
-    def __unicode__(self):
+    def __str__(self):
         return os.path.join(self.filepath, self.filename)
 
 
@@ -278,7 +278,7 @@ class RecipeFileDependency(models.Model):
     class Meta:
         verbose_name_plural = "Recipe file dependencies"
 
-    def __unicode__(self):
+    def __str__(self):
         return '%s' % self.path
 
 
@@ -341,7 +341,7 @@ class Machine(models.Model):
         url = self.layerbranch.file_url(os.path.join('conf/machine/%s.conf' % self.name))
         return url or ''
 
-    def __unicode__(self):
+    def __str__(self):
         return '%s (%s)' % (self.name, self.layerbranch.layer.name)
 
 
@@ -367,7 +367,7 @@ class BBAppend(models.Model):
             return fnmatch.fnmatch(recipename, appendname.replace('%', '*'))
         return False
 
-    def __unicode__(self):
+    def __str__(self):
         return os.path.join(self.filepath, self.filename)
 
 
@@ -383,7 +383,7 @@ class BBClass(models.Model):
         url = self.layerbranch.file_url(os.path.join('classes', "%s.bbclass" % self.name))
         return url or ''
 
-    def __unicode__(self):
+    def __str__(self):
         return '%s (%s)' % (self.name, self.layerbranch.layer.name)
 
 
@@ -391,7 +391,7 @@ class RecipeChangeset(models.Model):
     user = models.ForeignKey(User)
     name = models.CharField(max_length=255)
 
-    def __unicode__(self):
+    def __str__(self):
         return '%s' % (self.name)
 
 
diff --git a/layerindex/recipedesc.py b/layerindex/recipedesc.py
index 1925a27..43376cf 100644
--- a/layerindex/recipedesc.py
+++ b/layerindex/recipedesc.py
@@ -82,10 +82,10 @@ def main():
         layerrecipes = Recipe.objects.filter(layer=layer)
         for recipe in layerrecipes:
             fullpath = str(os.path.join(repodir, layer.vcs_subdir, recipe.filepath, recipe.filename))
-            print fullpath
+            print(fullpath)
             try:
                 envdata = bb.cache.Cache.loadDataFull(fullpath, [], tinfoil.config_data)
-                print "DESCRIPTION = \"%s\"" % envdata.getVar("DESCRIPTION", True)
+                print("DESCRIPTION = \"%s\"" % envdata.getVar("DESCRIPTION", True))
             except Exception as e:
                 logger.info("Unable to read %s: %s", fullpath, str(e))
 
diff --git a/layerindex/templatetags/addurlparameter.py b/layerindex/templatetags/addurlparameter.py
index 58a454a..cfebd41 100644
--- a/layerindex/templatetags/addurlparameter.py
+++ b/layerindex/templatetags/addurlparameter.py
@@ -23,7 +23,7 @@ def addurlparameter(parser, token):
     from re import split
     bits = split(r'\s+', token.contents, 2)
     if len(bits) < 2:
-        raise TemplateSyntaxError, "'%s' tag requires two arguments" % bits[0]
+        raise TemplateSyntaxError("'%s' tag requires two arguments" % bits[0])
     return AddParameter(bits[1],bits[2])
 
 register.tag('addurlparameter', addurlparameter)
diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
index a0771b4..b472d2a 100755
--- a/layerindex/tools/import_layer.py
+++ b/layerindex/tools/import_layer.py
@@ -164,7 +164,7 @@ def get_github_layerinfo(layer_url, username = None, password = None):
         data = resp.read()
         json_data = json.loads(data)
         #headers = dict((key, value) for key, value in resp.getheaders())
-        #print headers
+        #print(headers)
         owner_resp = github_api_call(json_data['owner']['url'].split('api.github.com')[-1])
         if resp.status in [200, 302]:
             owner_data = owner_resp.read()
diff --git a/layerindex/update.py b/layerindex/update.py
index ee4138d..157d46f 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 
 # Fetch layer repositories and update layer index database
 #
diff --git a/layerindex/urls.py b/layerindex/urls.py
index e7808e6..b170460 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -11,7 +11,7 @@ from django.core.urlresolvers import reverse_lazy
 from layerindex.views import LayerListView, LayerReviewListView, LayerReviewDetailView, RecipeSearchView, MachineSearchView, PlainTextListView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, HistoryListView, EditProfileFormView, AdvancedRecipeSearchView, BulkChangeView, BulkChangeSearchView, bulk_change_edit_view, bulk_change_patch_view, BulkChangeDeleteView, RecipeDetailView, RedirectParamsView, ClassicRecipeSearchView, ClassicRecipeDetailView, ClassicRecipeStatsView
 from layerindex.models import LayerItem, Recipe, RecipeChangeset
 from rest_framework import routers
-import restviews
+from . import restviews
 from django.conf.urls import include
 
 router = routers.DefaultRouter()
diff --git a/layerindex/utils.py b/layerindex/utils.py
index ebb89d3..72dc342 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -6,7 +6,8 @@
 # Licensed under the MIT license, see COPYING.MIT for details
 
 import sys
-import os.path
+import os
+import tempfile
 import subprocess
 import logging
 import time
@@ -32,10 +33,10 @@ def runcmd(cmd, destdir=None, printerr=True, logger=None):
         return output if succeed
     """
     #logger.debug("run cmd '%s' in %s" % (cmd, os.getcwd() if destdir is None else destdir))
-    out = os.tmpfile()
+    out = tempfile.TemporaryFile()
     try:
         subprocess.check_call(cmd, stdout=out, stderr=out, cwd=destdir, shell=True)
-    except subprocess.CalledProcessError,e:
+    except subprocess.CalledProcessError as e:
         out.seek(0)
         if printerr:
             output = out.read()
diff --git a/layerindex/views.py b/layerindex/views.py
index 1f42039..dfe4453 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -4,6 +4,7 @@
 #
 # Licensed under the MIT license, see COPYING.MIT for details
 
+import sys
 from django.shortcuts import get_object_or_404, render
 from django.http import HttpResponse, HttpResponseRedirect, HttpResponseForbidden, Http404
 from django.core.urlresolvers import reverse, reverse_lazy, resolve
@@ -26,7 +27,7 @@ from django.utils.decorators import method_decorator
 from django.contrib.auth.decorators import login_required
 from django.contrib import messages
 from reversion.models import Revision
-import simplesearch
+from . import simplesearch
 import settings
 from django.dispatch import receiver
 import reversion
@@ -212,14 +213,14 @@ def bulk_change_edit_view(request, template_name, pk):
 def bulk_change_patch_view(request, pk):
     import os
     import os.path
-    import utils
+    from layerindex.utils import runcmd
     changeset = get_object_or_404(RecipeChangeset, pk=pk)
     # FIXME this couples the web server and machine running the update script together,
     # but given that it's a separate script the way is open to decouple them in future
     try:
-        ret = utils.runcmd('python bulkchange.py %d %s' % (int(pk), settings.TEMP_BASE_DIR), os.path.dirname(__file__))
+        ret = runcmd('%s bulkchange.py %d %s' % (sys.executable, int(pk), settings.TEMP_BASE_DIR), os.path.dirname(__file__))
         if ret:
-            fn = ret.splitlines()[-1]
+            fn = ret.splitlines()[-1].decode('utf-8')
             if os.path.exists(fn):
                 if fn.endswith('.tar.gz'):
                     mimetype = 'application/x-gzip'
-- 
2.5.5


