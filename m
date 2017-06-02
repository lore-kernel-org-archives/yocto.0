Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02028E00BAD; Thu,  1 Jun 2017 23:28:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC97EE00B77
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 23:28:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v526Suck020452
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 1 Jun 2017 23:28:56 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 1 Jun 2017 23:28:55 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 1 Jun 2017 23:28:44 -0700
Message-ID: <a70a0381efd39e882b0a18841cf735e1ca771f6e.1496384657.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1496384657.git.liezhi.yang@windriver.com>
References: <cover.1496384657.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: [PATCH V3 07/11] update_layer.py: remove --update-dependencies
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

It never works since it is in the middle of transaction.atomic() block, and
update.py doesn't need it any more, so remove it.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py       |  4 +---
 layerindex/update_layer.py | 27 ---------------------------
 2 files changed, 1 insertion(+), 30 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 45dcb86..42dd22b 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -64,15 +64,13 @@ def run_command_interruptible(cmd):
     return process.returncode, buf
 
 
-def prepare_update_layer_command(options, branch, layer, updatedeps=False):
+def prepare_update_layer_command(options, branch, layer):
     """Prepare the update_layer.py command line"""
     if branch.update_environment:
         cmdprefix = branch.update_environment.get_command()
     else:
         cmdprefix = 'python3'
     cmd = '%s update_layer.py -l %s -b %s' % (cmdprefix, layer.name, branch.name)
-    if updatedeps:
-        cmd += ' --update-dependencies'
     if options.reload:
         cmd += ' --reload'
     if options.fullreload:
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 0373109..20c27be 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -182,9 +182,6 @@ def main():
     parser.add_option("-n", "--dry-run",
             help = "Don't write any data back to the database",
             action="store_true", dest="dryrun")
-    parser.add_option("", "--update-dependencies",
-            help = "Update layer dependencies only",
-            action="store_true", dest="updatedeps")
     parser.add_option("", "--nocheckout",
             help = "Don't check out branches",
             action="store_true", dest="nocheckout")
@@ -253,30 +250,6 @@ def main():
                     branchname = layerbranch.actual_branch
                     branchdesc = "%s (%s)" % (options.branch, branchname)
 
-            if options.updatedeps:
-                # Update layer dependencies only
-                if not layerbranch:
-                    logger.debug('Skipping dependency update for layer %s on branch %s - no layerbranch record' % (layer, branchdesc))
-                    sys.exit(0)
-                if not options.nocheckout:
-                    utils.checkout_layer_branch(layerbranch, repodir, logger=logger)
-                layerdir = os.path.join(repodir, layerbranch.vcs_subdir)
-                if not os.path.exists(layerdir):
-                    # If this happens it was already flagged during the main update, so ignore it
-                    logger.debug('Skipping dependency update for layer %s on branch %s - layer directory not found' % (layer, branchdesc))
-                    sys.exit(0)
-
-                layerconfparser = layerconfparse.LayerConfParse(logger=logger, bitbakepath=bitbakepath, tinfoil=tinfoil)
-                config_data = layerconfparser.parse_layer(layerdir)
-                if not config_data:
-                    logger.debug("Layer %s does not appear to be valid for branch %s" % (layer.name, branchdesc))
-                    sys.exit(0)
-
-                utils.add_dependencies(layerbranch, config_data, logger=logger)
-                utils.add_recommends(layerbranch, config_data, logger=logger)
-
-                sys.exit(0)
-
             # Collect repo info
             repo = git.Repo(repodir)
             assert repo.bare == False
-- 
2.10.2


