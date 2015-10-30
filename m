Return-Path: <alejandro.franco@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87EBAE00AD5; Thu, 29 Oct 2015 17:06:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A010E00A26
	for <yocto@yoctoproject.org>; Thu, 29 Oct 2015 17:06:25 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Oct 2015 17:05:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,216,1444719600"; d="scan'208";a="838425860"
Received: from afshjern.zpn.intel.com ([10.219.5.147])
	by orsmga002.jf.intel.com with ESMTP; 29 Oct 2015 17:05:59 -0700
From: Alex Franco <alejandro.franco@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Oct 2015 18:06:39 -0600
Message-Id: <1446163599-25855-3-git-send-email-alejandro.franco@linux.intel.com>
X-Mailer: git-send-email 2.6.1
In-Reply-To: <1446163599-25855-1-git-send-email-alejandro.franco@linux.intel.com>
References: <1446163599-25855-1-git-send-email-alejandro.franco@linux.intel.com>
Cc: paul.eggleton@intel.com
Subject: [PATCH 2/2] [layerindex-web] views.py: layer in recipe search
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
X-List-Received-Date: Fri, 30 Oct 2015 00:06:29 -0000

Take layer name into account when searching for recipes. This is
accomplished by adding a layer name to the simplesearch.getquery
call in the recipe search view.

[YOCTO #6618]

Signed-off-by: Alex Franco <alejandro.franco@linux.intel.com>
---
 layerindex/views.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index 8be3311..c85940b 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -379,7 +379,7 @@ class RecipeSearchView(ListView):
         query_string = self.request.GET.get('q', '')
         init_qs = Recipe.objects.filter(layerbranch__branch__name=self.kwargs['branch'])
         if query_string.strip():
-            entry_query = simplesearch.get_query(query_string, ['pn', 'summary', 'description', 'filename'])
+            entry_query = simplesearch.get_query(query_string, ['pn', 'summary', 'description', 'filename', 'layerbranch__layer__name'])
             qs = init_qs.filter(entry_query).order_by('pn', 'layerbranch__layer')
         else:
             if 'q' in self.request.GET:
-- 
2.6.1


