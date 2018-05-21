Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47D59E00CDF; Sun, 20 May 2018 20:04:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9652BE00C88
	for <yocto@yoctoproject.org>; Sun, 20 May 2018 20:04:56 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 May 2018 20:04:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,425,1520924400"; d="scan'208";a="225835605"
Received: from syadandx-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.168.242])
	by orsmga005.jf.intel.com with ESMTP; 20 May 2018 20:04:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 21 May 2018 15:04:12 +1200
Message-Id: <f972f4133e7ff144c5480f4ae0a6b30a1f06d76e.1526871767.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <cover.1526871767.git.paul.eggleton@linux.intel.com>
References: <cover.1526871767.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 4/6] Add site-wide notice support
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
X-List-Received-Date: Mon, 21 May 2018 03:04:58 -0000

Add the ability to show a notice at the top of every page; this provides
the ability for admins to display a message to visitors in the case of
infrastructure or index data issues. Notices can have an expiry date and
can be disabled and re-enabled if needed. A subset of HTML can be used
for formatting the text, URLs will be made into clickable links, and
four "levels" are supported (info, success, warning and error).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/admin.py                      |  1 +
 layerindex/context_processors.py         |  7 +++++--
 layerindex/migrations/0014_sitenotice.py | 24 ++++++++++++++++++++++++
 layerindex/models.py                     | 25 ++++++++++++++++++++++++-
 layerindex/utils.py                      | 14 ++++++++++++++
 requirements.txt                         |  1 +
 templates/base.html                      |  5 +++++
 7 files changed, 74 insertions(+), 3 deletions(-)
 create mode 100644 layerindex/migrations/0014_sitenotice.py

diff --git a/layerindex/admin.py b/layerindex/admin.py
index 3cb59691..312f7a30 100644
--- a/layerindex/admin.py
+++ b/layerindex/admin.py
@@ -198,3 +198,4 @@ admin.site.register(Patch)
 admin.site.register(RecipeChangeset, RecipeChangesetAdmin)
 admin.site.register(ClassicRecipe, ClassicRecipeAdmin)
 admin.site.register(PythonEnvironment)
+admin.site.register(SiteNotice)
diff --git a/layerindex/context_processors.py b/layerindex/context_processors.py
index db8e3fa3..7cf20ede 100644
--- a/layerindex/context_processors.py
+++ b/layerindex/context_processors.py
@@ -1,11 +1,13 @@
 # layerindex-web - custom context processor
 #
-# Copyright (C) 2013 Intel Corporation
+# Copyright (C) 2013, 2018 Intel Corporation
 #
 # Licensed under the MIT license, see COPYING.MIT for details
 
-from layerindex.models import Branch, LayerItem
+from layerindex.models import Branch, LayerItem, SiteNotice
 from django.contrib.sites.models import Site
+from django.db.models import Q
+from datetime import datetime
 
 def layerindex_context(request):
     import settings
@@ -20,4 +22,5 @@ def layerindex_context(request):
         'oe_classic': Branch.objects.filter(name='oe-classic'),
         'site_name': site_name,
         'rrs_enabled': 'rrs' in settings.INSTALLED_APPS,
+        'notices': SiteNotice.objects.filter(disabled=False).filter(Q(expires__isnull=True) | Q(expires__gte=datetime.now())),
     }
diff --git a/layerindex/migrations/0014_sitenotice.py b/layerindex/migrations/0014_sitenotice.py
new file mode 100644
index 00000000..630700cf
--- /dev/null
+++ b/layerindex/migrations/0014_sitenotice.py
@@ -0,0 +1,24 @@
+# -*- coding: utf-8 -*-
+from __future__ import unicode_literals
+
+from django.db import migrations, models
+
+
+class Migration(migrations.Migration):
+
+    dependencies = [
+        ('layerindex', '0013_patch'),
+    ]
+
+    operations = [
+        migrations.CreateModel(
+            name='SiteNotice',
+            fields=[
+                ('id', models.AutoField(auto_created=True, serialize=False, verbose_name='ID', primary_key=True)),
+                ('text', models.TextField(help_text='Text to show in the notice. A limited subset of HTML is supported for formatting.')),
+                ('level', models.CharField(choices=[('I', 'Info'), ('S', 'Success'), ('W', 'Warning'), ('E', 'Error')], help_text='Level of notice to display', default='I', max_length=1)),
+                ('disabled', models.BooleanField(verbose_name='Disabled', help_text='Use to temporarily disable this notice', default=False)),
+                ('expires', models.DateTimeField(blank=True, help_text='Optional date/time when this notice will stop showing', null=True)),
+            ],
+        ),
+    ]
diff --git a/layerindex/models.py b/layerindex/models.py
index ff164baa..891f5dfb 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -1,6 +1,6 @@
 # layerindex-web - model definitions
 #
