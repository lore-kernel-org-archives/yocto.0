Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED658E00B58; Tue, 14 Aug 2018 06:32:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93E0AE00A86
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 06:32:38 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Aug 2018 06:32:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,238,1531810800"; d="scan'208";a="66079743"
Received: from pciunel-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.52.11])
	by orsmga006.jf.intel.com with ESMTP; 14 Aug 2018 06:32:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Aug 2018 15:32:16 +0200
Message-Id: <db08df4a8681fbbb84bea743a13dc0cce29c877f.1534253407.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
In-Reply-To: <cover.1534253406.git.paul.eggleton@linux.intel.com>
References: <cover.1534253406.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 3/5] Improve collection/display of LayerUpdate records
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
X-List-Received-Date: Tue, 14 Aug 2018 13:32:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Make layerupdate collection slightly more reliable and make it easier
to see when updates have actually been captured:

* Split layerbranch into separate layer and branch fields, since there
  may not be a layerbranch in existence but we might want to log an
  error relating to the branch and layer.
* Show all layerupdates on the update detail page, not just those with
  log messages
* Record before and after revisions and show these in the update detail
  and layerupdate detail (with links)
* Record return code of update_layer process
* Highlight layer updates with a non-zero return code, errors or
  warnings in the output on the update detail page
* Show duration on the layerupdate detail page

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 TODO                                          |  1 -
 layerindex/admin.py                           |  2 +-
 .../0021_layerupdate_add_layer_branch.py      | 26 +++++++++++
 .../0022_layerupdate_set_layer_branch.py      | 41 +++++++++++++++++
 .../0023_layerupdate_layer_branch_finalise.py | 29 ++++++++++++
 .../migrations/0024_layerupdate_vcs_revs.py   | 35 +++++++++++++++
 layerindex/models.py                          | 28 ++++++++++--
 layerindex/static/css/additional.css          | 10 +++++
 layerindex/templatetags/extrafilters.py       |  4 ++
 layerindex/update.py                          | 44 ++++++++++++-------
 layerindex/views.py                           |  4 +-
 templates/layerindex/layerupdate.html         | 19 +++++++-
 templates/layerindex/updatedetail.html        | 34 ++++++++++++--
 13 files changed, 249 insertions(+), 28 deletions(-)
 create mode 100644 layerindex/migrations/0021_layerupdate_add_layer_branch.py
 create mode 100644 layerindex/migrations/0022_layerupdate_set_layer_branch.py
 create mode 100644 layerindex/migrations/0023_layerupdate_layer_branch_finalise.py
 create mode 100644 layerindex/migrations/0024_layerupdate_vcs_revs.py

diff --git a/TODO b/TODO
index aab3a4eb..ae2ab07f 100644
--- a/TODO
+++ b/TODO
@@ -43,7 +43,6 @@ Features
 * Use bar instead of pie graphs for OE-Classic statistics
 * Ability for reviewers to comment before publishing a layer?
 * Show a note at the top of the layer edit form if there's a validation error
-* Record layer update start/end revisions
 * Show count in duplicates page
 * Search on layer selection dialogs
 
diff --git a/layerindex/admin.py b/layerindex/admin.py
index a7c62783..bd9c66b1 100644
--- a/layerindex/admin.py
+++ b/layerindex/admin.py
@@ -85,7 +85,7 @@ class UpdateAdmin(admin.ModelAdmin):
     pass
 
 class LayerUpdateAdmin(admin.ModelAdmin):
-    list_filter = ['update__started', 'layerbranch__layer__name', 'layerbranch__branch__name']
+    list_filter = ['update__started', 'layer', 'branch']
 
 class RecipeAdmin(admin.ModelAdmin):
     search_fields = ['filename', 'pn']
