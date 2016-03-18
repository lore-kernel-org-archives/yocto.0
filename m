Return-Path: <elliot.smith@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFA24E00C71; Fri, 18 Mar 2016 09:12:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D8CBE00C2E
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 09:12:55 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2016 09:12:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,355,1455004800"; d="scan'208";a="766885948"
Received: from mjgolins-mobl.ger.corp.intel.com (HELO lp.ger.corp.intel.com)
	([10.252.9.188])
	by orsmga003.jf.intel.com with ESMTP; 18 Mar 2016 09:12:25 -0700
From: Elliot Smith <elliot.smith@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 18 Mar 2016 16:12:21 +0000
Message-Id: <1458317541-16592-1-git-send-email-elliot.smith@intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [PATCH][layerindex-web] search: only match pn against search string for recipe searches
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
X-List-Received-Date: Fri, 18 Mar 2016 16:12:56 -0000

Using the search box creates a query against the pns,
summaries, descriptions and filenames of recipes.
This results in a lot of spurious results for common terms
like "git" when performing a recipe search.

Reduce the search fields used to just the pn so that the search
will only return results where the recipe name matches.

[YOCTO #9159]

Signed-off-by: Elliot Smith <elliot.smith@intel.com>
---
 layerindex/views.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index 7e877ac..2dbde24 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -373,7 +373,7 @@ class RecipeSearchView(ListView):
         query_string = self.request.GET.get('q', '')
         init_qs = Recipe.objects.filter(layerbranch__branch__name=self.kwargs['branch'])
         if query_string.strip():
-            entry_query = simplesearch.get_query(query_string, ['pn', 'summary', 'description', 'filename'])
+            entry_query = simplesearch.get_query(query_string, ['pn'])
             qs = init_qs.filter(entry_query).order_by('pn', 'layerbranch__layer')
         else:
             if 'q' in self.request.GET:
@@ -689,7 +689,7 @@ class ClassicRecipeSearchView(RecipeSearchView):
         if category:
             init_qs = init_qs.filter(classic_category__icontains=category)
         if query_string.strip():
-            entry_query = simplesearch.get_query(query_string, ['pn', 'summary', 'description', 'filename'])
+            entry_query = simplesearch.get_query(query_string, ['pn'])
             qs = init_qs.filter(entry_query).order_by('pn', 'layerbranch__layer')
         else:
             if 'q' in self.request.GET:
-- 
1.9.3

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


