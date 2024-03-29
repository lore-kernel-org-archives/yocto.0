Return-Path: <changqing.li@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 119A7C6FD1F
	for <webhook@archiver.kernel.org>; Fri, 29 Mar 2024 08:24:36 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.12582.1711700667741876629
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Mar 2024 01:24:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=inAJLH7K;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=4818790c9e=changqing.li@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 42T8Krqf006768
	for <yocto@lists.yoctoproject.org>; Fri, 29 Mar 2024 08:24:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	PPS06212021; bh=7XLr7JzitHe3hqAp88nhX66zkdqLQH7m7iU0X1XN9ss=; b=
	inAJLH7K0fCaszs3HbEPgN0ZqhsVMeP2OoTdiNMgMJL9RoqOa5HfkEge6yZcHGhi
	T7nWLYW28ealXkwAT2es2Eio3I+xMJCXIzvFqNe2XwFoQLZ5BmxR155/CMoZeiOs
	4/wbRpdkdN0YKEKE5WaiX3wGxnbpkrPFq9b2tood0DZFJ5gQ0e23DB1BwhkHSF4B
	Iw25IKyHiii2V7PQEVyvMfu0QuDSRPcQhGHvD6znazfRfGclx8WZkH9SbeCZVl7M
	B8ETmlkCe3uNNueBNGCTTPdiv8iGsf99RF6/qglxpGGJX/r3+Hsp1wn+I2nBvN29
	h0bJ+gZJKcIgfBoFfvD+LQ==
