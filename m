Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B576E00CA1; Sun, 20 May 2018 20:04:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09C2FE00A51
	for <yocto@yoctoproject.org>; Sun, 20 May 2018 20:04:48 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 May 2018 20:04:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,425,1520924400"; d="scan'208";a="225835566"
Received: from syadandx-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.168.242])
	by orsmga005.jf.intel.com with ESMTP; 20 May 2018 20:04:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 21 May 2018 15:04:09 +1200
Message-Id: <e9cff109996aa016b6d90a0d6c46b2019a8c074d.1526871767.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <cover.1526871767.git.paul.eggleton@linux.intel.com>
References: <cover.1526871767.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 1/6] settings: allow disabling layer publishing emails
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
X-List-Received-Date: Mon, 21 May 2018 03:04:50 -0000

If you're running a testing / internal instance then you really don't
want to be emailing maintainers on publish, so provide a setting you can
use to disable that.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/views.py | 66 +++++++++++++++++++++++++++--------------------------
 settings.py         |  3 +++
 2 files changed, 37 insertions(+), 32 deletions(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index a905c347..d02e4f91 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -259,38 +259,40 @@ def _check_url_branch(kwargs):
 def publish_view(request, name):
     if not (request.user.is_authenticated() and request.user.has_perm('layerindex.publish_layer')):
         raise PermissionDenied
-    layeritem = get_object_or_404(LayerItem, name=name)
-    layerbranch = get_object_or_404(LayerBranch, layer=layeritem)
-    layer_url = request.build_absolute_uri(reverse('layer_item', args=(layerbranch.branch, layeritem.name)))
-    maintainers = get_list_or_404(LayerMaintainer, layerbranch=layerbranch)
-    from_email = settings.SUBMIT_EMAIL_FROM
-    subjecttext = get_template('layerindex/publishemailsubject.txt')
-    bodytext = get_template('layerindex/publishemail.txt')
-    maintainer_names = [m.name for m in maintainers]
-    # find appropriate help contact
-    help_contact = None
-    for user in User.objects.all():
-        if user.username != 'root' and (user.is_staff or user.is_superuser) and user.is_active:
-            help_contact = user
-            break
-
-    # create subject from subject template
-    d = {
-        'layer_name': layeritem.name,
-        'site_name': request.META['HTTP_HOST'],
-    }
-    subject = subjecttext.render(d).rstrip()
-
-    #create body from body template
-    d = {
-        'maintainers': maintainer_names,
-        'layer_name': layeritem.name,
-        'layer_url': layer_url,
-        'help_contact': help_contact,
-    }
-    body = bodytext.render(d)
-
-    tasks.send_email.apply_async((subject, body, from_email, [m.email for m in maintainers]))
+
+    if getattr(settings, 'SEND_PUBLISH_EMAIL', True):
+        layeritem = get_object_or_404(LayerItem, name=name)
+        layerbranch = get_object_or_404(LayerBranch, layer=layeritem)
+        layer_url = request.build_absolute_uri(reverse('layer_item', args=(layerbranch.branch, layeritem.name)))
+        maintainers = get_list_or_404(LayerMaintainer, layerbranch=layerbranch)
+        from_email = settings.SUBMIT_EMAIL_FROM
+        subjecttext = get_template('layerindex/publishemailsubject.txt')
+        bodytext = get_template('layerindex/publishemail.txt')
+        maintainer_names = [m.name for m in maintainers]
+        # find appropriate help contact
+        help_contact = None
+        for user in User.objects.all():
+            if user.username != 'root' and (user.is_staff or user.is_superuser) and user.is_active:
+                help_contact = user
+                break
+
+        # create subject from subject template
+        d = {
+            'layer_name': layeritem.name,
+            'site_name': request.META['HTTP_HOST'],
+        }
+        subject = subjecttext.render(d).rstrip()
+
+        #create body from body template
+        d = {
+            'maintainers': maintainer_names,
+            'layer_name': layeritem.name,
+            'layer_url': layer_url,
+            'help_contact': help_contact,
+        }
+        body = bodytext.render(d)
+
+        tasks.send_email.apply_async((subject, body, from_email, [m.email for m in maintainers]))
 
     return _statuschange(request, name, 'P')
 
diff --git a/settings.py b/settings.py
index c3075a5e..3d70aaa5 100644
--- a/settings.py
+++ b/settings.py
@@ -227,6 +227,9 @@ FORCE_REVIEW_HTTPS = False
 SUBMIT_EMAIL_FROM = 'noreply@example.com'
 SUBMIT_EMAIL_SUBJECT = 'OE Layerindex layer submission'
 
+# Send email to maintainer(s) when their layer is published
+SEND_PUBLISH_EMAIL = True
+
 # RabbitMQ settings
 RABBIT_BROKER = 'amqp://'
 RABBIT_BACKEND = 'rpc://'
-- 
2.14.3