diff --git a/layerindex/migrations/0021_layerupdate_add_layer_branch.py b/layerindex/migrations/0021_layerupdate_add_layer_branch.py
new file mode 100644
index 00000000..573c7cb1
--- /dev/null
+++ b/layerindex/migrations/0021_layerupdate_add_layer_branch.py
@@ -0,0 +1,26 @@
+# -*- coding: utf-8 -*-
+# Generated by Django 1.11.12 on 2018-08-13 22:44
+from __future__ import unicode_literals
+
+from django.db import migrations, models
+import django.db.models.deletion
+
+
+class Migration(migrations.Migration):
+
+    dependencies = [
+        ('layerindex', '0020_update_manual'),
+    ]
+
+    operations = [
+        migrations.AddField(
+            model_name='layerupdate',
+            name='branch',
+            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='layerindex.Branch'),
+        ),
+        migrations.AddField(
+            model_name='layerupdate',
+            name='layer',
+            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='layerindex.LayerItem'),
+        ),
+    ]
diff --git a/layerindex/migrations/0022_layerupdate_set_layer_branch.py b/layerindex/migrations/0022_layerupdate_set_layer_branch.py
new file mode 100644
index 00000000..e0e47291
--- /dev/null
+++ b/layerindex/migrations/0022_layerupdate_set_layer_branch.py
@@ -0,0 +1,41 @@
+# -*- coding: utf-8 -*-
+# Generated by Django 1.11.12 on 2018-08-13 23:05
+from __future__ import unicode_literals
+
+from django.db import migrations
+
+
+def set_branch_layer(apps, schema_editor):
+    LayerUpdate = apps.get_model('layerindex', 'LayerUpdate')
+    for layerupdate in LayerUpdate.objects.all():
+        layerupdate.branch = layerupdate.layerbranch.branch
+        layerupdate.layer = layerupdate.layerbranch.layer
+        layerupdate.save()
+
+def set_layerbranch(apps, schema_editor):
+    LayerUpdate = apps.get_model('layerindex', 'LayerUpdate')
+    LayerBranch = apps.get_model('layerindex', 'LayerBranch')
+    to_delete = []
+    for layerupdate in LayerUpdate.objects.all():
+        layerbranch = LayerBranch.objects.filter(layeritem=layerupdate.layer, branch=layerupdate.branch).first()
+        if layerbranch:
+            layerupdate.layerbranch = layerbranch
+            layerupdate.save()
+        else:
+            # The whole point of splitting layerbranch -> layer,branch was to
+            # be able to have records with no corresponding LayerBranch, so we
+            # now have to delete any that don't when reversing
+            to_delete.append(layerupdate.id)
+    for luid in to_delete:
+        LayerUpdate.objects.filter(id=luid).delete()
+
+
+class Migration(migrations.Migration):
+
+    dependencies = [
+        ('layerindex', '0021_layerupdate_add_layer_branch'),
+    ]
+
+    operations = [
+        migrations.RunPython(set_branch_layer, reverse_code=set_layerbranch),
+    ]
diff --git a/layerindex/migrations/0023_layerupdate_layer_branch_finalise.py b/layerindex/migrations/0023_layerupdate_layer_branch_finalise.py
new file mode 100644
index 00000000..ba6b72f2
--- /dev/null
+++ b/layerindex/migrations/0023_layerupdate_layer_branch_finalise.py
@@ -0,0 +1,29 @@
+# -*- coding: utf-8 -*-
+# Generated by Django 1.11.12 on 2018-08-13 23:06
+from __future__ import unicode_literals
+
+from django.db import migrations, models
+
+
+class Migration(migrations.Migration):
+
+    dependencies = [
+        ('layerindex', '0022_layerupdate_set_layer_branch'),
+    ]
+
+    operations = [
+        migrations.AlterField(
+            model_name='layerupdate',
+            name='branch',
+            field=models.ForeignKey(to='layerindex.Branch'),
+        ),
+        migrations.AlterField(
+            model_name='layerupdate',
+            name='layer',
+            field=models.ForeignKey(to='layerindex.LayerItem'),
+        ),
+        migrations.RemoveField(
+            model_name='layerupdate',
+            name='layerbranch',
+        ),
+    ]
diff --git a/layerindex/migrations/0024_layerupdate_vcs_revs.py b/layerindex/migrations/0024_layerupdate_vcs_revs.py
new file mode 100644
index 00000000..0d69043e
--- /dev/null
+++ b/layerindex/migrations/0024_layerupdate_vcs_revs.py
@@ -0,0 +1,35 @@
+# -*- coding: utf-8 -*-
+# Generated by Django 1.11.12 on 2018-08-13 23:24
+from __future__ import unicode_literals
+
+from django.db import migrations, models
+
+
+class Migration(migrations.Migration):
+
+    dependencies = [
+        ('layerindex', '0023_layerupdate_layer_branch_finalise'),
+    ]
+
+    operations = [
+        migrations.AddField(
+            model_name='layerupdate',
+            name='vcs_after_rev',
+            field=models.CharField(blank=True, max_length=80, verbose_name='Revision after'),
+        ),
+        migrations.AddField(
+            model_name='layerupdate',
+            name='vcs_before_rev',
+            field=models.CharField(blank=True, max_length=80, verbose_name='Revision before'),
+        ),
+        migrations.AddField(
+            model_name='layerupdate',
+            name='retcode',
+            field=models.IntegerField(default=0),
+        ),
+        migrations.AlterField(
+            model_name='layerupdate',
+            name='finished',
+            field=models.DateTimeField(blank=True, null=True),
+        ),
+    ]
diff --git a/layerindex/models.py b/layerindex/models.py
index 6042d58d..0dc4bd7c 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -394,13 +394,35 @@ class LayerNote(models.Model):
 
 
 class LayerUpdate(models.Model):
