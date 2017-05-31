Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22FEDE00B01; Wed, 31 May 2017 13:47:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E80FAE00992
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 13:47:34 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	31 May 2017 13:47:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,276,1493708400"; d="scan'208";a="863272422"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.138])
	by FMSMGA003.fm.intel.com with ESMTP; 31 May 2017 13:47:31 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 31 May 2017 15:47:24 -0500
Message-Id: <1496263644-16202-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1491247889-13977-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1491247889-13977-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [layerindex-web][PATCH v2] layerindex/views: support querying by layer name
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
X-List-Received-Date: Wed, 31 May 2017 20:47:38 -0000

This change supports querying recipes that belong to a specific layer
by using the prefix "layer:" + the desired layer name, for example:
"layer: openembedded-core" and this string can be used by itself or
combined with other supported options.

A descriptive error message is displayed when the query string has an
unexpected formatting or a non-valid layer name is searched.

[YOCTO #6618]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 layerindex/views.py | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index 65a536a..3eac3ac 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -390,13 +390,28 @@ class RecipeSearchView(ListView):
         for item in query_items:
             if item.startswith('inherits:'):
                 inherits.append(item.split(':')[1])
+            # support searches by layer name
+            elif item.startswith('layer:'):
+                query_layername = item.split(':')[1].strip().lower()
+                if not query_layername:
+                    messages.add_message(self.request, messages.ERROR, 'The \
+layer name is expected to follow the \"layer:\" prefix without any spaces.')
+                query_layer = LayerBranch.objects.filter(
+                    layer__name=query_layername)
+                if query_layer:
+                    init_qs = init_qs.filter(
+                        layerbranch__layer__id=query_layer[0].id)
+                else:
+                    messages.add_message(self.request, messages.ERROR,
+                                         'No layer \"%s\" was found.'
+                                         % query_layername)
             else:
                 query_terms.append(item)
         if inherits:
             # FIXME This is a bit ugly, perhaps we should consider having this as a one-many relationship instead
             for inherit in inherits:
                 init_qs = init_qs.filter(Q(inherits=inherit) | Q(inherits__startswith=inherit + ' ') | Q(inherits__endswith=' ' + inherit) | Q(inherits__contains=' %s ' % inherit))
-            query_string = ' '.join(query_terms)
+        query_string = ' '.join(query_terms)
 
         if query_string.strip():
             order_by = ('pn', 'layerbranch__layer')
-- 
2.7.4


