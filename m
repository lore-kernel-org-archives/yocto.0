Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D95A7E00DF8; Mon,  2 Jul 2018 16:00:51 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83F2AE00CF4
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 16:00:51 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jul 2018 16:00:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,300,1526367600"; d="scan'208";a="52165070"
Received: from nmunfye-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.249.64.227])
	by fmsmga008.fm.intel.com with ESMTP; 02 Jul 2018 16:00:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Jul 2018 10:58:46 +1200
Message-Id: <93888694d62ebd1f85debf0c45e1b2851edade8a.1530569567.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1530569567.git.paul.eggleton@linux.intel.com>
References: <cover.1530569567.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/7] update_layer: drop debug message for deleting recipe file dependencies
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
X-List-Received-Date: Mon, 02 Jul 2018 23:00:52 -0000

This was too noisy and not particularly useful.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update_layer.py | 1 -
 1 file changed, 1 deletion(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index bbfaba9a..018d7bcd 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -228,7 +228,6 @@ def update_recipe_file(tinfoil, data, path, recipe, layerdir_start, repodir, ski
             recipedep.save()
 
         for filedep in recipedeps_delete:
-            logger.debug('%s: removing %s' % (recipe.layerbranch, filedep))
             recipedeps.filter(path=filedep).delete()
 
     except KeyboardInterrupt:
-- 
2.17.1


