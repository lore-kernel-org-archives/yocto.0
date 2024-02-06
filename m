Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFC7C4829B
	for <webhook@archiver.kernel.org>; Tue,  6 Feb 2024 06:24:53 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
 by mx.groups.io with SMTP id smtpd.web10.16163.1707200689183226342
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Feb 2024 22:24:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=l1nSuPmc;
 spf=pass (domain: gmail.com, ip: 209.85.167.177, mailfrom: ticotimo@gmail.com)
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3bd4e6a7cb0so311948b6e.3
        for <yocto@lists.yoctoproject.org>; Mon, 05 Feb 2024 22:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707200688; x=1707805488; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2SPPYt8UVBsxGKkFWF7UXXpMkwmGAg8mft2IPgPAMFE=;
        b=l1nSuPmcJ/FsBkV4/wHxMty8Xp+Yl3X6K9qZS0BKuqRb4UNeRpiBroWSAg8C7DwvsG
         r3XVfOo2vsDzjP8cSJjgPvPHFNELUDJJYy3Tx4W2AvigQi2t/hwjELcDRwLknYbIDNh0
         rhZcHbA8ga33FOSQdiqD92YOCgDsnqKQG6N1ur6bI/r2grbVBrOvvMaEGWaKdovpEfTN
         BkgJm+LZDbQ2BPbnyv1O2yB+7+xYpOI3ddYemA1Ci6NStbzigTj/TKMbWYdH39n7GKAh
         cL0G7PR1qC1Swdv7kt95D3vktLcinCRrM4sY8gbzrQfRiXGp7x8co4/CnE3ESYVSO0hf
         dEQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707200688; x=1707805488;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2SPPYt8UVBsxGKkFWF7UXXpMkwmGAg8mft2IPgPAMFE=;
        b=wJr4ju7K70c3xEsZW1TVfteizZNsskyCXhITMaci4F+q/z8HfDZQ16D0GH/YvcVvKd
         GdGFWuSYz/GlI6V4Nig06n2rkBNV/WvWFUOKYfKolEMrGgbp0dCIyNIDtNme9Q0eBhGo
         k92xVI1B37+w3ad2oLUQlSem7MJe+054w5U08rBdMuYLFHpRdo2udmu2xnAcdrGDrCJY
         c2p8xsvghTw42fg5NcLmFxyD0TxbjofURJQpzdvBqUsFJ+CKYLDju6P3W5ee3RcZYjem
         0PQRVmUHmR6IE1ljKRvO+JHrkJO2sJyo4jfVoq5fdG8Ug3ddtXNlY4ncTEjZNkk6Tu9n
         Dcfg==
X-Gm-Message-State: AOJu0YyfczuCXSv1nWBT8zXrPiiWeQyjq2GqZyufvVWqxMW0/dPityH0
	GUbmhs+E4aly5RIDOgBqY+QyDWzigFQSfVK2lFpMXKGWZKOsVkLdnL/wnAu6
X-Google-Smtp-Source: AGHT+IGI+uniK3tYgwvK0BEUo9V0BxXLV5qcGuIS3w7DXKz7xZTBBMaIdMOp4sv4I3ZPuC9lIGR6wQ==
X-Received: by 2002:a05:6808:1187:b0:3be:30e0:5e1e with SMTP id j7-20020a056808118700b003be30e05e1emr1892674oil.55.1707200688014;
        Mon, 05 Feb 2024 22:24:48 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:8ceb:42af:6dbd:6292])
        by smtp.gmail.com with ESMTPSA id o1-20020a056a001b4100b006ddc7ed6edfsm990650pfv.51.2024.02.05.22.24.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 22:24:47 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH 2/2] layerindex: allow periods in layer name
Date: Mon,  5 Feb 2024 22:24:31 -0800
Message-Id: <20240206062431.558-2-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240206062431.558-1-tim.orling@konsulko.com>
References: <20240206062431.558-1-tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Feb 2024 06:24:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62402

There is nothing preventing a period in a layer name from the
BitBake perspective.

For example, https://github.com/webosose/meta-webosose has:
meta-webos-backports/meta-webos-backports-4.1

