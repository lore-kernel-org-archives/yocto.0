Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8092E00510; Wed, 18 Jan 2017 14:31:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CF26E004A0
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 14:31:56 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Jan 2017 14:31:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,250,1477983600"; d="scan'208";a="32389499"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.5.142])
	by orsmga002.jf.intel.com with ESMTP; 18 Jan 2017 14:31:48 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 18 Jan 2017 16:31:37 -0600
Message-Id: <1484778698-14581-2-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1484778698-14581-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1484778698-14581-1-git-send-email-jose.a.lamego@linux.intel.com>
Cc: Alex Franco <alejandro.franco@linux.intel.com>
Subject: [layerindex-web][PATCH 1/2] views.py: Redirect to recipe details for single results
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
X-List-Received-Date: Wed, 18 Jan 2017 22:31:59 -0000

From: Alex Franco <alejandro.franco@linux.intel.com>

When a recipe search returns only one result, clicking the single
result at the results view is still required to view further
recipe detail.

This change automatically redirects to the recipe details view
when the recipe search returns a single result.

[YOCTO #6618]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 layerindex/views.py | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/layerindex/views.py b/layerindex/views.py
index 0f73e93..03fadbb 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -372,6 +372,14 @@ class RecipeSearchView(ListView):
     context_object_name = 'recipe_list'
     paginate_by = 50
 
+    def render_to_response(self, context, **kwargs):
+        if len(self.object_list) == 1:
+            return HttpResponseRedirect("/layerindex/recipe/%s/"
+                                        % self.object_list[0].id)
+        else:
+            return super(ListView, self).render_to_response(context,
+                                                            **kwargs)
+
     def get_queryset(self):
         _check_url_branch(self.kwargs)
         query_string = self.request.GET.get('q', '')
-- 
1.9.1


