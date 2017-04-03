Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F732E00B8D; Mon,  3 Apr 2017 12:31:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F13C8E00B87
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 12:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491247904; x=1522783904;
	h=from:to:cc:subject:date:message-id;
	bh=nPMtMsDaZGCMF2fOp1GFDrTT1283HJESBLU8YrRPRfI=;
	b=vcS6ozLHX9WBVgrbtRZDiQii2ECcTCiCWugmIDRoddkedRlwzCGzmdh0
	k9NGpWr10e1iHQCPMTB4bHtJhDjjvQ==;
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Apr 2017 12:31:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,271,1486454400"; d="scan'208";a="84185662"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.121])
	by fmsmga006.fm.intel.com with ESMTP; 03 Apr 2017 12:31:43 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Apr 2017 14:31:29 -0500
Message-Id: <1491247889-13977-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [layerindex-web][PATCH] views: support querying by layer name
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
X-List-Received-Date: Mon, 03 Apr 2017 19:31:45 -0000

This change supports querying recipes that belong to a specific layer
by using the prefix "layer:" + the desired layer name, for example:
"layer: openembedded-core" and this string can be used by itself or
combined with other supported options.

[YOCTO #6618]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 layerindex/views.py | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index 65a536a..5b66892 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -383,13 +383,16 @@ class RecipeSearchView(ListView):
         query_string = self.request.GET.get('q', '')
         init_qs = Recipe.objects.filter(layerbranch__branch__name=self.kwargs['branch'])
 
-        # Support slightly crude search on inherits field
+        # Support slightly crude search on inherits/layer fields
         query_items = query_string.split()
         inherits = []
+        layers = []
         query_terms = []
         for item in query_items:
             if item.startswith('inherits:'):
                 inherits.append(item.split(':')[1])
+            elif item.startswith('layer:'):
+                layers.append(item.split(':')[1])
             else:
                 query_terms.append(item)
         if inherits:
@@ -397,6 +400,14 @@ class RecipeSearchView(ListView):
             for inherit in inherits:
                 init_qs = init_qs.filter(Q(inherits=inherit) | Q(inherits__startswith=inherit + ' ') | Q(inherits__endswith=' ' + inherit) | Q(inherits__contains=' %s ' % inherit))
             query_string = ' '.join(query_terms)
+        if layers:
+            for layer in layers:
+                init_qs = init_qs.filter(
+                    Q(layerbranch__layer__name=layer) |
+                    Q(layerbranch__layer__name__startswith=layer + ' ') |
+                    Q(layerbranch__layer__name__endswith=' ' + layer) |
+                    Q(layerbranch__layer__name__contains=' %s ' % layer))
+            query_string = ' '.join(query_terms)
 
         if query_string.strip():
             order_by = ('pn', 'layerbranch__layer')
-- 
2.7.4