-    layerbranch = models.ForeignKey(LayerBranch)
+    layer = models.ForeignKey(LayerItem)
+    branch = models.ForeignKey(Branch)
     update = models.ForeignKey(Update)
     started = models.DateTimeField()
-    finished = models.DateTimeField()
+    finished = models.DateTimeField(blank=True, null=True)
     errors = models.IntegerField(default=0)
     warnings = models.IntegerField(default=0)
+    vcs_before_rev = models.CharField('Revision before', max_length=80, blank=True)
+    vcs_after_rev = models.CharField('Revision after', max_length=80, blank=True)
     log = models.TextField(blank=True)
+    retcode = models.IntegerField(default=0)
+
+    def layerbranch_exists(self):
+        """Helper function for linking"""
+        return LayerBranch.objects.filter(layer=self.layer, branch=self.branch).exists()
+
+    def vcs_before_commit_url(self):
+        if self.vcs_before_rev:
+            layerbranch = LayerBranch.objects.filter(layer=self.layer, branch=self.branch).first()
+            if layerbranch:
+                return layerbranch.commit_url(self.vcs_before_rev)
+        return None
+
+    def vcs_after_commit_url(self):
+        if self.vcs_after_rev:
+            layerbranch = LayerBranch.objects.filter(layer=self.layer, branch=self.branch).first()
+            if layerbranch:
+                return layerbranch.commit_url(self.vcs_after_rev)
+        return None
 
     def save(self):
         warnings = 0
@@ -415,7 +437,7 @@ class LayerUpdate(models.Model):
         super(LayerUpdate, self).save()
 
     def __str__(self):
-        return "%s: %s: %s" % (self.layerbranch.layer.name, self.layerbranch.branch.name, self.started)
+        return "%s: %s: %s" % (self.layer.name, self.branch.name, self.started)
 
 
 class Recipe(models.Model):
