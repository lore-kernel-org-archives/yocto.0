Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web09.1728.1616784595394205895
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 11:49:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=V/Tn7fQE;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.210.173, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pf1-f173.google.com with SMTP id x26so5513756pfn.0
        for <yocto@lists.yoctoproject.org>; Fri, 26 Mar 2021 11:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8e7tYKG+zhYXjSw/QlAnSxn2ytOaCzoseB2qI58uHFk=;
        b=V/Tn7fQEnYvu+LBRtiedTHphHA+Dens8OddjYdUsmIjn2hj58t7cf4l1L+wD3z4ZAx
         RiEDJWked8n/K8zbFlaFcxaG/ws9a6l65rBseiavd4gRtSYrQK1ZYdYP9t227fSZWpRZ
         pYXzH/f2YjRAm0Iw8d3BI5BFu0uOr8XXGmbaA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8e7tYKG+zhYXjSw/QlAnSxn2ytOaCzoseB2qI58uHFk=;
        b=cKnYQNAZKRUdR+3GoneIZhYKP63vtahcD+zTrIHOGeAJC8ZH/1eG+DFtXdB2pUv55U
         og3sbICuBAHWq5LuY0031XltlNQ7FLoxtoSDCZ+MGCl1eGV7Za8kGH9hJwwD/D1coHsv
         SzRJSB8YBT+rrZDfEByKDrrgMikCzGKzy4fuapyC9GlrLM+6mr5JbzdiNbMGrDnuzlJk
         EKqi65sDSYsfZiDVOndfv6L6K+x+areoDcUYcYSgO9cQCJQpj06R8RjcatDMY/9Ip4mZ
         IFQKvDcV6JkQbsaM0WOHl2W4qF878iCnmq0aFPA0xJRHdqrMv6yGoc+D5URcHBnhdPDF
         YMfQ==
X-Gm-Message-State: AOAM532YAy+dMHss3XjLKW0O9Wvw3U4nZhHs9welgNCT2iNRzuO2ukHf
	JYSZVpKwDa5LHeAlt4rIFKwNjYzog3EdxA==
X-Google-Smtp-Source: ABdhPJwWe0ahUDPUncMfeQluFHzMz36ZPmW50wjnuKRwiBI26b7ig7oamxSdU4DxeteY0gI6LUk7dw==
X-Received: by 2002:aa7:8649:0:b029:1fb:283:6047 with SMTP id a9-20020aa786490000b02901fb02836047mr14416902pfo.62.1616784594507;
        Fri, 26 Mar 2021 11:49:54 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id fa21sm9132905pjb.41.2021.03.26.11.49.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 11:49:53 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [error-report-web][PATCH 1/5] purge.py: Create script that will purge database
Date: Fri, 26 Mar 2021 11:49:48 -0700
Message-Id: <20210326184952.712938-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Amanda Brindle <amanda.r.brindle@intel.com>

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
index cf8c1c2..3fa66f2 100644
--- a/Post/models.py
+++ b/Post/models.py
@@ -61,6 +61,16 @@ class BuildFailure(models.Model):
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
index fe7100e..5737076 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -24,6 +24,7 @@ from django.http import JsonResponse
 from django.db.models import Q
 import json
 import urllib
+from urlparse import urlparse
 
 class results_mode(object):
     LATEST = 0
@@ -258,9 +259,20 @@ def search(request, mode=results_mode.LATEST, **kwargs):
 
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
2.11.0

