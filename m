Return-Path: <garbados@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77885E00BBC; Thu, 24 Aug 2017 22:20:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (garbados[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B18B2E00B3D
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 22:20:48 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id r133so2349848pgr.2
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 22:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=WMPy90IC0VC2VLiY7ivLO646m2jDi7IE98I6TS18+Xo=;
	b=MqKS835Ip12OFvNDwZLUmcbuY2e8fsRXnzSuaqf6gqUvZBr/7y8p6G8MjPPAcN5b2O
	QoCV6AUjGgMk0uUqUZJV0Guw04BYEFBf5490qgRt8s7LgIQpONR+TvLDOsQZnemzmxU7
	6UFAbqqK/ujZIV8UAeCXt2X/BkcmrEWAeWRj/FkeKvHM7skzejMbDnHrKTe3PsQJ7wSn
	p6w8l4Ssz8trI7OMUdDH59j6gvj/e1bohVO2aLWrcilQsU/bQFVSE63TQa2yE8wgWLew
	CpWxR3hcQLwdpEjI77E0uXHdiC3mCDDd1cZsWFQ+ab0PX+JsFaR03DpN7CHfi69WY96X
	bUIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=WMPy90IC0VC2VLiY7ivLO646m2jDi7IE98I6TS18+Xo=;
	b=K/1tacJkrdxAg5rzfaD62gWUUPPw5Vqiy2YRNqnawnekILAyEEt3nipYGvJaS4XlIu
	Lj8CWDRg0/TyxQFd4YZO64RXG+KHhzaTZqeSQaHhCEEuLRItdThHcC+wSo+EZXshG67S
	pUv1lh00suvk+BlnyZUgsDW5GXKk3npcqg7qLtEP1HAE1ztBf/8X6dg8EXg/uDZGVl2z
	ymlgz0DreaolnuSBJvX5Lrh82jVP1T5OO+bnKzIclTwgjKDcas6Uf6bC0byn/yAwhX3e
	LyMsaeBu5W+Q6nujTEhHBobaMcJWac1QzD2bh2RoZ3odOr6V1EKgoKsgEofakWVDzieK
	BqIw==
X-Gm-Message-State: AHYfb5hcoI1IVJZApqfpbXe6Kon0mAVhuphDqL8m9Zt2h5DqQnd1KlZR
	mL0AL8fA2YPsxR0R
X-Received: by 10.84.179.65 with SMTP id a59mr1407621plc.3.1503638447478;
	Thu, 24 Aug 2017 22:20:47 -0700 (PDT)
Received: from deus.apple.sh.pie ([2601:1c2:303:6b0:48e3:269e:1213:4ae9])
	by smtp.gmail.com with ESMTPSA id
	t123sm9401532pfb.73.2017.08.24.22.20.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 24 Aug 2017 22:20:46 -0700 (PDT)
From: Diana Thayer <garbados@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 24 Aug 2017 22:20:30 -0700
Message-Id: <1503638430-9209-1-git-send-email-garbados@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [layerindex-web][PATCH v4] Asynchronous email notifications, task execution
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
X-List-Received-Date: Fri, 25 Aug 2017 05:20:50 -0000

This patch adds asynchronous task execution using a Celery backend
and RabbitMQ task queue, so that the layer submission process to
proceed even in the event that sending the notification email fails,
and establishing an asynchronous execution mechanism that we can use
in the future e.g. for triggering parse operations from the web UI.
This pertains to bug 11195:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=11195

It updates the README to reflect the installation and configuration
of a basic RabbitMQ setup, adds a 'tasks.py' file to contain task
definitions, updates the 'edit_layer_view' function to send
emails to administrators about new and updated layers asynchronously,
and modifies the 'settings.py' to include a default configuration
for a RabbitMQ connection.

Signed-off-by: Diana Thayer <garbados@gmail.com>
---
 README              | 10 +++++++++-
 TODO                |  1 -
 layerindex/tasks.py | 24 ++++++++++++++++++++++++
 layerindex/views.py |  5 ++---
 requirements.txt    |  1 +
 settings.py         |  4 ++++
 6 files changed, 40 insertions(+), 5 deletions(-)
 create mode 100644 layerindex/tasks.py

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
index 1661cb3..bcf6671 100644
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


