Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C15DE00CA2; Thu, 12 Oct 2017 11:14:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3CE7E008A4
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 11:14:15 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Oct 2017 11:14:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,367,1503385200"; d="scan'208";a="159842626"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga005.jf.intel.com with ESMTP; 12 Oct 2017 11:14:14 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org,
	paul.eggleton@linux.intel.com
Date: Thu, 12 Oct 2017 11:12:39 -0700
Message-Id: <6b3b56f9ce9525bb2506f756f9a313cd164cba7d.1507831664.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1507831664.git.amanda.r.brindle@intel.com>
References: <cover.1507831664.git.amanda.r.brindle@intel.com>
Cc: Amanda Brindle <amanda.r.brindle@intel.com>
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
X-List-Received-Date: Thu, 12 Oct 2017 18:14:16 -0000

When publishing a layer, send an email notification to all of that
layer's maintainers.

Fixes [YOCTO #11208]

Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
---
 layerindex/views.py                          | 22 +++++++++++++++++++++-
 templates/layerindex/publishemail.txt        |  7 +++++++
 templates/layerindex/publishemailsubject.txt |  1 +
 3 files changed, 29 insertions(+), 1 deletion(-)
 create mode 100644 templates/layerindex/publishemail.txt
 create mode 100644 templates/layerindex/publishemailsubject.txt

diff --git a/layerindex/views.py b/layerindex/views.py
index bcf6671..35949dd 100644
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
@@ -261,6 +261,26 @@ def _check_url_branch(kwargs):
 def publish(request, name):
     if not (request.user.is_authenticated() and request.user.has_perm('layerindex.publish_layer')):
         raise PermissionDenied
+    from_email = settings.SUBMIT_EMAIL_FROM
+    plaintext = get_template('layerindex/publishemail.txt')
+    subjecttext = get_template('layerindex/publishemailsubject.txt')
+    e = Context({
+        'layer_name': layeritem.name,
+        'site_name': request.META['HTTP_HOST'],
+    })
+    subject = subjecttext.render(e).rstrip()
+    layeritem = get_object_or_404(LayerItem, name=name)
+    layerbranch = get_object_or_404(LayerBranch, layer=layeritem)
+    maintainers = get_list_or_404(LayerMaintainer, layerbranch=layerbranch)
+    layer_url = request.build_absolute_uri(reverse('layer_item', args=(layerbranch.branch, layeritem.name)))
+    for m in maintainers:
+        d = Context({
+            'maintainer_name': m.name,
+            'layer_name': layeritem.name,
+            'layer_url': layer_url,
+        })
+        text_content = plaintext.render(d)
+        tasks.send_email.apply_async((subject, text_content, from_email, [m.email]))
     return _statuschange(request, name, 'P')
 
 def _statuschange(request, name, newstatus):
diff --git a/templates/layerindex/publishemail.txt b/templates/layerindex/publishemail.txt
new file mode 100644
index 0000000..2500bff
--- /dev/null
+++ b/templates/layerindex/publishemail.txt
@@ -0,0 +1,7 @@
+Hi {{ maintainer_name }},
+
+You are listed as a maintainer for the new layer, {{ layer_name }}. This layer has been published. You can view it at the following URL:
+
+ {{ layer_url }}
+
+Thanks!
diff --git a/templates/layerindex/publishemailsubject.txt b/templates/layerindex/publishemailsubject.txt
new file mode 100644
index 0000000..a46eaf2
--- /dev/null
+++ b/templates/layerindex/publishemailsubject.txt
@@ -0,0 +1 @@
+{{layer_name }} was published to {{site_name}}
-- 
2.7.4