Received: from ala-exchng02.corp.ad.wrs.com (ala-exchng02.wrs.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3x1p26qyj9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 29 Mar 2024 08:24:26 +0000 (GMT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.37; Fri, 29 Mar 2024 01:24:25 -0700
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.37 via Frontend Transport; Fri, 29 Mar 2024 01:24:25 -0700
From: <changqing.li@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [error-report-web][PATCH 2/2] Dockerizing error-report-web
Date: Fri, 29 Mar 2024 16:24:23 +0800
Message-ID: <20240329082423.3215042-2-changqing.li@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240329082423.3215042-1-changqing.li@windriver.com>
References: <20240329082423.3215042-1-changqing.li@windriver.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: VhUWYoZ8_flaPO9L-CevgdZUw4Daq1zk
X-Proofpoint-GUID: VhUWYoZ8_flaPO9L-CevgdZUw4Daq1zk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-29_07,2024-03-28_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 impostorscore=0 adultscore=0 mlxscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 bulkscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403210001 definitions=main-2403290071
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Mar 2024 08:24:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62861

From: Changqing Li <changqing.li@windriver.com>

Follow steps to test:
1. docker-compose build
2. docker-compose up
3. docker-compose run backend /app/test-data/test-send-error.py http://localhost:8000/ClientPost/JSON/ /app/test-data/test-payload.json

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 .env                       |   5 +
 Dockerfile                 |  17 +++
 docker-compose.yaml        |  36 +++++++
 project/settings.py.docker | 210 +++++++++++++++++++++++++++++++++++++
 4 files changed, 268 insertions(+)
 create mode 100644 .env
 create mode 100644 Dockerfile
 create mode 100644 docker-compose.yaml
 create mode 100644 project/settings.py.docker

diff --git a/.env b/.env
new file mode 100644
index 0000000..a6ea41c
--- /dev/null
+++ b/.env
@@ -0,0 +1,5 @@
+# MySQL settings
+MYSQL_ROOT_PASSWORD=root
+MYSQL_DATABASE=errorreport_db
+MYSQL_USER=errorreport
+MYSQL_PASSWORD=errorreport
diff --git a/Dockerfile b/Dockerfile
new file mode 100644
index 0000000..080befc
--- /dev/null
+++ b/Dockerfile
@@ -0,0 +1,17 @@
+# Use an official Python runtime as a parent image
+FROM python:3.10
+
+# Set environment variables
+ENV PYTHONDONTWRITEBYTECODE 1
+ENV PYTHONUNBUFFERED 1
+
+# Set the working directory
+WORKDIR /app
+
+# Install dependencies
+COPY requirements.txt /app/
+RUN pip install -r requirements.txt
+
+# Copy the project code into the container
+COPY . /app/
+RUN cp -rf /app/project/settings.py.docker /app/project/settings.py
diff --git a/docker-compose.yaml b/docker-compose.yaml
new file mode 100644
index 0000000..5ef4913
--- /dev/null
+++ b/docker-compose.yaml
@@ -0,0 +1,36 @@
+version: '3'
+services:
+  db:
+    image: mysql:8.0.36
+    container_name: error_report_web_db
+    restart: always
+    volumes:
+      - data:/var/lib/mysql
+    environment:
+      MYSQL_ROOT_PASSWORD: ${MYSQL_ROOT_PASSWORD}
+      MYSQL_DATABASE: ${MYSQL_DATABASE}
+      MYSQL_USER: ${MYSQL_USER}
+      MYSQL_PASSWORD: ${MYSQL_PASSWORD}
+    ports:
+      - "3306:3306"
+    healthcheck:
+      test: ["CMD", "mysql", "-h", "localhost", "-u", "root", "-p${MYSQL_ROOT_PASSWORD}", "-e", "SELECT 1"]
+      timeout: 20s
+      retries: 10
+  
+  backend:
+    build: 
+      context: .
+      dockerfile: Dockerfile
+    container_name: error_report_web_backend
+    command: sh -c "python3 manage.py migrate --noinput && python3 manage.py runserver 0.0.0.0:8000"
+    restart: always
+    ports:
+      - "8000:8000"
+    env_file:
+      - .env
+    depends_on:
+      db:
+         condition: service_healthy
+volumes:
+  data:
diff --git a/project/settings.py.docker b/project/settings.py.docker
new file mode 100644
index 0000000..8ba0b55
--- /dev/null
+++ b/project/settings.py.docker
@@ -0,0 +1,210 @@
+# SPDX-License-Identifier: MIT
+#
+# Django settings for error-reporting-tool project.
+# Based on settings.py from the Django project template
+# Copyright (c) Django Software Foundation and individual contributors.
+
+import os
+
+DEBUG = True
+TEMPLATE_DEBUG = DEBUG
+
+ADMINS = (
+    # ('Your Name', 'your_email@example.com'),
+)
+
+MANAGERS = ADMINS
+
+DATABASES = {
+    'default': {
+        'ENGINE': 'django.db.backends.mysql',
+        'NAME': os.environ.get('MYSQL_DATABASE'),
+        'USER': os.environ.get('MYSQL_USER'),
+        'PASSWORD': os.environ.get('MYSQL_PASSWORD'),
+        'HOST': os.environ.get('DB_HOST', 'db'),
+        'PORT': os.environ.get('DB_PORT', '3306'),
+    }
+}
+
+
+# Uncomment to add a tab in the UI which is similar to the latest errors page
+# but all queries on it are additionally filtered by the submitter being the
+# string defined below.
+#
+# SPECIAL_SUBMITTER = {
+#     'name' : "yocto-autobuilder", # Submitter name to filter on
+#     'title' : "Autobuilder", # Title that is displayed
+#     'link' : "Autobuilder", # Must be valid for a url
+# }
+
+# Maximum upload size for the payload send by send-error-rpoert
+MAX_UPLOAD_SIZE = "5242880"
+
+# Tolerance value to determine the distance between similar errors
+SIMILAR_FAILURE_DISTANCE = 10
+
+
+# Local time zone for this installation. Choices can be found here:
+# http://en.wikipedia.org/wiki/List_of_tz_zones_by_name
+# although not all choices may be available on all operating systems.
+# In a Windows environment this must be set to your system time zone.
+TIME_ZONE = 'America/Chicago'
+
+# Language code for this installation. All choices can be found here:
+# http://www.i18nguy.com/unicode/language-identifiers.html
+LANGUAGE_CODE = 'en-us'
+
+SITE_ID = 1
+
+# If you set this to False, Django will make some optimizations so as not
+# to load the internationalization machinery.
+USE_I18N = True
+
+# If you set this to False, Django will not format dates, numbers and
+# calendars according to the current locale.
+USE_L10N = True
+
+# If you set this to False, Django will not use timezone-aware datetimes.
+USE_TZ = True
+
+# Absolute filesystem path to the directory that will hold user-uploaded files.
+# Example: "/home/media/media.lawrence.com/media/"
+
+CURRENT_PATH = os.getcwd()
+TEMPLATES_PATH = CURRENT_PATH + "/templates"
+
+MEDIA_ROOT = TEMPLATES_PATH
+
+# URL that handles the media served from MEDIA_ROOT. Make sure to use a
+# trailing slash.
+# Examples: "http://media.lawrence.com/media/", "http://example.com/media/"
+MEDIA_URL = ''
+
+# Absolute path to the directory static files should be collected to.
+# Don't put anything in this directory yourself; store your static files
+# in apps' "static/" subdirectories and in STATICFILES_DIRS.
+# Example: "/home/media/media.lawrence.com/static/"
+STATIC_ROOT = ''
+
+# URL prefix for static files.
+# Example: "http://media.lawrence.com/static/"
+STATIC_URL = '/static/'
+
+STATICFILES_DIRS = (
+    # Put strings here, like "/home/html/static" or "C:/www/django/static".
+    # Always use forward slashes, even on Windows.
+    # Don't forget to use absolute paths, not relative paths.
+    CURRENT_PATH + "/Post/static",
+)
+
+# List of finder classes that know how to find static files in
+# various locations.
+STATICFILES_FINDERS = (
+    'django.contrib.staticfiles.finders.FileSystemFinder',
+    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
+    # 'django.contrib.staticfiles.finders.DefaultStorageFinder',
+)
+
+# Make this unique, and don't share it with anybody.
+SECRET_KEY = 'changeme'
+
+# List of callables that know how to import templates from various sources.
+TEMPLATE_LOADERS = (
+    'django.template.loaders.filesystem.Loader',
+    'django.template.loaders.app_directories.Loader',
+    # 'django.template.loaders.eggs.Loader',
+)
+
+MIDDLEWARE = [
+    'django.middleware.common.CommonMiddleware',
+    'django.contrib.sessions.middleware.SessionMiddleware',
+    'django.middleware.csrf.CsrfViewMiddleware',
+    'django.contrib.sessions.middleware.SessionMiddleware',
+    'django.contrib.auth.middleware.AuthenticationMiddleware',
+    'django.contrib.messages.middleware.MessageMiddleware',
+    # Uncomment the next line for simple clickjacking protection:
+    # 'django.middleware.clickjacking.XFrameOptionsMiddleware',
+]
+
+ROOT_URLCONF = 'project.urls'
+
+# Python dotted path to the WSGI application used by Django's runserver.
+WSGI_APPLICATION = 'project.wsgi.application'
+
+TEMPLATES = [
+    {
+        "BACKEND": "django.template.backends.django.DjangoTemplates",
+        "DIRS": [CURRENT_PATH + "/templates"],
+        "APP_DIRS": True,
+        "OPTIONS": {
+            'context_processors': [
+                'django.template.context_processors.debug',
+                'django.template.context_processors.request',
+                'django.contrib.auth.context_processors.auth',
+                'django.contrib.messages.context_processors.messages',
+            ],
+       },
+    },
+]
+
+INSTALLED_APPS = (
+    'django.contrib.auth',
+    'django.contrib.contenttypes',
+    'django.contrib.sessions',
+    'django.contrib.sites',
+    'django.contrib.messages',
+    'django.contrib.staticfiles',
+    'Post',
+    # Uncomment the next line to enable the admin:
+    'django.contrib.admin',
+    # Uncomment the next line to enable admin documentation:
+    'django.contrib.admindocs',
+    # 'registration',
+    )
+
+# A sample logging configuration. The only tangible logging
+# performed by this configuration is to send an email to
+# the site admins on every HTTP 500 error when DEBUG=False.
+# See http://docs.djangoproject.com/en/dev/topics/logging for
+# more details on how to customize your logging configuration.
+LOGGING = {
+    'version': 1,
+    'disable_existing_loggers': False,
+    'filters': {
+        'require_debug_false': {
+            '()': 'django.utils.log.RequireDebugFalse'
+        }
+    },
+    'handlers': {
+        'mail_admins': {
+            'level': 'ERROR',
+            'filters': ['require_debug_false'],
+            'class': 'django.utils.log.AdminEmailHandler'
+        }
+    },
+    'loggers': {
+        'django.request': {
+            'handlers': ['mail_admins'],
+            'level': 'ERROR',
+            'propagate': True,
+        },
+    }
+}
+
+TEMPLATE_CONTEXT_PROCESSORS = (
+  'django.contrib.auth.context_processors.auth',
+  'django.core.context_processors.request',
+  'Post.views.common_context',
+)
+
+AUTH_PROFILE_MODULE = 'registration.RegistrationProfile'
+
+BUGZILLA_URL = 'https://bugzilla.yoctoproject.org'
+
+ACCOUNT_ACTIVATION_DAYS = 2
+EMAIL_HOST = 'localhost'
+DEFAULT_FROM_EMAIL = 'noreply@example.com'
+LOGIN_REDIRECT_URL = '/Errors'
+
+TEST_RUNNER = 'django.test.runner.DiscoverRunner'
+DEFAULT_AUTO_FIELD = 'django.db.models.AutoField'
-- 
2.34.1


