Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web11.20542.1626649665413960761
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:07:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l1M9cPYI;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id j4so484507pgk.5
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WmA2EBj3VdU/JOIWwrqmqQEsw/wOBSXkXIldSZZXrlo=;
        b=l1M9cPYIW2O0twp9RT8BzyZI4Bra+1dSKS+ImLVgLIJaUgTYlFDVczWKgOjlunXFAi
         TPYUp16RbmAHA4kwzftodojHWaGhSfedwIWaAhC/41KW0M1VQa0v2hh2cDa/Zgg0McR3
         WphD4aCAEV8bCk4zN9OdpIAS7xTJ8xDebs9zGc1Kzn0XtIIRe8BRxywCjkzA2T/Sfxdp
         m7KCmWNtkD9+L8bYF48zkUbbyFQ9Fj5wdA2Pg4h7fJEqZvKypozAjVH991++g5ADhq+N
         Dy5t/uqFzyjrz8VRk2MonK+IG/ltpKJINXATKkfOw5+UFjEY5xvkFwVOJVi/k5rJUgWl
         H03Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WmA2EBj3VdU/JOIWwrqmqQEsw/wOBSXkXIldSZZXrlo=;
        b=aX6Yjd0UJDvdNcFKVb0180KFPrhwGsorF6PhlsRqD8fMLeQKxtIKlkh0+4MJUhyVZ9
         YppYOQ5mk61gRIAd7DZ1hLTROO9JKgVAEvwhKxj1b7JfpICTAJpGHZx4JW3eILtiPPMT
         SCp8zjU/wed6Ym5tcGz0vXWMvfjEKbzQYCOJ192A+RprY5mGkHl9saTfA6QITis+kMev
         lusvIWzgniVp5FjAus5OlIFtO+WX0gRXK1Kkb29IpJyEnjVedmz7yrkrCJTOSiOpA3/d
         C6mD9uqfuhxlziK+wxYKcswATjTrEIp8RObF91zmr30YoFmQQGud7V34ib2DgS36JmVz
         cPBQ==
X-Gm-Message-State: AOAM533ho9PHMs8/DmFsHkde82tLOD7cbC4b78ppFSXl3pJPAlZ2trn6
	hXscOh3z62WhRukw9+jkQ+ejdLwPMeAObA==
X-Google-Smtp-Source: ABdhPJz2vguImbIwBaeZKuzM/4hIqpbD5LpzqyQNQUK8pQBKwcpkUggZ9sjmUHH8UEowRpwgfUuyTg==
X-Received: by 2002:a63:d612:: with SMTP id q18mr22343132pgg.77.1626649664722;
        Sun, 18 Jul 2021 16:07:44 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:07:44 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 07/15] Updates for Django 3.0
Date: Sun, 18 Jul 2021 16:07:12 -0700
Message-Id: <6f6c1141e37710ba1245b7a8e2dfe2a1ea996b39.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

* Update requirements.txt versions
  - Mostly update to latest pre-Django 3.1 versions
* Fix deprecated axes.backends.AxesModelBackend
  - settings.py
  - docker/settings.py
* Fix template syntax 'staticfiles' -> 'static'
  - base.html
* Add migrations for layerbranch classicrecipe

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
---
 docker/settings.py                            |  3 ++-
 .../0045_layerbranch_classicrecipe.py         | 19 +++++++++++++++
 requirements.txt                              | 24 +++++++++----------
 settings.py                                   |  3 ++-
 templates/base.html                           |  2 +-
 5 files changed, 36 insertions(+), 15 deletions(-)
 create mode 100644 layerindex/migrations/0045_layerbranch_classicrecipe.py

diff --git a/docker/settings.py b/docker/settings.py
index 7330ab9..894974f 100644
--- a/docker/settings.py
+++ b/docker/settings.py
@@ -102,6 +102,7 @@ MIDDLEWARE = (
     'django.contrib.auth.middleware.AuthenticationMiddleware',
     'django.contrib.messages.middleware.MessageMiddleware',
     'django.middleware.clickjacking.XFrameOptionsMiddleware',
+    'axes.middleware.AxesMiddleware',
     'layerindex.middleware.NonAtomicRevisionMiddleware',
 )
 
