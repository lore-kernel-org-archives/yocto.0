Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F2A6E0082E; Tue,  7 Feb 2017 12:18:24 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49DF5E006C6
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 12:18:22 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP; 07 Feb 2017 12:18:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,346,1477983600"; d="scan'208";a="62325667"
Received: from unknown (HELO jalamego-MOBL2.zpn.intel.com) ([10.219.128.137])
	by fmsmga005.fm.intel.com with ESMTP; 07 Feb 2017 12:18:21 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  7 Feb 2017 14:17:57 -0600
Message-Id: <1486498677-6355-3-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1486498677-6355-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1485819090-16001-1-git-send-email-jose.a.lamego@linux.intel.com>
	<1486498677-6355-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH v2 2/2] series.py: Add POST call
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
X-List-Received-Date: Tue, 07 Feb 2017 20:18:24 -0000

Current series view is missing a POST call, avoiding users to update
or edit patch status or bundles.

This change adds POST call to series view, including the target
patch id, which is taken from request context.

[YOCTO #10973]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/views/series.py | 83 +++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 81 insertions(+), 2 deletions(-)

diff --git a/patchwork/views/series.py b/patchwork/views/series.py
index 1c14074..5fe8a74 100644
--- a/patchwork/views/series.py
+++ b/patchwork/views/series.py
@@ -18,9 +18,13 @@
 # Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 
 from django.conf import settings
-from django.shortcuts import render, get_object_or_404, get_list_or_404
+from django.shortcuts import render, render_to_response
+from django.shortcuts import get_object_or_404, get_list_or_404
 from django.views.generic import View
-from patchwork.models import Project, Series, SeriesRevision, TestResult
+from patchwork.models import Patch, Project, Bundle,
+from patchwork.models import Series, SeriesRevision, TestResult
+from patchwork.requestcontext import PatchworkRequestContext
+from patchwork.forms import PatchForm, CreateBundleForm
 
 
 class SeriesListView(View):
@@ -53,3 +57,78 @@ class SeriesView(View):
             'cover_letter': revision.cover_letter,
             'revisions': revisions,
         })
+
+    def post(self, request, *args, **kwargs):
+        init_data = request.POST
+        pa_id = init_data.get('patch', None)
+        curr_rev = init_data.get('rev', None)
+        patch = get_object_or_404(Patch, id=pa_id)
+        series = get_object_or_404(Series, pk=kwargs['series'])
+        context = PatchworkRequestContext(request)
+        context.project = patch.project
+        editable = patch.is_editable(request.user)
+
+        revisions = get_list_or_404(SeriesRevision, series=series)
+        for revision in revisions:
+            revision.patch_list = revision.ordered_patches().\
+                select_related('state', 'submitter')
+            revision.test_results = TestResult.objects \
+                    .filter(revision=revision, patch=None) \
+                    .order_by('test__name').select_related('test')
+
+        form = None
+        createbundleform = None
+
+        if editable:
+            form = PatchForm(instance=patch)
+        if request.user.is_authenticated():
+            createbundleform = CreateBundleForm()
+
+        if request.method == 'POST':
+            action = request.POST.get('action', None)
+            if action:
+                action = action.lower()
+
+            if action == 'createbundle':
+                bundle = Bundle(owner=request.user, project=patch.project)
+                createbundleform = CreateBundleForm(instance=bundle,
+                                                    data=request.POST)
+                if createbundleform.is_valid():
+                    createbundleform.save()
+                    bundle.append_patch(patch)
+                    bundle.save()
+                    createbundleform = CreateBundleForm()
+                    context.add_message('Bundle %s created' % bundle.name)
+
+            elif action == 'addtobundle':
+                bundle = get_object_or_404(
+                    Bundle, id=request.POST.get('bundle_id'))
+                try:
+                    bundle.append_patch(patch)
+                    bundle.save()
+                    context.add_message('Patch added to bundle "%s"' %
+                                        bundle.name)
+                except Exception as ex:
+                    context.add_message("Couldn't add patch '%s' to bundle %s:\
+ %s" % (patch.name, bundle.name, ex.message))
+
+            # all other actions require edit privs
+            elif not editable:
+                return HttpResponseForbidden()
+
+            elif action is None:
+                form = PatchForm(data=request.POST, instance=patch)
+                if form.is_valid():
+                    form.save()
+                    context.add_message('Patch ID: %s updated' % patch.pk)
+
+        context['series'] = series
+        context['patchform'] = form
+        context['createbundleform'] = createbundleform
+        context['project'] = patch.project
+        context['revisions'] = revisions
+        context['test_results'] = TestResult.objects \
+            .filter(revision=None, patch=patch) \
+            .order_by('test__name').select_related('test')
+
+        return render_to_response('patchwork/series.html', context)
-- 
1.9.1


