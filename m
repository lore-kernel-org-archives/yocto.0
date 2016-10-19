Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9DC9E00DB1; Tue, 18 Oct 2016 20:57:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBC62E00DAB
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 20:57:28 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 18 Oct 2016 20:57:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,364,1473145200"; d="scan'208";a="181294654"
Received: from yuan-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.158.98])
	by fmsmga004.fm.intel.com with ESMTP; 18 Oct 2016 20:57:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Oct 2016 16:56:35 +1300
Message-Id: <1476849395-1580-2-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1476849395-1580-1-git-send-email-paul.eggleton@linux.intel.com>
References: <1476849395-1580-1-git-send-email-paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/2] views: ensure exact matches on name are shown first in recipe search
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

Improves slightly on 3155206e54413f72df3b3b41280eafd332a58ba4 by doing
an exact match on name and showing that first - now when you search for
"git" you really do get the git recipe first in the list.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/views.py | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index 3e78c58..7045a12 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -378,6 +378,9 @@ class RecipeSearchView(ListView):
         if query_string.strip():
             order_by = ('pn', 'layerbranch__layer')
 
+            qs0 = init_qs.filter(pn=query_string).order_by(*order_by)
+            qs0 = recipes_preferred_count(qs0)
+
             entry_query = simplesearch.get_query(query_string, ['pn'])
             qs1 = init_qs.filter(entry_query).order_by(*order_by)
             qs1 = recipes_preferred_count(qs1)
@@ -386,7 +389,7 @@ class RecipeSearchView(ListView):
             qs2 = init_qs.filter(entry_query).order_by(*order_by)
             qs2 = recipes_preferred_count(qs2)
 
-            qs = list(utils.chain_unique(qs1, qs2))
+            qs = list(utils.chain_unique(qs0, qs1, qs2))
         else:
             if 'q' in self.request.GET:
                 qs = init_qs.order_by('pn', 'layerbranch__layer')
@@ -732,13 +735,15 @@ class ClassicRecipeSearchView(RecipeSearchView):
         if query_string.strip():
             order_by = ('pn', 'layerbranch__layer')
 
+            qs0 = init_qs.filter(pn==query_string).order_by(*order_by)
+
             entry_query = simplesearch.get_query(query_string, ['pn'])
             qs1 = init_qs.filter(entry_query).order_by(*order_by)
 
             entry_query = simplesearch.get_query(query_string, ['summary', 'description'])
             qs2 = init_qs.filter(entry_query).order_by(*order_by)
 
-            qs = list(utils.chain_unique(qs1, qs2))
+            qs = list(utils.chain_unique(qs0, qs1, qs2))
         else:
             if 'q' in self.request.GET:
                 qs = init_qs.order_by('pn', 'layerbranch__layer')
-- 
2.5.5


