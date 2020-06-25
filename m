Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web12.2120.1593125876668284328
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jun 2020 15:57:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: amber.n.elliot@intel.com)
IronPort-SDR: w644swkmt6DgPPVLBrOYeQiXSXT0I8X2prLVUWA8z7PkS4Zj2BNzfDKFPceT2Wj1JyMfGrb+DS
 xeuS5UfdtJZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="144197884"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="144197884"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:56 -0700
IronPort-SDR: xQ++8Cg9VRSg/fddSKBSx9a7ulGm66FeVzFjlC5OjXD2MTaypkW1H7MvJPYi5yw3GRAKalwuHa
 YJhrLCNaw2SQ==
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="299295980"
Received: from rbommagx-mobl1.amr.corp.intel.com (HELO localhost.localdomain) ([10.209.186.34])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:55 -0700
From: "Amber Elliot" <amber.n.elliot@intel.com>
To: yocto@lists.yoctoproject.org
Cc: Amber Elliot <amber.n.elliot@intel.com>
Subject: [layerindexweb][PATCH 4/7] Replacing is_authenticated() with is_authenticated for Django upgrade.
Date: Thu, 25 Jun 2020 15:57:36 -0700
Message-Id: <20200625225739.32402-5-amber.n.elliot@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200625225739.32402-1-amber.n.elliot@intel.com>
References: <20200625225739.32402-1-amber.n.elliot@intel.com>

Signed-off-by: Amber Elliot <amber.n.elliot@intel.com>
---
 layerindex/auth_views.py |  2 +-
 layerindex/forms.py      |  2 +-
 layerindex/models.py     |  2 +-
 layerindex/views.py      | 30 +++++++++++++++---------------
 4 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/layerindex/auth_views.py b/layerindex/auth_views.py
index a147a9c..152f171 100644
--- a/layerindex/auth_views.py
+++ b/layerindex/auth_views.py
@@ -77,7 +77,7 @@ class CaptchaPasswordResetView(PasswordResetView):
 
 
 def delete_account_view(request, template_name):
-    if not request.user.is_authenticated():
+    if not request.user.is_authenticated:
         raise PermissionDenied
     if request.user.is_superuser:
         # It's not really appropriate for the superuser to be deleted this way
diff --git a/layerindex/forms.py b/layerindex/forms.py
index 4d8eb44..4061d4b 100644
--- a/layerindex/forms.py
+++ b/layerindex/forms.py
@@ -89,7 +89,7 @@ class EditLayerForm(StyledModelForm):
             del self.fields['captcha']
         else:
             self.fields['deps'].initial = [l.pk for l in LayerItem.objects.filter(name=settings.CORE_LAYER_NAME)]
-            if user.is_authenticated():
+            if user.is_authenticated:
                 del self.fields['captcha']
         # Ensure repo subdir appears after repo URL
         field_order = list(self.fields.keys())
diff --git a/layerindex/models.py b/layerindex/models.py
index 4d75bed..99c68e1 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -171,7 +171,7 @@ class LayerItem(models.Model):
         return matches
 
     def user_can_edit(self, user):
-        if user.is_authenticated():
+        if user.is_authenticated:
             user_email = user.email.strip().lower()
             for maintainer in self.active_maintainers():
                 if maintainer.email.strip().lower() == user_email:
diff --git a/layerindex/views.py b/layerindex/views.py
index f9799cf..83adb6a 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -65,7 +65,7 @@ def edit_layernote_view(request, template_name, slug, pk=None):
     layeritem = get_object_or_404(LayerItem, name=slug)
     if layeritem.comparison:
         raise Http404
-    if not (request.user.is_authenticated() and (request.user.has_perm('layerindex.publish_layer') or layeritem.user_can_edit(request.user))):
+    if not (request.user.is_authenticated and (request.user.has_perm('layerindex.publish_layer') or layeritem.user_can_edit(request.user))):
         raise PermissionDenied
     if pk:
         # Edit mode
@@ -91,7 +91,7 @@ def delete_layernote_view(request, template_name, slug, pk):
     layeritem = get_object_or_404(LayerItem, name=slug)
     if layeritem.comparison:
         raise Http404
-    if not (request.user.is_authenticated() and (request.user.has_perm('layerindex.publish_layer') or layeritem.user_can_edit(request.user))):
+    if not (request.user.is_authenticated and (request.user.has_perm('layerindex.publish_layer') or layeritem.user_can_edit(request.user))):
         raise PermissionDenied
     layernote = get_object_or_404(LayerNote, pk=pk)
     if request.method == 'POST':
@@ -108,7 +108,7 @@ def delete_layer_view(request, template_name, slug):
     layeritem = get_object_or_404(LayerItem, name=slug)
     if layeritem.comparison:
         raise Http404
-    if not (request.user.is_authenticated() and request.user.has_perm('layerindex.publish_layer') and layeritem.status == 'N'):
+    if not (request.user.is_authenticated and request.user.has_perm('layerindex.publish_layer') and layeritem.status == 'N'):
         raise PermissionDenied
     if request.method == 'POST':
         layeritem.delete()
