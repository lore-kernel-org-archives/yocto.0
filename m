Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18FEEE00E18; Wed, 24 Jan 2018 13:47:20 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AA79E00B78
	for <yocto@yoctoproject.org>; Wed, 24 Jan 2018 13:47:18 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Jan 2018 13:47:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,409,1511856000"; d="scan'208";a="168883921"
Received: from arbrindl-dev.jf.intel.com ([10.7.199.57])
	by orsmga004.jf.intel.com with ESMTP; 24 Jan 2018 13:47:18 -0800
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jan 2018 13:44:48 -0800
Message-Id: <b2fbcbcc9707529b2385e6f6847eaa93185ea386.1516828653.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1516828653.git.amanda.r.brindle@intel.com>
References: <cover.1516828653.git.amanda.r.brindle@intel.com>
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [error-report-web][PATCH 1/1] purge.py: Create script that will purge database
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
X-List-Received-Date: Wed, 24 Jan 2018 21:47:20 -0000

The script will be run on a regular basis to get rid of old reports that
we don't need. This will improve the performance of the application
since the database has grown to a huge size.

The script will remove reports older than thirty days if they have not
been referred to by a host other than the Error Reporting Tool.

The function details() in views.py will keep trick of the referer when
a build failure report is accessed. If there is no referer, we will note
that in the database in order to determine how often there is no
referer. It's possible that crawlers will access reports with no
referer; if that's the case, a lack of a referer should not determine
whether we save an older report or not.

Fixes [YOCTO #12332]

Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
---
 Post/migrations/0006_buildfailure_referer.py | 19 ++++++++++++++++++
 Post/models.py                               | 10 ++++++++++
 Post/purge.py                                | 29 ++++++++++++++++++++++++++++
 Post/views.py                                | 16 +++++++++++++--
 4 files changed, 72 insertions(+), 2 deletions(-)
 create mode 100644 Post/migrations/0006_buildfailure_referer.py
 create mode 100644 Post/purge.py

diff --git a/Post/migrations/0006_buildfailure_referer.py b/Post/migrations/0006_buildfailure_referer.py
new file mode 100644
index 0000000..5fad048
--- /dev/null
+++ b/Post/migrations/0006_buildfailure_referer.py
@@ -0,0 +1,19 @@
+# -*- coding: utf-8 -*-
+from __future__ import unicode_literals
+
+from django.db import migrations, models
+
+
+class Migration(migrations.Migration):
+
+    dependencies = [
+        ('Post', '0005_build_error_type'),
+    ]
+
+    operations = [
+        migrations.AddField(
+            model_name='buildfailure',
+            name='REFERER',
+            field=models.CharField(default=b'NOT_VISITED', max_length=14, choices=[(b'NO_REFERER', b'no_referer'), (b'OTHER', b'other'), (b'NOT_VISITED', b'not_visited')]),
+        ),
+    ]
diff --git a/Post/models.py b/Post/models.py
index ddf2fc7..fcf53ca 100644
--- a/Post/models.py
+++ b/Post/models.py
@@ -59,6 +59,16 @@ class BuildFailure(models.Model):
     ERROR_DETAILS = models.TextField(max_length=int(settings.MAX_UPLOAD_SIZE))
     BUILD = models.ForeignKey(Build)
     LEV_DISTANCE = models.IntegerField(blank=True, null=True)
+    REFERER_CHOICES = (
+            ('NO_REFERER', 'no_referer'),
+            ('OTHER', 'other'),
+            ('NOT_VISITED', 'not_visited')
+    )
+    REFERER = models.CharField(
+            max_length = 14,
+            choices = REFERER_CHOICES,
+            default = 'NOT_VISITED'
+    )
 
     def get_similar_fails(self):
         if self.LEV_DISTANCE is None:
diff --git a/Post/purge.py b/Post/purge.py
new file mode 100644
index 0000000..829fada
--- /dev/null
+++ b/Post/purge.py
@@ -0,0 +1,29 @@
+from datetime import datetime
+from django.utils import timezone
+import os
+import sys
+
+def setup_django():
+    import django
+    # Get access to our Django model
+    newpath = os.path.abspath(os.path.dirname(__file__)) + '/..'
+    sys.path.append(newpath)
+    os.environ['DJANGO_SETTINGS_MODULE'] = 'project.settings'
+    django.setup()
+
+def main():
+    setup_django()
+    from Post.models import BuildFailure
+    items = BuildFailure.objects.all()
+    now = timezone.now()
+    for item in items:
+        if item.REFERER == 'OTHER' or item.REFERER == 'NO_REFERER':
+            continue
+        difference = now - item.BUILD.DATE
+        if difference.days > 30:
+            item.delete()
+
+if __name__ == "__main__":
+    main()
+
+
diff --git a/Post/views.py b/Post/views.py
index 7f2cffb..2ea94a7 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -22,6 +22,7 @@ from django.http import JsonResponse
 from django.db.models import Q
 import json
 import urllib
+from urlparse import urlparse
 
 class results_mode(object):
     LATEST = 0
@@ -256,9 +257,20 @@ def search(request, mode=results_mode.LATEST, **kwargs):
 
 def details(request, fail_id):
     try:
-      build_failure = BuildFailure.objects.get(id=fail_id)
+        build_failure = BuildFailure.objects.get(id=fail_id)
     except ObjectDoesNotExist:
-      build_failure = None
+        build_failure = None
+    try:
+        referer = urlparse(request.META['HTTP_REFERER'])
+        referer_hostname = referer.hostname
+        if referer.port:
+            referer_hostname += ":" + str(referer.port)
+        if referer_hostname != request.get_host():
+            build_failure.REFERER = 'OTHER'
+    except KeyError:
+        # There is no referer
+        build_failure.REFERER = 'NO_REFERER'
+    build_failure.save()
 
     context = {'detail' : build_failure, 'error_types' : ErrorType }
 
-- 
2.7.4