-# Copyright (C) 2013-2016 Intel Corporation
+# Copyright (C) 2013-2018 Intel Corporation
 #
 # Licensed under the MIT license, see COPYING.MIT for details
 
@@ -658,3 +658,26 @@ class RecipeChange(models.Model):
     def reset_fields(self):
         for fieldname in self.RECIPE_VARIABLE_MAP:
             setattr(self, fieldname, getattr(self.recipe, fieldname))
+
+class SiteNotice(models.Model):
+    NOTICE_LEVEL_CHOICES = [
+        ('I', 'Info'),
+        ('S', 'Success'),
+        ('W', 'Warning'),
+        ('E', 'Error'),
+    ]
+    text = models.TextField(help_text='Text to show in the notice. A limited subset of HTML is supported for formatting.')
+    level = models.CharField(max_length=1, choices=NOTICE_LEVEL_CHOICES, default='I', help_text='Level of notice to display')
+    disabled = models.BooleanField('Disabled', default=False, help_text='Use to temporarily disable this notice')
+    expires = models.DateTimeField(blank=True, null=True, help_text='Optional date/time when this notice will stop showing')
+
+    def __str__(self):
+        prefix = ''
+        if self.expires and datetime.now() >= self.expires:
+            prefix = '[expired] '
+        elif self.disabled:
+            prefix = '[disabled] '
+        return '%s%s' % (prefix, self.text)
+
+    def text_sanitised(self):
+        return utils.sanitise_html(self.text)
diff --git a/layerindex/utils.py b/layerindex/utils.py
index f8c5fd45..fe994439 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -14,6 +14,7 @@ import time
 import fcntl
 import signal
 import codecs
+from bs4 import BeautifulSoup
 
 def get_branch(branchname):
     from layerindex.models import Branch
@@ -376,6 +377,7 @@ def setup_core_layer_sys_path(settings, branchname):
     core_layerdir = os.path.join(core_repodir, core_layerbranch.vcs_subdir)
     sys.path.insert(0, os.path.join(core_layerdir, 'lib'))
 
+
 def run_command_interruptible(cmd):
     """
     Run a command with output displayed on the console, but ensure any Ctrl+C is
@@ -404,3 +406,15 @@ def run_command_interruptible(cmd):
     finally:
         signal.signal(signal.SIGINT, signal.SIG_DFL)
     return process.returncode, buf
+
+
+def sanitise_html(html):
+    soup = BeautifulSoup(html, "html.parser")
+    for tag in soup.findAll(True):
+        if tag.name not in ['strong', 'em', 'b', 'i', 'p', 'ul', 'ol', 'li', 'br', 'p']:
+            tag.hidden = True
+        elif tag.attrs:
+            tag.attrs = []
+
+    return soup.renderContents()
+
diff --git a/requirements.txt b/requirements.txt
index 5ca7cf6e..7facd2b6 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1,5 +1,6 @@
 amqp==2.2.2
 anyjson==0.3.3
+beautifulsoup4==4.6.0
 billiard==3.5.0.3
 celery==4.1.0
 confusable-homoglyphs==3.0.0
diff --git a/templates/base.html b/templates/base.html
index 38373ab8..a5e97cd5 100644
--- a/templates/base.html
+++ b/templates/base.html
@@ -89,6 +89,11 @@
     {% endblock %}
 
 {% block contenttag %}<div id="content" class="container top-padded">{% endblock %}
+        {% if notices %}
+            {% for notice in notices %}
+            <div class="alert {% if notice.level == 'I' %}alert-info{% elif notice.level == 'S' %}alert-success{% elif notice.level == 'W' %}{% elif notice.level == 'E' %}alert-error{% endif %}">{{ notice.text_sanitised|safe|urlize }}</div>
+            {% endfor %}
+        {% endif %}
         {% if messages %}
             {% for message in messages %}
             <div{% if message.tags %} class="alert {{ message.tags }}"{% endif %}>{{ message }}</div>
-- 
2.14.3


