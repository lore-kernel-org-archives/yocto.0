Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED79AE00BAD; Tue, 15 Nov 2016 19:19:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8404BE00A54
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 19:18:57 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 15 Nov 2016 19:18:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,497,1473145200"; d="scan'208";a="1059985993"
Received: from nnasirin-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com.fritz.box) ([10.255.185.211])
	by orsmga001.jf.intel.com with ESMTP; 15 Nov 2016 19:18:54 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 16 Nov 2016 16:18:33 +1300
Message-Id: <1479266314-8574-3-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1479266314-8574-1-git-send-email-paul.eggleton@linux.intel.com>
References: <1479266314-8574-1-git-send-email-paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 3/4] Record and display update logs
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
X-List-Received-Date: Wed, 16 Nov 2016 03:19:01 -0000

At the moment it's a bit difficult to get update logs out of the
environment in which the update script is being run. In order to make
the logs more accessible, create a LayerUpdate model to record the
output of update_layer.py separately for each layerbranch and tie the
created LayerUpdates together with a single Update model per session.

We provide two ways to look at this - a Tools->Updates page for
logged-in users, and there's also an "Updates" tab on each layer that is
accessible to anyone; which one is useful depends on whether you are
looking at the index as a whole or an individual layer.

Update records older than 30 days are deleted automatically by default.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 TODO                                      |   2 -
 layerindex/admin.py                       |   8 +
 layerindex/migrations/0005_layerupdate.py |  46 +++++
 layerindex/models.py                      |  37 +++-
 layerindex/update.py                      | 286 ++++++++++++++++++------------
 layerindex/urls.py                        |  14 +-
 layerindex/urls_branch.py                 |   4 +-
 layerindex/utils.py                       |  13 ++
 layerindex/views.py                       |  30 +++-
 settings.py                               |   3 +
 templates/base.html                       |   1 +
 templates/layerindex/detail.html          |  37 ++++
 templates/layerindex/layerupdate.html     |  30 ++++
 templates/layerindex/updatedetail.html    |  47 +++++
 templates/layerindex/updatelist.html      |  57 ++++++
 15 files changed, 491 insertions(+), 124 deletions(-)
 create mode 100644 layerindex/migrations/0005_layerupdate.py
 create mode 100644 templates/layerindex/layerupdate.html
 create mode 100644 templates/layerindex/updatedetail.html
 create mode 100644 templates/layerindex/updatelist.html

diff --git a/TODO b/TODO
index b5e8974..167715d 100644
--- a/TODO
+++ b/TODO
@@ -35,10 +35,8 @@ Other
 * Create simple script to check for unlisted layer subdirectories in all repos
 * Auto-detect more values from github pages?
 * Ability for submitters to get email notification about publication?
-* Update script still seems not to be always printing layer name on parsing warnings/errors
 * Update script could send warnings when parsing layers to maintainers? (optional)
 * Click on OE-Classic graph element to go to query?
 * Use bar instead of pie graphs for OE-Classic statistics
 * Ensure OE-Core appears before meta-oe in layer list
 * Ability for reviewers to comment before publishing a layer?
-* Record update & parse errors against recipe/layer
diff --git a/layerindex/admin.py b/layerindex/admin.py
index f50aae4..d25829a 100644
--- a/layerindex/admin.py
+++ b/layerindex/admin.py
@@ -74,6 +74,12 @@ class LayerDependencyAdmin(CompareVersionAdmin):
 class LayerNoteAdmin(CompareVersionAdmin):
     list_filter = ['layer__name']
 
+class UpdateAdmin(admin.ModelAdmin):
+    pass
+
+class LayerUpdateAdmin(admin.ModelAdmin):
+    list_filter = ['update__started', 'layerbranch__layer__name', 'layerbranch__branch__name']
+
 class RecipeAdmin(admin.ModelAdmin):
     search_fields = ['filename', 'pn']
     list_filter = ['layerbranch__layer__name', 'layerbranch__branch__name']
@@ -144,6 +150,8 @@ admin.site.register(LayerBranch, LayerBranchAdmin)
 admin.site.register(LayerMaintainer, LayerMaintainerAdmin)
 admin.site.register(LayerDependency, LayerDependencyAdmin)
 admin.site.register(LayerNote, LayerNoteAdmin)
+admin.site.register(Update, UpdateAdmin)
+admin.site.register(LayerUpdate, LayerUpdateAdmin)
 admin.site.register(Recipe, RecipeAdmin)
 admin.site.register(RecipeFileDependency)
 admin.site.register(Machine, MachineAdmin)
