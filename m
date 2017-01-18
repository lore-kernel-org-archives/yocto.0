Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6541E00510; Wed, 18 Jan 2017 14:32:01 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30403E0050B
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 14:31:56 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Jan 2017 14:31:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,250,1477983600"; d="scan'208";a="32389514"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.5.142])
	by orsmga002.jf.intel.com with ESMTP; 18 Jan 2017 14:31:49 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 18 Jan 2017 16:31:38 -0600
Message-Id: <1484778698-14581-3-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1484778698-14581-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1484778698-14581-1-git-send-email-jose.a.lamego@linux.intel.com>
Cc: Alex Franco <alejandro.franco@linux.intel.com>
Subject: [layerindex-web][PATCH 2/2] views.py: Consider layer name in recipe search
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
X-List-Received-Date: Wed, 18 Jan 2017 22:32:01 -0000

From: Alex Franco <alejandro.franco@linux.intel.com>

Recipe search cannot be narrowed to a specific layer, producing
unnecessary results.

This change allows including a layers name when searching for recipes to
narrow the yielded results by adding a layer name to the simplesearch.getquery
call in the recipe search view.

[YOCTO #6618]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 layerindex/views.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index 03fadbb..5db6fbc 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -406,7 +406,8 @@ class RecipeSearchView(ListView):
             qs0 = init_qs.filter(pn=query_string).order_by(*order_by)
             qs0 = recipes_preferred_count(qs0)
 
-            entry_query = simplesearch.get_query(query_string, ['pn'])
+            entry_query = simplesearch.get_query(
+                query_string, ['pn', 'layerbranch__layer__name'])
             qs1 = init_qs.filter(entry_query).order_by(*order_by)
             qs1 = recipes_preferred_count(qs1)
 
-- 
1.9.1