diff --git a/layerindex/static/css/additional.css b/layerindex/static/css/additional.css
index 30d2b77d..28af9bc9 100644
--- a/layerindex/static/css/additional.css
+++ b/layerindex/static/css/additional.css
@@ -258,3 +258,13 @@ td.info {
 .hidden-select {
     display: none !important;
 }
+
+.pre-plain {
+    background-color: transparent;
+    border-style: none;
+    padding: 0;
+}
+
+.td-pre {
+    background-color: #f5f5f5;
+}
diff --git a/layerindex/templatetags/extrafilters.py b/layerindex/templatetags/extrafilters.py
index 852e426b..c061a945 100644
--- a/layerindex/templatetags/extrafilters.py
+++ b/layerindex/templatetags/extrafilters.py
@@ -12,6 +12,10 @@ def replace_commas(string):
 def squashspaces(strval):
     return utils.squashspaces(strval)
 
+@register.filter
+def truncatesimple(strval, length):
+    return strval[:length]
+
 @register.filter
 def timesince2(date, date2=None):
     # Based on http://www.didfinishlaunchingwithoptions.com/a-better-timesince-template-filter-for-django/
diff --git a/layerindex/update.py b/layerindex/update.py
index 5713b2e5..14529498 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -303,7 +303,6 @@ def main():
             # We now do this by calling out to a separate script; doing otherwise turned out to be
             # unreliable due to leaking memory (we're using bitbake internals in a manner in which
             # they never get used during normal operation).
-            last_rev = {}
             failed_layers = {}
             for branch in branches:
                 failed_layers[branch] = []
@@ -401,6 +400,17 @@ def main():
                         logger.info('Update interrupted, exiting')
                         sys.exit(254)
                     elif ret != 0:
+                        output = output.rstrip()
+                        # Save a layerupdate here or we won't see this output
+                        layerupdate = LayerUpdate()
+                        layerupdate.update = update
+                        layerupdate.layer = layer
+                        layerupdate.branch = branchobj
+                        layerupdate.started = datetime.now()
+                        layerupdate.log = output
+                        layerupdate.retcode = ret
+                        if not options.dryrun:
+                            layerupdate.save()
                         continue
 
                     col = extract_value('BBFILE_COLLECTIONS', output)
@@ -479,23 +489,27 @@ def main():
                 for layer in layerquery_sorted:
                     layerupdate = LayerUpdate()
                     layerupdate.update = update
+                    layerupdate.layer = layer
+                    layerupdate.branch = branchobj
+                    layerbranch = layer.get_layerbranch(branch)
+                    if layerbranch:
+                        layerupdate.vcs_before_rev = layerbranch.vcs_last_rev
 
                     errmsg = failedrepos.get(layer.vcs_url, '')
                     if errmsg:
                         logger.info("Skipping update of layer %s as fetch of repository %s failed:\n%s" % (layer.name, layer.vcs_url, errmsg))
-                        layerbranch = layer.get_layerbranch(branch)
-                        if layerbranch:
-                            layerupdate.layerbranch = layerbranch
-                            layerupdate.started = datetime.now()
-                            layerupdate.finished = datetime.now()
-                            layerupdate.log = 'ERROR: fetch failed: %s' % errmsg
-                            if not options.dryrun:
-                                layerupdate.save()
+                        layerupdate.started = datetime.now()
+                        layerupdate.finished = datetime.now()
+                        layerupdate.log = 'ERROR: fetch failed: %s' % errmsg
+                        if not options.dryrun:
+                            layerupdate.save()
                         continue
 
+                    layerupdate.started = datetime.now()
+                    if not options.dryrun:
+                        layerupdate.save()
                     cmd = prepare_update_layer_command(options, branchobj, layer)
                     logger.debug('Running layer update command: %s' % cmd)
-                    layerupdate.started = datetime.now()
                     ret, output = utils.run_command_interruptible(cmd)
                     layerupdate.finished = datetime.now()
 
@@ -504,11 +518,11 @@ def main():
                     # didn't exist) so we still need to check
                     layerbranch = layer.get_layerbranch(branch)
                     if layerbranch:
-                        last_rev[layerbranch] = layerbranch.vcs_last_rev
-                        layerupdate.layerbranch = layerbranch
-                        layerupdate.log = output
-                        if not options.dryrun:
-                            layerupdate.save()
+                        layerupdate.vcs_after_rev = layerbranch.vcs_last_rev
+                    layerupdate.log = output
+                    layerupdate.retcode = ret
+                    if not options.dryrun:
+                        layerupdate.save()
 
                     if ret == 254:
                         # Interrupted by user, break out of loop
diff --git a/layerindex/views.py b/layerindex/views.py
index fb2dd51a..69165c48 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -373,7 +373,7 @@ class LayerDetailView(DetailView):
             context['distros'] = layerbranch.distro_set.order_by('name')
             context['appends'] = layerbranch.bbappend_set.order_by('filename')
             context['classes'] = layerbranch.bbclass_set.order_by('name')
-            context['updates'] = layerbranch.layerupdate_set.order_by('-started')
+            context['updates'] = LayerUpdate.objects.filter(layer=layerbranch.layer, branch=layerbranch.branch).order_by('-started')
         context['url_branch'] = self.kwargs['branch']
         context['this_url_name'] = resolve(self.request.path_info).url_name
         if 'rrs' in settings.INSTALLED_APPS:
@@ -718,7 +718,7 @@ class UpdateDetailView(DetailView):
         context = super(UpdateDetailView, self).get_context_data(**kwargs)
         update = self.get_object()
         if update:
-            context['layerupdates'] = update.layerupdate_set.exclude(log__isnull=True).exclude(log__exact='')
+            context['layerupdates'] = update.layerupdate_set.order_by('-started')
         return context
 
 
diff --git a/templates/layerindex/layerupdate.html b/templates/layerindex/layerupdate.html
index d969fc66..1cd01039 100644
--- a/templates/layerindex/layerupdate.html
+++ b/templates/layerindex/layerupdate.html
@@ -1,5 +1,6 @@
 {% extends "base.html" %}
 {% load i18n %}
+{% load extrafilters %}
 
 {% comment %}
 
@@ -11,13 +12,27 @@
 {% endcomment %}
 
 <!--
-{% block title_append %} - {{ layerupdate.layerbranch.layer.name }} {{ layerupdate.layerbranch.branch.name }} - {{ layerupdate.started }} {% endblock %}
+{% block title_append %} - {{ layerupdate.layer.name }} {{ layerupdate.branch.name }} - {{ layerupdate.started }} {% endblock %}
 -->
 
 {% block content %}
 {% autoescape on %}
 
-<h2>{{ layerupdate.layerbranch.layer.name }} {{ layerupdate.layerbranch.branch.name }} - {{ layerupdate.started }}</h2>
+<h2>{{ layerupdate.layer.name }} {{ layerupdate.branch.name }} - {{ layerupdate.started }} <small>({{ layerupdate.started|timesince2:layerupdate.finished }})</small></h2>
+
+{% if layerupdate.layerbranch_exists %}
+{% if layerupdate.vcs_before_rev != layerupdate.vcs_after_rev %}
+<p>
+    Updated
+    {% with before_url=layerupdate.vcs_before_commit_url after_url=layerupdate.vcs_after_commit_url %}
+    {% if before_url %}<a href="{{ before_url }}">{% endif %}{{ layerupdate.vcs_before_rev|truncatesimple:10 }}{% if before_url %}</a>{% endif %} &rarr; {% if after_url %}<a href="{{ after_url }}">{% endif %}{{ layerupdate.vcs_after_rev|truncatesimple:10 }}{% if after_url %}</a>{% endif %}
+    {% endwith %}
+    {% else %}
+    {{ layerupdate.vcs_before_rev|truncatesimple:10 }} → {{ layerupdate.vcs_after_rev|truncatesimple:10 }}
+</p>
+{% endif %}
+{% endif %}
+
 
 <pre>{{ layerupdate.log }}</pre>
 
diff --git a/templates/layerindex/updatedetail.html b/templates/layerindex/updatedetail.html
index 59723fe2..a1ce47cc 100644
--- a/templates/layerindex/updatedetail.html
+++ b/templates/layerindex/updatedetail.html
@@ -1,11 +1,12 @@
 {% extends "base.html" %}
 {% load i18n %}
+{% load extrafilters %}
 
 {% comment %}
 
   layerindex-web - update page
 
-  Copyright (C) 2016 Intel Corporation
+  Copyright (C) 2016, 2018 Intel Corporation
   Licensed under the MIT license, see COPYING.MIT for details
 
 {% endcomment %}
@@ -30,12 +31,37 @@
 {% endif %}
 
 {% for layerupdate in layerupdates %}
-    <a href="{% url 'layer_item' layerupdate.layerbranch.branch.name layerupdate.layerbranch.layer.name %}"><h3>{{ layerupdate.layerbranch.layer.name }} {{ layerupdate.layerbranch.branch.name }}</h3></a>
-    <pre>{{ layerupdate.log }}</pre>
+    <table class="table table-bordered">
+        <thead>
+            {% with layerbranch_exists=layerupdate.layerbranch_exists %}
+            <tr><td{% if layerupdate.errors > 0 or layerupdate.retcode != 0 %} class="error"{% elif layerupdate.warnings %} class="warning"{% endif %}>
+            {% if layerbranch_exists %}<a href="{% url 'layer_item' layerupdate.branch.name layerupdate.layer.name %}">{% endif %}<strong>{{ layerupdate.layer.name }} {{ layerupdate.branch.name }}</strong>{% if layerbranch_exists %}</a>{% endif %}
+            {% if layerupdate.vcs_before_rev != layerupdate.vcs_after_rev %}
+            <span class="pull-right">
+                {% if layerbranch_exists %}
+                {% with before_url=layerupdate.vcs_before_commit_url after_url=layerupdate.vcs_after_commit_url %}
+                {% if before_url %}<a href="{{ before_url }}">{% endif %}{{ layerupdate.vcs_before_rev|truncatesimple:10 }}{% if before_url %}</a>{% endif %} &rarr; {% if after_url %}<a href="{{ after_url }}">{% endif %}{{ layerupdate.vcs_after_rev|truncatesimple:10 }}{% if after_url %}</a>{% endif %}
+                {% endwith %}
+                {% else %}
+                {{ layerupdate.vcs_before_rev|truncatesimple:10 }} → {{ layerupdate.vcs_after_rev|truncatesimple:10 }}
+                {% endif %}
+            </span>
+            {% endif %}
+            </td></tr>
+            {% endwith %}
+        </thead>
+        <tbody>
+            {% if layerupdate.log %}
+            <tr><td class="td-pre">
+            <pre class="pre-scrollable pre-plain">{{ layerupdate.log }}</pre>
+            </td></tr>
+            {% endif %}
+        </tbody>
+    </table>
 {% endfor %}
 
 {% if not update.log and not layerupdates %}
-    <p>No messages</p>
+    <p>No messages or layer updates</p>
 {% endif %}
 
 {% if update.comparisonrecipeupdate_set.exists %}
-- 
2.17.1


