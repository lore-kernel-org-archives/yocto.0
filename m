Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5698BE00C66; Sun, 29 May 2016 21:32:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1E44E00CBC
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 21:32:53 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 May 2016 21:32:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,387,1459839600"; d="scan'208";a="964884369"
Received: from jialelim-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.139.83])
	by orsmga001.jf.intel.com with ESMTP; 29 May 2016 21:32:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 30 May 2016 16:31:15 +1200
Message-Id: <c48ddaa30e85058796007f6afc33105c99ffcd66.1464581354.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1464581354.git.paul.eggleton@linux.intel.com>
References: <cover.1464581354.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1464581354.git.paul.eggleton@linux.intel.com>
References: <cover.1464581354.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 4/5] Fix listing *_git.bbappend as appends for git recipe
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
X-List-Received-Date: Mon, 30 May 2016 04:32:56 -0000

Fix a greedy regex in the recipe detail view resulting in the git recipe
listing all bbappends named *_git.bbappend as its bbappends (quite a few
in the public instance).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 TODO                | 1 -
 layerindex/views.py | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/TODO b/TODO
index 2d5a53d..9ab7aa7 100644
--- a/TODO
+++ b/TODO
@@ -10,7 +10,6 @@ TODO:
 * Make it easy to update people's email addresses
 
 Bugs
-* git recipe shows up all _git bbappends: http://layers.openembedded.org/layerindex/recipe/5542/
 * Duplication of first maintainer when editing to add a second?
 * PROVIDES column appears to be too short for some recipes
 
diff --git a/layerindex/views.py b/layerindex/views.py
index d033046..d9480c9 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -672,7 +672,7 @@ class RecipeDetailView(DetailView):
             verappendprefix = recipe.filename.split('.bb')[0]
             appendprefix = verappendprefix.split('_')[0]
             #context['verappends'] = BBAppend.objects.filter(layerbranch__branch=recipe.layerbranch.branch).filter(filename='%s.bbappend' % verappendprefix)
-            context['appends'] = BBAppend.objects.filter(layerbranch__branch=recipe.layerbranch.branch).filter(filename__regex=r'%s(_[^_]*)?\.bbappend' % appendprefix)
+            context['appends'] = BBAppend.objects.filter(layerbranch__branch=recipe.layerbranch.branch).filter(filename__regex=r'^%s(_[^_]*)?\.bbappend' % appendprefix)
             verappends = []
             for append in context['appends']:
                 if append.matches_recipe(recipe):
-- 
2.5.5