@@ -161,7 +162,7 @@ INSTALLED_APPS = (
 )
 
 AUTHENTICATION_BACKENDS = [
-    'axes.backends.AxesModelBackend',
+    'axes.backends.AxesBackend',
     'django.contrib.auth.backends.ModelBackend',
 ]
 
diff --git a/layerindex/migrations/0045_layerbranch_classicrecipe.py b/layerindex/migrations/0045_layerbranch_classicrecipe.py
new file mode 100644
index 0000000..cb805c9
--- /dev/null
+++ b/layerindex/migrations/0045_layerbranch_classicrecipe.py
@@ -0,0 +1,19 @@
+# Generated by Django 3.0.14 on 2021-07-18 00:03
+
+from django.db import migrations, models
+import django.db.models.deletion
+
+
+class Migration(migrations.Migration):
+
+    dependencies = [
+        ('layerindex', '0044_extendedprovides'),
+    ]
+
+    operations = [
+        migrations.AlterField(
+            model_name='classicrecipe',
+            name='cover_layerbranch',
+            field=models.ForeignKey(blank=True, limit_choices_to={'branch__name': 'master'}, null=True, on_delete=django.db.models.deletion.SET_NULL, to='layerindex.LayerBranch', verbose_name='Covering layer'),
+        ),
+    ]
diff --git a/requirements.txt b/requirements.txt
index ac69589..895994b 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1,24 +1,24 @@
-amqp==2.5.2
-beautifulsoup4==4.8.1
+amqp==2.6.1
+beautifulsoup4==4.9.3
 billiard==3.6.1.0
 celery==4.3.0
 confusable-homoglyphs==3.2.0
 Django>=3.0,<3.1
-django-appconf==1.0.3
-django-axes==4.5.4
+django-appconf==1.0.4
+django-axes==5.13.1
 django-bootstrap-pagination==1.7.1
-django-cors-headers==3.0.2
-django-ipware==2.1.0
+django-cors-headers==3.2.1
+django-ipware==3.0.2
 django-ranged-response==0.2.0
-django-registration==3.0.1
-django-reversion==2.0.13
-django-reversion-compare==0.8.6
-django-simple-captcha==0.5.12
-djangorestframework==3.9.4
+django-registration==3.1.2
+django-reversion==3.0.9
+django-reversion-compare==0.14.0
+django-simple-captcha==0.5.14
+djangorestframework==3.12.4
 gitdb2==2.0.6
 GitPython==2.1.13
 kombu==4.6.3
-mysqlclient==1.4.4
+mysqlclient==1.4.6
 Pillow==6.2.1
 pytz==2019.3
 six==1.12.0
diff --git a/settings.py b/settings.py
index 1dd6ebc..d03d15c 100644
--- a/settings.py
+++ b/settings.py
@@ -102,6 +102,7 @@ MIDDLEWARE = (
     'django.contrib.auth.middleware.AuthenticationMiddleware',
     'django.contrib.messages.middleware.MessageMiddleware',
     'django.middleware.clickjacking.XFrameOptionsMiddleware',
+    'axes.middleware.AxesMiddleware',
     'layerindex.middleware.NonAtomicRevisionMiddleware',
 )
 
@@ -161,7 +162,7 @@ INSTALLED_APPS = (
 )
 
 AUTHENTICATION_BACKENDS = [
-    'axes.backends.AxesModelBackend',
+    'axes.backends.AxesBackend',
     'django.contrib.auth.backends.ModelBackend',
 ]
 
diff --git a/templates/base.html b/templates/base.html
index a465a68..f00c976 100644
--- a/templates/base.html
+++ b/templates/base.html
@@ -9,7 +9,7 @@
 
 
 {% load i18n %}
-{% load staticfiles %}
+{% load static %}
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
-- 
2.32.0

