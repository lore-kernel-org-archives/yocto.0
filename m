Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E74FE00DAF; Tue, 18 Oct 2016 20:57:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA5E3E00DAA
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 20:57:25 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 18 Oct 2016 20:57:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,364,1473145200"; d="scan'208";a="181294648"
Received: from yuan-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.158.98])
	by fmsmga004.fm.intel.com with ESMTP; 18 Oct 2016 20:57:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Oct 2016 16:56:34 +1300
Message-Id: <1476849395-1580-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [layerindex-web][PATCH 1/2] views: ensure we only show results once in recipe search
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
X-List-Received-Date: Wed, 19 Oct 2016 03:57:32 -0000

Usage of itertools.chain() that was introduced in
3155206e54413f72df3b3b41280eafd332a58ba4 in order to prioritise matches
in the recipe name resulted in recipes showing up twice in the results
if they matched in both the name and the recipe name. Use a custom
chaining function that skips duplicate results in order to fix this.

Fixes [YOCTO #10177].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/utils.py | 10 ++++++++++
 layerindex/views.py |  9 ++++-----
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index 484d3fe..e3be631 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -237,3 +237,13 @@ def lock_file(fn):
 
 def unlock_file(lock):
     fcntl.flock(lock, fcntl.LOCK_UN)
+
+def chain_unique(*iterables):
+    """Chain unique objects in a list of querysets, preserving order"""
+    seen = set()
+    for element in iterables:
+        for item in element:
+            k = item.id
+            if k not in seen:
+                seen.add(k)
+                yield item
diff --git a/layerindex/views.py b/layerindex/views.py
index 06045ae..3e78c58 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -12,7 +12,6 @@ from django.core.exceptions import PermissionDenied
 from django.template import RequestContext
 from layerindex.models import Branch, LayerItem, LayerMaintainer, LayerBranch, LayerDependency, LayerNote, Recipe, Machine, Distro, BBClass, BBAppend, RecipeChange, RecipeChangeset, ClassicRecipe
 from datetime import datetime
-from itertools import chain
 from django.views.generic import TemplateView, DetailView, ListView
 from django.views.generic.edit import CreateView, DeleteView, UpdateView
 from django.views.generic.base import RedirectView
@@ -27,6 +26,7 @@ from django.utils.decorators import method_decorator
 from django.contrib.auth.decorators import login_required
 from django.contrib import messages
 from reversion.models import Revision
+from . import utils
 from . import simplesearch
 import settings
 from django.dispatch import receiver
@@ -213,12 +213,11 @@ def bulk_change_edit_view(request, template_name, pk):
 def bulk_change_patch_view(request, pk):
     import os
     import os.path
-    from layerindex.utils import runcmd
     changeset = get_object_or_404(RecipeChangeset, pk=pk)
     # FIXME this couples the web server and machine running the update script together,
     # but given that it's a separate script the way is open to decouple them in future
     try:
-        ret = runcmd('%s bulkchange.py %d %s' % (sys.executable, int(pk), settings.TEMP_BASE_DIR), os.path.dirname(__file__))
+        ret = utils.runcmd('%s bulkchange.py %d %s' % (sys.executable, int(pk), settings.TEMP_BASE_DIR), os.path.dirname(__file__))
         if ret:
             fn = ret.splitlines()[-1].decode('utf-8')
             if os.path.exists(fn):
@@ -387,7 +386,7 @@ class RecipeSearchView(ListView):
             qs2 = init_qs.filter(entry_query).order_by(*order_by)
             qs2 = recipes_preferred_count(qs2)
 
-            qs = list(chain(qs1, qs2))
+            qs = list(utils.chain_unique(qs1, qs2))
         else:
             if 'q' in self.request.GET:
                 qs = init_qs.order_by('pn', 'layerbranch__layer')
@@ -739,7 +738,7 @@ class ClassicRecipeSearchView(RecipeSearchView):
             entry_query = simplesearch.get_query(query_string, ['summary', 'description'])
             qs2 = init_qs.filter(entry_query).order_by(*order_by)
 
-            qs = list(chain(qs1, qs2))
+            qs = list(utils.chain_unique(qs1, qs2))
         else:
             if 'q' in self.request.GET:
                 qs = init_qs.order_by('pn', 'layerbranch__layer')
-- 
2.5.5


