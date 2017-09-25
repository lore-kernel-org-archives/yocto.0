Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3D28E00D16; Mon, 25 Sep 2017 16:43:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82BADE00C89
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 16:43:18 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Sep 2017 16:43:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,438,1500966000"; d="scan'208";a="153257237"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga005.jf.intel.com with ESMTP; 25 Sep 2017 16:43:17 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 25 Sep 2017 16:41:32 -0700
Message-Id: <1506382892-1617-1-git-send-email-amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex][PATCH] Indicate if layer has YP Compatible certification
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
X-List-Received-Date: Mon, 25 Sep 2017 23:43:19 -0000

Allow admin to create Yocto Project versions with the version name,
description, an icon link that represents that version, and a link that
contains more information about the version.

Admins who have the "set_yp_compatibility" permission can then
decide if a layer has Yocto Project compatible certification,
and if it does, admin can choose which version of Yocto Project
the layer is compatible with. If a layer is deemed compatible,
the version's icon will appear next to the layer's name, and
the icon will redirect to the link with more information.

Fixes [YOCTO #11452]

Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
---
 layerindex/admin.py                    | 11 +++++++++--
 layerindex/models.py                   | 15 +++++++++++++++
 layerindex/static/css/additional.css   |  5 +++++
 templates/layerindex/detail.html       |  3 +++
 templates/layerindex/layers.html       |  6 +++++-
 templates/layerindex/reviewdetail.html |  3 +++
 templates/layerindex/reviewlist.html   |  6 +++++-
 7 files changed, 45 insertions(+), 4 deletions(-)

diff --git a/layerindex/admin.py b/layerindex/admin.py
index d25829a..a7d024b 100644
--- a/layerindex/admin.py
+++ b/layerindex/admin.py
@@ -44,6 +44,9 @@ class BranchAdmin(CompareVersionAdmin):
                     layerdependency.save()
     duplicate.short_description = "Duplicate selected Branches"
 
+class YPCompatibleVersionAdmin(CompareVersionAdmin):
+    pass
+
 class LayerItemAdmin(CompareVersionAdmin):
     list_filter = ['status', 'layer_type']
     save_as = True
@@ -61,9 +64,12 @@ class LayerBranchAdmin(CompareVersionAdmin):
         LayerMaintainerInline,
     ]
     def get_readonly_fields(self, request, obj=None):
+        readonly_fields = self.readonly_fields
         if obj:
-            return self.readonly_fields + ('layer', 'branch')
-        return self.readonly_fields
+            readonly_fields += ('layer', 'branch')
+        if not request.user.has_perm('layerindex.set_yp_compatibility'):
+            readonly_fields += ('yp_compatible_version',)
+        return readonly_fields
 
 class LayerMaintainerAdmin(CompareVersionAdmin):
     list_filter = ['status', 'layerbranch__layer__name']
@@ -145,6 +151,7 @@ class RecipeChangesetAdmin(admin.ModelAdmin):
     ]
 
 admin.site.register(Branch, BranchAdmin)
+admin.site.register(YPCompatibleVersion, YPCompatibleVersionAdmin)
 admin.site.register(LayerItem, LayerItemAdmin)
 admin.site.register(LayerBranch, LayerBranchAdmin)
 admin.site.register(LayerMaintainer, LayerMaintainerAdmin)
diff --git a/layerindex/models.py b/layerindex/models.py
index fb2e026..2297152 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -141,6 +141,17 @@ class LayerItem(models.Model):
     def __str__(self):
         return self.name
 
+class YPCompatibleVersion(models.Model):
+    name = models.CharField('Yocto Project Version', max_length=25, unique=True, help_text='Name of this Yocto Project compatible version (e.g. "2.0")')
+    description = models.TextField(blank=True)
+    image_url = models.CharField('Image URL', max_length=300, blank=True)
+    redirect_url = models.CharField('Redirection URL', max_length=100, blank=True)
+
+    class Meta:
+        ordering = ('name',)
+
+    def __str__(self):
+        return self.name
 
 class LayerBranch(models.Model):
     layer = models.ForeignKey(LayerItem)
@@ -152,11 +163,15 @@ class LayerBranch(models.Model):
     vcs_last_rev = models.CharField('Last revision fetched', max_length=80, blank=True)
     vcs_last_commit = models.DateTimeField('Last commit date', blank=True, null=True)
     actual_branch = models.CharField('Actual Branch', max_length=80, blank=True, help_text='Name of the actual branch in the repository matching the core branch')
+    yp_compatible_version = models.ForeignKey(YPCompatibleVersion, null=True, blank=True, on_delete=models.SET_NULL, help_text='Which version of the Yocto Project Compatible program has this layer been approved for for?')
 
     updated = models.DateTimeField(auto_now=True)
 
     class Meta:
         verbose_name_plural = "Layer branches"
