Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652C7E94111
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 19:59:38 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web11.4023.1696622375053338394
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 12:59:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OyEDyOw8;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-27763c2c22eso1839142a91.3
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 12:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696622374; x=1697227174; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LohC1t8q4Nt3nBN204Xv5pb6BpDLd2lwc6KUCz9QiLE=;
        b=OyEDyOw8vri9h3hOVvpnioW5/k+qdzo4u5tqpG2yfSCbk0ADLDefGG+cWt7IguzYt+
         40pMfE/pBXDHRHD6hex4M7Wck19L9zkTPFUv0uCr8NavzYqOBKrDNVzIAYwJMDdA99tQ
         VeH5MK/dpfJrON45V5Dj3wrWU5kffDzrrfOIMHy3IET3sNscVKXuO9M+yBX7QE/6DYzo
         +eF7TSVmDS69TuENzc0QtBgP74jt9eqiMTjuXmq94HwjYP8VCWOT1CmbQn3nIGxtX7ht
         Q3Mh3/u7zMbVjDJMOoAITmFTOS10b2198ImVvCUlcqsq4DOtboRJjTn6fOk859P3/rJu
         pUFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696622374; x=1697227174;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LohC1t8q4Nt3nBN204Xv5pb6BpDLd2lwc6KUCz9QiLE=;
        b=pkAdbTcONJlRTqe3M1Dt/ZpeQR/gEBleatsYzOe/xkwHIP0NaD6UCh3Zy20/LXd8wX
         Vv3SoofYA0Q0mribNkHtvmzIiENeodZ5FKnt+gERVKdfCwo6d1HKblf5xpmcL080fJIr
         qc1yHWkrwIz9lfvyuoY2pU4uwM4pWxdKeuYie4q619H/3wUw4qqufMDXwBlXQ/qYXijO
         SniWEyB2610IkuXpJtpnt52HHbfWcse3nsXW7m3q4KkdckrxagskddqniL/oE5cxnY2+
         AgN3A852hJaehiI1u/Cv6fElORC+oCYJRSYkCCNi22ZJ+uufPUdZZn2V5w16Qjrx1UFM
         gGmw==
X-Gm-Message-State: AOJu0YxDqYcGd6OqrtqKB6OHkugi2midmuwUoAwzRRbvKqjLshZ+Penp
	7IViH0YlGHGVrfRVIHlAoKy/O2pvwNc=
X-Google-Smtp-Source: AGHT+IGy5WFuqIUaw5RZ/vcsi0WJ12VOdue09pz4N64sX3uQrLscYiw5zsCeD1W5CncnyEWv5kLYOw==
X-Received: by 2002:a17:90b:3686:b0:279:13c3:6b21 with SMTP id mj6-20020a17090b368600b0027913c36b21mr8868801pjb.9.1696622373719;
        Fri, 06 Oct 2023 12:59:33 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:4ca0:e9cf:d643:bafd])
        by smtp.gmail.com with ESMTPSA id 6-20020a17090a1a0600b00263dfe9b972sm6420971pjk.0.2023.10.06.12.59.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 12:59:33 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web 05/10] Refactor usage of django.conf.urls
Date: Fri,  6 Oct 2023 12:59:08 -0700
Message-Id: <abef2b6a19f6844ad8ba8107fef7a9e3364200b8.1696621423.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1696621423.git.tim.orling@konsulko.com>
References: <cover.1696621423.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 19:59:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61269

django.conf.urls.url() was removed in Django 4.0:
https://docs.djangoproject.com/en/4.2/releases/4.0/#features-removed-in-4-0

Replace all usage with django.urls.re_path()
Replace all django.conf.urls imports with equivalent django.urls modules

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/urls.py        | 108 +++++++++++++++++++-------------------
 layerindex/urls_branch.py |  25 +++++----
 rrs/urls.py               |  16 +++---
 urls.py                   |  31 ++++++-----
 4 files changed, 88 insertions(+), 92 deletions(-)

