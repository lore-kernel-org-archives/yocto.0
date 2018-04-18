Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC0C4E00C6B; Wed, 18 Apr 2018 03:57:18 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6CF3E00C9E
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 03:57:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w3IAvE57012805
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 Apr 2018 03:57:14 -0700 (PDT)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 18 Apr 2018 03:57:13 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Wed, 18 Apr 2018 19:04:33 +0800
Message-ID: <6deae428d43ea4bbe0146bf59aa7d247f6c0f80b.1524049072.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1524049072.git.liezhi.yang@windriver.com>
References: <cover.1524049072.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 4/4] update_layer.py: move layer validation to update.py (Performance improve)
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
X-List-Received-Date: Wed, 18 Apr 2018 10:57:18 -0000
Content-Type: text/plain

The utils.setup_django() costs a lot of time, but both update.py and
update_layer.py calls it, so move layer validation from update_layer.py to
update.py to avoid calling update_layer.py when possible can save a lot of
time.

Now we don't have to call update_layer.py in the following cases:
* The branch doesn't exist
* The layer is already update to date on specified branch (when no
  reload)
* The layer dir or conf/layer.layer doesn't exist

We can save up to 98% time in my testing:

$ update.py -b master --nofetch [--fullreload]

                   Before    Now       Reduced
No update:         276s      3.6s      98%
Partial update:    312s      87s       72%
Full repload:      1016s     980s      3%

Note:
* All of the testing are based on --nofetch

* "No update" means all layers on the branch is up-to-date, for
  example, when we run it twice, there is no update in the second run, so we
  only need about 3s now, which is the most common case when we use cron to run
  it per half an hour.

* "Partly update" means part of the layers have been updated.

* "Fullreload" means all of the layers have been updated.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py       | 79 +++++++++++++++++++++++++++++++++++++++++++++-
 layerindex/update_layer.py | 39 +++--------------------
 2 files changed, 82 insertions(+), 36 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 44a7b90..2bb2df7 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -140,6 +140,15 @@ def fetch_repo(vcs_url, repodir, urldir, fetchdir, layer_name):
         logger.error("Fetch of layer %s failed: %s" % (layer_name, e.output))
         return (vcs_url, e.output)
 
+def print_subdir_error(newbranch, layername, vcs_subdir, branchdesc):
+    # This will error out if the directory is completely invalid or had never existed at this point
+    # If it previously existed but has since been deleted, you will get the revision where it was
+    # deleted - so we need to handle that case separately later
+    if newbranch:
+        logger.info("Skipping update of layer %s for branch %s - subdirectory %s does not exist on this branch" % (layername, branchdesc, vcs_subdir))
+    elif vcs_subdir:
+        logger.error("Subdirectory for layer %s does not exist on branch %s - if this is legitimate, the layer branch record should be deleted" % (layername, branchdesc))
+
 def main():
     if LooseVersion(git.__version__) < '0.3.1':
         logger.error("Version of GitPython is too old, please install GitPython (python-git) 0.3.1 or later in order to use this script")
@@ -195,7 +204,7 @@ def main():
 
     utils.setup_django()
     import settings
-    from layerindex.models import Branch, LayerItem, Update, LayerUpdate
+    from layerindex.models import Branch, LayerItem, Update, LayerUpdate, LayerBranch
 
     logger.setLevel(options.loglevel)
 
@@ -337,6 +346,74 @@ def main():
                         collections.add((layerbranch.collection, layerbranch.version))
 
                 for layer in layerquery:
