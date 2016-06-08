Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DC9DE00D42; Wed,  8 Jun 2016 06:21:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79F48E00D10
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 06:21:05 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jun 2016 06:21:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,439,1459839600"; d="scan'208";a="824133802"
Received: from mshirsix-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.147.125])
	by orsmga003.jf.intel.com with ESMTP; 08 Jun 2016 06:20:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 Jun 2016 01:20:00 +1200
Message-Id: <5c17970642c30b7415dbb7633541d3e7311f4ca1.1465391621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH v2 07/15] Upgrade to Django 1.6+
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
X-List-Received-Date: Wed, 08 Jun 2016 13:21:33 -0000

I'd like to be upgrading to 1.8 but that causes problems with South, and
we're not quite ready to dispense with our existing migrations yet.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README                                             | 18 +++++-----
 layerindex/forms.py                                | 13 ++++----
 layerindex/restviews.py                            |  4 +--
 layerindex/urls.py                                 | 16 ++++-----
 layerindex/urls_branch.py                          |  3 +-
 layerindex/utils.py                                |  6 ----
 manage.py                                          | 20 ++++--------
 requirements.txt                                   | 38 +++++++++++-----------
 settings.py                                        |  2 +-
 templates/404.html                                 |  2 +-
 templates/base.html                                | 22 ++++++-------
 templates/base_toplevel.html                       |  3 +-
 templates/layerindex/about.html                    |  2 +-
 templates/layerindex/bulkchange.html               |  2 +-
 templates/layerindex/bulkchangereview.html         |  8 ++---
 templates/layerindex/bulkchangesearch.html         |  8 ++---
 templates/layerindex/classic_base.html             | 10 +++---
 templates/layerindex/classicrecipedetail.html      |  2 +-
 templates/layerindex/classicrecipes.html           | 10 +++---
 templates/layerindex/classicstats.html             |  4 +--
 templates/layerindex/detail.html                   | 14 ++++----
 templates/layerindex/duplicates.html               |  1 -
 templates/layerindex/editlayernote.html            |  2 +-
 templates/layerindex/layers.html                   |  8 ++---
 templates/layerindex/machines.html                 | 10 +++---
 templates/layerindex/profile.html                  |  2 +-
 templates/layerindex/recipedetail.html             | 12 +++----
 templates/layerindex/recipes.html                  | 12 +++----
 templates/layerindex/reviewdetail.html             | 14 ++++----
 templates/layerindex/reviewlist.html               |  2 +-
 templates/registration/activate.html               |  2 +-
 templates/registration/activation_email.txt        |  2 +-
 templates/registration/login.html                  |  4 +--
 .../registration/password_reset_complete.html      |  2 +-
 templates/registration/password_reset_email.html   |  2 +-
 urls.py                                            |  6 ++--
 36 files changed, 136 insertions(+), 152 deletions(-)

diff --git a/README b/README
index ff0a7a5..db788df 100644
--- a/README
+++ b/README
@@ -11,22 +11,22 @@ Setup
 
 In order to make use of this application you will need:
 
-* Django 1.4.x - tested with 1.4.1-1.4.10; newer versions may work, but
-  the application has not been tested with 1.5 or newer.
+* Django 1.6.x - tested with 1.6.10; newer versions may work, but
+  the application has not been tested with 1.7 or newer.
 * For production usage, a web server set up to host Django applications
   (not needed for local-only testing)
 * A database supported by Django (SQLite, MySQL, etc.). Django takes
   care of creating the database itself, you just need to ensure that the
   database server (if not using SQLite) is configured and running.
 * The following third-party Django modules (tested versions listed):
-  * django-south (0.8.4)
+  * django-south (1.0.2)
   * django-registration (1.0)
