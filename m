Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A830C46CD2
	for <webhook@archiver.kernel.org>; Sat, 30 Dec 2023 05:04:53 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
 by mx.groups.io with SMTP id smtpd.web11.179178.1703912683634897657
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Dec 2023 21:04:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GqMbaftw;
 spf=pass (domain: gmail.com, ip: 209.85.167.174, mailfrom: ticotimo@gmail.com)
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3bbbc6b4ed1so2845687b6e.2
        for <yocto@lists.yoctoproject.org>; Fri, 29 Dec 2023 21:04:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703912682; x=1704517482; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FL+4Ox9+d59P/2wPUcgMs3UsmQ8g2AgUvOpIscot+hk=;
        b=GqMbaftwaIek9sVH8MS4ZwETUIJbJ5Jj16uFGPoiQxqV+FxV7ownNGKy5jEsZuFlE1
         oEj4Jo1ejHJ/5MMkDYxFu4FzPRF9zQyQCGkF1GbwRV0cA8EO+oaF4yK1Zci3vAkw4x4e
         L3WESd4NltY8CHurIHzHkrjw3IlC6eblcxyhjvClHLvZbET8TR9vipNSq/ihk4SYbd9P
         w9a65N00EacZOuDPgSMb+qT9U/D9xTZiEllTUYmujWgtMkhiMxgJppX9FWZW1ScjsKiq
         tXHkczpDRtZX6C9VDvXDWxksedSmPIaoMB//JBvRDJwdbctFgDEABFz9L9UcP8TWQe2I
         WCCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703912682; x=1704517482;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FL+4Ox9+d59P/2wPUcgMs3UsmQ8g2AgUvOpIscot+hk=;
        b=vkDPUz0+vxyrm/UeYivcA80+5KaFArRegjQCCVw2fCna4LEC81Wh3QoLyi2abrb+fF
         VfdIqwqAN3jtJAhgD5dOtyFiarJaSQ4o49OiuEfQLbc5AveXVUBP4JjL20ZuR3namxy0
         vRlrceZ0rnzNF3s7bnQTG1NPWzUqbTc3UcBdFjnCc5nMr4EUfBbf9+BB9XI8j0s+VwU/
         5EKM8dqaT6TLhp/DqVh18ctf4MGHAF0vqrOErzXb7J9F/daLlXe2xGBknlJiu53J24OO
         Q2kbNR0PTz/q9YGkcInEQIsqzy84u8M8W+38C4g2zdVkcm4cMDZhFtVlPPdgKEoUemoR
         uoDA==
X-Gm-Message-State: AOJu0YxLhyZkQ9N8G9QqZ1HH7Ubl3kQ4Cfc2XdI+injgS3BNK5Rgt4mP
	r/+ybwNeHdzeUHM86eMjRc0i4dZYDnA=
X-Google-Smtp-Source: AGHT+IH+zLPb0/Ze+37zCi5Aqqj4x4szBL2jop/Ut2WMKUAb1Opj8ByY1N+FcRjxbnrJdlAiWvGWZg==
X-Received: by 2002:a05:6358:9106:b0:174:fdd8:7cae with SMTP id q6-20020a056358910600b00174fdd87caemr5253448rwq.36.1703912682238;
        Fri, 29 Dec 2023 21:04:42 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:56fb:3e3a:cb3d:4a01])
        by smtp.gmail.com with ESMTPSA id s19-20020aa78293000000b006d9a9727a8esm12124536pfm.178.2023.12.29.21.04.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 21:04:41 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 6/7] layerindex: add Update Layer UI feature
Date: Fri, 29 Dec 2023 20:57:19 -0800
Message-Id: <bf57322ab19eba3bd93d789503e3f7b759ce9793.1703911977.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1703911977.git.tim.orling@konsulko.com>
References: <cover.1703911977.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Dec 2023 05:04:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62057

* Add an "Update Layer" button to the layer detail view.
  - This allows a user that is a member of is_staff to trigger
    an update of the current layer (for the current branch)
* Add an "Update Layer" button to the reviewdetail view
  - This allows a user that is a member of is_staff and has
    publish_layer permissions to trigger an update attempt
    of the layer under review (even in the un-published state)
