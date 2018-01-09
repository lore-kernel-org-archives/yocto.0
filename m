Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05DB1E00DE3; Mon,  8 Jan 2018 20:21:12 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A09DE00CE8
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 20:21:11 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Jan 2018 20:21:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,334,1511856000"; 
   d="scan'208";a="9740730"
Received: from cooi24-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.70.11])
	by orsmga006.jf.intel.com with ESMTP; 08 Jan 2018 20:21:08 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Jan 2018 17:20:24 +1300
Message-Id: <87fe124ad7e91df21361f54e45e2c51742b60df9.1515471545.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <cover.1515471545.git.paul.eggleton@linux.intel.com>
References: <cover.1515471545.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 1/6] update_layer: fix handling of database errors
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
X-List-Received-Date: Tue, 09 Jan 2018 04:21:12 -0000

If a database error occurs when we save a recipe (e.g. because a
database-level constraint is voilated) it will mess up the transaction.
Unfortunately that means we need to break out of updating the entire
layer rather than catching the error, because if we do catch it we just
get errors on every update after the initial error; failing early and
giving up on the transaction is a little better in terms of not filling
up the update logs with further useless errors.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update_layer.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 307c43a..42e4da9 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -56,6 +56,8 @@ def split_recipe_fn(path):
     return (pn, pv)
 
 def update_recipe_file(tinfoil, data, path, recipe, layerdir_start, repodir):
+    from django.db import DatabaseError
+
     fn = str(os.path.join(path, recipe.filename))
     from layerindex.models import PackageConfig, StaticBuildDep, DynamicBuildDep
     try:
@@ -156,6 +158,8 @@ def update_recipe_file(tinfoil, data, path, recipe, layerdir_start, repodir):
 
     except KeyboardInterrupt:
         raise
+    except DatabaseError:
+        raise
     except BaseException as e:
         if not recipe.pn:
             recipe.pn = recipe.filename[:-3].split('_')[0]
-- 
2.9.5


