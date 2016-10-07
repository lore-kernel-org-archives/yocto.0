Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A7DDE00C66; Fri,  7 Oct 2016 08:57:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 955A1E00C60
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 08:57:36 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u97FvaLO016474
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 7 Oct 2016 08:57:36 -0700 (PDT)
Received: from yow-lhowlett-d0.wrs.com (128.224.56.217) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 7 Oct 2016 08:57:35 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Oct 2016 11:57:21 -0400
Message-ID: <1475855841-30009-13-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH v2 12/12] layerindex/update_layer.py: Preserve the recipedependency files
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
X-List-Received-Date: Fri, 07 Oct 2016 15:57:39 -0000
Content-Type: text/plain

From: Mark Hatle <mark.hatle@windriver.com>

In order to keep primary keys from constantly changing, preverse the
exist keys as much as possible.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
---
 layerindex/update_layer.py | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 27d4ebe..ec40806 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -88,13 +88,30 @@ def update_recipe_file(tinfoil, data, path, recipe, layerdir_start, repodir):
             if depstr.startswith(layerdir_start) and not depstr.endswith('/conf/layer.conf'):
                 filedeps.append(os.path.relpath(depstr, repodir))
         from layerindex.models import RecipeFileDependency
-        RecipeFileDependency.objects.filter(recipe=recipe).delete()
+
+        recipedeps_delete = []
+
+        recipedeps = RecipeFileDependency.objects.filter(recipe=recipe)
+
+        for values in recipedeps.values('path'):
+            if 'path' in values:
+                recipedeps_delete.append(values['path'])
+
         for filedep in filedeps:
+            if filedep in recipedeps_delete:
+                recipedeps_delete.remove(filedep)
+                continue
+            # New item, add it...
             recipedep = RecipeFileDependency()
             recipedep.layerbranch = recipe.layerbranch
             recipedep.recipe = recipe
             recipedep.path = filedep
             recipedep.save()
+
+        for filedep in recipedeps_delete:
+            logger.debug('%s: removing %s' % (recipe.layerbranch, filedep))
+            recipedeps.filter(path=filedep).delete()
+
     except KeyboardInterrupt:
         raise
     except BaseException as e:
-- 
1.9.1