-  * django-reversion (1.7.1)
-  * django-reversion-compare (0.3.5)
-  * django-simple-captcha (0.4.1)
-  * django-nvd3 (0.6.0)
-  * djangorestframework (2.3.14)
-  * django-cors-headers (0.12)
+  * django-reversion (1.8.7)
+  * django-reversion-compare (0.4.0)
+  * django-simple-captcha (0.4.6)
+  * django-nvd3 (0.9.7)
+  * djangorestframework (3.2.5)
+  * django-cors-headers (1.1.0)
 * On the machine that will run the backend update script (which does not
   have to be the same machine as the web server, however it does still
   have to have Django installed, have the same or similar configuration
diff --git a/layerindex/forms.py b/layerindex/forms.py
index 60653cf..e15dbeb 100644
--- a/layerindex/forms.py
+++ b/layerindex/forms.py
@@ -6,7 +6,7 @@
 
 from layerindex.models import LayerItem, LayerBranch, LayerMaintainer, LayerNote, RecipeChangeset, RecipeChange, ClassicRecipe
 from django import forms
-from django.core.validators import URLValidator, RegexValidator, email_re
+from django.core.validators import URLValidator, RegexValidator, EmailValidator
 from django.forms.models import inlineformset_factory, modelformset_factory
 from captcha.fields import CaptchaField
 from django.contrib.auth.models import User
@@ -29,9 +29,8 @@ class LayerMaintainerForm(forms.ModelForm):
         if email:
             if len(email) < 7:
                 raise forms.ValidationError('%s is not a valid email address' % email)
-            reg = re.compile(email_re)
-            if not reg.match(email):
-                raise forms.ValidationError('%s is not a valid email address' % email)
+            val = EmailValidator()
+            val(email)
 
         return email
 
@@ -115,21 +114,21 @@ class EditLayerForm(forms.ModelForm):
     def clean_vcs_web_tree_base_url(self):
         url = self.cleaned_data['vcs_web_tree_base_url'].strip()
         if url:
-            val = URLValidator(verify_exists=False)
+            val = URLValidator()
             val(url)
         return url
 
     def clean_vcs_web_file_base_url(self):
         url = self.cleaned_data['vcs_web_file_base_url'].strip()
         if url:
-            val = URLValidator(verify_exists=False)
+            val = URLValidator()
             val(url)
         return url
 
     def clean_usage_url(self):
         usage = self.cleaned_data['usage_url'].strip()
         if usage.startswith('http'):
-            val = URLValidator(verify_exists=False)
+            val = URLValidator()
             val(usage)
         return usage
 
diff --git a/layerindex/restviews.py b/layerindex/restviews.py
index 61698a9..b33d3d1 100644
--- a/layerindex/restviews.py
+++ b/layerindex/restviews.py
@@ -1,6 +1,6 @@
-from models import Branch, LayerItem, LayerNote, LayerBranch, LayerDependency, Recipe, Machine
+from layerindex.models import Branch, LayerItem, LayerNote, LayerBranch, LayerDependency, Recipe, Machine
 from rest_framework import viewsets, serializers
-from querysethelper import params_to_queryset, get_search_tuple
+from layerindex.querysethelper import params_to_queryset, get_search_tuple
 
 class ParametricSearchableModelViewSet(viewsets.ModelViewSet):
     def get_queryset(self):
diff --git a/layerindex/urls.py b/layerindex/urls.py
index 1bd4f0b..e7808e6 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -4,9 +4,8 @@
 #
 # Licensed under the MIT license, see COPYING.MIT for details
 
-from django.conf.urls.defaults import *
-from django.views.generic import TemplateView, DetailView, ListView
-from django.views.generic.simple import redirect_to
+from django.conf.urls import *
+from django.views.generic import TemplateView, DetailView, ListView, RedirectView
 from django.views.defaults import page_not_found
 from django.core.urlresolvers import reverse_lazy
 from layerindex.views import LayerListView, LayerReviewListView, LayerReviewDetailView, RecipeSearchView, MachineSearchView, PlainTextListView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, HistoryListView, EditProfileFormView, AdvancedRecipeSearchView, BulkChangeView, BulkChangeSearchView, bulk_change_edit_view, bulk_change_patch_view, BulkChangeDeleteView, RecipeDetailView, RedirectParamsView, ClassicRecipeSearchView, ClassicRecipeDetailView, ClassicRecipeStatsView
@@ -24,19 +23,20 @@ router.register(r'recipes', restviews.RecipeViewSet)
 router.register(r'machines', restviews.MachineViewSet)
 
 urlpatterns = patterns('',
-    url(r'^$', redirect_to, {'url' : reverse_lazy('layer_list', args=('master',))},
+    url(r'^$',
+        RedirectView.as_view(url=reverse_lazy('layer_list', args=('master',))),
         name='frontpage'),
 
     url(r'^api/', include(router.urls)),
 
     url(r'^layers/$',
-        redirect_to, {'url' : reverse_lazy('layer_list', args=('master',))}),
+        RedirectView.as_view(url=reverse_lazy('layer_list', args=('master',)))),
     url(r'^layer/(?P<slug>[-\w]+)/$',
         RedirectParamsView.as_view(), {'redirect_name': 'layer_item', 'branch':'master'}),
     url(r'^recipes/$',
-        redirect_to, {'url' : reverse_lazy('recipe_search', args=('master',))}),
+        RedirectView.as_view(url=reverse_lazy('recipe_search', args=('master',)))),
     url(r'^machines/$',
-        redirect_to, {'url' : reverse_lazy('machine_search', args=('master',))}),
+        RedirectView.as_view(url=reverse_lazy('machine_search', args=('master',)))),
  
     url(r'^submit/$', edit_layer_view, {'template_name': 'layerindex/submitlayer.html'}, name="submit_layer"),
     url(r'^submit/thanks$',
@@ -107,7 +107,7 @@ urlpatterns = patterns('',
             template_name='layerindex/about.html'),
             name="about"),
     url(r'^oe-classic/$',
-        redirect_to, {'url' : reverse_lazy('classic_recipe_search')},
+        RedirectView.as_view(url=reverse_lazy('classic_recipe_search')),
             name='classic'),
     url(r'^oe-classic/recipes/$',
         ClassicRecipeSearchView.as_view(
diff --git a/layerindex/urls_branch.py b/layerindex/urls_branch.py
index b0f577c..ab5e2d5 100644
--- a/layerindex/urls_branch.py
+++ b/layerindex/urls_branch.py
@@ -4,8 +4,7 @@
 #
 # Licensed under the MIT license, see COPYING.MIT for details
 
-from django.conf.urls.defaults import *
-from django.views.generic.simple import redirect_to
+from django.conf.urls import *
 from django.views.defaults import page_not_found
 from django.core.urlresolvers import reverse_lazy
 from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, PlainTextListView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView
diff --git a/layerindex/utils.py b/layerindex/utils.py
index 440cc88..ebb89d3 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -57,12 +57,6 @@ def setup_django():
     sys.path.append(newpath)
     os.environ['DJANGO_SETTINGS_MODULE'] = 'settings'
 
-    from django.core.management import setup_environ
-    from django.conf import settings
-    import settings
-
-    setup_environ(settings)
-
 def logger_create(name):
     logger = logging.getLogger(name)
     loggerhandler = logging.StreamHandler()
diff --git a/manage.py b/manage.py
index 0b219fb..0a64562 100644
--- a/manage.py
+++ b/manage.py
@@ -6,20 +6,14 @@
 #
 # Copyright (c) Django Software Foundation and individual contributors.
 # All rights reserved.
-
+#!/usr/bin/env python
 import os
-
-from django.core.management import execute_manager
-import imp
-try:
-    imp.find_module('settings') # Assumed to be in the same directory.
-except ImportError:
-    import sys
-    sys.stderr.write("Error: Can't find the file 'settings.py' in the directory containing %r. It appears you've customized things.\nYou'll have to run django-admin.py, passing it your settings module.\n" % __file__)
-    sys.exit(1)
-
-import settings
+import sys
 
 if __name__ == "__main__":
     os.environ.setdefault("DJANGO_SETTINGS_MODULE", "settings")
-    execute_manager(settings)
+
+    from django.core.management import execute_from_command_line
+
+    execute_from_command_line(sys.argv)
+
diff --git a/requirements.txt b/requirements.txt
index cde88a0..ea5beee 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1,20 +1,20 @@
-Django>=1.4,<1.5
-GitPython>=0.3.7
-Jinja2==2.7.3
+Django==1.6.11
+django-cors-headers==1.1.0
+django-nvd3==0.9.7
+django-registration==1.0
+django-reversion==1.8.7
+django-reversion-compare==0.4.0
+django-simple-captcha==0.4.6
+djangorestframework==3.2.5
+gitdb==0.6.4
+GitPython==2.0.5
+Jinja2==2.8
 MarkupSafe==0.23
-Pillow>=2.4.0
-South==0.8.4
-Unidecode==0.04.16
-argparse==1.2.1
-awesome-slugify==1.5
-django-cors-headers==0.12
-django-nvd3==0.7.4
-django-registration==0.8
-django-reversion==1.6.6
-django-reversion-compare==0.3.5
-django-simple-captcha==0.4.2
-djangorestframework==2.3.14
-python-nvd3==0.12.2
-regex==2014.06.28
-six==1.7.3
-wsgiref==0.1.2
+mysqlclient==1.3.7
+Pillow==3.2.0
+python-nvd3==0.14.2
+python-slugify==1.1.4
+six==1.10.0
+smmap==0.9.0
+South==1.0.2
+Unidecode==0.4.19
diff --git a/settings.py b/settings.py
index b21a5b4..b731a6b 100644
--- a/settings.py
+++ b/settings.py
@@ -131,7 +131,7 @@ TEMPLATE_DIRS = (
     # Put strings here, like "/home/html/django_templates" or "C:/www/django/templates".
     # Always use forward slashes, even on Windows.
     # Don't forget to use absolute paths, not relative paths.
-    BASE_DIR + "/templates"
+    BASE_DIR + "/templates",
 )
 
 INSTALLED_APPS = (
diff --git a/templates/404.html b/templates/404.html
index 843d5bc..5bd5f75 100644
--- a/templates/404.html
+++ b/templates/404.html
@@ -22,7 +22,7 @@
 
 <p>The page you requested was not found.</p>
 
-<p><a href="{% url frontpage %}">Return to the front page</a></p>
+<p><a href="{% url 'frontpage' %}">Return to the front page</a></p>
 
 {% endautoescape %}
 {% endblock %}
diff --git a/templates/base.html b/templates/base.html
index c872383..fedcfe2 100644
--- a/templates/base.html
+++ b/templates/base.html
@@ -28,13 +28,13 @@
     <div class="navbar navbar-fixed-top">
         <div class="navbar-inner">
             <div class="container-fluid">
-                <a class="brand" href="{% url frontpage %}">{{ site_name }}</a>
+                <a class="brand" href="{% url 'frontpage' %}">{{ site_name }}</a>
 
                 {% if user.is_authenticated %}
                     <div class="btn-group pull-right">
                         {% if perms.layerindex.publish_layer %}
                         {% if unpublished_count > 0 %}
-                        <a class="btn" href="{% url layer_list_review %}?branch=master">
+                        <a class="btn" href="{% url 'layer_list_review' %}?branch=master">
                             <span class="badge badge-warning review-notification">{{ unpublished_count }}</span>
                         </a>
                         {% endif %}
@@ -45,14 +45,14 @@
                             <b class="caret"></b>
                         </button>
                         <ul class="dropdown-menu">
-                            <li><a href="{% url auth_logout %}">{% trans "Log out" %}</a></li>
-                            <li><a href="{% url auth_password_change %}">{% trans "Change password" %}</a></li>
-                            <li><a href="{% url profile %}">{% trans "Edit profile" %}</a></li>
+                            <li><a href="{% url 'auth_logout' %}">{% trans "Log out" %}</a></li>
+                            <li><a href="{% url 'auth_password_change' %}">{% trans "Change password" %}</a></li>
+                            <li><a href="{% url 'profile' %}">{% trans "Edit profile" %}</a></li>
                         </ul>
                     </div>
                 {% else %}
                     <div class="pull-right">
-                        <a class="btn" href="{% url auth_login %}">{% trans "Log in" %}</a>
+                        <a class="btn" href="{% url 'auth_login' %}">{% trans "Log in" %}</a>
                     </div>
                 {% endif %}
                 <ul class="nav pull-right">
@@ -60,7 +60,7 @@
                 </ul>
                 {% block topfunctions %}
                 <div class="pull-right nav-spacer">
-                    <a class="btn btn-info" href="{% url submit_layer %}">Submit layer</a>
+                    <a class="btn btn-info" href="{% url 'submit_layer' %}">Submit layer</a>
                 </div>
                 <ul class="nav pull-right">
                     {% if user.is_authenticated %}
@@ -70,8 +70,8 @@
                         <b class="caret"></b>
                         </a>
                         <ul class="dropdown-menu">
-                            <li><a href="{% url bulk_change %}">Bulk Change</a></li>
-                            <li><a href="{% url duplicates 'master' %}">Duplicates</a></li>
+                            <li><a href="{% url 'bulk_change' %}">Bulk Change</a></li>
+                            <li><a href="{% url 'duplicates' 'master' %}">Duplicates</a></li>
                         </ul>
                     </li>
                     {% endif %}
@@ -96,8 +96,8 @@
         {% block footer %}
         <hr />
         <div class="footer">
-            <a href="{% url history_list %}">change history</a>
-            &bull; <a href="{% url about %}">about this site</a>
+            <a href="{% url 'history_list' %}">change history</a>
+            &bull; <a href="{% url 'about' %}">about this site</a>
             &bull; <a href="http://www.openembedded.org/Layers_FAQ">FAQ</a>
         </div>
 
diff --git a/templates/base_toplevel.html b/templates/base_toplevel.html
index d9ea7bb..c86ccc2 100644
--- a/templates/base_toplevel.html
+++ b/templates/base_toplevel.html
@@ -1,7 +1,6 @@
 {% extends "base.html" %}
 {% load i18n %}
 
-{% load url from future %}
 {% comment %}
 
   layerindex-web - top level page template
@@ -56,4 +55,4 @@
         </div>
     </div>
 
-{% endblock %}
\ No newline at end of file
+{% endblock %}
diff --git a/templates/layerindex/about.html b/templates/layerindex/about.html
index 67c646a..3e98825 100644
--- a/templates/layerindex/about.html
+++ b/templates/layerindex/about.html
@@ -11,7 +11,7 @@
 
 <p>This website indexes layers for the <a href="http://www.openembedded.org">OpenEmbedded</a> build system provided by members of the OpenEmbedded / Yocto Project community, suitable for use on top of OpenEmbedded-Core and compatible systems, providing additional recipes, machine support and/or distro policy configuration.</p>
 
-<p>If you have a layer for use with OpenEmbedded that you wish to share with others, please <a href="{% url submit_layer %}">submit it</a>!</p>
+<p>If you have a layer for use with OpenEmbedded that you wish to share with others, please <a href="{% url 'submit_layer' %}">submit it</a>!</p>
 
 <h3>Technologies</h3>
 
diff --git a/templates/layerindex/bulkchange.html b/templates/layerindex/bulkchange.html
index e7fc270..e8936de 100644
--- a/templates/layerindex/bulkchange.html
+++ b/templates/layerindex/bulkchange.html
@@ -29,7 +29,7 @@ generate a patch for these changes which can be submitted for merging.</p>
     <h3>Select an existing changeset</h3>
     <ul>
     {% for changeset in changesets %}
-        <li><a href="{% url bulk_change_search changeset.id %}">{{ changeset.name }}</a></li>
+        <li><a href="{% url 'bulk_change_search' changeset.id %}">{{ changeset.name }}</a></li>
     {% endfor %}
     </ul>
 {% endif %}
diff --git a/templates/layerindex/bulkchangereview.html b/templates/layerindex/bulkchangereview.html
index 5fb971e..a95bb5d 100644
--- a/templates/layerindex/bulkchangereview.html
+++ b/templates/layerindex/bulkchangereview.html
@@ -37,10 +37,10 @@
     </li>
 {% endfor %}
 </ul>
-<a href="{% url bulk_change_search changeset.id %}" class="btn">Add recipes</a>
-<a href="{% url bulk_change_edit changeset.id %}" class="btn">Edit</a>
-<a href="{% url bulk_change_patches changeset.id %}" class="btn">Get patches</a>
-<a href="{% url bulk_change_delete changeset.id %}?cancel=bulk_change_review" class="btn">Delete</a>
+<a href="{% url 'bulk_change_search' changeset.id %}" class="btn">Add recipes</a>
+<a href="{% url 'bulk_change_edit' changeset.id %}" class="btn">Edit</a>
+<a href="{% url 'bulk_change_patches' changeset.id %}" class="btn">Get patches</a>
+<a href="{% url 'bulk_change_delete' changeset.id %}?cancel=bulk_change_review" class="btn">Delete</a>
 
 {% endautoescape %}
 
diff --git a/templates/layerindex/bulkchangesearch.html b/templates/layerindex/bulkchangesearch.html
index 134f9a3..0cb83ff 100644
--- a/templates/layerindex/bulkchangesearch.html
+++ b/templates/layerindex/bulkchangesearch.html
@@ -78,10 +78,10 @@
                             {% for recipe in recipe_list %}
                                 <tr>
                                     <td><input type="checkbox" name="selecteditems" value="{{ recipe.id }}"></input></td>
-                                    <td><a href="{% url recipe recipe.id %}">{{ recipe.name }}</a></td>
+                                    <td><a href="{% url 'recipe' recipe.id %}">{{ recipe.name }}</a></td>
                                     <td>{{ recipe.pv }}</td>
                                     <td>{{ recipe.short_desc }}</td>
-                                    <td><a href="{% url layer_item current_branch recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a></td>
+                                    <td><a href="{% url 'layer_item' current_branch recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a></td>
                                 </tr>
                             {% endfor %}
                         </tbody>
@@ -120,9 +120,9 @@
                             </ul>
                         </small>
                         <input type="submit" class="btn" name="remove_all" value="Remove all"></input>
-                        <a href="{% url bulk_change_edit changeset.id %}" class="btn">Edit</a>
+                        <a href="{% url 'bulk_change_edit' changeset.id %}" class="btn">Edit</a>
                         {% endif %}
-                        <a href="{% url bulk_change_delete changeset.id %}?cancel=bulk_change_search" class="btn">Delete</a>
+                        <a href="{% url 'bulk_change_delete' changeset.id %}?cancel=bulk_change_search" class="btn">Delete</a>
                     </div>
                     {% endif %}
                 </form>
diff --git a/templates/layerindex/classic_base.html b/templates/layerindex/classic_base.html
index eab56f2..7ba63f5 100644
--- a/templates/layerindex/classic_base.html
+++ b/templates/layerindex/classic_base.html
@@ -24,7 +24,7 @@
                             </a>
                             <ul class="dropdown-menu">
                                 {% for branch in all_branches %}
-                                    <li><a href="{% url layer_list branch.name %}">
+                                    <li><a href="{% url 'layer_list' branch.name %}">
                                         {{ branch.name }}
                                         {% if branch.short_description %}
                                         ({{ branch.short_description }})
@@ -32,7 +32,7 @@
                                     </a></li>
                                 {% endfor %}
                                 <li class="divider"></li>
-                                <li><a href="{% url classic %}"><b>OE-Classic</b></a></li>
+                                <li><a href="{% url 'classic' %}"><b>OE-Classic</b></a></li>
                             </ul>
                         </li>
 {% endautoescape %}
@@ -48,9 +48,9 @@
 
                 <p>OpenEmbedded-Classic (OE-Classic) is the name for the old monolithic version of OpenEmbedded. It contained a number of recipes some of which have not yet been migrated on top of OE-Core. To help people to find and migrate these recipes we provide an index here as well as some statistics to get an idea of the migration.</p>
 
-                <a class="btn btn-large btn-primary" href="{% url classic_recipe_search %}">Recipes</a>
-                <a class="btn btn-large" href="{% url classic_recipe_search %}?q=&cover_status=!">Unmigrated Recipes</a>
-                <a class="btn btn-large btn-primary" href="{% url classic_recipe_stats %}">Stats</a>
+                <a class="btn btn-large btn-primary" href="{% url 'classic_recipe_search' %}">Recipes</a>
+                <a class="btn btn-large" href="{% url 'classic_recipe_search' %}?q=&cover_status=!">Unmigrated Recipes</a>
+                <a class="btn btn-large btn-primary" href="{% url 'classic_recipe_stats' %}">Stats</a>
             </div>
 
         </div>
diff --git a/templates/layerindex/classicrecipedetail.html b/templates/layerindex/classicrecipedetail.html
index 9df9a84..45d845f 100644
--- a/templates/layerindex/classicrecipedetail.html
+++ b/templates/layerindex/classicrecipedetail.html
@@ -21,7 +21,7 @@
 {% autoescape on %}
 
         <ul class="breadcrumb">
-            <li><a href="{% url classic_recipe_search %}">OE-Classic</a> <span class="divider">&rarr;</span></li>
+            <li><a href="{% url 'classic_recipe_search' %}">OE-Classic</a> <span class="divider">&rarr;</span></li>
             <li class="active">{{ recipe.name }}</li>
         </ul>
 
diff --git a/templates/layerindex/classicrecipes.html b/templates/layerindex/classicrecipes.html
index 7fb62be..799dbb4 100644
--- a/templates/layerindex/classicrecipes.html
+++ b/templates/layerindex/classicrecipes.html
@@ -17,8 +17,8 @@
 
 {% block navs %}
 {% autoescape on %}
-                            <li class="active"><a href="{% url classic_recipe_search %}">Recipes</a></li>
-                            <li><a href="{% url classic_recipe_stats %}">Stats</a></li>
+                            <li class="active"><a href="{% url 'classic_recipe_search' %}">Recipes</a></li>
+                            <li><a href="{% url 'classic_recipe_stats' %}">Stats</a></li>
 {% endautoescape %}
 {% endblock %}
 
@@ -31,7 +31,7 @@
                 <h2>OE-Classic recipes</h2>
 
                 <div class="alert alert-warning">
-                    <b>NOTE:</b> This is the recipe search for OE-Classic, the older monolithic version of OpenEmbedded which is no longer actively developed. <a href="{% url recipe_search 'master' %}">Click here</a> to search current recipes.
+                    <b>NOTE:</b> This is the recipe search for OE-Classic, the older monolithic version of OpenEmbedded which is no longer actively developed. <a href="{% url 'recipe_search' 'master' %}">Click here</a> to search current recipes.
                 </div>
 
                 <div class="row-fluid">
@@ -72,13 +72,13 @@
                     <tbody>
                         {% for recipe in recipe_list %}
                             <tr {% if recipe.preferred_count > 0 %}class="muted"{% endif %}>
-                                <td><a href="{% url classic_recipe recipe.id %}">{{ recipe.name }}</a></td>
+                                <td><a href="{% url 'classic_recipe' recipe.id %}">{{ recipe.name }}</a></td>
                                 <td>{{ recipe.pv }}</td>
                                 <td>{{ recipe.short_desc }}</td>
                                 <td>{{ recipe.get_cover_desc }}</td>
                                 <td>{{ recipe.classic_category }}</td>
                                 {% if multi_classic_layers %}
-                                <td><a href="{% url layer_item recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a></td>
+                                <td><a href="{% url 'layer_item' recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a></td>
                                 {% endif %}
                             </tr>
                         {% endfor %}
diff --git a/templates/layerindex/classicstats.html b/templates/layerindex/classicstats.html
index 2fde01b..63d0b43 100644
--- a/templates/layerindex/classicstats.html
+++ b/templates/layerindex/classicstats.html
@@ -19,8 +19,8 @@
 
 {% block navs %}
 {% autoescape on %}
-                            <li><a href="{% url classic_recipe_search %}">Recipes</a></li>
-                            <li class="active"><a href="{% url classic_recipe_stats %}">Stats</a></li>
+                            <li><a href="{% url 'classic_recipe_search' %}">Recipes</a></li>
+                            <li class="active"><a href="{% url 'classic_recipe_stats' %}">Stats</a></li>
 {% endautoescape %}
 {% endblock %}
 
diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
index feb2c6c..d0d11c0 100644
--- a/templates/layerindex/detail.html
+++ b/templates/layerindex/detail.html
@@ -22,7 +22,7 @@
 
 {% autoescape on %}
         <ul class="breadcrumb">
-            <li><a href="{% url layer_list url_branch %}">{{ layerbranch.branch.name }}</a> <span class="divider">&rarr;</span></li>
+            <li><a href="{% url 'layer_list' url_branch %}">{{ layerbranch.branch.name }}</a> <span class="divider">&rarr;</span></li>
             <li class="active">{{ layeritem.name }}</li>
         </ul>
 
@@ -36,9 +36,9 @@
                         {% if user.is_authenticated %}
                             <span class="pull-right">
                                 {% if perms.layerindex.publish_layer or useredit %}
-                                    <a href="{% url edit_layer url_branch layeritem.name %}" class="btn">Edit layer</a>
+                                    <a href="{% url 'edit_layer' url_branch layeritem.name %}" class="btn">Edit layer</a>
                                     {% if layeritem.layernote_set.count = 0 %}
-                                        <a href="{% url add_layernote layeritem.name %}" class="btn">Add note</a>
+                                        <a href="{% url 'add_layernote' layeritem.name %}" class="btn">Add note</a>
                                     {% endif %}
                                 {% endif %}
                             </span>
@@ -63,8 +63,8 @@
                         {% if perms.layerindex.publish_layer or useredit %}
                             <br><br>
                             <p>
-                                <a href="{% url edit_layernote layeritem.name note.pk %}" class="btn">Edit note</a>
-                                <a href="{% url delete_layernote layeritem.name note.pk %}" class='btn'>Delete note</a>
+                                <a href="{% url 'edit_layernote' layeritem.name note.pk %}" class="btn">Edit note</a>
+                                <a href="{% url 'delete_layernote' layeritem.name note.pk %}" class='btn'>Delete note</a>
                             </p>
                         {% endif %}
                     </div>
@@ -144,7 +144,7 @@
                             <p>The {{ layeritem.name }} layer depends upon:</p>
                             <ul>
                                 {% for dep in layerbranch.dependencies_set.all %}
-                                    <li><a href="{% url layer_item url_branch dep.dependency.name %}">{{ dep.dependency.name }}</a></li>
+                                    <li><a href="{% url 'layer_item' url_branch dep.dependency.name %}">{{ dep.dependency.name }}</a></li>
                                 {% endfor %}
                             </ul>
                          </div> <!-- end of well -->
@@ -198,7 +198,7 @@
                         <tbody>
                             {% for recipe in layerbranch.sorted_recipes %}
                                 <tr>
-                                    <td><a href="{% url recipe recipe.id %}">{{ recipe.name }}</a>{% if 'image' in recipe.inherits.split %}<i class="icon-hdd"></i>{% endif %}{% if recipe.blacklisted %}<span class="label label-inverse" title="{{ recipe.blacklisted }}">blacklisted</span>{% endif %}</td>
+                                    <td><a href="{% url 'recipe' recipe.id %}">{{ recipe.name }}</a>{% if 'image' in recipe.inherits.split %}<i class="icon-hdd"></i>{% endif %}{% if recipe.blacklisted %}<span class="label label-inverse" title="{{ recipe.blacklisted }}">blacklisted</span>{% endif %}</td>
                                     <td>{{ recipe.pv }}</td>
                                     <td class="span8">{{ recipe.short_desc }}</td>
                                 </tr>
diff --git a/templates/layerindex/duplicates.html b/templates/layerindex/duplicates.html
index 116aab9..0ebfe11 100644
--- a/templates/layerindex/duplicates.html
+++ b/templates/layerindex/duplicates.html
@@ -1,6 +1,5 @@
 {% extends "base_toplevel.html" %}
 {% load i18n %}
-{% load url from future %}
 
 {% comment %}
 
diff --git a/templates/layerindex/editlayernote.html b/templates/layerindex/editlayernote.html
index 1c7693c..abf8299 100644
--- a/templates/layerindex/editlayernote.html
+++ b/templates/layerindex/editlayernote.html
@@ -25,7 +25,7 @@
     {% csrf_token %}
     {{ form.as_p }}
 <input type="submit" value="Save" class='btn' />
-<a href="{% url layer_item 'master' form.instance.layer.name %}" class='btn'>Cancel</a>
+<a href="{% url 'layer_item' 'master' form.instance.layer.name %}" class='btn'>Cancel</a>
 </form>
 
 {% endautoescape %}
diff --git a/templates/layerindex/layers.html b/templates/layerindex/layers.html
index 4ca43fc..cfc4ebd 100644
--- a/templates/layerindex/layers.html
+++ b/templates/layerindex/layers.html
@@ -18,9 +18,9 @@
 
 {% block navs %}
 {% autoescape on %}
-                            <li class="active"><a href="{% url layer_list url_branch %}">Layers</a></li>
-                            <li><a href="{% url recipe_search url_branch %}">Recipes</a></li>
-                            <li><a href="{% url machine_search url_branch %}">Machines</a></li>
+                            <li class="active"><a href="{% url 'layer_list' url_branch %}">Layers</a></li>
+                            <li><a href="{% url 'recipe_search' url_branch %}">Recipes</a></li>
+                            <li><a href="{% url 'machine_search' url_branch %}">Machines</a></li>
 {% endautoescape %}
 {% endblock %}
 
@@ -71,7 +71,7 @@
                 <tbody>
                     {% for layerbranch in layerbranch_list %}
                     <tr class="layertype_{{ layerbranch.layer.layer_type }}">
-                        <td><a href="{% url layer_item url_branch layerbranch.layer.name %}">{{ layerbranch.layer.name }}</a></td>
+                        <td><a href="{% url 'layer_item' url_branch layerbranch.layer.name %}">{{ layerbranch.layer.name }}</a></td>
                         <td>{{ layerbranch.layer.summary }}</td>
                         <td>{{ layerbranch.layer.get_layer_type_display }}</td>
                         <td class="showRollie">
diff --git a/templates/layerindex/machines.html b/templates/layerindex/machines.html
index 1851937..e31433c 100644
--- a/templates/layerindex/machines.html
+++ b/templates/layerindex/machines.html
@@ -17,9 +17,9 @@
 
 {% block navs %}
 {% autoescape on %}
-                            <li><a href="{% url layer_list url_branch %}">Layers</a></li>
-                            <li><a href="{% url recipe_search url_branch %}">Recipes</a></li>
-                            <li class="active"><a href="{% url machine_search url_branch %}">Machines</a></li>
+                            <li><a href="{% url 'layer_list' url_branch %}">Layers</a></li>
+                            <li><a href="{% url 'recipe_search' url_branch %}">Recipes</a></li>
+                            <li class="active"><a href="{% url 'machine_search' url_branch %}">Machines</a></li>
 {% endautoescape %}
 {% endblock %}
 
@@ -30,7 +30,7 @@
 
                 <div class="row-fluid">
                     <div class="input-append">
-                        <form id="filter-form" action="{% url machine_search url_branch %}" method="get">
+                        <form id="filter-form" action="{% url 'machine_search' url_branch %}" method="get">
                             <input type="text" class="input-xxlarge" id="appendedInputButtons" placeholder="Search machines" name="q" value="{{ search_keyword }}" />
                             <button class="btn" type="submit">search</button>
                         </form>
@@ -52,7 +52,7 @@
                             <tr>
                                 <td><a href="{{ machine.vcs_web_url }}">{{ machine.name }}</a></td>
                                 <td>{{ machine.description }}</td>
-                                <td><a href="{% url layer_item url_branch machine.layerbranch.layer.name %}">{{ machine.layerbranch.layer.name }}</a></td>
+                                <td><a href="{% url 'layer_item' url_branch machine.layerbranch.layer.name %}">{{ machine.layerbranch.layer.name }}</a></td>
                             </tr>
                         {% endfor %}
                     </tbody>
diff --git a/templates/layerindex/profile.html b/templates/layerindex/profile.html
index 8edc451..d6d25ce 100644
--- a/templates/layerindex/profile.html
+++ b/templates/layerindex/profile.html
@@ -42,7 +42,7 @@
     {% endfor %}
 
   <input type="submit" class="btn" value="{% trans 'Save' %}" />
-  <a class="btn" href="{% url frontpage %}">{% trans 'Cancel' %}</a>
+  <a class="btn" href="{% url 'frontpage' %}">{% trans 'Cancel' %}</a>
   {% csrf_token %}
 </form>
 
diff --git a/templates/layerindex/recipedetail.html b/templates/layerindex/recipedetail.html
index 7dbb362..c0199a1 100644
--- a/templates/layerindex/recipedetail.html
+++ b/templates/layerindex/recipedetail.html
@@ -21,8 +21,8 @@
 {% autoescape on %}
 
         <ul class="breadcrumb">
-            <li><a href="{% url layer_list recipe.layerbranch.branch.name %}">{{ recipe.layerbranch.branch.name }}</a> <span class="divider">&rarr;</span></li>
-            <li><a href="{% url layer_item recipe.layerbranch.branch.name recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a> <span class="divider">&rarr;</span></li>
+            <li><a href="{% url 'layer_list' recipe.layerbranch.branch.name %}">{{ recipe.layerbranch.branch.name }}</a> <span class="divider">&rarr;</span></li>
+            <li><a href="{% url 'layer_item' recipe.layerbranch.branch.name recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a> <span class="divider">&rarr;</span></li>
             <li class="active">{{ recipe.name }}</li>
         </ul>
 
@@ -36,7 +36,7 @@
             {% if recipe.blacklisted %}
                 <div class="alert">
                     <div class="row-fluid">
-                        <p>This recipe is <strong>blacklisted</strong> by the <a href="{% url layer_item recipe.layerbranch.branch.name recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a> layer. The reason provided is:</p>
+                        <p>This recipe is <strong>blacklisted</strong> by the <a href="{% url 'layer_item' recipe.layerbranch.branch.name recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a> layer. The reason provided is:</p>
                         <blockquote class="span7 warn">
                             <p>{{ recipe.blacklisted }}</p>
                         </blockquote>
@@ -92,7 +92,7 @@
                         </tr>
                         <tr>
                             <th>Layer</th>
-                            <td><a href="{% url layer_item recipe.layerbranch.branch.name recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a> ({{ recipe.layerbranch.branch.name}} branch)</td>
+                            <td><a href="{% url 'layer_item' recipe.layerbranch.branch.name recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a> ({{ recipe.layerbranch.branch.name}} branch)</td>
                         </tr>
                         <tr>
                             <th>Inherits</th>
@@ -116,7 +116,7 @@
                 {% for append in verappends %}
                     <tr>
                         <td>
-                            <a href="{% url layer_item append.layerbranch.branch.name append.layerbranch.layer.name %}">{{ append.layerbranch.layer.name }}</a>
+                            <a href="{% url 'layer_item' append.layerbranch.branch.name append.layerbranch.layer.name %}">{{ append.layerbranch.layer.name }}</a>
                         </td>
                         <td>
                             <a href="{{ append.vcs_web_url }}">{{ append.filename }}</a>
@@ -127,7 +127,7 @@
                     {% if not append in verappends %}
                     <tr>
                         <td>
-                            <a href="{% url layer_item append.layerbranch.branch.name append.layerbranch.layer.name %}" class="muted">{{ append.layerbranch.layer.name }}</a>
+                            <a href="{% url 'layer_item' append.layerbranch.branch.name append.layerbranch.layer.name %}" class="muted">{{ append.layerbranch.layer.name }}</a>
                         </td>
                         <td>
                             <a href="{{ append.vcs_web_url }}" class="muted">{{ append.filename }}</a>
diff --git a/templates/layerindex/recipes.html b/templates/layerindex/recipes.html
index c2141a4..74f3bb4 100644
--- a/templates/layerindex/recipes.html
+++ b/templates/layerindex/recipes.html
@@ -17,9 +17,9 @@
 
 {% block navs %}
 {% autoescape on %}
-                            <li><a href="{% url layer_list url_branch %}">Layers</a></li>
-                            <li class="active"><a href="{% url recipe_search url_branch %}">Recipes</a></li>
-                            <li><a href="{% url machine_search url_branch %}">Machines</a></li>
+                            <li><a href="{% url 'layer_list' url_branch %}">Layers</a></li>
+                            <li class="active"><a href="{% url 'recipe_search' url_branch %}">Recipes</a></li>
+                            <li><a href="{% url 'machine_search' url_branch %}">Machines</a></li>
 {% endautoescape %}
 {% endblock %}
 
@@ -31,7 +31,7 @@
 
                 <div class="row-fluid">
                     <div class="input-append">
-                        <form id="filter-form" action="{% url recipe_search url_branch %}" method="get">
+                        <form id="filter-form" action="{% url 'recipe_search' url_branch %}" method="get">
                             <input type="text" class="input-xxlarge" id="appendedInputButtons" placeholder="Search recipes" name="q" value="{{ search_keyword }}" />
                             <button class="btn" type="submit">search</button>
                         </form>
@@ -52,10 +52,10 @@
                     <tbody>
                         {% for recipe in recipe_list %}
                             <tr {% if recipe.preferred_count > 0 %}class="muted"{% endif %}>
-                                <td><a href="{% url recipe recipe.id %}">{{ recipe.name }}</a>{% if 'image' in recipe.inherits.split %}<i class="icon-hdd"></i>{% endif %}{% if recipe.blacklisted %}<span class="label label-inverse" title="{{ recipe.blacklisted }}">blacklisted</span>{% endif %}</td>
+                                <td><a href="{% url 'recipe' recipe.id %}">{{ recipe.name }}</a>{% if 'image' in recipe.inherits.split %}<i class="icon-hdd"></i>{% endif %}{% if recipe.blacklisted %}<span class="label label-inverse" title="{{ recipe.blacklisted }}">blacklisted</span>{% endif %}</td>
                                 <td>{{ recipe.pv }}</td>
                                 <td>{{ recipe.short_desc }}</td>
-                                <td><a href="{% url layer_item url_branch recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a></td>
+                                <td><a href="{% url 'layer_item' url_branch recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a></td>
                             </tr>
                         {% endfor %}
                     </tbody>
diff --git a/templates/layerindex/reviewdetail.html b/templates/layerindex/reviewdetail.html
index 5840e25..cff1731 100644
--- a/templates/layerindex/reviewdetail.html
+++ b/templates/layerindex/reviewdetail.html
@@ -35,14 +35,14 @@
                         {% if user.is_authenticated %}
                             <span class="pull-right">
                                 {% if perms.layerindex.publish_layer or useredit %}
-                                    <a href="{% url edit_layer 'master' layeritem.name %}?returnto=layer_review" class="btn">Edit layer</a>
+                                    <a href="{% url 'edit_layer' 'master' layeritem.name %}?returnto=layer_review" class="btn">Edit layer</a>
                                     {% if layeritem.layernote_set.count = 0 %}
-                                        <a href="{% url add_layernote layeritem.name %}" class="btn">Add note</a>
+                                        <a href="{% url 'add_layernote' layeritem.name %}" class="btn">Add note</a>
                                     {% endif %}
                                 {% endif %}
                                 {% if layeritem.status = "N" and perms.layerindex.publish_layer %}
-                                    <a href="{% url delete_layer layeritem.name %}" class="btn btn-warning">Delete layer</a>
-                                    <a href="{% url publish layeritem.name %}" class="btn btn-primary">Publish layer</a>
+                                    <a href="{% url 'delete_layer' layeritem.name %}" class="btn btn-warning">Delete layer</a>
+                                    <a href="{% url 'publish' layeritem.name %}" class="btn btn-primary">Publish layer</a>
                                 {% endif %}
                             </span>
                         {% endif %}
@@ -58,8 +58,8 @@
                         <p>{{ note.text }}</p>
                         {% if perms.layerindex.publish_layer or useredit %}
                             <p>
-                                <a href="{% url edit_layernote layeritem.name note.pk %}" class="btn">Edit note</a>
-                                <a href="{% url delete_layernote layeritem.name note.pk %}" class='btn'>Delete note</a>
+                                <a href="{% url 'edit_layernote' layeritem.name note.pk %}" class="btn">Edit note</a>
+                                <a href="{% url 'delete_layernote' layeritem.name note.pk %}" class='btn'>Delete note</a>
                             </p>
                         {% endif %}
                     </div>
@@ -163,7 +163,7 @@
                                 <td>
                                     <ul class="unstyled">
                                         {% for dep in layerbranch.dependencies_set.all %}
-                                            <li><a href="{% url layer_item 'master' dep.dependency.name %}">{{ dep.dependency.name }}</a></li>
+                                            <li><a href="{% url 'layer_item' 'master' dep.dependency.name %}">{{ dep.dependency.name }}</a></li>
                                         {% endfor %}
                                     </ul>
                                 </td>
diff --git a/templates/layerindex/reviewlist.html b/templates/layerindex/reviewlist.html
index d20001a..eaa24e4 100644
--- a/templates/layerindex/reviewlist.html
+++ b/templates/layerindex/reviewlist.html
@@ -36,7 +36,7 @@
                 <tbody>
                     {% for layerbranch in layerbranch_list %}
                     <tr class="layertype_{{ layerbranch.layer.layer_type }}">
-                        <td><a href="{% url layer_review layerbranch.layer.name %}">{{ layerbranch.layer.name }}</a></td>
+                        <td><a href="{% url 'layer_review' layerbranch.layer.name %}">{{ layerbranch.layer.name }}</a></td>
                         <td>{{ layerbranch.layer.summary }}</td>
                         <td>{{ layerbranch.layer.get_layer_type_display }}</td>
                         <td class="showRollie">
diff --git a/templates/registration/activate.html b/templates/registration/activate.html
index e85121e..6e24890 100644
--- a/templates/registration/activate.html
+++ b/templates/registration/activate.html
@@ -7,7 +7,7 @@
 
 <p>{% trans "Account successfully activated" %}</p>
 
-<p><a href="{% url auth_login %}">{% trans "Log in" %}</a></p>
+<p><a href="{% url "auth_login" %}">{% trans "Log in" %}</a></p>
 
 {% else %}
 
diff --git a/templates/registration/activation_email.txt b/templates/registration/activation_email.txt
index 0820fce..736ea8a 100644
--- a/templates/registration/activation_email.txt
+++ b/templates/registration/activation_email.txt
@@ -7,7 +7,7 @@ link is valid for {{ expiration_days }} days.
 
 {% endblocktrans %}
 
-http://{{ site.domain }}{% url registration_activate activation_key %}
+http://{{ site.domain }}{% url "registration_activate" activation_key %}
 
 {% blocktrans %}
 If you did not make this request, please ignore this message.
diff --git a/templates/registration/login.html b/templates/registration/login.html
index 7e3d615..7f8a153 100644
--- a/templates/registration/login.html
+++ b/templates/registration/login.html
@@ -10,8 +10,8 @@
   {% csrf_token %}
 </form>
 
-<p>{% trans "Forgot password" %}? <a href="{% url auth_password_reset %}">{% trans "Reset it" %}</a>!</p>
-<p>{% trans "Don't have an account" %}? <a href="{% url registration_register %}">{% trans "Create one now" %}</a>!</p>
+<p>{% trans "Forgot password" %}? <a href="{% url "auth_password_reset" %}">{% trans "Reset it" %}</a>!</p>
+<p>{% trans "Don't have an account" %}? <a href="{% url "registration_register" %}">{% trans "Create one now" %}</a>!</p>
 {% endblock %}
 
 
diff --git a/templates/registration/password_reset_complete.html b/templates/registration/password_reset_complete.html
index ef3637c..d9f3879 100644
--- a/templates/registration/password_reset_complete.html
+++ b/templates/registration/password_reset_complete.html
@@ -5,6 +5,6 @@
 
 <p>{% trans "Password reset successfully" %}</p>
 
-<p><a href="{% url auth_login %}">{% trans "Log in" %}</a></p>
+<p><a href="{% url "auth_login" %}">{% trans "Log in" %}</a></p>
 
 {% endblock %}
diff --git a/templates/registration/password_reset_email.html b/templates/registration/password_reset_email.html
index a55c869..f219c68 100644
--- a/templates/registration/password_reset_email.html
+++ b/templates/registration/password_reset_email.html
@@ -1,5 +1,5 @@
 {% load i18n %}
 {% blocktrans %}Reset password at {{ site_name }}{% endblocktrans %}:
 {% block reset_link %}
-{{ protocol }}://{{ domain }}{% url auth_password_reset_confirm uidb36=uid, token=token %}
+{{ protocol }}://{{ domain }}{% url "auth_password_reset_confirm" uidb36=uid, token=token %}
 {% endblock %}
diff --git a/urls.py b/urls.py
index aa4f8c5..98fc734 100644
--- a/urls.py
+++ b/urls.py
@@ -5,8 +5,8 @@
 # Copyright (c) Django Software Foundation and individual contributors.
 # All rights reserved.
 
-from django.conf.urls.defaults import patterns, include, url
-from django.views.generic.simple import redirect_to
+from django.conf.urls import patterns, include, url
+from django.views.generic import RedirectView
 
 from django.contrib import admin
 admin.autodiscover()
@@ -16,6 +16,6 @@ urlpatterns = patterns('',
     url(r'^admin/', include(admin.site.urls)),
     url(r'^accounts/', include('registration.backends.default.urls')),
     url(r'^captcha/', include('captcha.urls')),
-    url(r'.*', redirect_to, {'url' : '/layerindex/'})
+    url(r'.*', RedirectView.as_view(url='/layerindex/')),
 )
 
-- 
2.5.5


