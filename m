Return-Path: <garbados@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C0EBE009A0; Mon, 19 Jun 2017 11:17:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (garbados[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF76FE0084A
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 11:17:02 -0700 (PDT)
Received: by mail-pg0-f46.google.com with SMTP id 132so17948667pgb.2
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 11:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=isu2VwgfTR4ClD9XC4KN7ztc+o4j/cUBCr9pIwCbLBY=;
	b=raB/q3cmKuOO0ri9auNxzHb3rJ3JWm+ScLZdFvRiOA/TgfiaPKIhFn82JKA2ZO6kqf
	02ShnqMNwFFTqAh7W5V2BBzPt4o6DND9lVHg3ZTD0El04wNvN4dZrVeK4exHyWk6JWnx
	jckSz+fjy6y3SFA5rdWxqDuNj8Ak+yWbHc8x7eKlFXYhPew7Zjrn3uVAaQjOE5sjbh1W
	TBUPk9+8McOQ8uUl6t/ewJW0wRB61cd3FN5wKQYj4+uHs3j2T3v19XEA6U4LZmh3DV0V
	KWSBwj+96GUtaDDlYMjqBFIv4RONVpR5lHIsf6ogEKVIM769fAYGUPEFSHZNn0wCO9we
	7EdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=isu2VwgfTR4ClD9XC4KN7ztc+o4j/cUBCr9pIwCbLBY=;
	b=a2X+DLt+NANI9ja2cVGL1OH8zOI59cYnMl/xzBMAUuZh0y7VkdPd50BR161x9K7Xxj
	YuIhXWCh0/HICHWqHkgm56aGzR0MUNhpU86zpEY/9D4SuiZAweYb1xL0UveUcV6B9Rtn
	1DQclh2Rq9GuHx0Pl7bX/mhL0Sh09Bo6cmFdgJub2fBNSNtP4tXj7ruxy3Thn9CDY7wu
	JsdTJV/n97S23D/NEHc55h9JI7p6WO6gKz845Ads7vEauXGVahwlE8xuodVGxQOaDayt
	Ekre9zoxdjT+Ee+aBbT3wR81MVYb2Rm2ZvQNk2+msK9XV4HnoCo1Rtk/Bn9gMUrN9onK
	wTtw==
X-Gm-Message-State: AKS2vOzPJmk8+qnQv6lgzaGQx28dva0U2buJeYNAAbx2je9UlvrVDMAH
	2wI7tOjQfrP+a+HC
X-Received: by 10.84.228.194 with SMTP id y2mr5081456pli.102.1497896221067;
	Mon, 19 Jun 2017 11:17:01 -0700 (PDT)
Received: from deus.apple.sh.pie ([2601:1c2:303:6b0:14fa:265:e25b:a63b])
	by smtp.gmail.com with ESMTPSA id
	l22sm22498844pfb.55.2017.06.19.11.16.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 19 Jun 2017 11:17:00 -0700 (PDT)
From: Diana Thayer <garbados@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 19 Jun 2017 11:16:31 -0700
Message-Id: <1497896191-8299-1-git-send-email-garbados@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [layerindex-web][PATCH] WIP solution to bug-11197: adding asynchronous task execution with celery and rabbitmq
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
X-List-Received-Date: Mon, 19 Jun 2017 18:17:06 -0000

Hello!

This is a work-in-progress solution to issue 11197 within layerindex-web: adding asynchronous task execution.
I used RabbitMQ and Celery. I'm still working with Paul Eggleton on adding install instructions for RabbitMQ to
the site's Dockerfile.

Previously, when a user submitted a layer, Django would synchronously send emails to users able to publish layers,
such that if an email bounced or otherwise failed, the user submitting the layer would see an error.
This patch sends those emails as asynchronous tasks, so any sending errors don't reach the user submitting a layer.

Thanks for reviewing this! Here's a brief changelog:

- updated readme to include RabbitMQ as a dependency
- updated settings.py to include RABBIT_BROKER and RABBIT_BACKEND
- added celery to requirements.txt
- defined celery tasks in layerindex/tasks.py
- separated layerindex/update#main into two functions: main (which parses sys.argv) and do_update (which accepts options as keyword arguments)
- updated layerindex/views.py to use the send_email task to asynchronously message anyone able to publish layers when a new layer is submitted
---
 README               |   5 +-
 layerindex/tasks.py  |  31 +++++++++++
 layerindex/update.py | 143 +++++++++++++++++++++++++++------------------------
 layerindex/views.py  |   7 ++-
 requirements.txt     |   1 +
 settings.py          |   4 ++
 6 files changed, 120 insertions(+), 71 deletions(-)
 create mode 100644 layerindex/tasks.py

diff --git a/README b/README
index 62f739d..cfcc37f 100644
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
diff --git a/layerindex/tasks.py b/layerindex/tasks.py
new file mode 100644
index 0000000..9bb4701
--- /dev/null
+++ b/layerindex/tasks.py
@@ -0,0 +1,31 @@
+from celery import Celery
+from django.core.mail import EmailMessage
+import os
+import time
+
+try:
+  from update import do_update
+except ImportError:
+  from .update import do_update
+
+try:
+  import settings
+except ImportError:
+  # not in a full django env, so settings is inaccessible.
+  # setup django to access settings.
+  from utils import setup_django
+  setup_django()
+  import settings
+
+tasks = Celery('layerindex',
+    broker=settings.RABBIT_BROKER,
+    backend=settings.RABBIT_BACKEND)
+
+@tasks.task
+def update(**options):
+  return do_update(**options)
+
+@tasks.task
+def send_email(subject, text_content, from_email=settings.DEFAULT_FROM_EMAIL, to_emails=[]):
+  msg = EmailMessage(subject, text_content, from_email, to_emails)
+  msg.send()
diff --git a/layerindex/update.py b/layerindex/update.py
index d5c56cd..f1c5039 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -17,7 +17,11 @@ import subprocess
 import signal
 from datetime import datetime, timedelta
 from distutils.version import LooseVersion
-import utils
+
+try:
+    import utils
+except ImportError:
+    from . import utils
 
 import warnings
 warnings.filterwarnings("ignore", category=DeprecationWarning)
@@ -71,73 +75,32 @@ def prepare_update_layer_command(options, branch, layer, updatedeps=False):
     cmd = '%s update_layer.py -l %s -b %s' % (cmdprefix, layer.name, branch.name)
     if updatedeps:
         cmd += ' --update-dependencies'
-    if options.reload:
+    if options.get('reload'):
         cmd += ' --reload'
-    if options.fullreload:
+    if options.get('fullreload'):
         cmd += ' --fullreload'
-    if options.nocheckout:
+    if options.get('nocheckout'):
         cmd += ' --nocheckout'
-    if options.dryrun:
+    if options.get('dryrun'):
         cmd += ' -n'
-    if options.loglevel == logging.DEBUG:
+    if options.get('loglevel') == logging.DEBUG:
         cmd += ' -d'
-    elif options.loglevel == logging.ERROR:
+    elif options.get('loglevel') == logging.ERROR:
         cmd += ' -q'
     return cmd
 
-
-def main():
-    if LooseVersion(git.__version__) < '0.3.1':
-        logger.error("Version of GitPython is too old, please install GitPython (python-git) 0.3.1 or later in order to use this script")
-        sys.exit(1)
-
-
-    parser = optparse.OptionParser(
-        usage = """
-    %prog [options]""")
-
-    parser.add_option("-b", "--branch",
-            help = "Specify branch(es) to update (use commas to separate multiple). Default is all enabled branches.",
-            action="store", dest="branch", default='')
-    parser.add_option("-l", "--layer",
-            help = "Specify layers to update (use commas to separate multiple). Default is all published layers.",
-            action="store", dest="layers")
-    parser.add_option("-r", "--reload",
-            help = "Reload recipe data instead of updating since last update",
-            action="store_true", dest="reload")
-    parser.add_option("", "--fullreload",
-            help = "Discard existing recipe data and fetch it from scratch",
-            action="store_true", dest="fullreload")
-    parser.add_option("-n", "--dry-run",
-            help = "Don't write any data back to the database",
-            action="store_true", dest="dryrun")
-    parser.add_option("-x", "--nofetch",
-            help = "Don't fetch repositories",
-            action="store_true", dest="nofetch")
-    parser.add_option("", "--nocheckout",
-            help = "Don't check out branches",
-            action="store_true", dest="nocheckout")
-    parser.add_option("-d", "--debug",
-            help = "Enable debug output",
-            action="store_const", const=logging.DEBUG, dest="loglevel", default=logging.INFO)
-    parser.add_option("-q", "--quiet",
-            help = "Hide all output except error messages",
-            action="store_const", const=logging.ERROR, dest="loglevel")
-
-    options, args = parser.parse_args(sys.argv)
-    if len(args) > 1:
-        logger.error('unexpected argument "%s"' % args[1])
-        parser.print_help()
-        sys.exit(1)
-
+def do_update(**options):
+    """
+    Download layers and branches based on given metadata.
+    """
     utils.setup_django()
     import settings
     from layerindex.models import Branch, LayerItem, Update, LayerUpdate
 
-    logger.setLevel(options.loglevel)
+    logger.setLevel(options.get('loglevel', logging.INFO))
 
-    if options.branch:
-        branches = options.branch.split(',')
+    if options.get('branch'):
+        branches = options['branch'].split(',')
         for branch in branches:
             if not utils.get_branch(branch):
                 logger.error("Specified branch %s is not valid" % branch)
@@ -151,10 +114,10 @@ def main():
         logger.error("Please set LAYER_FETCH_DIR in settings.py")
         sys.exit(1)
 
-    if options.layers:
-        layerquery = LayerItem.objects.filter(classic=False).filter(name__in=options.layers.split(','))
+    if options.get('layers'):
+        layerquery = LayerItem.objects.filter(classic=False).filter(name__in=options['layers'].split(','))
         if layerquery.count() == 0:
-            logger.error('No layers matching specified query "%s"' % options.layers)
+            logger.error('No layers matching specified query "%s"' % options['layers'])
             sys.exit(1)
     else:
         # We deliberately exclude status == 'X' ("no update") here
@@ -174,11 +137,11 @@ def main():
 
     update = Update()
     update.started = datetime.now()
-    if options.fullreload or options.reload:
+    if options.get('fullreload') or options.get('reload'):
         update.reload = True
     else:
         update.reload = False
-    if not options.dryrun:
+    if not options.get('dryrun'):
         update.save()
     try:
         lockfn = os.path.join(fetchdir, "layerindex.lock")
@@ -189,7 +152,7 @@ def main():
         try:
             bitbakepath = os.path.join(fetchdir, 'bitbake')
 
-            if not options.nofetch:
+            if not options.get('nofetch'):
                 # Fetch latest metadata from repositories
                 for layer in layerquery:
                     # Handle multiple layers in a single repo
@@ -239,7 +202,7 @@ def main():
                             layerupdate.started = datetime.now()
                             layerupdate.finished = datetime.now()
                             layerupdate.log = 'ERROR: fetch failed: %s' % errmsg
-                            if not options.dryrun:
+                            if not options.get('dryrun'):
                                 layerupdate.save()
                         continue
 
@@ -260,7 +223,7 @@ def main():
                         last_rev[layerbranch] = layerbranch.vcs_last_rev
                         layerupdate.layerbranch = layerbranch
                         layerupdate.log = output
-                        if not options.dryrun:
+                        if not options.get('dryrun'):
                             layerupdate.save()
 
                     if ret == 254:
@@ -277,7 +240,7 @@ def main():
                 for layer in layerquery:
                     layerbranch = layer.get_layerbranch(branch)
                     if layerbranch:
-                        if not (options.reload or options.fullreload):
+                        if not (options.get('reload') or options.get('fullreload')):
                             # Skip layers that did not change.
                             layer_last_rev = last_rev.get(layerbranch, None)
                             if layer_last_rev is None or layer_last_rev == layerbranch.vcs_last_rev:
@@ -297,10 +260,10 @@ def main():
     finally:
         update.log = ''.join(listhandler.read())
         update.finished = datetime.now()
-        if not options.dryrun:
+        if not options.get('dryrun'):
             update.save()
 
-    if not options.dryrun:
+    if not options.get('dryrun'):
         # Purge old update records
         update_purge_days = getattr(settings, 'UPDATE_PURGE_DAYS', 30)
         Update.objects.filter(started__lte=datetime.now()-timedelta(days=update_purge_days)).delete()
@@ -308,5 +271,53 @@ def main():
     sys.exit(0)
 
 
+def main():
+    if LooseVersion(git.__version__) < '0.3.1':
+        logger.error("Version of GitPython is too old, please install GitPython (python-git) 0.3.1 or later in order to use this script")
+        sys.exit(1)
+
+
+    parser = optparse.OptionParser(
+        usage = """
+    %prog [options]""")
+
+    parser.add_option("-b", "--branch",
+            help = "Specify branch(es) to update (use commas to separate multiple). Default is all enabled branches.",
+            action="store", dest="branch", default='')
+    parser.add_option("-l", "--layer",
+            help = "Specify layers to update (use commas to separate multiple). Default is all published layers.",
+            action="store", dest="layers")
+    parser.add_option("-r", "--reload",
+            help = "Reload recipe data instead of updating since last update",
+            action="store_true", dest="reload")
+    parser.add_option("", "--fullreload",
+            help = "Discard existing recipe data and fetch it from scratch",
+            action="store_true", dest="fullreload")
+    parser.add_option("-n", "--dry-run",
+            help = "Don't write any data back to the database",
+            action="store_true", dest="dryrun")
+    parser.add_option("-x", "--nofetch",
+            help = "Don't fetch repositories",
+            action="store_true", dest="nofetch")
+    parser.add_option("", "--nocheckout",
+            help = "Don't check out branches",
+            action="store_true", dest="nocheckout")
+    parser.add_option("-d", "--debug",
+            help = "Enable debug output",
+            action="store_const", const=logging.DEBUG, dest="loglevel", default=logging.INFO)
+    parser.add_option("-q", "--quiet",
+            help = "Hide all output except error messages",
+            action="store_const", const=logging.ERROR, dest="loglevel")
+
+    options, args = parser.parse_args(sys.argv)
+    if len(args) > 1:
+        logger.error('unexpected argument "%s"' % args[1])
+        parser.print_help()
+        sys.exit(1)
+
+    options_dict = vars(options)
+    do_update(**options_dict)
+
+
 if __name__ == "__main__":
     main()
diff --git a/layerindex/views.py b/layerindex/views.py
index 65a536a..c7c20b8 100644
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
+                    users = User.objects.filter(Q(groups__permissions=perm) | Q(user_permissions=perm) | Q(is_superuser=True) ).distinct()
                     for user in users:
                         if user.first_name:
                             user_name = user.first_name
@@ -178,8 +178,7 @@ def edit_layer_view(request, template_name, branch='master', slug=None):
                         from_email = settings.SUBMIT_EMAIL_FROM
                         to_email = user.email
                         text_content = plaintext.render(d)
-                        msg = EmailMessage(subject, text_content, from_email, [to_email])
-                        msg.send()
+                        tasks.send_email(subject, text_content, from_email, [to_email])
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
index 0ecf90b..94d698b 100644
--- a/settings.py
+++ b/settings.py
@@ -217,3 +217,7 @@ UPDATE_PURGE_DAYS = 30
 # Settings for layer submission feature
 SUBMIT_EMAIL_FROM = 'noreply@example.com'
 SUBMIT_EMAIL_SUBJECT = 'OE Layerindex layer submission'
+
+# RabbitMQ settings
+RABBIT_BROKER = 'amqp://'
+RABBIT_BACKEND = 'rpc://'
-- 
2.7.4