@@ -128,7 +128,7 @@ def edit_layer_view(request, template_name, branch='master', slug=None):
         layeritem = get_object_or_404(LayerItem, name=slug)
         if layeritem.comparison:
             raise Http404
-        if not (request.user.is_authenticated() and (request.user.has_perm('layerindex.publish_layer') or layeritem.user_can_edit(request.user))):
+        if not (request.user.is_authenticated and (request.user.has_perm('layerindex.publish_layer') or layeritem.user_can_edit(request.user))):
             raise PermissionDenied
         layerbranch = get_object_or_404(LayerBranch, layer=layeritem, branch=branchobj)
         old_maintainers = list(layerbranch.layermaintainer_set.values_list('email', flat=True))
@@ -324,7 +324,7 @@ def _get_help_contact():
     return help_contact
 
 def publish_view(request, name):
-    if not (request.user.is_authenticated() and request.user.has_perm('layerindex.publish_layer')):
+    if not (request.user.is_authenticated and request.user.has_perm('layerindex.publish_layer')):
         raise PermissionDenied
 
     if getattr(settings, 'SEND_PUBLISH_EMAIL', True):
@@ -412,7 +412,7 @@ class LayerDetailView(DetailView):
             if l.comparison:
                 raise Http404
             if l.status == 'N':
-                if not (request.user.is_authenticated() and request.user.has_perm('layerindex.publish_layer')):
+                if not (request.user.is_authenticated and request.user.has_perm('layerindex.publish_layer')):
                     raise PermissionDenied
         return res
 
@@ -695,7 +695,7 @@ class BulkChangeView(CreateView):
         return super(BulkChangeView, self).dispatch(request, *args, **kwargs)
 
     def form_valid(self, form):
-        if not self.request.user.is_authenticated():
+        if not self.request.user.is_authenticated:
             raise PermissionDenied
         obj = form.save(commit=False)
         obj.user = self.request.user
@@ -717,7 +717,7 @@ class BulkChangeSearchView(AdvancedRecipeSearchView):
         return super(BulkChangeSearchView, self).get(request, *args, **kwargs)
 
     def post(self, request, *args, **kwargs):
-        if not request.user.is_authenticated():
+        if not request.user.is_authenticated:
             raise PermissionDenied
 
         changeset = get_object_or_404(RecipeChangeset, pk=kwargs['pk'])
@@ -1346,7 +1346,7 @@ class ClassicRecipeDetailView(SuccessMessageMixin, DetailView):
     context_object_name = 'recipe'
 
     def _can_edit(self):
-        if self.request.user.is_authenticated():
+        if self.request.user.is_authenticated:
             if not self.request.user.has_perm('layerindex.edit_classic'):
                 return False
         else:
@@ -1354,7 +1354,7 @@ class ClassicRecipeDetailView(SuccessMessageMixin, DetailView):
         return True
 
     def _can_disposition_patches(self):
-        if self.request.user.is_authenticated():
+        if self.request.user.is_authenticated:
             if not self.request.user.has_perm('layerindex.patch_disposition'):
                 return False
         else:
@@ -1550,7 +1550,7 @@ class TaskStatusView(TemplateView):
 
 def task_log_view(request, task_id):
     from celery.result import AsyncResult
-    if not request.user.is_authenticated():
+    if not request.user.is_authenticated:
         raise PermissionDenied
 
     if '/' in task_id:
@@ -1601,7 +1601,7 @@ def task_log_view(request, task_id):
 def task_stop_view(request, task_id):
     from celery.result import AsyncResult
     import signal
-    if not request.user.is_authenticated():
+    if not request.user.is_authenticated:
         raise PermissionDenied
 
     result = AsyncResult(task_id)
@@ -1610,7 +1610,7 @@ def task_stop_view(request, task_id):
 
 
 def email_test_view(request):
-    if not request.user.is_authenticated() and request.user.is_staff():
+    if not request.user.is_authenticated and request.user.is_staff():
         raise PermissionDenied
 
     plaintext = get_template('layerindex/testemail.txt')
@@ -1639,7 +1639,7 @@ def email_test_view(request):
 
 class ComparisonRecipeSelectView(ClassicRecipeSearchView):
     def _can_edit(self):
-        if self.request.user.is_authenticated():
+        if self.request.user.is_authenticated:
             if not self.request.user.has_perm('layerindex.edit_classic'):
                 return False
         else:
@@ -1713,7 +1713,7 @@ class ComparisonRecipeSelectDetailView(DetailView):
         return context
 
     def post(self, request, *args, **kwargs):
-        if not request.user.is_authenticated():
+        if not request.user.is_authenticated:
             raise PermissionDenied
 
         recipe = get_object_or_404(ClassicRecipe, pk=self.kwargs['selectfor'])
-- 
2.17.1

