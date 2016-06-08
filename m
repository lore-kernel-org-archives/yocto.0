Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB7B9E00D3C; Wed,  8 Jun 2016 06:21:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3CFCE00D3C
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 06:21:25 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jun 2016 06:21:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,439,1459839600"; d="scan'208";a="824134309"
Received: from mshirsix-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.147.125])
	by orsmga003.jf.intel.com with ESMTP; 08 Jun 2016 06:21:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 Jun 2016 01:20:08 +1200
Message-Id: <7b1432493d5f16ef0acb733e50d7f9f38754d69c.1465391621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH v2 15/15] Explicitly specify temporary redirection
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
X-List-Received-Date: Wed, 08 Jun 2016 13:21:56 -0000

Django 1.8 warns that the default for the "permanent" parameter to
RedirectView is changing in 1.9 from True to False, but I believe we
should be specifying False for these redirections - these are not just
redirections from old URLs and may in fact change in the future if the
site structure changes.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/urls.py        | 12 ++++++------
 layerindex/urls_branch.py |  2 +-
 urls.py                   |  2 +-
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/layerindex/urls.py b/layerindex/urls.py
index b170460..cbd29ad 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -24,19 +24,19 @@ router.register(r'machines', restviews.MachineViewSet)
 
 urlpatterns = patterns('',
     url(r'^$',
-        RedirectView.as_view(url=reverse_lazy('layer_list', args=('master',))),
+        RedirectView.as_view(url=reverse_lazy('layer_list', args=('master',)), permanent=False),
         name='frontpage'),
 
     url(r'^api/', include(router.urls)),
 
     url(r'^layers/$',
-        RedirectView.as_view(url=reverse_lazy('layer_list', args=('master',)))),
+        RedirectView.as_view(url=reverse_lazy('layer_list', args=('master',)), permanent=False)),
     url(r'^layer/(?P<slug>[-\w]+)/$',
-        RedirectParamsView.as_view(), {'redirect_name': 'layer_item', 'branch':'master'}),
+        RedirectParamsView.as_view(permanent=False), {'redirect_name': 'layer_item', 'branch':'master'}),
     url(r'^recipes/$',
-        RedirectView.as_view(url=reverse_lazy('recipe_search', args=('master',)))),
+        RedirectView.as_view(url=reverse_lazy('recipe_search', args=('master',)), permanent=False)),
     url(r'^machines/$',
-        RedirectView.as_view(url=reverse_lazy('machine_search', args=('master',)))),
+        RedirectView.as_view(url=reverse_lazy('machine_search', args=('master',)), permanent=False)),
  
     url(r'^submit/$', edit_layer_view, {'template_name': 'layerindex/submitlayer.html'}, name="submit_layer"),
     url(r'^submit/thanks$',
@@ -107,7 +107,7 @@ urlpatterns = patterns('',
             template_name='layerindex/about.html'),
             name="about"),
     url(r'^oe-classic/$',
-        RedirectView.as_view(url=reverse_lazy('classic_recipe_search')),
+        RedirectView.as_view(url=reverse_lazy('classic_recipe_search'), permanent=False),
             name='classic'),
     url(r'^oe-classic/recipes/$',
         ClassicRecipeSearchView.as_view(
diff --git a/layerindex/urls_branch.py b/layerindex/urls_branch.py
index ab5e2d5..3313290 100644
--- a/layerindex/urls_branch.py
+++ b/layerindex/urls_branch.py
@@ -11,7 +11,7 @@ from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView,
 
 urlpatterns = patterns('',
     url(r'^$', 
-        RedirectParamsView.as_view(), {'redirect_name': 'layer_list'}),
+        RedirectParamsView.as_view(permanent=False), {'redirect_name': 'layer_list'}),
     url(r'^layers/$',
         LayerListView.as_view(
             template_name='layerindex/layers.html'),
diff --git a/urls.py b/urls.py
index 98fc734..649635c 100644
--- a/urls.py
+++ b/urls.py
@@ -16,6 +16,6 @@ urlpatterns = patterns('',
     url(r'^admin/', include(admin.site.urls)),
     url(r'^accounts/', include('registration.backends.default.urls')),
     url(r'^captcha/', include('captcha.urls')),
-    url(r'.*', RedirectView.as_view(url='/layerindex/')),
+    url(r'.*', RedirectView.as_view(url='/layerindex/', permanent=False)),
 )
 
-- 
2.5.5


