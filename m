Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CED43E00C20; Tue, 15 Nov 2016 19:19:01 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9DDCE00B71
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 19:18:59 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 15 Nov 2016 19:18:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,497,1473145200"; d="scan'208";a="1059986013"
Received: from nnasirin-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com.fritz.box) ([10.255.185.211])
	by orsmga001.jf.intel.com with ESMTP; 15 Nov 2016 19:18:57 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 16 Nov 2016 16:18:34 +1300
Message-Id: <1479266314-8574-4-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1479266314-8574-1-git-send-email-paul.eggleton@linux.intel.com>
References: <1479266314-8574-1-git-send-email-paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 4/4] views: support querying class inheritance
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
X-List-Received-Date: Wed, 16 Nov 2016 03:19:01 -0000

It's a little crude and certainly not optimal performance-wise, but we
can support querying for recipes that inherit a particular class without
too much trouble. This allows you to add "inherits:cmake" to the query
and have it return only recipes that inherit the cmake class. You can
use more than one inherits: item to filter down to recipes that inherit
all of the specified classes.

Note: this does not otherwise change the behaviour of specifying
multiple words - all of the words other than those that start with
"inherits:" are treated as part of a single phrase that will be searched
for - not separate keywords.

Fixes [YOCTO #9879].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/views.py | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/layerindex/views.py b/layerindex/views.py
index 0933bf0..ae0220b 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -376,6 +376,22 @@ class RecipeSearchView(ListView):
         _check_url_branch(self.kwargs)
         query_string = self.request.GET.get('q', '')
         init_qs = Recipe.objects.filter(layerbranch__branch__name=self.kwargs['branch'])
+
+        # Support slightly crude search on inherits field
+        query_items = query_string.split()
+        inherits = []
+        query_terms = []
+        for item in query_items:
+            if item.startswith('inherits:'):
+                inherits.append(item.split(':')[1])
+            else:
+                query_terms.append(item)
+        if inherits:
+            # FIXME This is a bit ugly, perhaps we should consider having this as a one-many relationship instead
+            for inherit in inherits:
+                init_qs = init_qs.filter(Q(inherits=inherit) | Q(inherits__startswith=inherit + ' ') | Q(inherits__endswith=' ' + inherit) | Q(inherits__contains=' %s ' % inherit))
+            query_string = ' '.join(query_terms)
+
         if query_string.strip():
             order_by = ('pn', 'layerbranch__layer')
 
-- 
2.5.5


