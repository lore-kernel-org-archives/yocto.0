Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FD82E00863; Tue, 22 Mar 2016 11:10:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5152BE0048B
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 11:09:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 22 Mar 2016 11:09:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,378,1455004800"; d="scan'208";a="916615357"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.41])
	by orsmga001.jf.intel.com with ESMTP; 22 Mar 2016 11:09:54 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Mar 2016 12:10:21 -0600
Message-Id: <1458670221-7454-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: alejandro.franco@intel.com, paul.eggleton@intel.com
Subject: [PATCH][rrs] rrs: Fix frontpage redirect
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
X-List-Received-Date: Tue, 22 Mar 2016 18:10:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

We was experimenting fixed redirects due to urls are
cached at init of rrs.

Move the redirect Release, Milestone selection to a view
called FrontPageRedirect.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 rrs/urls.py  | 17 +++--------------
 rrs/views.py | 12 ++++++++++--
 2 files changed, 13 insertions(+), 16 deletions(-)

diff --git a/rrs/urls.py b/rrs/urls.py
index 923d9e6..eb11a28 100644
--- a/rrs/urls.py
+++ b/rrs/urls.py
@@ -1,25 +1,14 @@
 from django.views.generic import TemplateView
-from django.views.generic.simple import redirect_to
-from django.core.urlresolvers import reverse_lazy
-
 from django.conf.urls import patterns, url
 
 from layerindex.views import EditProfileFormView
 
 from rrs.models import Release, Milestone
-from rrs.views import RecipeListView, recipes_report, RecipeDetailView, MaintainerListView
+from rrs.views import RecipeListView, recipes_report, RecipeDetailView, \
+    MaintainerListView, FrontPageRedirect
 
 urlpatterns = patterns('',
-    url(r'^$', redirect_to,
-        {'url' :
-            reverse_lazy('recipes',
-                args = (
-                    Release.get_current().name,
-                    Milestone.get_current(Release.get_current()).name,
-                )
-            ),
-         'permanent' : False
-        },
+    url(r'^$', FrontPageRedirect.as_view(),
         name='frontpage'),
     url(r'^recipes/(?P<release_name>.*)/(?P<milestone_name>.*)/$',
         RecipeListView.as_view(
diff --git a/rrs/views.py b/rrs/views.py
index 957529c..3a4034a 100644
--- a/rrs/views.py
+++ b/rrs/views.py
@@ -6,14 +6,22 @@ from django.http import HttpResponse
 from datetime import date, datetime
 from django.http import Http404
 from django.shortcuts import get_object_or_404
-from django.views.generic import ListView, DetailView
-from django.core.urlresolvers import resolve
+from django.views.generic import ListView, DetailView, RedirectView
+from django.core.urlresolvers import resolve, reverse
 
 from layerindex.models import Recipe
 from rrs.models import Release, Milestone, Maintainer, RecipeMaintainerHistory, \
         RecipeMaintainer, RecipeUpstreamHistory, RecipeUpstream, \
         RecipeDistro, RecipeUpgrade, Raw
 
+class FrontPageRedirect(RedirectView):
+    permanent = False
+
+    def get_redirect_url(self):
+        release_name = Release.get_current().name
+        milestone_name = Milestone.get_current(Release.get_current()).name
+        return reverse('recipes', args=(release_name, milestone_name))
+
 def _check_url_params(upstream_status, maintainer_name):
     get_object_or_404(Maintainer, name=maintainer_name)
 
-- 
2.1.4


