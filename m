Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90D0FE00BB1; Mon, 12 Jun 2017 19:37:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16E26E00BDF
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 19:36:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v5D2awdt003001
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 12 Jun 2017 19:36:58 -0700
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 12 Jun 2017 19:36:58 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 12 Jun 2017 19:36:49 -0700
Message-ID: <bc0cacfee447200d789c20d0465e8fdfe8084863.1497320961.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1497320961.git.liezhi.yang@windriver.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: [PATCH V4 08/10] update_layer.py: move the location of transaction.atomic()
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
X-List-Received-Date: Tue, 13 Jun 2017 02:37:00 -0000
Content-Type: text/plain

It doesn't need to be so ahead since we only need it when writing database, and
a following patch will remove layerbranch from database when the branch had
been removed from the repo, it's not easy to do the work in
transaction.atomic() block.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update_layer.py | 56 +++++++++++++++++++++++-----------------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 36a9025..3990ad6 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -238,36 +238,36 @@ def main():
     # why won't they just fix that?!)
     tinfoil.config_data.setVar('LICENSE', '')
 
+    layer = utils.get_layer(options.layer)
+    urldir = layer.get_fetch_dir()
+    repodir = os.path.join(fetchdir, urldir)
+
+    layerbranch = layer.get_layerbranch(options.branch)
+
+    branchname = options.branch
+    branchdesc = options.branch
+    if layerbranch:
+        if layerbranch.actual_branch:
+            branchname = layerbranch.actual_branch
+            branchdesc = "%s (%s)" % (options.branch, branchname)
+
+    # Collect repo info
+    repo = git.Repo(repodir)
+    assert repo.bare == False
     try:
-        with transaction.atomic():
-            layer = utils.get_layer(options.layer)
-            urldir = layer.get_fetch_dir()
-            repodir = os.path.join(fetchdir, urldir)
-
-            layerbranch = layer.get_layerbranch(options.branch)
-
-            branchname = options.branch
-            branchdesc = options.branch
-            if layerbranch:
-                if layerbranch.actual_branch:
-                    branchname = layerbranch.actual_branch
-                    branchdesc = "%s (%s)" % (options.branch, branchname)
-
-            # Collect repo info
-            repo = git.Repo(repodir)
-            assert repo.bare == False
-            try:
-                if options.nocheckout:
-                    topcommit = repo.commit('HEAD')
-                else:
-                    topcommit = repo.commit('origin/%s' % branchname)
-            except:
-                if layerbranch:
-                    logger.error("Failed update of layer %s - branch %s no longer exists" % (layer.name, branchdesc))
-                else:
-                    logger.info("Skipping update of layer %s - branch %s doesn't exist" % (layer.name, branchdesc))
-                sys.exit(1)
+        if options.nocheckout:
+            topcommit = repo.commit('HEAD')
+        else:
+            topcommit = repo.commit('origin/%s' % branchname)
+    except:
+        if layerbranch:
+            logger.error("Failed update of layer %s - branch %s no longer exists" % (layer.name, branchdesc))
+        else:
+            logger.info("Skipping update of layer %s - branch %s doesn't exist" % (layer.name, branchdesc))
+        sys.exit(1)
 
+    try:
+        with transaction.atomic():
             newbranch = False
             if not layerbranch:
                 # LayerBranch doesn't exist for this branch, create it
-- 
2.10.2


