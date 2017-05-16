Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8068DE00B51; Tue, 16 May 2017 00:26:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 252B0E00B05
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 00:26:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v4G7QqOH001677
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 16 May 2017 00:26:52 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 16 May 2017 00:26:52 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 16 May 2017 00:26:51 -0700
Message-ID: <20170516072651.2919-1-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web] [PATCH] update.py: update actual branch for layer and bitbake
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
X-List-Received-Date: Tue, 16 May 2017 07:26:56 -0000
Content-Type: text/plain

Add an option "-a" to update actual branch for layer and bitbake, it is
useful when there are many layers and need update actual branches
frequantly. We only can update them via website without this patch,
which is not funny and easy to make mistakes.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py | 54 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/layerindex/update.py b/layerindex/update.py
index d5c56cd..aa2fb38 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -85,6 +85,51 @@ def prepare_update_layer_command(options, branch, layer, updatedeps=False):
         cmd += ' -q'
     return cmd
 
+def get_actual_branch_format():
+    return "<layer_name>:<branch>:<actual_branch>"
+
+def update_actual_branches(options):
+    """Update actual branch for layers and bitbake in database"""
+    to_save = set()
+    for opt in options.actual_branches.split(','):
+        opt_list = opt.split(':')
+        if len(opt_list) != 3:
+            logger.error("Bad format: %s, use %s" % (opt, get_actual_branch_format()))
+            sys.exit(1)
+        layer_name = opt_list[0]
+        branch = opt_list[1]
+        actual_branch_new = opt_list[2]
+        if not (layer_name and branch and actual_branch_new):
+            logger.error("Bad format: %s, one of %s is null" % (opt, get_actual_branch_new_format()))
+            sys.exit(1)
+
+        if layer_name == 'bitbake':
+            branchobj = utils.get_branch(branch)
+            if actual_branch_new != branchobj.bitbake_branch:
+                logger.info("bitbake: %s.bitbake_branch: %s -> %s" % (branch, branchobj.bitbake_branch, actual_branch_new))
+                branchobj.bitbake_branch = actual_branch_new
+                to_save.add(branchobj)
+            else:
+                logger.warn("bitbake: %s.bitbake_branch is already %s, so no change" % (branch, actual_branch_new))
+        else:
+            layer = utils.get_layer(layer_name)
+            if not layer:
+                logger.error("Layer name '%s' not found in database" % layer_name)
+                sys.exit(1)
+            layerbranch = layer.get_layerbranch(branch)
+            if not layerbranch:
+                logger.error("Branch '%s' not found in database" % branch)
+                sys.exit(1)
+            if actual_branch_new != layerbranch.actual_branch:
+                logger.info("%s: %s.actual_branch: %s -> %s" % (layer_name, branch, layerbranch.actual_branch, actual_branch_new))
+                layerbranch.actual_branch = actual_branch_new
+                to_save.add(layerbranch)
+            else:
+                logger.warn("%s: %s.actual_branch is already %s, so no change" % (layer_name, branch, actual_branch_new))
+
+        # At last, do the save
+        for s in to_save:
+            s.save()
 
 def main():
     if LooseVersion(git.__version__) < '0.3.1':
@@ -102,6 +147,11 @@ def main():
     parser.add_option("-l", "--layer",
             help = "Specify layers to update (use commas to separate multiple). Default is all published layers.",
             action="store", dest="layers")
+    parser.add_option("-a", "--actual-branch",
+            help = "Update actual branch for layer and bitbake, \
+                    the format is: %s (use commas to separate multiple), \
+                    use 'bitbake' as <layer_name> to update bitbake branch" % get_actual_branch_format(),
+            action="store", dest="actual_branches", default='')
     parser.add_option("-r", "--reload",
             help = "Reload recipe data instead of updating since last update",
             action="store_true", dest="reload")
@@ -187,6 +237,10 @@ def main():
             logger.error("Layer index lock timeout expired")
             sys.exit(1)
         try:
+            if options.actual_branches:
+                update_actual_branches(options)
+                return
+
             bitbakepath = os.path.join(fetchdir, 'bitbake')
 
             if not options.nofetch:
-- 
2.10.2


