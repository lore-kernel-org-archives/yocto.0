Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10337E00CDF; Sun, 20 May 2018 20:05:02 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6681DE00CE5
	for <yocto@yoctoproject.org>; Sun, 20 May 2018 20:05:02 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 May 2018 20:05:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,425,1520924400"; d="scan'208";a="225835634"
Received: from syadandx-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.168.242])
	by orsmga005.jf.intel.com with ESMTP; 20 May 2018 20:05:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 21 May 2018 15:04:14 +1200
Message-Id: <060f57caf9af8e438959ef22d8c4ac86299f38e3.1526871767.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <cover.1526871767.git.paul.eggleton@linux.intel.com>
References: <cover.1526871767.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 6/6] update_classic_status: fix matching on wrong layer
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
X-List-Received-Date: Mon, 21 May 2018 03:05:03 -0000

We were sorting the layers in the wrong order when trying to choose
which layer to pick a matching recipe from - it needs to be descending
priority order, not ascending.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/tools/update_classic_status.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/tools/update_classic_status.py b/layerindex/tools/update_classic_status.py
index f980e64a..be7807d2 100755
--- a/layerindex/tools/update_classic_status.py
+++ b/layerindex/tools/update_classic_status.py
@@ -68,7 +68,7 @@ def main():
     try:
         with transaction.atomic():
             def recipe_pn_query(pn):
-                return Recipe.objects.filter(layerbranch__branch__name='master').filter(pn=pn).order_by('layerbranch__layer__index_preference')
+                return Recipe.objects.filter(layerbranch__branch__name='master').filter(pn=pn).order_by('-layerbranch__layer__index_preference')
 
             recipequery = ClassicRecipe.objects.filter(layerbranch=layerbranch).filter(cover_status__in=['U', 'N'])
             for recipe in recipequery:
-- 
2.14.3


