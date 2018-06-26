Return-Path: <Konrad.Scherer@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 097B4E0143C; Tue, 26 Jun 2018 10:42:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF1E2E0145E
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 10:42:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w5QHfgVj030956
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 10:42:17 -0700
Received: from localhost.localdomain (128.224.22.156) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.399.0; Tue, 26 Jun 2018 10:41:31 -0700
From: Konrad Scherer <konrad.scherer@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 26 Jun 2018 13:41:30 -0400
Message-ID: <20180626174130.21617-2-konrad.scherer@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180626174130.21617-1-konrad.scherer@windriver.com>
References: <20180626174130.21617-1-konrad.scherer@windriver.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 1/6] Add docker-compose file to create full layerindex stack of MariaDB, RabbitMQ and Nginx
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
X-List-Received-Date: Tue, 26 Jun 2018 17:42:56 -0000
Content-Type: text/plain

Lots of new features added:

- Layerindex runs as unprivileged user inside container

- Celery worker is started before gunicorn

- Entrypoint script supports changing RabbitMQ location

- Entrypoint script support initialization of database and superuser

- Reverse Proxy uses https with self signed certs by default and
  supports Let's Encrypt certs (not enabled by default)

- Move docker image to debian stretch and python3

- Remove build tools after installation to reduce the image
  to under 500MB in size

Signed-off-by: Konrad Scherer <Konrad.Scherer@windriver.com>
---
 Dockerfile                 |  78 ++++++++----
 docker/README              |  56 +++++----
 docker/docker-compose.yaml | 111 +++++++++++++++++
 docker/entrypoint.sh       |  32 +++++
 docker/mariadb_settings.py | 246 +++++++++++++++++++++++++++++++++++++
 5 files changed, 470 insertions(+), 53 deletions(-)
 create mode 100644 docker/docker-compose.yaml
 create mode 100755 docker/entrypoint.sh
 create mode 100644 docker/mariadb_settings.py

diff --git a/Dockerfile b/Dockerfile
index 9bb251e..6f5ad16 100644
--- a/Dockerfile
+++ b/Dockerfile
@@ -1,40 +1,64 @@
-FROM buildpack-deps:latest
+FROM debian:stretch
 MAINTAINER Michael Halstead <mhalstead@linuxfoundation.org>
 
 EXPOSE 80
-ENV PYTHONUNBUFFERED 1
+ENV PYTHONUNBUFFERED=1 \
+    LANG=en_US.UTF-8 \
+    LC_ALL=en_US.UTF-8 \
+    LC_CTYPE=en_US.UTF-8
+
 ## Uncomment to set proxy ENVVARS within container
 #ENV http_proxy http://your.proxy.server:port
 #ENV https_proxy https://your.proxy.server:port
 
