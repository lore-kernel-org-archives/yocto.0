Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65351E00BAB; Thu,  1 Jun 2017 23:28:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6802E00B9E
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 23:28:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v526SvGe031313
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 1 Jun 2017 23:28:57 -0700
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 1 Jun 2017 23:28:56 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 1 Jun 2017 23:28:45 -0700
Message-ID: <edafef644fb7dd1b0f4db00433a3e2f05e43bd3b.1496384657.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1496384657.git.liezhi.yang@windriver.com>
References: <cover.1496384657.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: [PATCH V3 08/11] update.py: add option -a to update actual branch
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
X-List-Received-Date: Fri, 02 Jun 2017 06:28:58 -0000
Content-Type: text/plain

Add an option "-a" to update actual branch for layer and bitbake, it is
useful when there are many layers and need update actual branches
frequantly. We only can update them via website without this patch,
which is not funny and easy to make mistakes.

* It works with "-l", and "-l bitbake" means update bitbake branch.
* It requires "-b" to work, and only one branch is supported in a run.

For example:
$ update.py -b master -a branch_20170526
All the layers which have branch master and actual_branch branch_20170526
will be updated to branch_20170526.

$ update.py -b master -l meta-oe -a branch_20170526
Only meta-oe layer will be updated.

$ update.py -b master -l bitbake -a branch_20170526
The bitbake's bitbake_branch will be updated.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py | 60 +++++++++++++++++++++++++++++++++++++++++++++++++++-
 layerindex/utils.py  | 11 ++++++++++
 2 files changed, 70 insertions(+), 1 deletion(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 42dd22b..f781d33 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -85,6 +85,43 @@ def prepare_update_layer_command(options, branch, layer):
         cmd += ' -q'
     return cmd
 
+def update_actual_branch(layerquery, fetchdir, branch, options, update_bitbake, bitbakepath):
+    """Update actual branch for layers and bitbake in database"""
+    to_save = set()
+    actual_branch = options.actual_branch
+    if update_bitbake:
+        branchobj = utils.get_branch(branch)
+        if actual_branch != branchobj.bitbake_branch:
+            if utils.is_branch_valid(bitbakepath, actual_branch):
+                logger.info("bitbake: %s.bitbake_branch: %s -> %s" % (branch, branchobj.bitbake_branch, actual_branch))
+                branchobj.bitbake_branch = actual_branch
+                to_save.add(branchobj)
+            else:
+                logger.info("Skipping update bitbake_branch for bitbake - branch %s doens't exist" % actual_branch)
+        else:
+            logger.info("bitbake: %s.bitbake_branch is already %s, so no change" % (branch, actual_branch))
+
+    for layer in layerquery:
+        urldir = layer.get_fetch_dir()
+        repodir = os.path.join(fetchdir, urldir)
+        if not utils.is_branch_valid(repodir, actual_branch):
+            logger.info("Skipping update actual_branch for %s - branch %s doens't exist" % (layer.name, actual_branch))
+            continue
+        layerbranch = layer.get_layerbranch(branch)
+        if not layerbranch:
+            logger.info("Skipping update actual_branch for %s - layerbranch %s doens't exist" % (layer.name, branch))
+            continue
+        if actual_branch != layerbranch.actual_branch:
+            logger.info("%s: %s.actual_branch: %s -> %s" % (layer.name, branch, layerbranch.actual_branch, actual_branch))
+            layerbranch.actual_branch = actual_branch
+            to_save.add(layerbranch)
+        else:
+            logger.info("%s: %s.actual_branch is already %s, so no change" % (layer.name, branch, actual_branch))
+
+    # At last, do the save
+    if not options.dryrun:
+        for s in to_save:
+            s.save()
 
 def main():
     if LooseVersion(git.__version__) < '0.3.1':
@@ -102,6 +139,9 @@ def main():
     parser.add_option("-l", "--layer",
             help = "Specify layers to update (use commas to separate multiple). Default is all published layers.",
             action="store", dest="layers")
+    parser.add_option("-a", "--actual-branch",
+            help = "Update actual branch for layer and bitbake",
+            action="store", dest="actual_branch", default='')
     parser.add_option("-r", "--reload",
             help = "Reload recipe data instead of updating since last update",
             action="store_true", dest="reload")
@@ -156,8 +196,13 @@ def main():
         logger.info("No published layers to update")
         sys.exit(1)
 
+    # For -a option to update bitbake branch
+    update_bitbake = False
     if options.layers:
         layers = options.layers.split(',')
+        if 'bitbake' in layers:
+            update_bitbake = True
+            layers.remove('bitbake')
         for layer in layers:
             layerquery = LayerItem.objects.filter(classic=False).filter(name=layer)
             if layerquery.count() == 0:
@@ -166,8 +211,17 @@ def main():
         layerquery = LayerItem.objects.filter(classic=False).filter(name__in=layers)
     else:
         # We deliberately exclude status == 'X' ("no update") here
+        update_bitbake = True
         layerquery = layerquery_all
 
+    if options.actual_branch:
+        if not options.branch:
+            logger.error("-a option requires -b")
+            sys.exit(1)
+        elif len(branches) != 1:
+            logger.error("Only one branch should be used with -a")
+            sys.exit(1)
+
     if not os.path.exists(fetchdir):
         os.makedirs(fetchdir)
     fetchedrepos = []
@@ -215,7 +269,7 @@ def main():
                             continue
                         fetchedrepos.append(layer.vcs_url)
 
-                if not fetchedrepos:
+                if not (fetchedrepos or update_bitbake):
                     logger.error("No repositories could be fetched, exiting")
                     sys.exit(1)
 
@@ -225,6 +279,10 @@ def main():
                 else:
                     out = utils.runcmd("git fetch", bitbakepath, logger=logger)
 
+            if options.actual_branch:
+                update_actual_branch(layerquery, fetchdir, branches[0], options, update_bitbake, bitbakepath)
+                return
+
             # Process and extract data from each layer
             # We now do this by calling out to a separate script; doing otherwise turned out to be
             # unreliable due to leaking memory (we're using bitbake internals in a manner in which
diff --git a/layerindex/utils.py b/layerindex/utils.py
index 7887bae..4bceae0 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -210,6 +210,17 @@ def is_layer_valid(layerdir):
         return False
     return True
 
+def is_branch_valid(layerdir, branch):
+    import git
+
+    g = git.cmd.Git(layerdir)
+    assert g.rev_parse('--is-bare-repository') == 'false'
+    try:
+        g.rev_parse('--verify', 'origin/%s' % branch)
+    except Exception:
+        return False
+    return True
+
 def parse_conf(conf_file, d):
     if hasattr(bb.parse, "handle"):
         # Newer BitBake
-- 
2.10.2


