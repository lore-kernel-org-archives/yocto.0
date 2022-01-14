Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A60DC433F5
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:19 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web08.3883.1642139718590094538
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=f2h2SGUn;
 spf=pass (domain: gmail.com, ip: 209.85.214.180,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id c6so3967206plh.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=vmuD3KWbAM6IFCJHIHwJHpruKCbAZ/wKb5foLRPk4dk=;
        b=f2h2SGUnnqo2z0EIR4TlzbwWcRvqCxX+riaNpkm22G6XJRwhbXR8m3/CvBE1E+8/MN
         9M9QniwH9HBDhD7CuI/vZ/Fn7Six4HRUanK/0Q/SzTCQrgCrIxflyRZ/mlrWTUZOGBw7
         swrfdOc61odfuEs0iOhKnG/P7/wpcsUwLYjCF4f5JnZrki42q9EH/RtI0u90Azho3K81
         0jQ8zn+afsuwzDnYBypGcPw++NrCm5yyKRwnisTmbfUwWADWGCUK4tPTNlU43/PJe79U
         zReJ2vlWSS00TOW3KL77YunL+DMYV9lw1PuqmxcnxcBbH6HbnIH2rRXNyjUCVoOdstd0
         rh1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vmuD3KWbAM6IFCJHIHwJHpruKCbAZ/wKb5foLRPk4dk=;
        b=puRTzgL3ID57kfI4xb8bdxVEm5XeDOUpnVcUY7t92BkltQU5CwITNwvQ+7z90pGv+Z
         xPQNHr1KEVFiOhTjgKSoAv0TVjiKzgRV3OlOtIoNXFg05Z32lBoWhSysAt6WCPAHNVIp
         dJ45ASRwDjiUZj3TO5jEGm3qjLfAeX0Kz14BioRNdGJPZ9ma5EOtoXwDL1ZD9/wWlrKT
         /ak9fcXYDeJ+g21xXsmKPG3/ciuj6aA9fII0zB7CWmij4eqSu01vzX0OWioIMXyAo5kQ
         BdFVolIdKHdjFnE/nqc/8MGbCs1ox+JoOz0ZLu5WZEqG+1jt7MIIx08sZMDqJ3ypETBj
         hZlQ==
X-Gm-Message-State: AOAM530cIkORrvR2mCg6PDpLOxxYabyrDnzwROE7OyKToThfvGRcbyCS
	LrG/XTUibOuBYlPYGZkCO2/CHgVm+edDag==
X-Google-Smtp-Source: 
 ABdhPJw8jQ9B4ZGDHS/tKN8jJVZqnPBmYfHCwm/CPZqmcUDGovOtkUB3Mh9DDR9MTOUXtQjRHKvKQQ==
X-Received: by 2002:a17:902:ecc4:b0:14a:15a7:c3d3 with SMTP id
 a4-20020a170902ecc400b0014a15a7c3d3mr7846023plh.117.1642139717823;
        Thu, 13 Jan 2022 21:55:17 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:17 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH v2 06/18] Updates for Django 3.0
Date: Thu, 13 Jan 2022 21:54:29 -0800
Message-Id: 
 <a027959343db60e0b8d954836971114be6802d7c.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55857

* Update requirements.txt versions
  - Mostly update to latest pre-Django 3.1 versions
* Fix deprecated axes.backends.AxesModelBackend
  - settings.py
  - docker/settings.py
* Fix template syntax 'staticfiles' -> 'static'
  - base.html
* Add migrations for layerbranch classicrecipe

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
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
2.30.2


