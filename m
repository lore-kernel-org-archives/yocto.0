Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8102FE00D0D; Tue, 24 Oct 2017 14:50:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A53EE00D34
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 14:50:16 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Oct 2017 14:50:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,430,1503385200"; d="scan'208";a="164502335"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga005.jf.intel.com with ESMTP; 24 Oct 2017 14:50:15 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Oct 2017 14:49:42 -0700
Message-Id: <a2a29050d3b05b61ce7ef1c1d46fce40f1dbe7d1.1508881202.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1508881202.git.amanda.r.brindle@intel.com>
References: <cover.1508881202.git.amanda.r.brindle@intel.com>
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex-web][patch v3 1/1] Send email notification on publication
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
X-List-Received-Date: Tue, 24 Oct 2017 21:50:19 -0000

When publishing a layer, send an email notification to all of that
layer's maintainers.

Fixes [YOCTO #11208]

Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
---
 layerindex/views.py                          | 34 +++++++++++++++++++++++++++-
 templates/layerindex/publishemail.txt        |  9 ++++++++
 templates/layerindex/publishemailsubject.txt |  1 +
 3 files changed, 43 insertions(+), 1 deletion(-)
 create mode 100644 templates/layerindex/publishemail.txt
 create mode 100644 templates/layerindex/publishemailsubject.txt

diff --git a/layerindex/views.py b/layerindex/views.py
index bcf6671..095f428 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -5,7 +5,7 @@
 # Licensed under the MIT license, see COPYING.MIT for details
 
 import sys
-from django.shortcuts import get_object_or_404, render
+from django.shortcuts import get_object_or_404, get_list_or_404, render
 from django.http import HttpResponse, HttpResponseRedirect, HttpResponseForbidden, Http404
 from django.core.urlresolvers import reverse, reverse_lazy, resolve
 from django.core.exceptions import PermissionDenied
@@ -261,6 +261,38 @@ def _check_url_branch(kwargs):
 def publish(request, name):
     if not (request.user.is_authenticated() and request.user.has_perm('layerindex.publish_layer')):
         raise PermissionDenied
+    layeritem = get_object_or_404(LayerItem, name=name)
+    layerbranch = get_object_or_404(LayerBranch, layer=layeritem)
+    layer_url = request.build_absolute_uri(reverse('layer_item', args=(layerbranch.branch, layeritem.name)))
+    maintainers = get_list_or_404(LayerMaintainer, layerbranch=layerbranch)
+    from_email = settings.SUBMIT_EMAIL_FROM
+    subjecttext = get_template('layerindex/publishemailsubject.txt')
+    bodytext = get_template('layerindex/publishemail.txt')
+    maintainer_names = [m.name for m in maintainers]
+    # find appropriate help contact
+    for user in User.objects.all():
+        if user.username != 'root' and user.is_active:
+            help_contact = user
+            break
+
+    # create subject from subject template
+    d = Context({
+        'layer_name': layeritem.name,
+        'site_name': request.META['HTTP_HOST'],
+    })
+    subject = subjecttext.render(d).rstrip()
+
+    #create body from body template
+    d = Context({
+        'maintainers': maintainer_names,
+        'layer_name': layeritem.name,
+        'layer_url': layer_url,
+        'help_contact': help_contact,
+    })
+    body = bodytext.render(d)
+
+    tasks.send_email.apply_async((subject, body, from_email, [m.email for m in maintainers]))
+
     return _statuschange(request, name, 'P')
 
 def _statuschange(request, name, newstatus):
diff --git a/templates/layerindex/publishemail.txt b/templates/layerindex/publishemail.txt
new file mode 100644
index 0000000..5d703d8
--- /dev/null
+++ b/templates/layerindex/publishemail.txt
@@ -0,0 +1,9 @@
+Hi {{ maintainers|slice:":-1"|join:", "}}{% if maintainers|length > 2 %},{% endif %}{% if maintainers|length > 1 %} and {% endif %}{{ maintainers|last }},
+
+You are listed as the {% if maintainers|length > 1 %}maintainers{% else %}maintainer{% endif %} for the new layer, {{ layer_name }}. This layer has now been published. You can view it at the following URL:
+
+ {{ layer_url }}
+
+If you need to make changes to this layer's entry in the index in the future, create an account (using this email address) if you haven't already, and you should then be able to click on "Edit layer" on the layer's detail page and make the desired changes. If you need any assistance please contact {% if help_contact.first_name and help_contact.last_name %}{{ help_contact.first_name }} {{ help_contact.last_name}}{% else %}{{ help_contact.username }}{% endif %} <{{ help_contact.email }}>.
+
+Thanks!
diff --git a/templates/layerindex/publishemailsubject.txt b/templates/layerindex/publishemailsubject.txt
new file mode 100644
index 0000000..1d49ea7
--- /dev/null
+++ b/templates/layerindex/publishemailsubject.txt
@@ -0,0 +1 @@
+{{site_name}}: {{layer_name }} published
-- 
2.7.4


