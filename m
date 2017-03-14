Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6B9DE00901; Mon, 13 Mar 2017 19:20:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05922E00887
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 19:20:10 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Mar 2017 19:20:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,162,1486454400"; d="scan'208";a="75056766"
Received: from nuritamo-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com.fritz.box) ([10.255.160.31])
	by orsmga005.jf.intel.com with ESMTP; 13 Mar 2017 19:20:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Mar 2017 15:19:59 +1300
Message-Id: <20170314021959.12676-3-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170314021959.12676-1-paul.eggleton@linux.intel.com>
References: <20170314021959.12676-1-paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 3/3] layerindex: add "No update" status to LayerItem
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
X-List-Received-Date: Tue, 14 Mar 2017 02:20:11 -0000

Add a status for a layer indicating it should not be updated. I don't
expect this to be widely used (and is only settable from the admin
interface) but would be useful if you have a legacy sub-layer that you
want to prevent from being visible on certain branches - it will prevent
the update script from doing anything with the layer and thus avoid
branch records from being auto-created on branches where you've deleted
it.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/forms.py                                   |  2 +-
 .../migrations/0007_layeritem_status_noupdate.py      | 19 +++++++++++++++++++
 layerindex/models.py                                  |  1 +
 layerindex/restviews.py                               |  6 +++---
 layerindex/update.py                                  |  1 +
 layerindex/views.py                                   |  4 ++--
 6 files changed, 27 insertions(+), 6 deletions(-)
 create mode 100644 layerindex/migrations/0007_layeritem_status_noupdate.py

diff --git a/layerindex/forms.py b/layerindex/forms.py
index 0e7902d..26e676a 100644
--- a/layerindex/forms.py
+++ b/layerindex/forms.py
@@ -179,7 +179,7 @@ class AdvancedRecipeSearchForm(forms.Form):
     field = forms.ChoiceField(choices=FIELD_CHOICES)
     match_type = forms.ChoiceField(choices=MATCH_TYPE_CHOICES)
     value = forms.CharField(max_length=255, required=False)
-    layer = forms.ModelChoiceField(queryset=LayerItem.objects.filter(classic=False).filter(status='P').order_by('name'), empty_label="(any)", required=False)
+    layer = forms.ModelChoiceField(queryset=LayerItem.objects.filter(classic=False).filter(status__in=['P', 'X']).order_by('name'), empty_label="(any)", required=False)
 
 
 class RecipeChangesetForm(forms.ModelForm):
diff --git a/layerindex/migrations/0007_layeritem_status_noupdate.py b/layerindex/migrations/0007_layeritem_status_noupdate.py
new file mode 100644
index 0000000..e917b0e
--- /dev/null
+++ b/layerindex/migrations/0007_layeritem_status_noupdate.py
@@ -0,0 +1,19 @@
+# -*- coding: utf-8 -*-
+from __future__ import unicode_literals
+
+from django.db import migrations, models
+
+
+class Migration(migrations.Migration):
+
+    dependencies = [
+        ('layerindex', '0006_change_branch_meta'),
+    ]
+
+    operations = [
+        migrations.AlterField(
+            model_name='layeritem',
+            name='status',
+            field=models.CharField(default='N', choices=[('N', 'New'), ('P', 'Published'), ('X', 'No update')], max_length=1),
+        ),
+    ]
diff --git a/layerindex/models.py b/layerindex/models.py
index b60ad01..fb2e026 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -65,6 +65,7 @@ class LayerItem(models.Model):
     LAYER_STATUS_CHOICES = (
         ('N', 'New'),
         ('P', 'Published'),
+        ('X', 'No update'),
     )
     LAYER_TYPE_CHOICES = (
         ('A', 'Base'),
diff --git a/layerindex/restviews.py b/layerindex/restviews.py
index b0c8a7a..d947bbf 100644
--- a/layerindex/restviews.py
+++ b/layerindex/restviews.py
@@ -22,7 +22,7 @@ class LayerItemSerializer(serializers.ModelSerializer):
         model = LayerItem
 
 class LayerItemViewSet(ParametricSearchableModelViewSet):
-    queryset = LayerItem.objects.filter(status='P')
+    queryset = LayerItem.objects.filter(status__in=['P', 'X'])
     serializer_class = LayerItemSerializer
 
 class LayerBranchSerializer(serializers.ModelSerializer):
@@ -30,7 +30,7 @@ class LayerBranchSerializer(serializers.ModelSerializer):
         model = LayerBranch
 
 class LayerBranchViewSet(ParametricSearchableModelViewSet):
-    queryset = LayerBranch.objects.filter(layer__status='P')
+    queryset = LayerBranch.objects.filter(layer__status__in=['P', 'X'])
     serializer_class = LayerBranchSerializer
 
 class LayerDependencySerializer(serializers.ModelSerializer):
@@ -38,7 +38,7 @@ class LayerDependencySerializer(serializers.ModelSerializer):
         model = LayerDependency
 
 class LayerDependencyViewSet(ParametricSearchableModelViewSet):
-    queryset = LayerDependency.objects.filter(layerbranch__layer__status='P')
+    queryset = LayerDependency.objects.filter(layerbranch__layer__status__in=['P', 'X'])
     serializer_class = LayerDependencySerializer
 
 class RecipeSerializer(serializers.ModelSerializer):
diff --git a/layerindex/update.py b/layerindex/update.py
index e5987bb..d5c56cd 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -157,6 +157,7 @@ def main():
             logger.error('No layers matching specified query "%s"' % options.layers)
             sys.exit(1)
     else:
+        # We deliberately exclude status == 'X' ("no update") here
         layerquery = LayerItem.objects.filter(classic=False).filter(status='P')
         if layerquery.count() == 0:
             logger.info("No published layers to update")
diff --git a/layerindex/views.py b/layerindex/views.py
index 311a86b..65a536a 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -279,7 +279,7 @@ class LayerListView(ListView):
 
     def get_queryset(self):
         _check_url_branch(self.kwargs)
-        return LayerBranch.objects.filter(branch__name=self.kwargs['branch']).filter(layer__status='P').order_by('layer__layer_type', '-layer__index_preference', 'layer__name')
+        return LayerBranch.objects.filter(branch__name=self.kwargs['branch']).filter(layer__status__in=['P', 'X']).order_by('layer__layer_type', '-layer__index_preference', 'layer__name')
 
     def get_context_data(self, **kwargs):
         context = super(LayerListView, self).get_context_data(**kwargs)
@@ -459,7 +459,7 @@ class DuplicatesView(TemplateView):
         context['classes'] = self.get_classes(layer_ids)
         context['url_branch'] = self.kwargs['branch']
         context['this_url_name'] = resolve(self.request.path_info).url_name
-        context['layers'] = LayerBranch.objects.filter(branch__name=self.kwargs['branch']).filter(layer__status='P').order_by( 'layer__name')
+        context['layers'] = LayerBranch.objects.filter(branch__name=self.kwargs['branch']).filter(layer__status__in=['P', 'X']).order_by( 'layer__name')
         context['showlayers'] = layer_ids
         return context
 
-- 
2.9.3


