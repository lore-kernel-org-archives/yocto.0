Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15D82E007EF; Mon, 13 Jun 2016 16:31:30 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A727E0073D
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 16:31:28 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2016 16:31:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,468,1459839600"; d="scan'208";a="1001247104"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.51])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jun 2016 16:31:28 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 13 Jun 2016 18:32:16 -0500
Message-Id: <1465860736-26581-9-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1465860736-26581-1-git-send-email-anibal.limon@linux.intel.com>
References: <1465860736-26581-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: belen.barros.pena@linux.intel.com
Subject: [[PATCH][error-report-web] 8/8] Post/{models, views}.py: Add FAILURE field on BuildFailure model
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
X-List-Received-Date: Mon, 13 Jun 2016 23:31:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

In order to support filters using django Paginator adds a FAILURE
field by default contains "RECIPE: TASK" when ERROR_TYPE is Recipe
instead contains only "TASK".

[YOCTO #7583]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 Post/migrations/0006_buildfailure_failure.py | 28 ++++++++++++++++++++++++++++
 Post/models.py                               |  1 +
 Post/parser.py                               |  6 +++++-
 Post/views.py                                |  1 +
 templates/latest-errors.html                 |  5 +----
 5 files changed, 36 insertions(+), 5 deletions(-)
 create mode 100644 Post/migrations/0006_buildfailure_failure.py

diff --git a/Post/migrations/0006_buildfailure_failure.py b/Post/migrations/0006_buildfailure_failure.py
new file mode 100644
index 0000000..b3e30bf
--- /dev/null
+++ b/Post/migrations/0006_buildfailure_failure.py
@@ -0,0 +1,28 @@
+# -*- coding: utf-8 -*-
+from __future__ import unicode_literals
+
+from django.db import migrations, models
+
+def populate_failure(apps, schema_editor):
+    model = apps.get_model("Post", "BuildFailure")
+    for build_failure in model.objects.all():
+        if build_failure.BUILD.ERROR_TYPE == "Recipe":
+            build_failure.FAILURE = "%s: %s" \
+                    (build_failure.RECIPE, build_failure.TASK)
+        else:
+            build_failure.FAILURE = build_failure.TASK
+        build_failure.save()
+
+class Migration(migrations.Migration):
+    dependencies = [
+        ('Post', '0005_build_error_type'),
+    ]
+
+    operations = [
+        migrations.AddField(
+            model_name='buildfailure',
+            name='FAILURE',
+            field=models.CharField(max_length=1024, blank=True),
+        ),
+        migrations.RunPython(populate_failure)
+    ]
diff --git a/Post/models.py b/Post/models.py
index bec2abd..07694fe 100644
--- a/Post/models.py
+++ b/Post/models.py
@@ -50,6 +50,7 @@ class BuildFailure(models.Model):
     ERROR_DETAILS = models.TextField(max_length=int(settings.MAX_UPLOAD_SIZE))
     BUILD = models.ForeignKey(Build)
     LEV_DISTANCE = models.IntegerField(blank=True, null=True)
+    FAILURE = models.CharField(max_length=1024, blank=True)
 
     def get_similar_fails(self):
         if self.LEV_DISTANCE is None:
diff --git a/Post/parser.py b/Post/parser.py
index 295870f..2ef35c1 100644
--- a/Post/parser.py
+++ b/Post/parser.py
@@ -92,7 +92,11 @@ class Parser:
                 recipe = package
                 recipe_version = "unknown"
 
-            f = BuildFailure(TASK = str(fail['task']), RECIPE = recipe, RECIPE_VERSION = recipe_version, ERROR_DETAILS = fail['log'].encode('utf-8'), BUILD = b)
+            if b.ERROR_TYPE = "Recipe":
+                failure = "%s: %s" % (recipe, str(fail['task']))
+            else:
+                failure = str(fail['task'])
+            f = BuildFailure(TASK = str(fail['task']), RECIPE = recipe, RECIPE_VERSION = recipe_version, ERROR_DETAILS = fail['log'].encode('utf-8'), BUILD = b, FAILURE = failure)
 
             f.save()
 
diff --git a/Post/views.py b/Post/views.py
index 6b57977..41f0e2b 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -141,6 +141,7 @@ def search(request, mode=results_mode.LATEST, **kwargs):
         },
         {'name': 'Failure',
          'clclass': 'failure',
+         'field' : 'FAILURE',
          'disable_toggle' : True,
         },
         {'name': 'Machine',
diff --git a/templates/latest-errors.html b/templates/latest-errors.html
index 77a54af..a4418b5 100644
--- a/templates/latest-errors.html
+++ b/templates/latest-errors.html
@@ -136,10 +136,7 @@
 
                 <td class="failure">
                     <a href="{{details_url}}">
-                        {% if build_fail.BUILD.ERROR_TYPE == "Recipe" %}
-                        {{ build_fail.RECIPE }}:
-                        {% endif %}
-                        {{ build_fail.TASK }}</a>
+                        {{ build_fail.FAILURE }}</a>
                 </td>
 
                 <td class="machine"><a href="{{details_url}}">{{ build_fail.BUILD.MACHINE }}</a>
-- 
2.1.4