+                    layerbranch = layer.get_layerbranch(branch)
+                    branchname = branch
+                    branchdesc = branch
+                    newbranch = False
+                    branchobj = utils.get_branch(branch)
+                    if layerbranch:
+                        if layerbranch.actual_branch:
+                            branchname = layerbranch.actual_branch
+                            branchdesc = "%s (%s)" % (branch, branchname)
+                    else:
+                        # LayerBranch doesn't exist for this branch, create it
+                        newbranch = True
+                        layerbranch = LayerBranch()
+                        layerbranch.layer = layer
+                        layerbranch.branch = branchobj
+                        layerbranch_source = layer.get_layerbranch(branchobj)
+                        if not layerbranch_source:
+                            layerbranch_source = layer.get_layerbranch(None)
+                        if layerbranch_source:
+                            layerbranch.vcs_subdir = layerbranch_source.vcs_subdir
+
+                    # Collect repo info
+                    urldir = layer.get_fetch_dir()
+                    repodir = os.path.join(fetchdir, urldir)
+                    repo = git.Repo(repodir)
+                    assert repo.bare == False
+                    try:
+                        if options.nocheckout:
+                            topcommit = repo.commit('HEAD')
+                        else:
+                            topcommit = repo.commit('origin/%s' % branchname)
+                    except:
+                        if newbranch:
+                            logger.info("Skipping update of layer %s - branch %s doesn't exist" % (layer.name, branchdesc))
+                        else:
+                            logger.info("layer %s - branch %s no longer exists, removing it from database" % (layer.name, branchdesc))
+                            if not options.dryrun:
+                                layerbranch.delete()
+                        continue
+
+                    if layerbranch.vcs_subdir and not options.nocheckout:
+                        # Find latest commit in subdirectory
+                        # A bit odd to do it this way but apparently there's no other way in the GitPython API
+                        topcommit = next(repo.iter_commits('origin/%s' % branchname, paths=layerbranch.vcs_subdir), None)
+                        if not topcommit:
+                            print_subdir_error(newbranch, layer.name, layerbranch.vcs_subdir, branchdesc)
+                            if not (newbranch and layerbranch.vcs_subdir):
+                                logger.error("Failed to get last revision for layer %s on branch %s" % (layer.name, branchdesc))
+                            continue
+
+                    if layerbranch.vcs_last_rev == topcommit.hexsha and not update.reload:
+                        logger.info("Layer %s is already up-to-date for branch %s" % (layer.name, branchdesc))
+                        collections.add((layerbranch.collection, layerbranch.version))
+                        continue
+
+                    if layerbranch.vcs_last_rev != topcommit.hexsha or update.reload:
+                        # Check out appropriate branch
+                        if not options.nocheckout:
+                            utils.checkout_layer_branch(layerbranch, repodir, logger=logger)
+                        layerdir = os.path.join(repodir, layerbranch.vcs_subdir)
+                        if layerbranch.vcs_subdir and not os.path.exists(layerdir):
+                            print_subdir_error(newbranch, layer.name, layerbranch.vcs_subdir, branchdesc)
+                            continue
+
+                        if not os.path.exists(os.path.join(layerdir, 'conf/layer.conf')):
+                            logger.error("conf/layer.conf not found for layer %s - is subdirectory set correctly?" % layer.name)
+                            continue
+
                     cmd = prepare_update_layer_command(options, branchobj, layer, initial=True)
                     logger.debug('Running layer update command: %s' % cmd)
                     ret, output = run_command_interruptible(cmd)
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 60a1f2e..69ca3c6 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -287,19 +287,10 @@ def main():
     # Collect repo info
     repo = git.Repo(repodir)
     assert repo.bare == False
-    try:
-        if options.nocheckout:
-            topcommit = repo.commit('HEAD')
-        else:
-            topcommit = repo.commit('origin/%s' % branchname)
-    except:
-        if layerbranch:
-            logger.info("layer %s - branch %s no longer exists, removing it from database" % (layer.name, branchdesc))
-            if not options.dryrun:
-                layerbranch.delete()
-        else:
-            logger.info("Skipping update of layer %s - branch %s doesn't exist" % (layer.name, branchdesc))
-        sys.exit(1)
+    if options.nocheckout:
+        topcommit = repo.commit('HEAD')
+    else:
+        topcommit = repo.commit('origin/%s' % branchname)
 
     tinfoil = None
     tempdir = None
@@ -329,17 +320,6 @@ def main():
                 # Find latest commit in subdirectory
                 # A bit odd to do it this way but apparently there's no other way in the GitPython API
                 topcommit = next(repo.iter_commits('origin/%s' % branchname, paths=layerbranch.vcs_subdir), None)
-                if not topcommit:
-                    # This will error out if the directory is completely invalid or had never existed at this point
-                    # If it previously existed but has since been deleted, you will get the revision where it was
-                    # deleted - so we need to handle that case separately later
-                    if newbranch:
-                        logger.info("Skipping update of layer %s for branch %s - subdirectory %s does not exist on this branch" % (layer.name, branchdesc, layerbranch.vcs_subdir))
-                    elif layerbranch.vcs_subdir:
-                        logger.error("Subdirectory for layer %s does not exist on branch %s - if this is legitimate, the layer branch record should be deleted" % (layer.name, branchdesc))
-                    else:
-                        logger.error("Failed to get last revision for layer %s on branch %s" % (layer.name, branchdesc))
-                    sys.exit(1)
 
             layerdir = os.path.join(repodir, layerbranch.vcs_subdir)
             layerdir_start = os.path.normpath(layerdir) + os.sep
@@ -354,17 +334,6 @@ def main():
                 if not options.nocheckout:
                     utils.checkout_layer_branch(layerbranch, repodir, logger=logger)
 
-                if layerbranch.vcs_subdir and not os.path.exists(layerdir):
-                    if newbranch:
-                        logger.info("Skipping update of layer %s for branch %s - subdirectory %s does not exist on this branch" % (layer.name, branchdesc, layerbranch.vcs_subdir))
-                    else:
-                        logger.error("Subdirectory for layer %s does not exist on branch %s - if this is legitimate, the layer branch record should be deleted" % (layer.name, branchdesc))
-                    sys.exit(1)
-
-                if not os.path.exists(os.path.join(layerdir, 'conf/layer.conf')):
-                    logger.error("conf/layer.conf not found for layer %s - is subdirectory set correctly?" % layer.name)
-                    sys.exit(1)
-
                 logger.info("Collecting data for layer %s on branch %s" % (layer.name, branchdesc))
                 try:
                     (tinfoil, tempdir) = recipeparse.init_parser(settings, branch, bitbakepath, nocheckout=options.nocheckout, logger=logger)
-- 
2.7.4


