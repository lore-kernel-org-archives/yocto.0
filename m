Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EF89E009D4; Mon, 29 Jun 2015 14:53:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DC93E00947
	for <yocto@yoctoproject.org>; Mon, 29 Jun 2015 14:53:27 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 Jun 2015 14:53:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,372,1432623600"; d="scan'208";a="752791109"
Received: from mlopezva-mobl2.zpn.intel.com ([10.219.16.65])
	by fmsmga002.fm.intel.com with ESMTP; 29 Jun 2015 14:53:27 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Mon, 29 Jun 2015 16:53:21 -0500
Message-Id: <1435614801-10436-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] views.py: Added validation in recipe detail
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
X-List-Received-Date: Mon, 29 Jun 2015 21:53:33 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

Added the validation for the maintainer in the
recipe detail view. Also added a check if the
recipe exists.

[YOCTO #7904]

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 rrs/views.py | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/rrs/views.py b/rrs/views.py
index ad741f6..e2aa1ce 100644
--- a/rrs/views.py
+++ b/rrs/views.py
@@ -329,6 +329,8 @@ class RecipeDetailView(DetailView):
     def get_context_data(self, **kwargs):
         context = super(RecipeDetailView, self).get_context_data(**kwargs)
         recipe = self.get_object()
+        if not recipe:
+            raise django.http.Http404
 
         release = Release.get_current()
         context['release_name'] = release.name
@@ -357,10 +359,12 @@ class RecipeDetailView(DetailView):
 
         self.recipe_maintainer_history = RecipeMaintainerHistory.get_last()
         recipe_maintainer = RecipeMaintainer.objects.filter(recipe = recipe,
-                history = self.recipe_maintainer_history)[0]
-        maintainer = recipe_maintainer.maintainer
-
-        context['maintainer_name'] = maintainer.name
+                history = self.recipe_maintainer_history)
+        if recipe_maintainer:
+            maintainer = recipe_maintainer[0].maintainer
+            context['maintainer_name'] = maintainer.name
+        else:
+            context['maintainer_name'] = 'No maintainer'
 
         context['recipe_upgrade_details'] = []
         for ru in RecipeUpgrade.objects.filter(recipe =
-- 
1.9.1


