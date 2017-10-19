Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A96B9E00D44; Thu, 19 Oct 2017 14:27:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F28E2E00D44
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 14:27:42 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP; 19 Oct 2017 14:27:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,403,1503385200"; d="scan'208";a="162563358"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga005.jf.intel.com with ESMTP; 19 Oct 2017 14:27:41 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Oct 2017 14:27:27 -0700
Message-Id: <d1bf6fc58492aed0b1a59f3e92d8c4d5dd317ead.1508448262.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1508448262.git.amanda.r.brindle@intel.com>
References: <cover.1508448262.git.amanda.r.brindle@intel.com>
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [PATCH 1/1] Send email notification on publication
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
X-List-Received-Date: Thu, 19 Oct 2017 21:27:43 -0000

When publishing a layer, send an email notification to all of that
layer's maintainers.

Fixes [YOCTO #11208]

Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
---
 layerindex/views.py                          | 45 +++++++++++++++++++++++++++-
 templates/layerindex/publishemail.txt        |  9 ++++++
 templates/layerindex/publishemailsubject.txt |  1 +
 3 files changed, 54 insertions(+), 1 deletion(-)
 create mode 100644 templates/layerindex/publishemail.txt
 create mode 100644 templates/layerindex/publishemailsubject.txt

diff --git a/layerindex/views.py b/layerindex/views.py
index bcf6671..a4cd05f 100644
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
@@ -261,6 +261,49 @@ def _check_url_branch(kwargs):
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
+    maintainer_names = ""
+    plural = ""
+
+    # compile list of maintainer names
+    if len(maintainers) > 1:
+        maintainer_names = ", ".join(m.name for m in maintainers[:-1])
+        if len(maintainers) > 2:
+            maintainer_names += ","
+        maintainer_names += " and " + maintainers[-1].name
+        plural = "s"
+    else:
+        maintainer_names = maintainers[0].name
+
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
+    d = Context({
+        'maintainer_names': maintainer_names,
+        'plural': plural,
+        'layer_name': layeritem.name,
+        'layer_url': layer_url,
+        'help_contact': help_contact,
+    })
+    body = bodytext.render(d)
+    tasks.send_email.apply_async((subject, body, from_email, [m.email for m in maintainers]))
+
     return _statuschange(request, name, 'P')
 
 def _statuschange(request, name, newstatus):
diff --git a/templates/layerindex/publishemail.txt b/templates/layerindex/publishemail.txt
new file mode 100644
index 0000000..6789905
--- /dev/null
+++ b/templates/layerindex/publishemail.txt
@@ -0,0 +1,9 @@
+Hi {{ maintainer_names }},
+
+You are listed as the maintainer{{plural}} for the new layer, {{ layer_name }}. This layer has now been published. You can view it at the following URL:
+
+ {{ layer_url }}
+
+If you need to make changes to this layer's entry in the index in the future, create an account (using this email address) if you haven't already, and you should then be able to click on "Edit layer" on the layer's detail page and make the desired changes. If you need any assistance please contact {{ help_contact.email }}.
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


