Return-Path: <alejandro.franco@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7ECEE00A26; Thu, 29 Oct 2015 17:06:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53506E00985
	for <yocto@yoctoproject.org>; Thu, 29 Oct 2015 17:06:25 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Oct 2015 17:05:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,216,1444719600"; d="scan'208";a="838425853"
Received: from afshjern.zpn.intel.com ([10.219.5.147])
	by orsmga002.jf.intel.com with ESMTP; 29 Oct 2015 17:05:58 -0700
From: Alex Franco <alejandro.franco@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Oct 2015 18:06:38 -0600
Message-Id: <1446163599-25855-2-git-send-email-alejandro.franco@linux.intel.com>
X-Mailer: git-send-email 2.6.1
In-Reply-To: <1446163599-25855-1-git-send-email-alejandro.franco@linux.intel.com>
References: <1446163599-25855-1-git-send-email-alejandro.franco@linux.intel.com>
Cc: paul.eggleton@intel.com
Subject: [PATCH 1/2] [layerindex-web] views.py: single result redirect
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
X-List-Received-Date: Fri, 30 Oct 2015 00:06:26 -0000

When the recipe search returns a single result, redirect to it
instead of showing the full result list view.

[YOCTO #6618]

Signed-off-by: Alex Franco <alejandro.franco@linux.intel.com>
---
 layerindex/views.py | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/layerindex/views.py b/layerindex/views.py
index 7e877ac..8be3311 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -368,6 +368,12 @@ class RecipeSearchView(ListView):
     context_object_name = 'recipe_list'
     paginate_by = 50
 
+    def render_to_response(self, context, **kwargs):
+        if len(self.object_list) == 1:
+            return HttpResponseRedirect("/layerindex/recipe/%s/" % self.object_list[0].id)
+        else:
+            return super(ListView, self).render_to_response(context, **kwargs)
+
     def get_queryset(self):
         _check_url_branch(self.kwargs)
         query_string = self.request.GET.get('q', '')
-- 
2.6.1