diff --git a/layerindex/migrations/0005_layerupdate.py b/layerindex/migrations/0005_layerupdate.py
new file mode 100644
index 0000000..3cf4ab2
--- /dev/null
+++ b/layerindex/migrations/0005_layerupdate.py
@@ -0,0 +1,46 @@
+# -*- coding: utf-8 -*-
+from __future__ import unicode_literals
+
+from django.db import migrations, models
+
+
+class Migration(migrations.Migration):
+
+    dependencies = [
+        ('layerindex', '0004_layerdependency_required'),
+    ]
+
+    operations = [
+        migrations.CreateModel(
+            name='LayerUpdate',
+            fields=[
+                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
+                ('started', models.DateTimeField()),
+                ('finished', models.DateTimeField()),
+                ('errors', models.IntegerField(default=0)),
+                ('warnings', models.IntegerField(default=0)),
+                ('log', models.TextField(blank=True)),
+                ('layerbranch', models.ForeignKey(to='layerindex.LayerBranch')),
+            ],
+        ),
+        migrations.CreateModel(
+            name='Update',
+            fields=[
+                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
+                ('started', models.DateTimeField()),
+                ('finished', models.DateTimeField(null=True, blank=True)),
+                ('log', models.TextField(blank=True)),
+                ('reload', models.BooleanField(help_text='Was this update a reload?', verbose_name='Reloaded', default=False)),
+            ],
+        ),
+        migrations.AlterField(
+            model_name='branch',
+            name='name',
+            field=models.CharField(max_length=50, verbose_name='Branch name'),
+        ),
+        migrations.AddField(
+            model_name='layerupdate',
+            name='update',
+            field=models.ForeignKey(to='layerindex.Update'),
+        ),
+    ]
diff --git a/layerindex/models.py b/layerindex/models.py
index 746fad4..96a1933 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -31,7 +31,7 @@ class PythonEnvironment(models.Model):
 
 
 class Branch(models.Model):
-    name = models.CharField(max_length=50)
+    name = models.CharField('Branch name', max_length=50)
     bitbake_branch = models.CharField(max_length=50)
     short_description = models.CharField(max_length=50, blank=True)
     sort_priority = models.IntegerField(blank=True, null=True)
@@ -47,6 +47,16 @@ class Branch(models.Model):
         return self.name
 
 
