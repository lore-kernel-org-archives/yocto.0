Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A582BE00DD2; Sat, 12 Oct 2019 18:56:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D035E00DB7
	for <yocto@yoctoproject.org>; Sat, 12 Oct 2019 18:56:36 -0700 (PDT)
Received: from lons-builder.int.hatle.net ([192.40.192.88])
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x9D1uYi6017025
	for <yocto@yoctoproject.org>; Sat, 12 Oct 2019 20:56:35 -0500
From: Mark Hatle <mark.hatle@kernel.crashing.org>
To: yocto@yoctoproject.org
Date: Sat, 12 Oct 2019 20:56:31 -0500
Message-Id: <20191013015633.118339-2-mark.hatle@kernel.crashing.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191013015633.118339-1-mark.hatle@kernel.crashing.org>
References: <20191013015633.118339-1-mark.hatle@kernel.crashing.org>
Subject: [layerindex-web] [PATCH 1/3] layerindex/urls.py: Allow branches with a '.' in the name
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
X-List-Received-Date: Sun, 13 Oct 2019 01:56:37 -0000

Without this change the system will fail parsing various URL components

Signed-off-by: Mark Hatle <mark.hatle@kernel.crashing.org>
---
 layerindex/urls.py | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/layerindex/urls.py b/layerindex/urls.py
index 7f4e545..89e70a2 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -107,7 +107,7 @@ urlpatterns = [
         BulkChangeDeleteView.as_view(
             template_name='layerindex/deleteconfirm.html'),
         name="bulk_change_delete"),
-    url(r'^branch/(?P<branch>[-\w]+)/',
+    url(r'^branch/(?P<branch>[-.\w]+)/',
         include('layerindex.urls_branch')),
     url(r'^updates/$',
         UpdateListView.as_view(
@@ -146,17 +146,17 @@ urlpatterns = [
         ClassicRecipeDetailView.as_view(
             template_name='layerindex/classicrecipedetail.html'),
         name='classic_recipe'),
-    url(r'^comparison/recipes/(?P<branch>[-\w]+)/$',
+    url(r'^comparison/recipes/(?P<branch>[-.\w]+)/$',
         ClassicRecipeSearchView.as_view(
             template_name='layerindex/classicrecipes.html'),
         name='comparison_recipe_search'),
-    url(r'^comparison/search-csv/(?P<branch>[-\w]+)/$',
+    url(r'^comparison/search-csv/(?P<branch>[-.\w]+)/$',
         ClassicRecipeSearchView.as_view(
             template_name='layerindex/classicrecipes_csv.txt',
             paginate_by=0,
             content_type='text/csv'),
         name='comparison_recipe_search_csv'),
-    url(r'^comparison/stats/(?P<branch>[-\w]+)/$',
+    url(r'^comparison/stats/(?P<branch>[-.\w]+)/$',
         ClassicRecipeStatsView.as_view(
             template_name='layerindex/classicstats.html'),
         name='comparison_recipe_stats'),
@@ -185,11 +185,11 @@ urlpatterns = [
     url(r'^stoptask/(?P<task_id>[-\w]+)/$',
         task_stop_view,
         name='task_stop'),
-    url(r'^ajax/layerchecklist/(?P<branch>[-\w]+)/$',
+    url(r'^ajax/layerchecklist/(?P<branch>[-.\w]+)/$',
         LayerCheckListView.as_view(
             template_name='layerindex/layerchecklist.html'),
         name='layer_checklist'),
-    url(r'^ajax/classchecklist/(?P<branch>[-\w]+)/$',
+    url(r'^ajax/classchecklist/(?P<branch>[-.\w]+)/$',
         BBClassCheckListView.as_view(
             template_name='layerindex/classchecklist.html'),
         name='class_checklist'),
-- 
2.17.1