[YOCTO #15373]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/forms.py       |  4 ++--
 layerindex/urls.py        | 14 +++++++-------
 layerindex/urls_branch.py |  8 ++++----
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/layerindex/forms.py b/layerindex/forms.py
index a9e7703..2cb9b52 100644
--- a/layerindex/forms.py
+++ b/layerindex/forms.py
@@ -118,8 +118,8 @@ class EditLayerForm(StyledModelForm):
 
     def clean_name(self):
         name = self.cleaned_data['name'].strip()
-        if re.compile(r'[^a-z0-9-]').search(name):
-            raise forms.ValidationError("Name must only contain alphanumeric characters and dashes")
+        if re.compile(r'[^a-z0-9-\.]').search(name):
+            raise forms.ValidationError("Name must only contain alphanumeric characters, dashes or periods")
         if name.startswith('-'):
             raise forms.ValidationError("Name must not start with a dash")
         if name.endswith('-'):
diff --git a/layerindex/urls.py b/layerindex/urls.py
index 1fcd11d..80ceaa7 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -46,7 +46,7 @@ urlpatterns = [
 
     re_path(r'^layers/$',
         RedirectView.as_view(url=reverse_lazy('layer_list', args=('master',)), permanent=False)),
-    re_path(r'^layer/(?P<slug>[-\w]+)/$',
+    re_path(r'^layer/(?P<slug>[-\.\w]+)/$',
         RedirectParamsView.as_view(permanent=False), {'redirect_name': 'layer_item', 'branch': 'master'}),
     re_path(r'^recipes/$',
         RedirectView.as_view(url=reverse_lazy('recipe_search', args=('master',)), permanent=False)),
@@ -65,23 +65,23 @@ urlpatterns = [
         LayerReviewListView.as_view(
             template_name='layerindex/reviewlist.html'),
         name='layer_list_review'),
-    re_path(r'^review/(?P<slug>[-\w]+)/$',
+    re_path(r'^review/(?P<slug>[-\.\w]+)/$',
         LayerReviewDetailView.as_view(
             template_name='layerindex/reviewdetail.html'),
         name='layer_review'),
-    re_path(r'^layer/(?P<slug>[-\w]+)/addnote/$',
+    re_path(r'^layer/(?P<slug>[-\.\w]+)/addnote/$',
         edit_layernote_view, {'template_name': 'layerindex/editlayernote.html'}, name="add_layernote"),
-    re_path(r'^layer/(?P<slug>[-\w]+)/editnote/(?P<pk>[-\w]+)/$',
+    re_path(r'^layer/(?P<slug>[-\.\w]+)/editnote/(?P<pk>[-\w]+)/$',
         edit_layernote_view, {'template_name': 'layerindex/editlayernote.html'}, name="edit_layernote"),
-    re_path(r'^layer/(?P<slug>[-\w]+)/deletenote/(?P<pk>[-\w]+)/$',
+    re_path(r'^layer/(?P<slug>[-\.\w]+)/deletenote/(?P<pk>[-\w]+)/$',
         delete_layernote_view, {'template_name': 'layerindex/deleteconfirm.html'}, name="delete_layernote"),
-    re_path(r'^layer/(?P<slug>[-\w]+)/delete/$',
+    re_path(r'^layer/(?P<slug>[-\.\w]+)/delete/$',
         delete_layer_view, {'template_name': 'layerindex/deleteconfirm.html'}, name="delete_layer"),
     re_path(r'^recipe/(?P<pk>[-\w]+)/$',
         RecipeDetailView.as_view(
             template_name='layerindex/recipedetail.html'),
         name='recipe'),
-    re_path(r'^layer/(?P<name>[-\w]+)/publish/$', publish_view, name="publish"),
+    re_path(r'^layer/(?P<name>[-\.\w]+)/publish/$', publish_view, name="publish"),
     re_path(r'^layerupdate/(?P<pk>[-\w]+)/$',
         LayerUpdateDetailView.as_view(
             template_name='layerindex/layerupdate.html'),
diff --git a/layerindex/urls_branch.py b/layerindex/urls_branch.py
index 40cd915..a9a4018 100644
--- a/layerindex/urls_branch.py
+++ b/layerindex/urls_branch.py
@@ -17,11 +17,11 @@ urlpatterns = [
         LayerListView.as_view(
             template_name='layerindex/layers.html'),
             name='layer_list'),
-    re_path(r'^layer/(?P<slug>[-\w]+)/$',
+    re_path(r'^layer/(?P<slug>[-\.\w]+)/$',
         LayerDetailView.as_view(
             template_name='layerindex/detail.html'),
             name='layer_item'),
-    re_path(r'^layer/(?P<slug>[-\w]+)/recipes/csv/$',
+    re_path(r'^layer/(?P<slug>[-\.\w]+)/recipes/csv/$',
         layer_export_recipes_csv_view,
         name='layer_export_recipes_csv'),
     re_path(r'^recipes/$',
@@ -40,8 +40,8 @@ urlpatterns = [
         ClassSearchView.as_view(
             template_name='layerindex/classes.html'),
             name='class_search'),
-    re_path(r'^edit/(?P<slug>[-\w]+)/$', edit_layer_view, {'template_name': 'layerindex/editlayer.html'}, name="edit_layer"),
-    re_path(r'^update/(?P<slug>[-\w]+)/$', update_layer_view, {'template_name': 'layerindex/updatelayer.html'}, name="update_layer"),
+    re_path(r'^edit/(?P<slug>[-\.\w]+)/$', edit_layer_view, {'template_name': 'layerindex/editlayer.html'}, name="edit_layer"),
+    re_path(r'^update/(?P<slug>[-\.\w]+)/$', update_layer_view, {'template_name': 'layerindex/updatelayer.html'}, name="update_layer"),
     re_path(r'^duplicates/$',
         DuplicatesView.as_view(
             template_name='layerindex/duplicates.html'),
-- 
2.34.1


