Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA497E00D53; Sun, 15 Sep 2019 22:19:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56416E00D4E
	for <yocto@yoctoproject.org>; Sun, 15 Sep 2019 22:19:51 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Sep 2019 22:19:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,510,1559545200"; d="scan'208";a="337545126"
Received: from bletchu-mobl1.gar.corp.intel.com (HELO linux.fritz.box)
	([10.255.184.21])
	by orsmga004.jf.intel.com with ESMTP; 15 Sep 2019 22:19:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 16 Sep 2019 17:19:37 +1200
Message-Id: <ee1ff214a0d8795e7160845969a9da4b9475007a.1568611075.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1568611075.git.paul.eggleton@linux.intel.com>
References: <cover.1568611075.git.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 1/3] API: fix recipes API performance regression
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
X-List-Received-Date: Mon, 16 Sep 2019 05:19:51 -0000
Content-Transfer-Encoding: 8bit

Adding these extra child items to the standard "recipes" viewset (which
we did recently in 684a06a383fd2a8da80490dff5f0dbc47750934e) means that
some current usage is impractical due to the size of the returned list
of items. Instead, create a recipesExtended viewset, move the new child
items to that and add pagination to avoid result size issues.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/restviews.py | 25 ++++++++++++++++++++++---
 layerindex/urls.py      |  1 +
 2 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/layerindex/restviews.py b/layerindex/restviews.py
index 96c24ea3..7de4cd7d 100644
--- a/layerindex/restviews.py
+++ b/layerindex/restviews.py
@@ -1,7 +1,16 @@
+# OpenEmbedded Layer Index REST API implementation
+#
+# Copyright (C) 2014, 2016-2019 Intel Corporation
+#
+# Licensed under the MIT license, see COPYING.MIT for details
+
 from layerindex.models import Branch, LayerItem, LayerMaintainer, YPCompatibleVersion, LayerNote, LayerBranch, LayerDependency, Recipe, Machine, Distro, BBClass, Source, Patch, PackageConfig, StaticBuildDep, DynamicBuildDep, RecipeFileDependency, BBAppend, IncFile
-from rest_framework import viewsets, serializers
+from rest_framework import viewsets, serializers, pagination
 from layerindex.querysethelper import params_to_queryset, get_search_tuple
 
+class LayerIndexPagination(pagination.PageNumberPagination):
+    page_size = 200
+
 class DynamicFieldsModelSerializer(serializers.ModelSerializer):
     """
     A ModelSerializer that takes an additional "fields" argument that
@@ -114,6 +123,15 @@ class RecipeSerializer(serializers.ModelSerializer):
         model = Recipe
         fields = '__all__'
 
+class RecipeViewSet(ParametricSearchableModelViewSet):
+    queryset = Recipe.objects.all()
+    serializer_class = RecipeSerializer
+
+class RecipeExtendedSerializer(serializers.ModelSerializer):
+    class Meta:
+        model = Recipe
+        fields = '__all__'
+
     sources = serializers.SerializerMethodField()
     patches = serializers.SerializerMethodField()
     package_configs = serializers.SerializerMethodField()
@@ -143,9 +161,10 @@ class RecipeSerializer(serializers.ModelSerializer):
         serializer = RecipeFileDependencySerializer(instance=qs, many=True, read_only=True, fields=('layerbranch', 'path'))
         return serializer.data
 
-class RecipeViewSet(ParametricSearchableModelViewSet):
+class RecipeExtendedViewSet(ParametricSearchableModelViewSet):
     queryset = Recipe.objects.all()
-    serializer_class = RecipeSerializer
+    serializer_class = RecipeExtendedSerializer
+    pagination_class = LayerIndexPagination
 
 class MachineSerializer(serializers.ModelSerializer):
     class Meta:
diff --git a/layerindex/urls.py b/layerindex/urls.py
index dec99585..13f42c92 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -28,6 +28,7 @@ router.register(r'layerDependencies', restviews.LayerDependencyViewSet)
 router.register(r'layerMaintainers', restviews.LayerMaintainerViewSet)
 router.register(r'layerNotes', restviews.LayerNoteViewSet)
 router.register(r'recipes', restviews.RecipeViewSet)
+router.register(r'recipesExtended', restviews.RecipeExtendedViewSet)
 router.register(r'machines', restviews.MachineViewSet)
 router.register(r'distros', restviews.DistroViewSet)
 router.register(r'classes', restviews.ClassViewSet)
-- 
2.20.1


