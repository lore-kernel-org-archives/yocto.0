Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A498E00A96; Wed,  1 Jul 2015 12:28:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34CD3E00A1E
	for <yocto@yoctoproject.org>; Wed,  1 Jul 2015 12:28:44 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 01 Jul 2015 12:28:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,388,1432623600"; d="scan'208";a="517392253"
Received: from mlopezva-mobl2.zpn.intel.com ([10.219.16.59])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Jul 2015 12:28:42 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Wed,  1 Jul 2015 14:28:42 -0500
Message-Id: <1435778922-10825-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] views.py: Fix current up to date percentage
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
X-List-Received-Date: Wed, 01 Jul 2015 19:28:49 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

There was an issue where the current up to date was always
using the latest upstream version to get the percentage.
This uses the upstream version in the period displayed.

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 rrs/models.py | 5 +++++
 rrs/views.py  | 4 ++--
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/rrs/models.py b/rrs/models.py
index f0d4ed3..d0e88b9 100644
--- a/rrs/models.py
+++ b/rrs/models.py
@@ -272,6 +272,11 @@ class RecipeUpstream(models.Model):
     date = models.DateTimeField(db_index=True)
 
     @staticmethod
+    def get_all_recipes(history):
+        qry = RecipeUpstream.objects.filter(history = history)
+        return qry
+
+    @staticmethod
     def get_recipes_not_updated(history):
         qry = RecipeUpstream.objects.filter(history = history, status = 'N',
                 no_update_reason = '').order_by('pn')
diff --git a/rrs/views.py b/rrs/views.py
index 4a1e9bb..dbdf9cd 100644
--- a/rrs/views.py
+++ b/rrs/views.py
@@ -42,8 +42,8 @@ def _get_milestone_statistics(milestone, maintainer_name=None):
     )
 
     if maintainer_name is None:
-        milestone_statistics['all'] = Recipe.objects.all().count()
-
+        milestone_statistics['all'] = \
+            RecipeUpstream.get_all_recipes(recipe_upstream_history).count()
         milestone_statistics['up_to_date'] = \
             RecipeUpstream.get_recipes_up_to_date(recipe_upstream_history).count()
         milestone_statistics['not_updated'] = \
-- 
1.9.1


