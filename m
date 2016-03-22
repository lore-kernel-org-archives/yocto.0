Return-Path: <elliot.smith@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73C74E009C3; Tue, 22 Mar 2016 08:56:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08640E00509
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 08:52:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP; 22 Mar 2016 08:52:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,377,1455004800"; d="scan'208";a="929485261"
Received: from ipoconno-mobl2.ger.corp.intel.com (HELO lp.ger.corp.intel.com)
	([10.252.18.73])
	by fmsmga001.fm.intel.com with ESMTP; 22 Mar 2016 08:52:48 -0700
From: Elliot Smith <elliot.smith@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Mar 2016 15:52:41 +0000
Message-Id: <1458661961-32285-1-git-send-email-elliot.smith@intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [PATCH][layerindex-web][v2] search: show matches against pn at top of recipe search results
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
X-List-Received-Date: Tue, 22 Mar 2016 15:56:36 -0000

Using the search box creates a query against the pns,
summaries, descriptions and filenames of recipes.
This results in a lot of spurious results for common terms
like "git" when performing a recipe search.

Make the results more useful by:

* Only searching against pn, description and summary (not file).
* Putting matches against pn at the top of the list, followed by
matches against description and summary.

[YOCTO #9159]

Signed-off-by: Elliot Smith <elliot.smith@intel.com>
---
 layerindex/views.py | 28 +++++++++++++++++++++++-----
 1 file changed, 23 insertions(+), 5 deletions(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index 7e877ac..898a7c4 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -11,6 +11,7 @@ from django.core.exceptions import PermissionDenied
 from django.template import RequestContext
 from layerindex.models import Branch, LayerItem, LayerMaintainer, LayerBranch, LayerDependency, LayerNote, Recipe, Machine, BBClass, BBAppend, RecipeChange, RecipeChangeset, ClassicRecipe
 from datetime import datetime
+from itertools import chain
 from django.views.generic import TemplateView, DetailView, ListView
 from django.views.generic.edit import CreateView, DeleteView, UpdateView
 from django.views.generic.base import RedirectView
@@ -373,18 +374,28 @@ class RecipeSearchView(ListView):
         query_string = self.request.GET.get('q', '')
         init_qs = Recipe.objects.filter(layerbranch__branch__name=self.kwargs['branch'])
         if query_string.strip():
-            entry_query = simplesearch.get_query(query_string, ['pn', 'summary', 'description', 'filename'])
-            qs = init_qs.filter(entry_query).order_by('pn', 'layerbranch__layer')
+            order_by = ('pn', 'layerbranch__layer')
+
+            entry_query = simplesearch.get_query(query_string, ['pn'])
+            qs1 = init_qs.filter(entry_query).order_by(*order_by)
+            qs1 = recipes_preferred_count(qs1)
+
+            entry_query = simplesearch.get_query(query_string, ['description', 'summary'])
+            qs2 = init_qs.filter(entry_query).order_by(*order_by)
+            qs2 = recipes_preferred_count(qs2)
+
+            qs = list(chain(qs1, qs2))
         else:
             if 'q' in self.request.GET:
                 qs = init_qs.order_by('pn', 'layerbranch__layer')
+                qs = list(recipes_preferred_count(qs))
             else:
                 # It's a bit too slow to return all records by default, and most people
                 # won't actually want that (if they do they can just hit the search button
                 # with no query string)
                 return Recipe.objects.none()
 
-        return recipes_preferred_count(qs)
+        return qs
 
     def get_context_data(self, **kwargs):
         context = super(RecipeSearchView, self).get_context_data(**kwargs)
@@ -689,8 +700,15 @@ class ClassicRecipeSearchView(RecipeSearchView):
         if category:
             init_qs = init_qs.filter(classic_category__icontains=category)
         if query_string.strip():
-            entry_query = simplesearch.get_query(query_string, ['pn', 'summary', 'description', 'filename'])
-            qs = init_qs.filter(entry_query).order_by('pn', 'layerbranch__layer')
+            order_by = ('pn', 'layerbranch__layer')
+
+            entry_query = simplesearch.get_query(query_string, ['pn'])
+            qs1 = init_qs.filter(entry_query).order_by(*order_by)
+
+            entry_query = simplesearch.get_query(query_string, ['summary', 'description'])
+            qs2 = init_qs.filter(entry_query).order_by(*order_by)
+
+            qs = list(chain(qs1, qs2))
         else:
             if 'q' in self.request.GET:
                 qs = init_qs.order_by('pn', 'layerbranch__layer')
-- 
Elliot Smith
Software Engineer
Intel OTC

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


