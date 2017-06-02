Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7037DE00B99; Thu,  1 Jun 2017 23:29:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00E7BE00B8F
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 23:28:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v526SvnT022066
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 1 Jun 2017 23:28:57 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 1 Jun 2017 23:28:57 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 1 Jun 2017 23:28:46 -0700
Message-ID: <2e003ebcfc290935e759bc2bbeb8b5e7869ffefc.1496384657.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1496384657.git.liezhi.yang@windriver.com>
References: <cover.1496384657.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: [PATCH V3 09/11] update_layer.py: move the location of transaction.atomic()
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
X-List-Received-Date: Fri, 02 Jun 2017 06:29:03 -0000
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
index 20c27be..68ca836 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -235,36 +235,36 @@ def main():
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