-RUN apt-get update
-RUN apt-get install -y --no-install-recommends \
-	python-pip \
-	python-mysqldb \
-	python-dev \
-	python-imaging \
-	rabbitmq-server \
-	netcat-openbsd \
-	vim \
-	&& rm -rf /var/lib/apt/lists/*
-RUN pip install --upgrade pip
-RUN pip install gunicorn
-RUN pip install setuptools
-CMD mkdir /opt/workdir
+ADD requirements.txt /
+
+RUN apt-get update \
+    && apt-get install -y --no-install-recommends \
+      autoconf \
+      g++ \
+      gcc \
+      make \
+      python3-pip \
+      python3-dev \
+      python3-pil \
+      python3-mysqldb \
+      python3-setuptools \
+      netcat-openbsd \
+      libjpeg-dev \
+      vim git curl locales libmariadbclient-dev \
+    && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
+    && locale-gen en_US.UTF-8 \
+    && update-locale \
+    && mkdir /opt/workdir \
+    && pip3 install wheel gunicorn \
+    && pip3 install -r /requirements.txt \
+    && apt-get purge -y g++ make python3-dev autoconf libmariadbclient-dev \
+    && apt-get autoremove -y \
+    && rm -rf /var/lib/apt/lists/* \
+    && apt-get clean \
+    && groupadd user \
+    && useradd --create-home --home-dir /home/user -g user user
+
 ADD . /opt/layerindex
-RUN pip install -r /opt/layerindex/requirements.txt
-ADD settings.py /opt/layerindex/settings.py
+
+# Copy static resouces to static dir so they can be served by nginx
+RUN rm -f /opt/layerindex/layerindex/static/admin \
+    && cp -r /usr/local/lib/python3.5/dist-packages/django/contrib/admin/static/admin/ \
+        /opt/layerindex/layerindex/static/ \
+    && rm -f /opt/layerindex/layerindex/static/rest_framework \
+    && cp -r /usr/local/lib/python3.5/dist-packages/rest_framework/static/rest_framework/ \
+        /opt/layerindex/layerindex/static/ \
+    && chown -R user:user /opt/layerindex \
+    && mkdir /opt/layers && chown -R user:user /opt/layers
+
 ADD docker/updatelayers.sh /opt/updatelayers.sh
 ADD docker/migrate.sh /opt/migrate.sh
 
-## Uncomment to add a .gitconfig file within container
-#ADD docker/.gitconfig /root/.gitconfig
-## Uncomment to add a proxy script within container, if you choose to
-## do so, you will also have to edit .gitconfig appropriately
-#ADD docker/git-proxy /opt/bin/git-proxy
+# Add entrypoint to start celery worker and gnuicorn
+ADD docker/entrypoint.sh /entrypoint.sh
 
-# Start Gunicorn
-CMD ["/usr/local/bin/gunicorn", "wsgi:application", "--workers=4", "--bind=:5000", "--log-level=debug", "--chdir=/opt/layerindex"]
+# Run gunicorn and celery as unprivileged user
+USER user
 
-# Start Celery
-CMD ["/usr/local/bin/celery", "-A", "layerindex.tasks", "worker", "--loglevel=info", "--workdir=/opt/layerindex"]
+ENTRYPOINT ["/entrypoint.sh"]
diff --git a/docker/README b/docker/README
index 14bc392..dc5c37c 100644
--- a/docker/README
+++ b/docker/README
@@ -1,26 +1,30 @@
-## This is set up to make a cluster of three containers. First we build two from the root of the repo.
-docker build -t halstead/layerindex-app .
-docker build -t halstead/layerindex-web -f Dockerfile.web .
-
-## Start a database server. We use MariaDB in production.
-## In order to configure your settings.py file to use this database server, use:
-##   'ENGINE': 'django.db.backends.mysql',
-##   'NAME': 'layersdb',
-##   'USER': 'root',
-##   'PASSWORD': 'testingpw',
-##   'HOST': 'layersdb',
-##   'PORT': '',
-docker run -d --name layerdb -e MYSQL_ROOT_PASSWORD=testingpw -e MYSQL_DATABASE=layersdb mariadb
-
-## If you have a copy of the the production data now is the time to insert it.
-## If not you can skip the next step for a clean install.
-xzcat ./layerdb.sql.xz | docker run -i --link layerdb:layersdb --rm mariadb sh -c 'exec mysql -hlayersdb -uroot -p"testingpw" layersdb'
-
-docker run -d --link layerdb:layersdb --name layersapp halstead/layerindex-app
-docker run -d --link layersapp:layersapp --name layersweb -p 49153:80 halstead/layerindex-web
-
-## To apply layerindex migration
-docker run --rm --link layerdb:layersdb halstead/layerindex-app /opt/migrate.sh
-
-## To update the layer info we can run the job in a temporary container.
-docker run --rm --link layerdb:layersdb halstead/layerindex-app /opt/updatelayers.sh
+# Layerindex Docker images
+
+The layerindex depends on several pieces of software:
+
+- A database such as mariadb
+- RabbitMQ as a task queue for Celery
+- A reverse proxy such as Nginx for performance
+
+The docker-compose.yaml file will start up a full stack of the 4
+containers necessary to simulate a full production system on a single
+machine using docker-compose.
+
+    > docker-compose up --abort-on-container-exit
+    > docker-compose rm --force -v
+
+# Building the layerindex image
+
+    > docker build -t yocto/layerindex-app .
+
+# Manual creation of the database
+
+Start a database server. We use MariaDB in production. See
+docker/mariadb_settings.py for an example settings required to connect
+to Mariadb and RabbitMQ
+
+If you have a copy of the the production data now is the time to insert it.
+If not you can skip the next step for a clean install.
+
+    > xzcat ./layerdb.sql.xz | docker run -i --link layerdb:layersdb \
+         --rm mariadb sh -c 'exec mysql -hlayersdb -uroot -p"testingpw" layersdb'
diff --git a/docker/docker-compose.yaml b/docker/docker-compose.yaml
new file mode 100644
index 0000000..c985ebf
--- /dev/null
+++ b/docker/docker-compose.yaml
@@ -0,0 +1,111 @@
+# Copyright (c) 2017 Wind River Systems Inc.
+#
+# Permission is hereby granted, free of charge, to any person obtaining a copy
+# of this software and associated documentation files (the "Software"), to deal
+# in the Software without restriction, including without limitation the rights
+# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+# copies of the Software, and to permit persons to whom the Software is
+# furnished to do so, subject to the following conditions:
+#
+# The above copyright notice and this permission notice shall be included in all
+# copies or substantial portions of the Software.
+#
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
+# SOFTWARE.
+
+version: '3.1'
+services:
+  rproxy:
+    image: blacklabelops/nginx:${RPROXY_TAG:-latest}
+    ports:
+      - "443:443"
+    links:
+      - layerindex
+    environment:
+      SERVER1HTTPS_ENABLED: "true"
+      SERVER1HTTP_ENABLED: "false"
+      SERVER1REVERSE_PROXY_LOCATION1: "/"
+      SERVER1REVERSE_PROXY_DISABLE_RESOLVER1: "true"
+      SERVER1REVERSE_PROXY_PASS1: "http://layerindex:5000/"
+      SERVER1REVERSE_PROXY_APPLICATION1: "custom"
+      SERVER1REVERSE_PROXY_HEADER1FIELD1: 'Host $$http_host'
+      SERVER1REVERSE_PROXY_HEADER1FIELD2: 'X-Forwarded-For $$proxy_add_x_forwarded_for'
+      SERVER1REVERSE_PROXY_HEADER1FIELD3: 'X-Forwarded-Host $$host'
+      SERVER1REVERSE_PROXY_HEADER1FIELD4: 'X-Forwarded-Proto $$scheme'
+      SERVER1REVERSE_PROXY_DIRECTIVE1FIELD1: 'proxy_redirect off'
+      SERVER1REVERSE_PROXY_DIRECTIVE1FIELD2: 'proxy_buffers 16 16k'
+      SERVER1REVERSE_PROXY_DIRECTIVE1FIELD3: 'proxy_buffer_size 16k'
+      SERVER1REVERSE_PROXY_LOCATION2: "/static/"
+      SERVER1REVERSE_PROXY_APPLICATION2: "custom"
+      SERVER1REVERSE_PROXY_DISABLE_RESOLVER2: "true"
+      SERVER1REVERSE_PROXY_DIRECTIVE2FIELD1: 'alias /var/lib/nginx/html/static/'
+      SERVER1REVERSE_PROXY_DIRECTIVE2FIELD2: 'autoindex on'
+      SERVER1CERTIFICATE_DNAME: "/CN=Yocto/OU=Linux/O=yoctoproject.org/L=SanFrancisco/C=US/emailAddress=root@localhost"
+      NGINX_REDIRECT_PORT80: "true"
+      DISABLE_ACCESS_LOG: "true"
+      LOG_LEVEL: "warn"
+    tmpfs:
+      - /tmp
+    volumes:
+      # Volume avoids recreating certs on every run
+      - rproxy_nginx_keys:/etc/nginx/keys
+      # Use Docker volume to share static files from layerindex into nginx
+      - layerindex_static:/var/lib/nginx/html/static
+
+  layerindex:
+    image: yocto/layerindex-app
+    hostname: layerindex
+    # ports:
+    #   - '5000:5000'
+    environment:
+      LAYERINDEX_INIT: "yes"
+      LAYERINDEX_ADMIN: "admin"
+      LAYERINDEX_ADMIN_EMAIL: "admin@localhost"
+      LAYERINDEX_ADMIN_PASS: "admin"
+    depends_on:
+      - mariadb
+      - rabbit
+    links:
+      - rabbit
+      - mariadb
+    tmpfs:
+      - /tmp:exec
+    volumes:
+      # uncomment the following line to make layerindex development easier
+      # - $PWD/../:/opt/layerindex
+      - ./mariadb_settings.py:/opt/layerindex/settings.py
+      - layer_cache:/opt/layers
+      - layerindex_static:/opt/layerindex/layerindex/static
+
+  mariadb:
+    image: mariadb
+    # Enable UTF-8 for tables
+    command: ["--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci"]
+    environment:
+      MYSQL_ROOT_PASSWORD: 'root'
+      MYSQL_DATABASE: 'layerindex'
+      MYSQL_USER: 'oelayer'
+      MYSQL_PASSWORD: 'oelayer'
+      LANG: 'en_US.UTF-8'
+    tmpfs:
+      - /tmp:exec
+    volumes:
+      - layerindex_db:/var/lib/mysql
+
+  rabbit:
+    hostname: rabbit
+    image: rabbitmq:3.6-alpine
+    environment:
+      - RABBITMQ_DEFAULT_USER=admin
+      - RABBITMQ_DEFAULT_PASS=mypass
+
+volumes:
+  rproxy_nginx_keys:
+  layer_cache:
+  layerindex_static:
+  layerindex_db:
diff --git a/docker/entrypoint.sh b/docker/entrypoint.sh
new file mode 100755
index 0000000..e33b510
--- /dev/null
+++ b/docker/entrypoint.sh
@@ -0,0 +1,32 @@
+#!/bin/bash
+
+cd /opt/layerindex || exit 1
+
+if [ -n "$RABBIT_BROKER" ]; then
+    sed -i "s/RABBIT_BROKER = .*/RABBIT_BROKER = '$RABBIT_BROKER'/" settings.py
+fi
+
+if [ -n "$RABBIT_BACKEND" ]; then
+    sed -i "s/RABBIT_BACKEND = .*/RABBIT_BACKEND = '$RABBIT_BACKEND'/" settings.py
+fi
+
+# Start Celery
+/usr/local/bin/celery -A layerindex.tasks worker --loglevel="${CELERY_LOG_LEVEL:-info}" \
+                      --workdir=/opt/layerindex &
+
+echo "Waiting for database to come online"
+for i in {15..1}; do echo -n "$i." && sleep 1; done; echo
+
+if [ "$LAYERINDEX_INIT" == "yes" ]; then
+    python3 manage.py migrate
+fi
+
+if [ -n "$LAYERINDEX_ADMIN" ] && [ -n "$LAYERINDEX_ADMIN_EMAIL" ] && [ -n "$LAYERINDEX_ADMIN_PASS" ]; then
+    echo "from django.contrib.auth.models import User; User.objects.create_superuser('$LAYERINDEX_ADMIN', '$LAYERINDEX_ADMIN_EMAIL', '$LAYERINDEX_ADMIN_PASS')" | python3 manage.py shell
+fi
+
+# Start Gunicorn
+/usr/local/bin/gunicorn wsgi:application --workers="${GUNICORN_NUM_WORKERS:-4}" \
+                        --bind="${GUNICORN_BIND:-:5000}" \
+                        --log-level="${GUNICORN_LOG_LEVEL:-debug}" \
+                        --chdir=/opt/layerindex
diff --git a/docker/mariadb_settings.py b/docker/mariadb_settings.py
new file mode 100644
index 0000000..cf59e51
--- /dev/null
+++ b/docker/mariadb_settings.py
@@ -0,0 +1,246 @@
+# Django settings for layerindex project.
+#
+# Based on settings.py from the Django project template
+# Copyright (c) Django Software Foundation and individual contributors.
+
+DEBUG = False
+ALLOWED_HOSTS = ['*']
+
+ADMINS = (
+    # ('Your Name', 'your_email@example.com'),
+)
+
+MANAGERS = ADMINS
+
+DATABASES = {
+    'default': {
+        'ENGINE': 'django.db.backends.mysql', # Add 'postgresql_psycopg2', 'postgresql', 'mysql', 'sqlite3' or 'oracle'.
+        'NAME': 'layerindex',                 # Or path to database file if using sqlite3 (full path recommended).
+        'USER': 'oelayer',                    # Not used with sqlite3.
+        'PASSWORD': 'oelayer',                # Not used with sqlite3.
+        'HOST': 'mariadb',                     # Set to empty string for localhost. Not used with sqlite3.
+        'PORT': '',                      # Set to empty string for default. Not used with sqlite3.
+    }
+}
+
+# Local time zone for this installation. Choices can be found here:
+# http://en.wikipedia.org/wiki/List_of_tz_zones_by_name
+# although not all choices may be available on all operating systems.
+# On Unix systems, a value of None will cause Django to use the same
+# timezone as the operating system.
+# If running in a Windows environment this must be set to the same as your
+# system time zone.
+# TIME_ZONE = 'America/New_York'
+USE_TZ = True
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
+# calendars according to the current locale
+USE_L10N = True
+
+# Avoid specific paths (added by paule)
+import os
+BASE_DIR = os.path.dirname(__file__)
+
+# Absolute filesystem path to the directory that will hold user-uploaded files.
+# Example: "/home/media/media.lawrence.com/media/"
+MEDIA_ROOT = ''
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
+# URL prefix for admin static files -- CSS, JavaScript and images.
+# Make sure to use a trailing slash.
+# Examples: "http://foo.com/static/admin/", "/static/admin/".
+ADMIN_MEDIA_PREFIX = '/static/admin/'
+
+# Additional locations of static files
+STATICFILES_DIRS = (
+    # Put strings here, like "/home/html/static" or "C:/www/django/static".
+    # Always use forward slashes, even on Windows.
+    # Don't forget to use absolute paths, not relative paths.
+)
+
+# List of finder classes that know how to find static files in
+# various locations.
+STATICFILES_FINDERS = (
+    'django.contrib.staticfiles.finders.FileSystemFinder',
+    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
+#    'django.contrib.staticfiles.finders.DefaultStorageFinder',
+)
+
+# Make this unique, and don't share it with anybody.
+SECRET_KEY = '740b3412-3aeb-4480-98a4-bc1530c0da8e'
+
+MIDDLEWARE_CLASSES = (
+    'django.middleware.security.SecurityMiddleware',
+    'corsheaders.middleware.CorsMiddleware',
+    'django.middleware.common.CommonMiddleware',
+    'django.contrib.sessions.middleware.SessionMiddleware',
+    'django.middleware.csrf.CsrfViewMiddleware',
+    'django.contrib.auth.middleware.AuthenticationMiddleware',
+    'django.contrib.messages.middleware.MessageMiddleware',
+    'django.middleware.clickjacking.XFrameOptionsMiddleware',
+    'reversion.middleware.RevisionMiddleware',
+)
+
+# We allow CORS calls from everybody
+CORS_ORIGIN_ALLOW_ALL = True
+# for the API pages
+CORS_URLS_REGEX = r'.*/api/.*';
+
+
+# Clickjacking protection
+X_FRAME_OPTIONS = 'DENY'
+
+ROOT_URLCONF = 'urls'
+
+TEMPLATES = [
+    {
+        'BACKEND': 'django.template.backends.django.DjangoTemplates',
+        'DIRS': [
+            BASE_DIR + "/templates",
+        ],
+        'APP_DIRS': True,
+        'OPTIONS': {
+            'context_processors': [
+                'django.contrib.auth.context_processors.auth',
+                'django.template.context_processors.debug',
+                'django.template.context_processors.i18n',
+                'django.template.context_processors.media',
+                'django.template.context_processors.static',
+                'django.template.context_processors.tz',
+                'django.contrib.messages.context_processors.messages',
+                'django.template.context_processors.request',
+                'layerindex.context_processors.layerindex_context',
+            ],
+        },
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
+    # Uncomment the next line to enable the admin:
+    'django.contrib.admin',
+    # Uncomment the next line to enable admin documentation:
+    # 'django.contrib.admindocs',
+    'layerindex',
+    'registration',
+    'reversion',
+    'reversion_compare',
+    'captcha',
+    'rest_framework',
+    'corsheaders',
+    'django_nvd3'
+)
+
+REST_FRAMEWORK = {
+    'DEFAULT_PERMISSION_CLASSES': (
+        'layerindex.restperm.ReadOnlyPermission',
+    ),
+    'DATETIME_FORMAT': '%Y-%m-%dT%H:%m:%S+0000',
+}
+
+# A sample logging configuration. The only tangible logging
+# performed by this configuration is to send an email to
+# the site admins on every HTTP 500 error.
+# See http://docs.djangoproject.com/en/dev/topics/logging for
+# more details on how to customize your logging configuration.
+LOGGING = {
+    'version': 1,
+    'disable_existing_loggers': False,
+    'handlers': {
+        'mail_admins': {
+            'level': 'ERROR',
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
+from django.contrib.messages import constants as messages
+MESSAGE_TAGS = {
+    messages.SUCCESS: 'alert-success',
+    messages.INFO: 'alert-info',
+    messages.WARNING: '',
+    messages.ERROR: 'alert-error',
+}
+
+# Registration settings
+ACCOUNT_ACTIVATION_DAYS = 2
+EMAIL_HOST = 'smtp.example.com'
+DEFAULT_FROM_EMAIL = 'noreply@example.com'
+LOGIN_REDIRECT_URL = '/layerindex'
+
+# Full path to directory where layers should be fetched into by the update script
+LAYER_FETCH_DIR = "/opt/layers"
+
+# Base temporary directory in which to create a directory in which to run BitBake
+TEMP_BASE_DIR = "/tmp"
+
+# Fetch URL of the BitBake repository for the update script
+BITBAKE_REPO_URL = "git://git.openembedded.org/bitbake"
+
+# Core layer to be used by the update script for basic BitBake configuration
+CORE_LAYER_NAME = "openembedded-core"
+
+# Update records older than this number of days will be deleted every update
+UPDATE_PURGE_DAYS = 30
+
+# Remove layer dependencies that are not specified in conf/layer.conf
+REMOVE_LAYER_DEPENDENCIES = False
+
+# Always use https:// for review URLs in emails (since it may be redirected to
+# the login page)
+FORCE_REVIEW_HTTPS = False
+
+# Settings for layer submission feature
+SUBMIT_EMAIL_FROM = 'noreply@example.com'
+SUBMIT_EMAIL_SUBJECT = 'OE Layerindex layer submission'
+
+# RabbitMQ settings
+RABBIT_BROKER = 'amqp://admin:mypass@rabbit:5672'
+RABBIT_BACKEND = 'rpc://'
+
+SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')
+SECURE_SSL_REDIRECT = True
+SESSION_COOKIE_SECURE = True
+CSRF_COOKIE_SECURE = True
+
+# Used for fetching repo
+PARALLEL_JOBS = "4"
+
+# Full path to directory where rrs tools stores logs
+TOOLS_LOG_DIR = ""
-- 
2.17.1


