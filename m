Return-Path: <garbados@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C3E4E00CB0; Fri, 25 Aug 2017 12:16:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (garbados[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C85B1E00B1B
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 12:16:08 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id 63so944144pgc.1
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 12:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=1tF4WNi8lZVB7Yb3PuvVOjW07mduo/hxFnOgJjNj1kk=;
	b=EAxVpWvVyiO6AZFNfZZijfW0t0xC+hfZulqoUbPe9sozROkGCPuwZTtx9cKiexoAES
	ssa1ZH/M69ScI/j+cZQVeJxTEOvkqr0hJ34HQa/RtMdVZrdGQnMz4m5AIPsUqT4G3oIX
	BlrbmcsjNN/if3c5GOgQicIIipF0+azCAzsIxYGNBcPsxOoZIVsLtXKrQRPvr2g0IWZf
	tu+QNoBWTQH2CZ96z+g1iLODi6JgOW1jsatSvFBalpU5PgUD192Qnux6AjleqMY1qU5e
	cWJ2rzlzxhVvalTIUAw2jB8Tu6MIJ3kfXyX6TNJUW3UcjJUA3JGEhdLXw0bECP+ocFPH
	jC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=1tF4WNi8lZVB7Yb3PuvVOjW07mduo/hxFnOgJjNj1kk=;
	b=VgW8xASgtdLKJTAoN3jdVcMboVskEsXs0hoX1E47vetkIrCOB0vDlYRt89GOVfpMow
	b+WEnEGHDRWr7kA+VzI7SyNkh6QvYHH304skQQn2MZjgw+Ky002WTSBZ2OhU2c99fIZN
	U6JpQuD7mDXhVBsDncqK7tKFY6KJDjtMpgkZVQ2PvLyC308ArVLxeq0hzCaUXUrUN53a
	3XZo/Gd35IKXUuIrpwYYb1AZjCCmfZmu1Ls/2+JM5WkUpn+dImHTTsNE6K3tel3qfZRY
	6yH0U7041dwW5XfmIMtQXK+sbLo5iL9hpVGmQlCAT6QQegBxT/88h6JFzUeb+cX3piaC
	lOIg==
X-Gm-Message-State: AHYfb5hJXv5RBqfny1m0Wu78EoaCtY+93ERFPl9zKsbdV6ZpcQ7g34Hh
	g6mlz4imPa7WkTn7
X-Received: by 10.98.14.67 with SMTP id w64mr10761634pfi.112.1503688567314;
	Fri, 25 Aug 2017 12:16:07 -0700 (PDT)
Received: from deus.apple.sh.pie ([2601:1c2:303:6b0:7d83:e360:78db:8aea])
	by smtp.gmail.com with ESMTPSA id
	t24sm12911327pfe.45.2017.08.25.12.16.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 25 Aug 2017 12:16:05 -0700 (PDT)
From: Diana Thayer <garbados@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 25 Aug 2017 12:12:17 -0700
Message-Id: <1503688337-19879-1-git-send-email-garbados@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [layerindex-web][PATCH] docker : update dockerfile to start celery worker
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
X-List-Received-Date: Fri, 25 Aug 2017 19:16:09 -0000

Related to bug 11195
(https://bugzilla.yoctoproject.org/show_bug.cgi?id=11195)
this WIP patch updates the Dockerfile to start a Celery worker
alongside the Gunicorn daemon. These changes allow the Docker
image to leverage the asynchronous task execution framework
established in a prior patch.

I don't have the best grasp of Docker but the image appears
to serve up a functioning layerindex.

Signed-off-by: Diana Thayer <garbados@gmail.com>
---
 Dockerfile          | 18 ++++++++++++------
 README              | 10 +++++++++-
 TODO                |  1 -
 layerindex/tasks.py | 24 ++++++++++++++++++++++++
 layerindex/views.py |  7 +++----
 requirements.txt    |  1 +
 settings.py         |  4 ++++
 7 files changed, 53 insertions(+), 12 deletions(-)
 create mode 100644 layerindex/tasks.py

diff --git a/Dockerfile b/Dockerfile
index 1f63e2a..2a7771d 100644
--- a/Dockerfile
+++ b/Dockerfile
@@ -9,15 +9,17 @@ ENV PYTHONUNBUFFERED 1
 
 RUN apt-get update
 RUN apt-get install -y --no-install-recommends \
-	python-pip \
-	python-mysqldb \
-	python-dev \
-	python-imaging \
-    netcat-openbsd \
-    vim \
+  python-dev \
+  python-imaging \
+  python-mysqldb \
+  python-pip \
+  netcat-openbsd \
+  rabbitmq-server \
+  vim \
 	&& rm -rf /var/lib/apt/lists/*
 RUN pip install --upgrade pip
 RUN pip install gunicorn
+RUN pip install setuptools
 CMD mkdir /opt/workdir
 ADD . /opt/layerindex
 RUN pip install -r /opt/layerindex/requirements.txt
@@ -31,4 +33,8 @@ ADD docker/migrate.sh /opt/migrate.sh
 ## do so, you will also have to edit .gitconfig appropriately
 #ADD docker/git-proxy /opt/bin/git-proxy
 
+# Start the Gunicorn workers
 CMD ["/usr/local/bin/gunicorn", "wsgi:application", "--workers=4", "--bind=:5000", "--log-level=debug", "--chdir=/opt/layerindex"]
+
+# Start the Celery worker
+CMD ["/usr/local/bin/celery", "-A", "layerindex.tasks", "worker", "--loglevel=info", "--workdir=/opt/layerindex"]
diff --git a/README b/README
index 62f739d..c7f7409 100644
--- a/README
+++ b/README
@@ -14,6 +14,7 @@ In order to make use of this application you will need:
 * Python 3.4+
 * Django 1.8.x - tested with 1.8.17; newer versions may work, but
   the application has not been tested with 1.9 or newer.
+* RabbitMQ 3.6.x - tested with 3.6.10.
 * For production usage, a web server set up to host Django applications
   (not needed for local-only testing)
 * A database supported by Django (SQLite, MySQL, etc.). Django takes
@@ -41,7 +42,9 @@ Setup instructions:
 1. Edit settings.py to specify a database, EMAIL_HOST, SECRET_KEY and
    other settings specific to your installation. Ensure you set
    LAYER_FETCH_DIR to an absolute path to a location with sufficient
-   space for fetching layer repositories.
+   space for fetching layer repositories. Modify RABBIT_BROKER
+   and RABBIT_BACKEND to reflect the settings used by your RabbitMQ
+   server.
 
 2. Run the following commands within the layerindex-web directory to
    initialise the database:
@@ -64,6 +67,11 @@ Setup instructions:
    production you need to use a proper web server and have DEBUG set
    to False.
 
+   3.1. In order to process asynchronous tasks like sending email,
+        you will need to run a Celery worker:
+
+        celery -A layerindex.tasks worker --loglevel=info
+
 4. You'll need to add at least the openembedded-core layer to the
    database, or some equivalent that contains conf/bitbake.conf for
    the base system configuration. To add this, follow these steps:
diff --git a/TODO b/TODO
index 186219f..29986ac 100644
--- a/TODO
+++ b/TODO
@@ -27,7 +27,6 @@ Other
 * Show layer type in layer detail?
 * Usage links in list page?
 * Subdirs in list page?
-* Prevent SMTP failures from breaking submission process
 * Query backend service i.e. special URL to query information for external apps/scripts
 * Add comparison to duplicates page
 * Create simple script to check for unlisted layer subdirectories in all repos
diff --git a/layerindex/tasks.py b/layerindex/tasks.py
new file mode 100644
index 0000000..de80804
--- /dev/null
+++ b/layerindex/tasks.py
@@ -0,0 +1,24 @@
+from celery import Celery
+from django.core.mail import EmailMessage
+from . import utils
+import os
+import time
+
+try:
+    import settings
+except ImportError:
+    # not in a full django env, so settings is inaccessible.
+    # setup django to access settings.
+    utils.setup_django()
+    import settings
+
+tasks = Celery('layerindex',
+    broker=settings.RABBIT_BROKER,
+    backend=settings.RABBIT_BACKEND)
+
+@tasks.task
+def send_email(subject, text_content, from_email=settings.DEFAULT_FROM_EMAIL, to_emails=[]):
+    # We seem to need to run this within the task
+    utils.setup_django()
+    msg = EmailMessage(subject, text_content, from_email, to_emails)
+    msg.send()
diff --git a/layerindex/views.py b/layerindex/views.py
index 1661cb3..8eac866 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -19,7 +19,6 @@ from layerindex.forms import EditLayerForm, LayerMaintainerFormSet, EditNoteForm
 from django.db import transaction
 from django.contrib.auth.models import User, Permission
 from django.db.models import Q, Count, Sum
-from django.core.mail import EmailMessage
 from django.template.loader import get_template
 from django.template import Context
 from django.utils.decorators import method_decorator
@@ -28,6 +27,7 @@ from django.contrib import messages
 from reversion.models import Revision
 from . import utils
 from . import simplesearch
+from . import tasks
 import settings
 from django.dispatch import receiver
 import reversion
@@ -163,7 +163,7 @@ def edit_layer_view(request, template_name, branch='master', slug=None):
                     # Send email
                     plaintext = get_template('layerindex/submitemail.txt')
                     perm = Permission.objects.get(codename='publish_layer')
-                    users = User.objects.filter(Q(groups__permissions=perm) | Q(user_permissions=perm) ).distinct()
+                    users = User.objects.filter(Q(groups__permissions=perm) | Q(user_permissions=perm) | Q(is_superuser=True)).distinct()
                     for user in users:
                         if user.first_name:
                             user_name = user.first_name
@@ -181,8 +181,7 @@ def edit_layer_view(request, template_name, branch='master', slug=None):
                         from_email = settings.SUBMIT_EMAIL_FROM
                         to_email = user.email
                         text_content = plaintext.render(d)
-                        msg = EmailMessage(subject, text_content, from_email, [to_email])
-                        msg.send()
+                        tasks.send_email.apply_async((subject, text_content, from_email, [to_email]))
                     return HttpResponseRedirect(reverse('submit_layer_thanks'))
             messages.success(request, 'Layer %s saved successfully.' % layeritem.name)
             if return_url:
diff --git a/requirements.txt b/requirements.txt
index f80e5d4..7cd741b 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1,3 +1,4 @@
+celery==3.1.25
 Django==1.8.17
 django-cors-headers==1.1.0
 django-nvd3==0.9.7
diff --git a/settings.py b/settings.py
index 92146f8..e26f4b2 100644
--- a/settings.py
+++ b/settings.py
@@ -224,3 +224,7 @@ FORCE_REVIEW_HTTPS = False
 # Settings for layer submission feature
 SUBMIT_EMAIL_FROM = 'noreply@example.com'
 SUBMIT_EMAIL_SUBJECT = 'OE Layerindex layer submission'
+
+# RabbitMQ settings
+RABBIT_BROKER = 'amqp://'
+RABBIT_BACKEND = 'rpc://'
-- 
2.7.4


