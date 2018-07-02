Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB415E00EAA; Mon,  2 Jul 2018 16:00:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CE6DE00CF4
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 16:00:52 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jul 2018 16:00:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,300,1526367600"; d="scan'208";a="52165159"
Received: from nmunfye-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.249.64.227])
	by fmsmga008.fm.intel.com with ESMTP; 02 Jul 2018 16:00:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Jul 2018 10:58:48 +1200
Message-Id: <41fb2d462f9735f979a97312f36fc276db451591.1530569567.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1530569567.git.paul.eggleton@linux.intel.com>
References: <cover.1530569567.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 4/7] recipeparse: don't error out on missing layer recommends
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
X-List-Received-Date: Mon, 02 Jul 2018 23:00:53 -0000

If a LAYERRECOMMENDS relationship is not satisfied, we shouldn't be
erroring out - it's a recommendation, not a hard dependency. Just show a
warning and allow processing to continue.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/recipeparse.py | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index f1c1bd32..bc8a19ef 100644
--- a/layerindex/recipeparse.py
+++ b/layerindex/recipeparse.py
@@ -102,7 +102,11 @@ def setup_layer(config_data, fetchdir, layerdir, layer, layerbranch):
         deprepodir = os.path.join(fetchdir, depurldir)
         deplayerbranch = dep.dependency.get_layerbranch(layerbranch.branch.name)
         if not deplayerbranch:
-            raise RecipeParseError('Dependency %s of layer %s does not have branch record for branch %s' % (dep.dependency.name, layer.name, layerbranch.branch.name))
+            if dep.required:
+                raise RecipeParseError('Dependency %s of layer %s does not have branch record for branch %s' % (dep.dependency.name, layer.name, layerbranch.branch.name))
+            else:
+                logger.warning('Recommends %s of layer %s does not have branch record for branch %s - ignoring' % (dep.dependency.name, layer.name, layerbranch.branch.name))
+                continue
         deplayerdir = os.path.join(deprepodir, deplayerbranch.vcs_subdir)
         utils.parse_layer_conf(deplayerdir, config_data_copy)
     config_data_copy.delVar('LAYERDIR')
-- 
2.17.1


