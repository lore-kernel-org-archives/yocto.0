Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F988E00546; Mon, 27 Feb 2017 17:25:52 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 392A9E007BA
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 17:25:50 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Feb 2017 17:25:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,216,1484035200"; d="scan'208";a="938780741"
Received: from skhalsa-mobl1.amr.corp.intel.com (HELO
	jalamego-MOBL2.amr.corp.intel.com) ([10.254.178.181])
	by orsmga003.jf.intel.com with ESMTP; 27 Feb 2017 17:25:49 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Feb 2017 19:25:33 -0600
Message-Id: <1488245135-7709-2-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488245135-7709-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1488245135-7709-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH 1/3] series.py: add patch and bundle edition actions to view
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
X-List-Received-Date: Tue, 28 Feb 2017 01:25:52 -0000

This change adds patch and bundle edition actions to the series
view.

[YOCTO # 10822]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/views/series.py | 88 ++++++++++++++++++++++++++++-------------------
 1 file changed, 52 insertions(+), 36 deletions(-)

diff --git a/patchwork/views/series.py b/patchwork/views/series.py
index 7645596..cb3b721 100644
--- a/patchwork/views/series.py
+++ b/patchwork/views/series.py
@@ -17,6 +17,7 @@
 # along with Patchwork; if not, write to the Free Software
 # Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 
+from django.http import HttpResponseForbidden
 from django.conf import settings
 from django.shortcuts import render, render_to_response
 from django.shortcuts import get_object_or_404, get_list_or_404
@@ -25,6 +26,7 @@ from patchwork.models import Patch, Project, Bundle
 from patchwork.models import Series, SeriesRevision, TestResult
 from patchwork.requestcontext import PatchworkRequestContext
 from patchwork.forms import PatchForm, CreateBundleForm
+import json
 
 
 class SeriesListView(View):
@@ -44,6 +46,9 @@ class SeriesView(View):
     def get(self, request, *args, **kwargs):
         series = get_object_or_404(Series, pk=kwargs['series'])
         revisions = get_list_or_404(SeriesRevision, series=series)
+        patchform = PatchForm(project=series.project)
+        createbundleform = CreateBundleForm()
+        bundles = Bundle.objects.filter(owner=request.user)
         for revision in revisions:
             revision.patch_list = revision.ordered_patches().\
                 select_related('state', 'submitter')
@@ -56,19 +61,20 @@ class SeriesView(View):
             'project': series.project,
             'cover_letter': revision.cover_letter,
             'revisions': revisions,
+            'patchform': patchform,
+            'createbundleform': createbundleform,
+            'bundles': bundles,
         })
 
     def post(self, request, *args, **kwargs):
         init_data = request.POST
-        pa_id = init_data.get('patch', None)
-        curr_rev = init_data.get('rev', None)
-        patch = get_object_or_404(Patch, id=pa_id)
+        patches = json.loads(init_data.get('patches'))
         series = get_object_or_404(Series, pk=kwargs['series'])
-        context = PatchworkRequestContext(request)
-        context.project = patch.project
-        editable = patch.is_editable(request.user)
-
         revisions = get_list_or_404(SeriesRevision, series=series)
+        context = PatchworkRequestContext(request)
+        context.project = series.project
+        form = None
+        createbundleform = None
         for revision in revisions:
             revision.patch_list = revision.ordered_patches().\
                 select_related('state', 'submitter')
@@ -76,11 +82,6 @@ class SeriesView(View):
                     .filter(revision=revision, patch=None) \
                     .order_by('test__name').select_related('test')
 
-        form = None
-        createbundleform = None
-
-        if editable:
-            form = PatchForm(instance=patch)
         if request.user.is_authenticated():
             createbundleform = CreateBundleForm()
 
@@ -90,42 +91,57 @@ class SeriesView(View):
                 action = action.lower()
 
             if action == 'createbundle':
-                bundle = Bundle(owner=request.user, project=patch.project)
+                bundle = Bundle(owner=request.user, project=series.project)
                 createbundleform = CreateBundleForm(instance=bundle,
                                                     data=request.POST)
                 if createbundleform.is_valid():
                     createbundleform.save()
-                    bundle.append_patch(patch)
-                    bundle.save()
-                    createbundleform = CreateBundleForm()
-                    context.add_message('Bundle %s created' % bundle.name)
 
             elif action == 'addtobundle':
                 bundle = get_object_or_404(
                     Bundle, id=request.POST.get('bundle_id'))
-                try:
-                    bundle.append_patch(patch)
-                    bundle.save()
-                    context.add_message('Patch added to bundle "%s"' %
-                                        bundle.name)
-                except Exception as ex:
-                    context.add_message("Couldn't add patch '%s' to bundle %s:\
- %s" % (patch.name, bundle.name, ex.message))
-
-            # all other actions require edit privs
-            elif not editable:
-                return HttpResponseForbidden()
-
-            elif action is None:
-                form = PatchForm(data=request.POST, instance=patch)
-                if form.is_valid():
-                    form.save()
-                    context.add_message('Patch ID: %s updated' % patch.pk)
+
+            for pa_id in patches:
+                patch = get_object_or_404(Patch, id=pa_id)
+                editable = patch.is_editable(request.user)
+
+                if editable:
+                    form = PatchForm(instance=patch)
+
+                if action == 'createbundle':
+                    if createbundleform.is_valid():
+                        bundle.append_patch(patch)
+                        bundle.save()
+
+                elif action == 'addtobundle':
+                    try:
+                        bundle.append_patch(patch)
+                        bundle.save()
+                        context.add_message('Patch %s added to bundle "%s"' %
+                                            (patch.pk, bundle.name))
+                    except Exception as ex:
+                        context.add_message('Couldn\'t add patch %s to bundle\
+ "%s": %s' % (patch.pk, bundle.name, ex.message))
+
+                # all other actions require edit privs
+                elif not editable:
+                    return HttpResponseForbidden()
+
+                elif action is None:
+                    form = PatchForm(data=request.POST, instance=patch)
+                    if form.is_valid():
+                        form.save()
+                        context.add_message('Patch ID: %s updated' % patch.pk)
+
+            if action == 'createbundle':
+                createbundleform.save()
+                createbundleform = CreateBundleForm()
+                context.add_message('Bundle %s created' % bundle.name)
 
         context['series'] = series
         context['patchform'] = form
         context['createbundleform'] = createbundleform
-        context['project'] = patch.project
+        context['project'] = series.project
         context['revisions'] = revisions
         context['test_results'] = TestResult.objects \
             .filter(revision=None, patch=patch) \
-- 
2.7.4