diff --git a/layerindex/urls.py b/layerindex/urls.py
index 82af699..cee3d2a 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -6,10 +6,9 @@
 #
 # SPDX-License-Identifier: MIT
 
-from django.conf.urls import *
 from django.views.generic import TemplateView, DetailView, ListView, RedirectView
 from django.views.defaults import page_not_found
-from django.urls import reverse_lazy
+from django.urls import include, re_path, reverse_lazy
 from layerindex.views import LayerListView, LayerReviewListView, LayerReviewDetailView, RecipeSearchView, \
     MachineSearchView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, \
     HistoryListView, EditProfileFormView, AdvancedRecipeSearchView, BulkChangeView, BulkChangeSearchView, \
@@ -21,7 +20,6 @@ from layerindex.views import LayerListView, LayerReviewListView, LayerReviewDeta
 from layerindex.models import LayerItem, Recipe, RecipeChangeset
 from rest_framework import routers
 from . import restviews
-from django.conf.urls import include
 
 router = routers.DefaultRouter()
 router.register(r'branches', restviews.BranchViewSet)
@@ -40,174 +38,174 @@ router.register(r'appends', restviews.AppendViewSet)
 router.register(r'incFiles', restviews.IncFileViewSet)
 
 urlpatterns = [
-    url(r'^$',
+    re_path(r'^$',
         RedirectView.as_view(url=reverse_lazy('layer_list', args=('master',)), permanent=False),
         name='frontpage'),
 
-    url(r'^api/', include(router.urls)),
+    re_path(r'^api/', include(router.urls)),
 
-    url(r'^layers/$',
+    re_path(r'^layers/$',
         RedirectView.as_view(url=reverse_lazy('layer_list', args=('master',)), permanent=False)),
-    url(r'^layer/(?P<slug>[-\w]+)/$',
+    re_path(r'^layer/(?P<slug>[-\w]+)/$',
         RedirectParamsView.as_view(permanent=False), {'redirect_name': 'layer_item', 'branch': 'master'}),
-    url(r'^recipes/$',
+    re_path(r'^recipes/$',
         RedirectView.as_view(url=reverse_lazy('recipe_search', args=('master',)), permanent=False)),
-    url(r'^machines/$',
+    re_path(r'^machines/$',
         RedirectView.as_view(url=reverse_lazy('machine_search', args=('master',)), permanent=False)),
-    url(r'^distros/$',
+    re_path(r'^distros/$',
         RedirectView.as_view(url=reverse_lazy('distro_search', args=('master',)), permanent=False)),
-    url(r'^classes/$',
+    re_path(r'^classes/$',
         RedirectView.as_view(url=reverse_lazy('class_search', args=('master',)), permanent=False)),
-    url(r'^submit/$', edit_layer_view, {'template_name': 'layerindex/submitlayer.html'}, name="submit_layer"),
-    url(r'^submit/thanks/$',
+    re_path(r'^submit/$', edit_layer_view, {'template_name': 'layerindex/submitlayer.html'}, name="submit_layer"),
+    re_path(r'^submit/thanks/$',
         TemplateView.as_view(
             template_name='layerindex/submitthanks.html'),
         name="submit_layer_thanks"),
-    url(r'^review/$',
+    re_path(r'^review/$',
         LayerReviewListView.as_view(
             template_name='layerindex/reviewlist.html'),
         name='layer_list_review'),
-    url(r'^review/(?P<slug>[-\w]+)/$',
+    re_path(r'^review/(?P<slug>[-\w]+)/$',
         LayerReviewDetailView.as_view(
             template_name='layerindex/reviewdetail.html'),
         name='layer_review'),
-    url(r'^layer/(?P<slug>[-\w]+)/addnote/$',
+    re_path(r'^layer/(?P<slug>[-\w]+)/addnote/$',
         edit_layernote_view, {'template_name': 'layerindex/editlayernote.html'}, name="add_layernote"),
-    url(r'^layer/(?P<slug>[-\w]+)/editnote/(?P<pk>[-\w]+)/$',
+    re_path(r'^layer/(?P<slug>[-\w]+)/editnote/(?P<pk>[-\w]+)/$',
         edit_layernote_view, {'template_name': 'layerindex/editlayernote.html'}, name="edit_layernote"),
-    url(r'^layer/(?P<slug>[-\w]+)/deletenote/(?P<pk>[-\w]+)/$',
+    re_path(r'^layer/(?P<slug>[-\w]+)/deletenote/(?P<pk>[-\w]+)/$',
         delete_layernote_view, {'template_name': 'layerindex/deleteconfirm.html'}, name="delete_layernote"),
-    url(r'^layer/(?P<slug>[-\w]+)/delete/$',
+    re_path(r'^layer/(?P<slug>[-\w]+)/delete/$',
         delete_layer_view, {'template_name': 'layerindex/deleteconfirm.html'}, name="delete_layer"),
-    url(r'^recipe/(?P<pk>[-\w]+)/$',
+    re_path(r'^recipe/(?P<pk>[-\w]+)/$',
         RecipeDetailView.as_view(
             template_name='layerindex/recipedetail.html'),
         name='recipe'),
-    url(r'^layer/(?P<name>[-\w]+)/publish/$', publish_view, name="publish"),
-    url(r'^layerupdate/(?P<pk>[-\w]+)/$',
+    re_path(r'^layer/(?P<name>[-\w]+)/publish/$', publish_view, name="publish"),
+    re_path(r'^layerupdate/(?P<pk>[-\w]+)/$',
         LayerUpdateDetailView.as_view(
             template_name='layerindex/layerupdate.html'),
         name='layerupdate'),
-    url(r'^bulkchange/$',
+    re_path(r'^bulkchange/$',
         BulkChangeView.as_view(
             template_name='layerindex/bulkchange.html'),
         name="bulk_change"),
-    url(r'^bulkchange/(?P<pk>\d+)/search/$',
+    re_path(r'^bulkchange/(?P<pk>\d+)/search/$',
         BulkChangeSearchView.as_view(
             template_name='layerindex/bulkchangesearch.html'),
         name="bulk_change_search"),
-    url(r'^bulkchange/(?P<pk>\d+)/edit/$',
+    re_path(r'^bulkchange/(?P<pk>\d+)/edit/$',
         bulk_change_edit_view, {'template_name': 'layerindex/bulkchangeedit.html'}, name="bulk_change_edit"),
-    url(r'^bulkchange/(?P<pk>\d+)/review/$',
+    re_path(r'^bulkchange/(?P<pk>\d+)/review/$',
         DetailView.as_view(
             model=RecipeChangeset,
             context_object_name='changeset',
             template_name='layerindex/bulkchangereview.html'),
         name="bulk_change_review"),
-    url(r'^bulkchange/(?P<pk>\d+)/patches/$',
+    re_path(r'^bulkchange/(?P<pk>\d+)/patches/$',
         bulk_change_patch_view, name="bulk_change_patches"),
-    url(r'^bulkchange/(?P<pk>\d+)/delete/$',
+    re_path(r'^bulkchange/(?P<pk>\d+)/delete/$',
         BulkChangeDeleteView.as_view(
             template_name='layerindex/deleteconfirm.html'),
         name="bulk_change_delete"),
-    url(r'^branch/(?P<branch>[-.\w]+)/',
+    re_path(r'^branch/(?P<branch>[-.\w]+)/',
         include('layerindex.urls_branch')),
-    url(r'^updates/$',
+    re_path(r'^updates/$',
         UpdateListView.as_view(
             template_name='layerindex/updatelist.html'),
         name='update_list'),
-    url(r'^updates/(?P<pk>[-\w]+)/$',
+    re_path(r'^updates/(?P<pk>[-\w]+)/$',
         UpdateDetailView.as_view(
             template_name='layerindex/updatedetail.html'),
         name='update'),
-    url(r'^history/$',
+    re_path(r'^history/$',
         HistoryListView.as_view(
             template_name='layerindex/history.html'),
         name='history_list'),
-    url(r'^profile/$',
+    re_path(r'^profile/$',
         EditProfileFormView.as_view(
             template_name='layerindex/profile.html'),
         name="profile"),
-    url(r'^about/$',
+    re_path(r'^about/$',
         TemplateView.as_view(
             template_name='layerindex/about.html'),
         name="about"),
-    url(r'^stats/$',
+    re_path(r'^stats/$',
         StatsView.as_view(
             template_name='layerindex/stats.html'),
         name='stats'),
-    url(r'^oe-classic/$',
+    re_path(r'^oe-classic/$',
         RedirectView.as_view(url=reverse_lazy('classic_recipe_search'), permanent=False),
         name='classic'),
-    url(r'^oe-classic/recipes/$',
+    re_path(r'^oe-classic/recipes/$',
         RedirectView.as_view(url=reverse_lazy('comparison_recipe_search', kwargs={'branch': 'oe-classic'}), permanent=False),
         name='classic_recipe_search'),
-    url(r'^oe-classic/stats/$',
+    re_path(r'^oe-classic/stats/$',
         RedirectView.as_view(url=reverse_lazy('comparison_recipe_stats', kwargs={'branch': 'oe-classic'}), permanent=False),
         name='classic_recipe_stats'),
-    url(r'^oe-classic/recipe/(?P<pk>[-\w]+)/$',
+    re_path(r'^oe-classic/recipe/(?P<pk>[-\w]+)/$',
         ClassicRecipeDetailView.as_view(
             template_name='layerindex/classicrecipedetail.html'),
         name='classic_recipe'),
-    url(r'^comparison/recipes/(?P<branch>[-.\w]+)/$',
+    re_path(r'^comparison/recipes/(?P<branch>[-.\w]+)/$',
         ClassicRecipeSearchView.as_view(
             template_name='layerindex/classicrecipes.html'),
         name='comparison_recipe_search'),
-    url(r'^comparison/search-csv/(?P<branch>[-.\w]+)/$',
+    re_path(r'^comparison/search-csv/(?P<branch>[-.\w]+)/$',
         ClassicRecipeSearchView.as_view(
             template_name='layerindex/classicrecipes_csv.txt',
             paginate_by=0,
             content_type='text/csv; charset=utf-8'),
         name='comparison_recipe_search_csv'),
-    url(r'^comparison/stats/(?P<branch>[-.\w]+)/$',
+    re_path(r'^comparison/stats/(?P<branch>[-.\w]+)/$',
         ClassicRecipeStatsView.as_view(
             template_name='layerindex/classicstats.html'),
         name='comparison_recipe_stats'),
-    url(r'^comparison/recipe/(?P<pk>[-\w]+)/$',
+    re_path(r'^comparison/recipe/(?P<pk>[-\w]+)/$',
         ClassicRecipeDetailView.as_view(
             template_name='layerindex/classicrecipedetail.html'),
         name='comparison_recipe'),
-    url(r'^comparison/select/(?P<pk>[-\w]+)/$',
+    re_path(r'^comparison/select/(?P<pk>[-\w]+)/$',
         ComparisonRecipeSelectView.as_view(
             template_name='layerindex/comparisonrecipeselect.html'),
         name='comparison_select'),
-    url(r'^comparison/selectdetail/(?P<selectfor>[-\w]+)/(?P<pk>[-\w]+)/$',
+    re_path(r'^comparison/selectdetail/(?P<selectfor>[-\w]+)/(?P<pk>[-\w]+)/$',
         ComparisonRecipeSelectDetailView.as_view(
             template_name='layerindex/comparisonrecipeselectdetail.html'),
         name='comparison_select_detail'),
-    url(r'^email_test/$',
+    re_path(r'^email_test/$',
         email_test_view,
         name='email_test'),
-    url(r'^task/(?P<task_id>[-\w]+)/$',
+    re_path(r'^task/(?P<task_id>[-\w]+)/$',
         TaskStatusView.as_view(
             template_name='layerindex/task.html'),
         name='task_status'),
-    url(r'^tasklog/(?P<task_id>[-\w]+)/$',
+    re_path(r'^tasklog/(?P<task_id>[-\w]+)/$',
         task_log_view,
         name='task_log'),
-    url(r'^stoptask/(?P<task_id>[-\w]+)/$',
+    re_path(r'^stoptask/(?P<task_id>[-\w]+)/$',
         task_stop_view,
         name='task_stop'),
-    url(r'^branch_comparison/$',
+    re_path(r'^branch_comparison/$',
         BranchCompareView.as_view(
             template_name='layerindex/branchcompare.html'),
         name='branch_comparison'),
-    url(r'^branch_comparison_plain/$',
+    re_path(r'^branch_comparison_plain/$',
         BranchCompareView.as_view(
             content_type='text/plain; charset=utf-8',
             template_name='layerindex/branchcompare_plain.txt'),
         name='branch_comparison_plain'),
-    url(r'^recipe_deps/$',
+    re_path(r'^recipe_deps/$',
         RecipeDependenciesView.as_view(
             template_name='layerindex/recipedeps.html'),
         name='recipe_deps'),
-    url(r'^ajax/layerchecklist/(?P<branch>[-.\w]+)/$',
+    re_path(r'^ajax/layerchecklist/(?P<branch>[-.\w]+)/$',
         LayerCheckListView.as_view(
             template_name='layerindex/layerchecklist.html'),
         name='layer_checklist'),
-    url(r'^ajax/classchecklist/(?P<branch>[-.\w]+)/$',
+    re_path(r'^ajax/classchecklist/(?P<branch>[-.\w]+)/$',
         BBClassCheckListView.as_view(
             template_name='layerindex/classchecklist.html'),
         name='class_checklist'),
-    url(r'.*', page_not_found, kwargs={'exception': Exception("Page not Found")})
+    re_path(r'.*', page_not_found, kwargs={'exception': Exception("Page not Found")})
 ]
diff --git a/layerindex/urls_branch.py b/layerindex/urls_branch.py
index 86b8b77..6736f32 100644
--- a/layerindex/urls_branch.py
+++ b/layerindex/urls_branch.py
@@ -6,47 +6,46 @@
 #
 # SPDX-License-Identifier: MIT
 
-from django.conf.urls import *
 from django.views.defaults import page_not_found
-from django.urls import reverse_lazy
+from django.urls import include, re_path, reverse_lazy
 from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, DistroSearchView, ClassSearchView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView, LayerUpdateDetailView, layer_export_recipes_csv_view, comparison_update_view
 
 urlpatterns = [
-    url(r'^$', 
+    re_path(r'^$',
         RedirectParamsView.as_view(permanent=False), {'redirect_name': 'layer_list'}),
-    url(r'^layers/$',
+    re_path(r'^layers/$',
         LayerListView.as_view(
             template_name='layerindex/layers.html'),
             name='layer_list'),
-    url(r'^layer/(?P<slug>[-\w]+)/$',
+    re_path(r'^layer/(?P<slug>[-\w]+)/$',
         LayerDetailView.as_view(
             template_name='layerindex/detail.html'),
             name='layer_item'),
-    url(r'^layer/(?P<slug>[-\w]+)/recipes/csv/$',
+    re_path(r'^layer/(?P<slug>[-\w]+)/recipes/csv/$',
         layer_export_recipes_csv_view,
         name='layer_export_recipes_csv'),
-    url(r'^recipes/$',
+    re_path(r'^recipes/$',
         RecipeSearchView.as_view(
             template_name='layerindex/recipes.html'),
             name='recipe_search'),
-    url(r'^machines/$',
+    re_path(r'^machines/$',
         MachineSearchView.as_view(
             template_name='layerindex/machines.html'),
             name='machine_search'),
-    url(r'^distros/$',
+    re_path(r'^distros/$',
         DistroSearchView.as_view(
             template_name='layerindex/distros.html'),
             name='distro_search'),
-    url(r'^classes/$',
+    re_path(r'^classes/$',
         ClassSearchView.as_view(
             template_name='layerindex/classes.html'),
             name='class_search'),
-    url(r'^edit/(?P<slug>[-\w]+)/$', edit_layer_view, {'template_name': 'layerindex/editlayer.html'}, name="edit_layer"),
-    url(r'^duplicates/$',
+    re_path(r'^edit/(?P<slug>[-\w]+)/$', edit_layer_view, {'template_name': 'layerindex/editlayer.html'}, name="edit_layer"),
+    re_path(r'^duplicates/$',
         DuplicatesView.as_view(
             template_name='layerindex/duplicates.html'),
             name='duplicates'),
-    url(r'^comparison_update/$',
+    re_path(r'^comparison_update/$',
         comparison_update_view,
         name='comparison_update'),
 ]
diff --git a/rrs/urls.py b/rrs/urls.py
index 63426a9..2adacce 100644
--- a/rrs/urls.py
+++ b/rrs/urls.py
@@ -6,7 +6,7 @@
 #
 # SPDX-License-Identifier: MIT
 
-from django.conf.urls import include, url
+from django.urls import include, re_path
 
 from rrs.models import Release, Milestone
 from rrs.views import RecipeListView, recipes_report, RecipeDetailView, \
@@ -14,27 +14,27 @@ from rrs.views import RecipeListView, recipes_report, RecipeDetailView, \
     MaintenanceStatsView
 
 urlpatterns = [
-    url(r'^$', FrontPageRedirect.as_view(),
+    re_path(r'^$', FrontPageRedirect.as_view(),
         name='rrs_frontpage'),
-    url(r'^maintplan/(?P<maintplan_name>.*)/$',
+    re_path(r'^maintplan/(?P<maintplan_name>.*)/$',
         MaintenancePlanRedirect.as_view(),
         name='rrs_maintplan'),
-    url(r'^recipes/(?P<maintplan_name>.*)/(?P<release_name>.*)/(?P<milestone_name>.*)/$',
+    re_path(r'^recipes/(?P<maintplan_name>.*)/(?P<release_name>.*)/(?P<milestone_name>.*)/$',
         RecipeListView.as_view(
             template_name='rrs/recipes.html'),
         name='rrs_recipes'),
-    url(r'^recipesreport/(?P<maintplan_name>.*)/(?P<release_name>.*)/(?P<milestone_name>.*)/$',
+    re_path(r'^recipesreport/(?P<maintplan_name>.*)/(?P<release_name>.*)/(?P<milestone_name>.*)/$',
         recipes_report,
         name="rrs_recipesreport"),
-    url(r'^recipedetail/(?P<maintplan_name>.*)/(?P<pk>\d+)/$',
+    re_path(r'^recipedetail/(?P<maintplan_name>.*)/(?P<pk>\d+)/$',
         RecipeDetailView.as_view(
             template_name='rrs/recipedetail.html'),
         name='rrs_recipedetail'),
-    url(r'^maintainers/(?P<maintplan_name>.*)/(?P<release_name>.*)/(?P<milestone_name>.*)/$',
+    re_path(r'^maintainers/(?P<maintplan_name>.*)/(?P<release_name>.*)/(?P<milestone_name>.*)/$',
         MaintainerListView.as_view(
         template_name='rrs/maintainers.html'),
         name="rrs_maintainers"),
-    url(r'^stats/(?P<maintplan_name>.*)/(?P<release_name>.*)/(?P<milestone_name>.*)/$',
+    re_path(r'^stats/(?P<maintplan_name>.*)/(?P<release_name>.*)/(?P<milestone_name>.*)/$',
         MaintenanceStatsView.as_view(
         template_name='rrs/rrs_stats.html'),
         name="rrs_stats"),
diff --git a/urls.py b/urls.py
index 76f2f73..db94959 100644
--- a/urls.py
+++ b/urls.py
@@ -7,8 +7,7 @@
 #
 # SPDX-License-Identifier: MIT
 
-from django.conf.urls import include, url
-from django.urls import reverse_lazy
+from django.urls import include, re_path, reverse_lazy
 from django.views.generic import RedirectView, TemplateView
 from layerindex.auth_views import CaptchaRegistrationView, CaptchaPasswordResetView, delete_account_view, \
     PasswordResetSecurityQuestions
@@ -18,40 +17,40 @@ admin.autodiscover()
 import settings
 
 urlpatterns = [
-    url(r'^layerindex/', include('layerindex.urls')),
-    url(r'^admin/', admin.site.urls),
-    url(r'^accounts/password_reset/$',
+    re_path(r'^layerindex/', include('layerindex.urls')),
+    re_path(r'^admin/', admin.site.urls),
+    re_path(r'^accounts/password_reset/$',
         CaptchaPasswordResetView.as_view(
             email_template_name='registration/password_reset_email.txt',
             success_url=reverse_lazy('password_reset_done')),
         name='password_reset'),
-    url(r'^accounts/register/$', CaptchaRegistrationView.as_view(),
+    re_path(r'^accounts/register/$', CaptchaRegistrationView.as_view(),
         name='django_registration_register'),
-    url(r'^accounts/delete/$', delete_account_view,
+    re_path(r'^accounts/delete/$', delete_account_view,
         {'template_name': 'layerindex/deleteaccount.html'},
         name='delete_account'),
-    url(r'^accounts/reregister/$', TemplateView.as_view(
+    re_path(r'^accounts/reregister/$', TemplateView.as_view(
         template_name='registration/reregister.html'),
         name='reregister'),
-    url(r'^accounts/reset/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,3}-[0-9A-Za-z]{1,20})/$',
+    re_path(r'^accounts/reset/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,3}-[0-9A-Za-z]{1,20})/$',
         PasswordResetSecurityQuestions.as_view(),
         name='password_reset_confirm',
         ),
-    url(r'^accounts/reset/fail/$', TemplateView.as_view(
+    re_path(r'^accounts/reset/fail/$', TemplateView.as_view(
         template_name='registration/password_reset_fail.html'),
         name='password_reset_fail'),
-    url(r'^accounts/lockout/$', TemplateView.as_view(
+    re_path(r'^accounts/lockout/$', TemplateView.as_view(
         template_name='registration/account_lockout.html'),
         name='account_lockout'),
-    url(r'^accounts/', include('django_registration.backends.activation.urls')),
-    url(r'^accounts/', include('django.contrib.auth.urls')),
-    url(r'^captcha/', include('captcha.urls')),
+    re_path(r'^accounts/', include('django_registration.backends.activation.urls')),
+    re_path(r'^accounts/', include('django.contrib.auth.urls')),
+    re_path(r'^captcha/', include('captcha.urls')),
 ]
 if 'rrs' in settings.INSTALLED_APPS:
     urlpatterns += [
-        url(r'^rrs/', include('rrs.urls')),
+        re_path(r'^rrs/', include('rrs.urls')),
     ]
 
 urlpatterns += [
-    url(r'.*', RedirectView.as_view(url='/layerindex/', permanent=False)),
+    re_path(r'.*', RedirectView.as_view(url='/layerindex/', permanent=False)),
 ]
-- 
2.34.1