* The update is run as a task with Celery

NOTE:
  You must have the RABBITMQ_ and DATABASE_ credentials set
  correctly in the docker/settings.py file or set via
  environment variables or you will get authentication errors
  talking to layersdb or layersrabbit containers.

[YOCTO #12484]

layerindex/views.py: add update_layer_view
layerindex/urls.py: add update_layer_view
layerindex/urls_branch.py: add update_layer_view
templates/layerindex/reviewdetail.html: add Update Layer button
templates/layerindex/detail.html: add Update Layer button
templates/layerindex: add updatelayer.html

TODO:
  While the update is happening, the AJAX rendering of the
  update.log is showing the b'' characters and not adding
  any new lines. If you go back to the same task view
  afterwards, the log is rendered as expected.

TODO:
  After the update is completed, it would be nice to have a
  button to return you to the page from where you called the
  "Update Layer".

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/urls.py                     |   2 +-
 layerindex/urls_branch.py              |   3 +-
 layerindex/views.py                    |  35 ++++++++
 templates/layerindex/detail.html       |   3 +
 templates/layerindex/reviewdetail.html |   3 +
 templates/layerindex/updatelayer.html  | 119 +++++++++++++++++++++++++
 6 files changed, 163 insertions(+), 2 deletions(-)
 create mode 100644 templates/layerindex/updatelayer.html

diff --git a/layerindex/urls.py b/layerindex/urls.py
index cee3d2a..1fcd11d 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -16,7 +16,7 @@ from layerindex.views import LayerListView, LayerReviewListView, LayerReviewDeta
     ClassicRecipeSearchView, ClassicRecipeDetailView, ClassicRecipeStatsView, LayerUpdateDetailView, UpdateListView, \
     UpdateDetailView, StatsView, publish_view, LayerCheckListView, BBClassCheckListView, TaskStatusView, \
     ComparisonRecipeSelectView, ComparisonRecipeSelectDetailView, task_log_view, task_stop_view, email_test_view, \
-    BranchCompareView, RecipeDependenciesView
+    BranchCompareView, RecipeDependenciesView, update_layer_view
 from layerindex.models import LayerItem, Recipe, RecipeChangeset
 from rest_framework import routers
 from . import restviews
diff --git a/layerindex/urls_branch.py b/layerindex/urls_branch.py
index 6736f32..40cd915 100644
--- a/layerindex/urls_branch.py
+++ b/layerindex/urls_branch.py
@@ -8,7 +8,7 @@
 
 from django.views.defaults import page_not_found
 from django.urls import include, re_path, reverse_lazy
-from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, DistroSearchView, ClassSearchView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView, LayerUpdateDetailView, layer_export_recipes_csv_view, comparison_update_view
+from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, DistroSearchView, ClassSearchView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView, LayerUpdateDetailView, layer_export_recipes_csv_view, comparison_update_view, update_layer_view
 
 urlpatterns = [
     re_path(r'^$',
@@ -41,6 +41,7 @@ urlpatterns = [
             template_name='layerindex/classes.html'),
             name='class_search'),
     re_path(r'^edit/(?P<slug>[-\w]+)/$', edit_layer_view, {'template_name': 'layerindex/editlayer.html'}, name="edit_layer"),
+    re_path(r'^update/(?P<slug>[-\w]+)/$', update_layer_view, {'template_name': 'layerindex/updatelayer.html'}, name="update_layer"),
     re_path(r'^duplicates/$',
         DuplicatesView.as_view(
             template_name='layerindex/duplicates.html'),
diff --git a/layerindex/views.py b/layerindex/views.py
index 1a29dde..25c045e 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -121,6 +121,41 @@ def delete_layer_view(request, template_name, slug):
             'cancel_url': layeritem.get_absolute_url()
         })
 
+def update_layer_view(request, template_name, branch='master', slug=None):
+    if not (request.user.is_authenticated and request.user.is_staff):
+        raise PermissionDenied
+    return_url = None
+    branchobj = Branch.objects.filter(name=branch)[:1].get()
+    if slug:
+        # Existing Layer Update
+        layeritem = get_object_or_404(LayerItem, name=slug)
+        layerbranch = get_object_or_404(LayerBranch, layer=layeritem, branch=branchobj)
+        returnto = request.GET.get('returnto', 'layer_item')
+        if returnto:
+            if returnto == 'layer_review':
+                return_url = reverse_lazy(returnto, args=(layeritem.name,))
+            else:
+                return_url = reverse_lazy(returnto, args=(branch, layeritem.name))
+    else:
+        # Pre-Publish Layer Update attempt
+        layeritem = LayerItem()
+        layerbranch = LayerBranch(layer=layeritem, branch=branchobj)
+
+    from celery import uuid
+
+    cmd = 'layerindex/update.py --layer %s --branch %s;' % (layeritem.name, branch)
+
+    task_id = uuid()
+    # Create this here first, because inside the task we don't have all of the required info
+    update = Update(task_id=task_id)
+    update.started = datetime.now()
+    update.triggered_by = request.user
+    update.save()
+
+    res = tasks.run_update_command.apply_async((branch, cmd), task_id=task_id)
+
+    return HttpResponseRedirect(reverse_lazy('task_status', kwargs={'task_id': task_id}))
+
 def edit_layer_view(request, template_name, branch='master', slug=None):
     return_url = None
     branchobj = Branch.objects.filter(name=branch)[:1].get()
diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
index 12ce156..0fa8caf 100644
--- a/templates/layerindex/detail.html
+++ b/templates/layerindex/detail.html
@@ -38,6 +38,9 @@
                         {% endif %}
                         {% if user.is_authenticated %}
                             <span class="pull-right">
+                                {% if user.is_staff %}
+                                    <a href="{% url 'update_layer' url_branch layeritem.name %}" class="btn btn-info">Update layer</a>
+                                {% endif %}
                                 {% if perms.layerindex.publish_layer or useredit %}
                                     <a href="{% url 'edit_layer' url_branch layeritem.name %}" class="btn btn-default">Edit layer</a>
                                     {% if layeritem.layernote_set.count == 0 %}
diff --git a/templates/layerindex/reviewdetail.html b/templates/layerindex/reviewdetail.html
index 8baab7c..39501be 100644
--- a/templates/layerindex/reviewdetail.html
+++ b/templates/layerindex/reviewdetail.html
@@ -47,6 +47,9 @@
                                     <a href="{% url 'delete_layer' layeritem.name %}" class="btn btn-warning">Delete layer</a>
                                     <a href="{% url 'publish' layeritem.name %}" class="btn btn-primary">Publish layer</a>
                                 {% endif %}
+                                {% if user.is_staff %}
+                                    <a href="{% url 'update_layer' 'master' layeritem.name %}" class="btn btn-info">Update layer</a>
+                                {% endif %}
                             </span>
                         {% endif %}
                     </h1>
diff --git a/templates/layerindex/updatelayer.html b/templates/layerindex/updatelayer.html
new file mode 100644
index 0000000..799fb51
--- /dev/null
+++ b/templates/layerindex/updatelayer.html
@@ -0,0 +1,119 @@
+{% extends "base.html" %}
+{% load i18n %}
+{% load extrafilters %}
+
+{% comment %}
+
+  layerindex-web - update page
+
+  Copyright (C) 2016, 2018 Intel Corporation
+  Licensed under the MIT license, see COPYING.MIT for details
+
+{% endcomment %}
+
+<!--
+{% block title_append %} - {{ update.started }} {% endblock %}
+-->
+
+{% block content %}
+{% autoescape on %}
+
+        <ul class="breadcrumb">
+            <li><a href="{% url 'update_list' %}">Updates</a></li>
+            <li class="active">{{ update.started }}</li>
+        </ul>
+
+
+<h2>{{ update.started }} {% if update.reload %}(reload){% endif %}
+<span id="status-label" class="label {% if update.finished %}{% if update.retcode %}label-danger{% else %}label-success{% endif %}{% endif %} pull-right">{% if update.finished %}{% if update.retcode < 0 %}TERMINATED ({{ update.retcode }}){% elif update.retcode %}FAILED{% endif %}{% endif %}</span>
+</h2>
+
+{% if update.log %}
+    <pre>{{ update.log }}</pre>
+{% endif %}
+
+{% for layerupdate in layerupdates %}
+    <table class="table table-bordered">
+        <thead>
+            {% with layerbranch_exists=layerupdate.layerbranch_exists %}
+            <tr><td{% if layerupdate.errors > 0 or layerupdate.retcode != 0 %} class="error"{% elif layerupdate.warnings %} class="warning"{% endif %}>
+            {% if layerbranch_exists %}<a href="{% url 'layer_item' layerupdate.branch.name layerupdate.layer.name %}">{% endif %}<strong>{{ layerupdate.layer.name }} {{ layerupdate.branch.name }}</strong>{% if layerbranch_exists %}</a>{% endif %}
+            {% if layerupdate.vcs_before_rev != layerupdate.vcs_after_rev %}
+            <span class="pull-right">
+                {% if layerbranch_exists %}
+                {% with before_url=layerupdate.vcs_before_commit_url after_url=layerupdate.vcs_after_commit_url %}
+                {% if before_url %}<a href="{{ before_url }}">{% endif %}{{ layerupdate.vcs_before_rev|truncatesimple:10 }}{% if before_url %}</a>{% endif %} &rarr; {% if after_url %}<a href="{{ after_url }}">{% endif %}{{ layerupdate.vcs_after_rev|truncatesimple:10 }}{% if after_url %}</a>{% endif %}
+                {% endwith %}
+                {% else %}
+                {{ layerupdate.vcs_before_rev|truncatesimple:10 }} → {{ layerupdate.vcs_after_rev|truncatesimple:10 }}
+                {% endif %}
+            </span>
+            {% endif %}
+            </td></tr>
+            {% endwith %}
+        </thead>
+        <tbody>
+            {% if layerupdate.log %}
+            <tr><td class="td-pre">
+            <pre class="pre-scrollable pre-plain">{{ layerupdate.log }}</pre>
+            </td></tr>
+            {% endif %}
+        </tbody>
+    </table>
+{% endfor %}
+
+{% if not update.log and not layerupdates %}
+    <p>No messages or layer updates</p>
+{% endif %}
+
+{% if update.comparisonrecipeupdate_set.exists %}
+<h3>Updated comparison recipes</h3>
+<ul>
+{% for recipeupdate in update.comparisonrecipeupdate_set.all %}
+    <li><a href="{% url 'comparison_recipe' recipeupdate.recipe.id %}">{{ recipeupdate.recipe.pn }}</a> {% if recipeupdate.meta_updated and recipeupdate.link_updated %}(meta, link){% elif recipeupdate.link_updated %}(link){% elif recipeupdate.meta_updated %}(meta){% endif %}</li>
+{% endfor %}
+</ul>
+{% endif %}
+
+{% endautoescape %}
+
+{% endblock %}
+{% if updates.count > 0 %}
+<div class="tab-pane" id="updates">
+    <nav class="navbar navbar-default">
+        <div class="container-fluid">
+            <div class="navbar-header">
+                <a class="navbar-brand">{{ layeritem.name }} updates</a>
+            </div>
+        </div>
+    </nav>
+
+    <table class="table table-bordered">
+        <thead>
+            <tr>
+                <th>Date/time</th>
+                <th>Errors</th>
+                <th>Warnings</th>
+            </tr>
+        </thead>
+        <tbody>
+            {% for update in updates %}
+                <tr>
+                    <td>
+                        {% if update.log %}
+                            <a href="{% url 'layerupdate' update.id %}">{{ update.started }}{% if update.update.reload %} (reload){% endif%}</a>
+                        {% else %}
+                            <span class="text-muted">{{ update.started }}{% if update.update.reload %} (reload){% endif%}</span>
+                        {% endif %}
+                    </td>
+                    <td>{% if update.errors %}<span class="badge badge-important">{{ update.errors }}</span>{% endif %}</td>
+                    <td>{% if update.warnings %}<span class="badge badge-warning">{{ update.warnings }}</span>{% endif %}</td>
+                </tr>
+            {% endfor %}
+        </tbody>
+    </table>
+</div>
+{% endif %}
+
+{% block scripts %}
+{% endblock %}
-- 
2.34.1