+        permissions = (
+            ("set_yp_compatibility", "Can set YP compatibility"),
+        )
 
     def sorted_recipes(self):
         return self.recipe_set.order_by('pn', '-pv')
diff --git a/layerindex/static/css/additional.css b/layerindex/static/css/additional.css
index 2a27712..324ee34 100644
--- a/layerindex/static/css/additional.css
+++ b/layerindex/static/css/additional.css
@@ -232,3 +232,8 @@ blockquote.span7.warn {
 .valign-middle {
     vertical-align: middle;
 }
+
+.yp-icon {
+    width: auto;
+    height: 1em;
+}
diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
index 4f1b333..f721096 100644
--- a/templates/layerindex/detail.html
+++ b/templates/layerindex/detail.html
@@ -30,6 +30,9 @@
             <div class="row-fluid">
                 <div class="page-header">
                     <h1>{{ layeritem.name }}
+                        {% if layerbranch.yp_compatible_version %}
+                        <a href={{layerbranch.yp_compatible_version.redirect_url}}><img src={{layerbranch.yp_compatible_version.image_url}} alt={{layerbranch.yp_compatible_version.description}} class="yp-icon" title={{layerbranch.yp_compatible_version.description}} ></a>
+                        {% endif %}
                         {% if layeritem.status = "N" %}
                             <span class="label label-warning">Unpublished</span>
                         {% endif %}
diff --git a/templates/layerindex/layers.html b/templates/layerindex/layers.html
index b11ff2f..4d0d127 100644
--- a/templates/layerindex/layers.html
+++ b/templates/layerindex/layers.html
@@ -72,7 +72,11 @@
                 <tbody>
                     {% for layerbranch in layerbranch_list %}
                     <tr class="layertype_{{ layerbranch.layer.layer_type }}">
-                        <td><a href="{% url 'layer_item' url_branch layerbranch.layer.name %}">{{ layerbranch.layer.name }}</a></td>
+                        <td><a href="{% url 'layer_item' url_branch layerbranch.layer.name %}">{{ layerbranch.layer.name }}</a>
+                            {% if layerbranch.yp_compatible_version %}
+                            <a href={{layerbranch.yp_compatible_version.redirect_url}}><img src={{layerbranch.yp_compatible_version.image_url}} alt={{layerbranch.yp_compatible_version.description}} class="yp-icon" title={{layerbranch.yp_compatible_version.description}} ></a>
+                            {% endif %}
+                        </td>
                         <td>{{ layerbranch.layer.summary }}</td>
                         <td>{{ layerbranch.layer.get_layer_type_display }}</td>
                         <td class="showRollie">
diff --git a/templates/layerindex/reviewdetail.html b/templates/layerindex/reviewdetail.html
index cff1731..e188632 100644
--- a/templates/layerindex/reviewdetail.html
+++ b/templates/layerindex/reviewdetail.html
@@ -27,6 +27,9 @@
             <div class="row-fluid">
                 <div class="page-header">
                     <h1>{{ layeritem.name }}
+                        {% if layerbranch.yp_compatible_version %}
+                        <a href={{layerbranch.yp_compatible_version.redirect_url }}><img src={{layerbranch.yp_compatible_version.image_url}} alt={{layerbranch.yp_compatible_version.description}} class="yp-icon" title={{layerbranch.yp_compatible_version.description}}></a>
+                        {% endif %}
                         {% if layeritem.status = "N" %}
                             <span class="label label-warning">Unpublished</span>
                         {% else %}
diff --git a/templates/layerindex/reviewlist.html b/templates/layerindex/reviewlist.html
index eaa24e4..0bc0602 100644
--- a/templates/layerindex/reviewlist.html
+++ b/templates/layerindex/reviewlist.html
@@ -36,7 +36,11 @@
                 <tbody>
                     {% for layerbranch in layerbranch_list %}
                     <tr class="layertype_{{ layerbranch.layer.layer_type }}">
-                        <td><a href="{% url 'layer_review' layerbranch.layer.name %}">{{ layerbranch.layer.name }}</a></td>
+                        <td><a href="{% url 'layer_review' layerbranch.layer.name %}">{{ layerbranch.layer.name }}</a> 
+                            {% if layerbranch.yp_compatible_version %}
+                            <a href={{layerbranch.yp_compatible_version.redirect_url}}><img src={{layerbranch.yp_compatible_version.image_url}} alt={{layerbranch.yp_compatible_version.description}} class="yp-icon" title={{layerbranch.yp_compatible_version.description}}></a>
+                            {% endif %}
+                        </td>
                         <td>{{ layerbranch.layer.summary }}</td>
                         <td>{{ layerbranch.layer.get_layer_type_display }}</td>
                         <td class="showRollie">
-- 
2.7.4


