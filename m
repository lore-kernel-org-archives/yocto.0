Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00E9BE0095F; Tue, 17 Jan 2017 13:07:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86B06E0094C
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 13:06:55 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga105.jf.intel.com with ESMTP; 17 Jan 2017 13:06:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,246,1477983600"; d="scan'208";a="1095383573"
Received: from jayyinch-mobl6.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com.fritz.box) ([10.255.188.18])
	by fmsmga001.fm.intel.com with ESMTP; 17 Jan 2017 13:06:52 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 18 Jan 2017 10:06:49 +1300
Message-Id: <1484687209-9712-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [layerindex-web][PATCH] restviews: hide unpublished layers
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
X-List-Received-Date: Tue, 17 Jan 2017 21:07:01 -0000

Layers that aren't published shouldn't be visible via the API. (We don't
need to apply that filter to recipes, machines or distros though since a
layer's content won't automatically be indexed unless it has been
published).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/restviews.py | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/layerindex/restviews.py b/layerindex/restviews.py
index 57f1552..b0c8a7a 100644
--- a/layerindex/restviews.py
+++ b/layerindex/restviews.py
@@ -5,7 +5,7 @@ from layerindex.querysethelper import params_to_queryset, get_search_tuple
 class ParametricSearchableModelViewSet(viewsets.ModelViewSet):
     def get_queryset(self):
         model = self.__class__.serializer_class.Meta.model
-        qs = model.objects.all()
+        qs = self.queryset
         (filter_string, search_term, ordering_string) = get_search_tuple(self.request, model)
         return params_to_queryset(model, qs, filter_string, search_term, ordering_string)
 
@@ -22,7 +22,7 @@ class LayerItemSerializer(serializers.ModelSerializer):
         model = LayerItem
 
 class LayerItemViewSet(ParametricSearchableModelViewSet):
-    queryset = LayerItem.objects.all()
+    queryset = LayerItem.objects.filter(status='P')
     serializer_class = LayerItemSerializer
 
 class LayerBranchSerializer(serializers.ModelSerializer):
@@ -30,7 +30,7 @@ class LayerBranchSerializer(serializers.ModelSerializer):
         model = LayerBranch
 
 class LayerBranchViewSet(ParametricSearchableModelViewSet):
-    queryset = LayerBranch.objects.all()
+    queryset = LayerBranch.objects.filter(layer__status='P')
     serializer_class = LayerBranchSerializer
 
 class LayerDependencySerializer(serializers.ModelSerializer):
@@ -38,7 +38,7 @@ class LayerDependencySerializer(serializers.ModelSerializer):
         model = LayerDependency
 
 class LayerDependencyViewSet(ParametricSearchableModelViewSet):
-    queryset = LayerDependency.objects.all()
+    queryset = LayerDependency.objects.filter(layerbranch__layer__status='P')
     serializer_class = LayerDependencySerializer
 
 class RecipeSerializer(serializers.ModelSerializer):
-- 
2.5.5