+class Update(models.Model):
+    started = models.DateTimeField()
+    finished = models.DateTimeField(blank=True, null=True)
+    log = models.TextField(blank=True)
+    reload = models.BooleanField('Reloaded', default=False, help_text='Was this update a reload?')
+
+    def __str__(self):
+        return '%s' % self.started
+
+
 class LayerItem(models.Model):
     LAYER_STATUS_CHOICES = (
         ('N', 'New'),
@@ -255,6 +265,31 @@ class LayerNote(models.Model):
         return "%s: %s" % (self.layer.name, self.text)
 
 
+class LayerUpdate(models.Model):
+    layerbranch = models.ForeignKey(LayerBranch)
+    update = models.ForeignKey(Update)
+    started = models.DateTimeField()
+    finished = models.DateTimeField()
+    errors = models.IntegerField(default=0)
+    warnings = models.IntegerField(default=0)
+    log = models.TextField(blank=True)
+
+    def save(self):
+        warnings = 0
+        errors = 0
+        for line in self.log.splitlines():
+            if line.startswith('WARNING:'):
+                warnings += 1
+            elif line.startswith('ERROR:'):
+                errors += 1
+        self.warnings = warnings
+        self.errors = errors
+        super(LayerUpdate, self).save()
+
+    def __str__(self):
+        return "%s: %s: %s" % (self.layerbranch.layer.name, self.layerbranch.branch.name, self.started)
+
+
 class Recipe(models.Model):
     layerbranch = models.ForeignKey(LayerBranch)
     filename = models.CharField(max_length=255)
diff --git a/layerindex/update.py b/layerindex/update.py
index 0ac174f..3a4df2f 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -14,6 +14,7 @@ import optparse
 import logging
 import subprocess
 import signal
+from datetime import datetime, timedelta
 from distutils.version import LooseVersion
 import utils
 from layerconfparse import LayerConfParse
@@ -41,10 +42,24 @@ def run_command_interruptible(cmd):
     """
     signal.signal(signal.SIGINT, signal.SIG_IGN)
     try:
-        ret = subprocess.call(cmd, cwd=os.path.dirname(sys.argv[0]), shell=True, preexec_fn=reenable_sigint)
+        process = subprocess.Popen(
+            cmd, cwd=os.path.dirname(sys.argv[0]), shell=True, preexec_fn=reenable_sigint, stdout=subprocess.PIPE, stderr=subprocess.STDOUT
+        )
+
+        buf = ''
+        while True:
+            out = process.stdout.read(1)
+            out = out.decode('utf-8')
+            if out:
+                sys.stdout.write(out)
+                sys.stdout.flush()
+                buf += out
+            elif out == '' and process.poll() != None:
+                break
+
     finally:
         signal.signal(signal.SIGINT, signal.SIG_DFL)
-    return ret
+    return process.returncode, buf
 
 
 def main():
@@ -93,7 +108,7 @@ def main():
 
     utils.setup_django()
     import settings
-    from layerindex.models import Branch, LayerItem, LayerDependency
+    from layerindex.models import Branch, LayerItem, Update, LayerUpdate
 
     logger.setLevel(options.loglevel)
 
@@ -126,130 +141,171 @@ def main():
     if not os.path.exists(fetchdir):
         os.makedirs(fetchdir)
     fetchedrepos = []
-    failedrepos = []
+    failedrepos = {}
 
-    lockfn = os.path.join(fetchdir, "layerindex.lock")
-    lockfile = utils.lock_file(lockfn)
-    if not lockfile:
-        logger.error("Layer index lock timeout expired")
-        sys.exit(1)
-    try:
-        bitbakepath = os.path.join(fetchdir, 'bitbake')
-
-        if not options.nofetch:
-            # Fetch latest metadata from repositories
-            for layer in layerquery:
-                # Handle multiple layers in a single repo
-                urldir = layer.get_fetch_dir()
-                repodir = os.path.join(fetchdir, urldir)
-                if not (layer.vcs_url in fetchedrepos or layer.vcs_url in failedrepos):
-                    logger.info("Fetching remote repository %s" % layer.vcs_url)
-                    out = None
-                    try:
-                        if not os.path.exists(repodir):
-                            out = utils.runcmd("git clone %s %s" % (layer.vcs_url, urldir), fetchdir, logger=logger)
-                        else:
-                            out = utils.runcmd("git fetch", repodir, logger=logger)
-                    except Exception as e:
-                        logger.error("Fetch of layer %s failed: %s" % (layer.name, str(e)))
-                        failedrepos.append(layer.vcs_url)
-                        continue
-                    fetchedrepos.append(layer.vcs_url)
+    listhandler = utils.ListHandler()
+    listhandler.setFormatter(logging.Formatter("%(levelname)s: %(message)s"))
+    logger.addHandler(listhandler)
 
-            if not fetchedrepos:
-                logger.error("No repositories could be fetched, exiting")
-                sys.exit(1)
-
-            logger.info("Fetching bitbake from remote repository %s" % settings.BITBAKE_REPO_URL)
-            if not os.path.exists(bitbakepath):
-                out = utils.runcmd("git clone %s %s" % (settings.BITBAKE_REPO_URL, 'bitbake'), fetchdir, logger=logger)
-            else:
-                out = utils.runcmd("git fetch", bitbakepath, logger=logger)
-
-        # Process and extract data from each layer
-        # We now do this by calling out to a separate script; doing otherwise turned out to be
-        # unreliable due to leaking memory (we're using bitbake internals in a manner in which
-        # they never get used during normal operation).
-        last_rev = {}
-        for branch in branches:
-            for layer in layerquery:
-                if layer.vcs_url in failedrepos:
-                    logger.info("Skipping update of layer %s as fetch of repository %s failed" % (layer.name, layer.vcs_url))
-                    continue
-
-                urldir = layer.get_fetch_dir()
-                repodir = os.path.join(fetchdir, urldir)
-
-                branchobj = utils.get_branch(branch)
+    update = Update()
+    update.started = datetime.now()
+    if options.fullreload or options.reload:
+        update.reload = True
+    else:
+        update.reload = False
+    if not options.dryrun:
+        update.save()
+    try:
+        lockfn = os.path.join(fetchdir, "layerindex.lock")
+        lockfile = utils.lock_file(lockfn)
+        if not lockfile:
+            logger.error("Layer index lock timeout expired")
+            sys.exit(1)
+        try:
+            bitbakepath = os.path.join(fetchdir, 'bitbake')
 
-                if branchobj.update_environment:
-                    cmdprefix = branchobj.update_environment.get_command()
+            if not options.nofetch:
+                # Fetch latest metadata from repositories
+                for layer in layerquery:
+                    # Handle multiple layers in a single repo
+                    urldir = layer.get_fetch_dir()
+                    repodir = os.path.join(fetchdir, urldir)
+                    if not (layer.vcs_url in fetchedrepos or layer.vcs_url in failedrepos):
+                        logger.info("Fetching remote repository %s" % layer.vcs_url)
+                        out = None
+                        try:
+                            if not os.path.exists(repodir):
+                                out = utils.runcmd("git clone %s %s" % (layer.vcs_url, urldir), fetchdir, logger=logger, printerr=False)
+                            else:
+                                out = utils.runcmd("git fetch", repodir, logger=logger, printerr=False)
+                        except subprocess.CalledProcessError as e:
+                            logger.error("Fetch of layer %s failed: %s" % (layer.name, e.output))
+                            failedrepos[layer.vcs_url] = e.output
+                            continue
+                        fetchedrepos.append(layer.vcs_url)
+
+                if not fetchedrepos:
+                    logger.error("No repositories could be fetched, exiting")
+                    sys.exit(1)
+
+                logger.info("Fetching bitbake from remote repository %s" % settings.BITBAKE_REPO_URL)
+                if not os.path.exists(bitbakepath):
+                    out = utils.runcmd("git clone %s %s" % (settings.BITBAKE_REPO_URL, 'bitbake'), fetchdir, logger=logger)
                 else:
-                    cmdprefix = 'python3'
-                cmd = '%s update_layer.py -l %s -b %s' % (cmdprefix, layer.name, branch)
-                if options.reload:
-                    cmd += ' --reload'
-                if options.fullreload:
-                    cmd += ' --fullreload'
-                if options.nocheckout:
-                    cmd += ' --nocheckout'
-                if options.dryrun:
-                    cmd += ' -n'
-                if options.loglevel == logging.DEBUG:
-                    cmd += ' -d'
-                elif options.loglevel == logging.ERROR:
-                    cmd += ' -q'
-                logger.debug('Running layer update command: %s' % cmd)
-                ret = run_command_interruptible(cmd)
-
-                # We need to get layerbranch here because it might not have existed until
-                # layer_update.py created it, but it still may not create one (e.g. if subdir
-                # didn't exist) so we still need to check
-                layerbranch = layer.get_layerbranch(branch)
-                if layerbranch:
-                    last_rev[layerbranch] = layerbranch.vcs_last_rev
-
-                if ret == 254:
-                    # Interrupted by user, break out of loop
-                    break
-
-        # Since update_layer may not be called in the correct order to have the
-        # dependencies created before trying to link them, we now have to loop
-        # back through all the branches and layers and try to link in the
-        # dependencies that may have been missed.  Note that creating the
-        # dependencies is a best-effort and continues if they are not found.
-        for branch in branches:
-            try:
-                layerconfparser = LayerConfParse(logger=logger, bitbakepath=bitbakepath)
+                    out = utils.runcmd("git fetch", bitbakepath, logger=logger)
+
+            # Process and extract data from each layer
+            # We now do this by calling out to a separate script; doing otherwise turned out to be
+            # unreliable due to leaking memory (we're using bitbake internals in a manner in which
+            # they never get used during normal operation).
+            last_rev = {}
+            for branch in branches:
                 for layer in layerquery:
-
-                    layerbranch = layer.get_layerbranch(branch)
-                    # Skip layers that did not change.
-                    layer_last_rev = None
-                    if layerbranch:
-                        layer_last_rev = last_rev.get(layerbranch, None)
-                    if layer_last_rev is None or layer_last_rev == layerbranch.vcs_last_rev:
+                    layerupdate = LayerUpdate()
+                    layerupdate.update = update
+
+                    errmsg = failedrepos.get(layer.vcs_url, '')
+                    if errmsg:
+                        logger.info("Skipping update of layer %s as fetch of repository %s failed:\n%s" % (layer.name, layer.vcs_url, errmsg))
+                        layerbranch = layer.get_layerbranch(branch)
+                        if layerbranch:
+                            layerupdate.layerbranch = layerbranch
+                            layerupdate.started = datetime.now()
+                            layerupdate.finished = datetime.now()
+                            layerupdate.log = 'ERROR: fetch failed: %s' % errmsg
+                            if not options.dryrun:
+                                layerupdate.save()
                         continue
 
                     urldir = layer.get_fetch_dir()
                     repodir = os.path.join(fetchdir, urldir)
 
-                    utils.checkout_layer_branch(layerbranch, repodir, logger)
-
-                    config_data = layerconfparser.parse_layer(layerbranch, repodir)
-                    if not config_data:
-                        logger.debug("Layer %s does not appear to have branch %s" % (layer.name, branch))
-                        continue
-
-                    utils.add_dependencies(layerbranch, config_data, logger=logger)
-                    utils.add_recommends(layerbranch, config_data, logger=logger)
-            finally:
-                layerconfparser.shutdown()
-
-
+                    branchobj = utils.get_branch(branch)
+
+                    if branchobj.update_environment:
+                        cmdprefix = branchobj.update_environment.get_command()
+                    else:
+                        cmdprefix = 'python3'
+                    cmd = '%s update_layer.py -l %s -b %s' % (cmdprefix, layer.name, branch)
+                    if options.reload:
+                        cmd += ' --reload'
+                    if options.fullreload:
+                        cmd += ' --fullreload'
+                    if options.nocheckout:
+                        cmd += ' --nocheckout'
+                    if options.dryrun:
+                        cmd += ' -n'
+                    if options.loglevel == logging.DEBUG:
+                        cmd += ' -d'
+                    elif options.loglevel == logging.ERROR:
+                        cmd += ' -q'
+
+                    logger.debug('Running layer update command: %s' % cmd)
+                    layerupdate.started = datetime.now()
+                    ret, output = run_command_interruptible(cmd)
+                    layerupdate.finished = datetime.now()
+
+                    # We need to get layerbranch here because it might not have existed until
+                    # layer_update.py created it, but it still may not create one (e.g. if subdir
+                    # didn't exist) so we still need to check
+                    layerbranch = layer.get_layerbranch(branch)
+                    if layerbranch:
+                        last_rev[layerbranch] = layerbranch.vcs_last_rev
+                        layerupdate.layerbranch = layerbranch
+                        layerupdate.log = output
+                        if not options.dryrun:
+                            layerupdate.save()
+
+                    if ret == 254:
+                        # Interrupted by user, break out of loop
+                        break
+
+            # Since update_layer may not be called in the correct order to have the
+            # dependencies created before trying to link them, we now have to loop
+            # back through all the branches and layers and try to link in the
+            # dependencies that may have been missed.  Note that creating the
+            # dependencies is a best-effort and continues if they are not found.
+            for branch in branches:
+                try:
+                    layerconfparser = LayerConfParse(logger=logger, bitbakepath=bitbakepath)
+                    for layer in layerquery:
+
+                        layerbranch = layer.get_layerbranch(branch)
+                        # Skip layers that did not change.
+                        layer_last_rev = None
+                        if layerbranch:
+                            layer_last_rev = last_rev.get(layerbranch, None)
+                        if layer_last_rev is None or layer_last_rev == layerbranch.vcs_last_rev:
+                            continue
+
+                        urldir = layer.get_fetch_dir()
+                        repodir = os.path.join(fetchdir, urldir)
+
+                        utils.checkout_layer_branch(layerbranch, repodir, logger)
+
+                        config_data = layerconfparser.parse_layer(layerbranch, repodir)
+                        if not config_data:
+                            logger.debug("Layer %s does not appear to have branch %s" % (layer.name, branch))
+                            continue
+
+                        utils.add_dependencies(layerbranch, config_data, logger=logger)
+                        utils.add_recommends(layerbranch, config_data, logger=logger)
+                finally:
+                    layerconfparser.shutdown()
+
+        finally:
+            utils.unlock_file(lockfile)
 
     finally:
-        utils.unlock_file(lockfile)
+        update.log = ''.join(listhandler.read())
+        update.finished = datetime.now()
+        if not options.dryrun:
+            update.save()
+
+    if not options.dryrun:
+        # Purge old update records
+        update_purge_days = getattr(settings, 'UPDATE_PURGE_DAYS', 30)
+        Update.objects.filter(started__lte=datetime.now()-timedelta(days=update_purge_days)).delete()
 
     sys.exit(0)
 
diff --git a/layerindex/urls.py b/layerindex/urls.py
index e37db24..b4535d2 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -8,7 +8,7 @@ from django.conf.urls import *
 from django.views.generic import TemplateView, DetailView, ListView, RedirectView
 from django.views.defaults import page_not_found
 from django.core.urlresolvers import reverse_lazy
-from layerindex.views import LayerListView, LayerReviewListView, LayerReviewDetailView, RecipeSearchView, MachineSearchView, PlainTextListView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, HistoryListView, EditProfileFormView, AdvancedRecipeSearchView, BulkChangeView, BulkChangeSearchView, bulk_change_edit_view, bulk_change_patch_view, BulkChangeDeleteView, RecipeDetailView, RedirectParamsView, ClassicRecipeSearchView, ClassicRecipeDetailView, ClassicRecipeStatsView
+from layerindex.views import LayerListView, LayerReviewListView, LayerReviewDetailView, RecipeSearchView, MachineSearchView, PlainTextListView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, HistoryListView, EditProfileFormView, AdvancedRecipeSearchView, BulkChangeView, BulkChangeSearchView, bulk_change_edit_view, bulk_change_patch_view, BulkChangeDeleteView, RecipeDetailView, RedirectParamsView, ClassicRecipeSearchView, ClassicRecipeDetailView, ClassicRecipeStatsView, LayerUpdateDetailView, UpdateListView, UpdateDetailView
 from layerindex.models import LayerItem, Recipe, RecipeChangeset
 from rest_framework import routers
 from . import restviews
@@ -67,6 +67,10 @@ urlpatterns = patterns('',
             template_name='layerindex/recipedetail.html'),
             name='recipe'),
     url(r'^layer/(?P<name>[-\w]+)/publish/$', 'layerindex.views.publish', name="publish"),
+    url(r'^layerupdate/(?P<pk>[-\w]+)/$',
+        LayerUpdateDetailView.as_view(
+            template_name='layerindex/layerupdate.html'),
+            name='layerupdate'),
     url(r'^bulkchange/$',
         BulkChangeView.as_view(
             template_name='layerindex/bulkchange.html'),
@@ -97,6 +101,14 @@ urlpatterns = patterns('',
     #        context_object_name='recipe_list',
     #        template_name='layerindex/rawrecipes.txt'),
     #        name='recipe_list_raw'),
+    url(r'^updates/$',
+        UpdateListView.as_view(
+            template_name='layerindex/updatelist.html'),
+            name='update_list'),
+    url(r'^updates/(?P<pk>[-\w]+)/$',
+        UpdateDetailView.as_view(
+            template_name='layerindex/updatedetail.html'),
+            name='update'),
     url(r'^history/$',
         HistoryListView.as_view(
             template_name='layerindex/history.html'),
diff --git a/layerindex/urls_branch.py b/layerindex/urls_branch.py
index dbfb8a1..89659d9 100644
--- a/layerindex/urls_branch.py
+++ b/layerindex/urls_branch.py
@@ -1,13 +1,13 @@
 # layerindex-web - Branch-based URL definitions
 #
-# Copyright (C) 2013 Intel Corporation
+# Copyright (C) 2013-2016 Intel Corporation
 #
 # Licensed under the MIT license, see COPYING.MIT for details
 
 from django.conf.urls import *
 from django.views.defaults import page_not_found
 from django.core.urlresolvers import reverse_lazy
-from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, DistroSearchView, PlainTextListView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView
+from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, DistroSearchView, PlainTextListView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView, LayerUpdateDetailView
 
 urlpatterns = patterns('',
     url(r'^$', 
diff --git a/layerindex/utils.py b/layerindex/utils.py
index 9248077..3058c3c 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -223,6 +223,19 @@ def logger_create(name):
     logger.setLevel(logging.INFO)
     return logger
 
+class ListHandler(logging.Handler):
+    """Logging handler which accumulates formatted log records in a list, returning the list on demand"""
+    def __init__(self):
+        self.log = []
+        logging.Handler.__init__(self, logging.WARNING)
+    def emit(self, record):
+        self.log.append('%s\n' % self.format(record))
+    def read(self):
+        log = self.log
+        self.log = []
+        return log
+
+
 def lock_file(fn):
     starttime = time.time()
     while True:
diff --git a/layerindex/views.py b/layerindex/views.py
index 7045a12..0933bf0 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -1,6 +1,6 @@
 # layerindex-web - view definitions
 #
-# Copyright (C) 2013-2014 Intel Corporation
+# Copyright (C) 2013-2016 Intel Corporation
 #
 # Licensed under the MIT license, see COPYING.MIT for details
 
@@ -10,7 +10,7 @@ from django.http import HttpResponse, HttpResponseRedirect, HttpResponseForbidde
 from django.core.urlresolvers import reverse, reverse_lazy, resolve
 from django.core.exceptions import PermissionDenied
 from django.template import RequestContext
-from layerindex.models import Branch, LayerItem, LayerMaintainer, LayerBranch, LayerDependency, LayerNote, Recipe, Machine, Distro, BBClass, BBAppend, RecipeChange, RecipeChangeset, ClassicRecipe
+from layerindex.models import Branch, LayerItem, LayerMaintainer, LayerBranch, LayerDependency, LayerNote, Update, LayerUpdate, Recipe, Machine, Distro, BBClass, BBAppend, RecipeChange, RecipeChangeset, ClassicRecipe
 from datetime import datetime
 from django.views.generic import TemplateView, DetailView, ListView
 from django.views.generic.edit import CreateView, DeleteView, UpdateView
@@ -18,7 +18,7 @@ from django.views.generic.base import RedirectView
 from layerindex.forms import EditLayerForm, LayerMaintainerFormSet, EditNoteForm, EditProfileForm, RecipeChangesetForm, AdvancedRecipeSearchForm, BulkChangeEditFormSet, ClassicRecipeForm, ClassicRecipeSearchForm
 from django.db import transaction
 from django.contrib.auth.models import User, Permission
-from django.db.models import Q, Count
+from django.db.models import Q, Count, Sum
 from django.core.mail import EmailMessage
 from django.template.loader import get_template
 from django.template import Context
@@ -328,6 +328,7 @@ class LayerDetailView(DetailView):
             context['distros'] = layerbranch.distro_set.order_by('name')
             context['appends'] = layerbranch.bbappend_set.order_by('filename')
             context['classes'] = layerbranch.bbclass_set.order_by('name')
+            context['updates'] = layerbranch.layerupdate_set.order_by('-started')
         context['url_branch'] = self.kwargs['branch']
         context['this_url_name'] = resolve(self.request.path_info).url_name
         return context
@@ -599,6 +600,29 @@ class MachineSearchView(ListView):
         return context
 
 
+class UpdateListView(ListView):
+    context_object_name = "updates"
+    paginate_by = 50
+
+    def get_queryset(self):
+        return Update.objects.all().order_by('-started').annotate(errors=Sum('layerupdate__errors'), warnings=Sum('layerupdate__warnings'))
+
+
+class UpdateDetailView(DetailView):
+    model = Update
+
+    def get_context_data(self, **kwargs):
+        context = super(UpdateDetailView, self).get_context_data(**kwargs)
+        update = self.get_object()
+        if update:
+            context['layerupdates'] = update.layerupdate_set.exclude(log__isnull=True).exclude(log__exact='')
+        return context
+
+
+class LayerUpdateDetailView(DetailView):
+    model = LayerUpdate
+
+
 class DistroSearchView(ListView):
     context_object_name = 'distro_list'
     paginate_by = 50
diff --git a/settings.py b/settings.py
index 9896136..0ecf90b 100644
--- a/settings.py
+++ b/settings.py
@@ -211,6 +211,9 @@ BITBAKE_REPO_URL = "git://git.openembedded.org/bitbake"
 # Core layer to be used by the update script for basic BitBake configuration
 CORE_LAYER_NAME = "openembedded-core"
 
+# Update records older than this number of days will be deleted every update
+UPDATE_PURGE_DAYS = 30
+
 # Settings for layer submission feature
 SUBMIT_EMAIL_FROM = 'noreply@example.com'
 SUBMIT_EMAIL_SUBJECT = 'OE Layerindex layer submission'
diff --git a/templates/base.html b/templates/base.html
index fedcfe2..8a3b8fe 100644
--- a/templates/base.html
+++ b/templates/base.html
@@ -72,6 +72,7 @@
                         <ul class="dropdown-menu">
                             <li><a href="{% url 'bulk_change' %}">Bulk Change</a></li>
                             <li><a href="{% url 'duplicates' 'master' %}">Duplicates</a></li>
+                            <li><a href="{% url 'update_list' %}">Updates</a></li>
                         </ul>
                     </li>
                     {% endif %}
diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
index 9d3ee05..08fc30a 100644
--- a/templates/layerindex/detail.html
+++ b/templates/layerindex/detail.html
@@ -181,6 +181,9 @@
             {% if distros.count > 0 %}
                 <li><a href="#distros" data-toggle="tab">Distros</a></li>
             {% endif %}
+            {% if updates.count > 0 %}
+                <li><a href="#updates" data-toggle="tab">Updates</a></li>
+            {% endif %}
         </ul>
 
         <div class="tab-content">
@@ -298,6 +301,40 @@
                     </table>
                 </div>
             {% endif %}
+            {% if updates.count > 0 %}
+                <div class="tab-pane" id="updates">
+                    <div class="navbar">
+                        <div class="navbar-inner">
+                            <a class="brand pull-left">{{ layeritem.name }} updates</a>
+                        </div>
+                    </div>
+
+                    <table class="table table-bordered">
+                        <thead>
+                            <tr>
+                                <th>Date/time</th>
+                                <th>Errors</th>
+                                <th>Warnings</th>
+                            </tr>
+                        </thead>
+                        <tbody>
+                            {% for update in updates %}
+                                <tr>
+                                    <td>
+                                        {% if update.log %}
+                                            <a href="{% url 'layerupdate' update.id %}">{{ update.started }}{% if update.update.reload %} (reload){% endif%}</a>
+                                        {% else %}
+                                            <span class="muted">{{ update.started }}{% if update.update.reload %} (reload){% endif%}</span>
+                                        {% endif %}
+                                    </td>
+                                    <td>{% if update.errors %}<span class="badge badge-important">{{ update.errors }}</span>{% endif %}</td>
+                                    <td>{% if update.warnings %}<span class="badge badge-warning">{{ update.warnings }}</span>{% endif %}</td>
+                                </tr>
+                            {% endfor %}
+                        </tbody>
+                    </table>
+                </div>
+            {% endif %}
         </div>
  
 
diff --git a/templates/layerindex/layerupdate.html b/templates/layerindex/layerupdate.html
new file mode 100644
index 0000000..d969fc6
--- /dev/null
+++ b/templates/layerindex/layerupdate.html
@@ -0,0 +1,30 @@
+{% extends "base.html" %}
+{% load i18n %}
+
+{% comment %}
+
+  layerindex-web - layer update page
+
+  Copyright (C) 2016 Intel Corporation
+  Licensed under the MIT license, see COPYING.MIT for details
+
+{% endcomment %}
+
+<!--
+{% block title_append %} - {{ layerupdate.layerbranch.layer.name }} {{ layerupdate.layerbranch.branch.name }} - {{ layerupdate.started }} {% endblock %}
+-->
+
+{% block content %}
+{% autoescape on %}
+
+<h2>{{ layerupdate.layerbranch.layer.name }} {{ layerupdate.layerbranch.branch.name }} - {{ layerupdate.started }}</h2>
+
+<pre>{{ layerupdate.log }}</pre>
+
+{% endautoescape %}
+
+{% endblock %}
+
+
+{% block scripts %}
+{% endblock %}
diff --git a/templates/layerindex/updatedetail.html b/templates/layerindex/updatedetail.html
new file mode 100644
index 0000000..05e115f
--- /dev/null
+++ b/templates/layerindex/updatedetail.html
@@ -0,0 +1,47 @@
+{% extends "base.html" %}
+{% load i18n %}
+
+{% comment %}
+
+  layerindex-web - update page
+
+  Copyright (C) 2016 Intel Corporation
+  Licensed under the MIT license, see COPYING.MIT for details
+
+{% endcomment %}
+
+<!--
+{% block title_append %} - {{ update.started }} {% endblock %}
+-->
+
+{% block content %}
+{% autoescape on %}
+
+        <ul class="breadcrumb">
+            <li><a href="{% url 'update_list' %}">Updates</a> <span class="divider">&rarr;</span></li>
+            <li class="active">{{ update.started }}</li>
+        </ul>
+
+
+<h2>{{ update.started }} {% if update.reload %}(reload){% endif %}</h2>
+
+{% if update.log %}
+    <pre>{{ update.log }}</pre>
+{% endif %}
+
+{% for layerupdate in layerupdates %}
+    <a href="{% url 'layer_item' layerupdate.layerbranch.branch.name layerupdate.layerbranch.layer.name %}"><h3>{{ layerupdate.layerbranch.layer.name }} {{ layerupdate.layerbranch.branch.name }}</h3></a>
+    <pre>{{ layerupdate.log }}</pre>
+{% endfor %}
+
+{% if not update.log and not layerupdates %}
+    <p>No messages</p>
+{% endif %}
+
+{% endautoescape %}
+
+{% endblock %}
+
+
+{% block scripts %}
+{% endblock %}
diff --git a/templates/layerindex/updatelist.html b/templates/layerindex/updatelist.html
new file mode 100644
index 0000000..0549dba
--- /dev/null
+++ b/templates/layerindex/updatelist.html
@@ -0,0 +1,57 @@
+{% extends "base.html" %}
+{% load i18n %}
+{% load static %}
+
+{% comment %}
+
+  layerindex-web - updates list page template
+
+  Copyright (C) 2016 Intel Corporation
+  Licensed under the MIT license, see COPYING.MIT for details
+
+{% endcomment %}
+
+
+<!--
+{% block title_append %} - updates{% endblock %}
+-->
+
+{% block content %}
+{% autoescape on %}
+
+<div class="row-fluid">
+    <div class="span9 offset1">
+
+        <table class="table table-striped table-bordered">
+            <thead>
+                <tr>
+                    <th>Update date</th>
+                    <th>Time</th>
+                    <th>Errors</th>
+                    <th>Warnings</th>
+                </tr>
+            </thead>
+
+            <tbody>
+                {% for update in updates %}
+                <tr>
+                    <td><a href="{% url 'update' update.id %}">{{ update.started }}{% if update.reload %} (reload){% endif %}</a></td>
+                    <td>{% if update.finished %}{{ update.started|timesince:update.finished }}{% else %}(in progress){% endif %}</td>
+                    <td>{% if update.errors %}<span class="badge badge-important">{{ update.errors }}</span>{% endif %}</td>
+                    <td>{% if update.warnings %}<span class="badge badge-warning">{{ update.warnings }}</span>{% endif %}</td>
+                </tr>
+                {% endfor %}
+
+            </tbody>
+        </table>
+    </div>
+</div>
+
+{% if is_paginated %}
+    {% load pagination %}
+    {% pagination page_obj %}
+{% endif %}
+
+{% endautoescape %}
+
+{% endblock %}
-- 
2.5.5


