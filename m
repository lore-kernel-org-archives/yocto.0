Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9896E009D9; Mon,  1 Oct 2018 15:47:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAC52E00950
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2018 15:47:26 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Oct 2018 15:47:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,329,1534834800"; d="scan'208";a="96594407"
Received: from marora2-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.175.169])
	by orsmga002.jf.intel.com with ESMTP; 01 Oct 2018 15:47:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  2 Oct 2018 11:47:14 +1300
Message-Id: <20181001224714.21425-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [layerindex-web][PATCH] Fix broken regex for recipes with names containing + signs
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
X-List-Received-Date: Mon, 01 Oct 2018 22:47:27 -0000

In order to show bbappends on the recipe detail page we are doing a
regex query to find any whose names match up with the recipe. In the
layer index instance at layers.openembedded.org viewing the recipe
detail page for any recipe whose name contains ++ (e.g. libsigc++-2.0 in
meta-oe) results in an invalid regex and causes a database error. Escape
any + signs in the name used within the regex in order to fix this.

(I wasn't actually able to reproduce this on my own setup despite also
using MariaDB, but I did find that the unescaped query was not correctly
matching records so it needed to be fixed anyway.)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/views.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/layerindex/views.py b/layerindex/views.py
index 4eed0cef..5ac7ffab 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -869,6 +869,7 @@ class RecipeDetailView(DetailView):
         if recipe:
             verappendprefix = recipe.filename.split('.bb')[0]
             appendprefix = verappendprefix.split('_')[0]
+            appendprefix = appendprefix.replace('+', r'\+')
             #context['verappends'] = BBAppend.objects.filter(layerbranch__branch=recipe.layerbranch.branch).filter(filename='%s.bbappend' % verappendprefix)
             context['appends'] = BBAppend.objects.filter(layerbranch__branch=recipe.layerbranch.branch).filter(filename__regex=r'^%s(_[^_]*)?\.bbappend' % appendprefix)
             verappends = []
-- 
2.17.1


