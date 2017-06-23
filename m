Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78092E00BDC; Fri, 23 Jun 2017 00:45:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6164E00BE8
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 00:45:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v5N7jLaQ006311
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 23 Jun 2017 00:45:21 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 23 Jun 2017 00:45:20 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <paul.eggleton@linux.intel.com>
Date: Fri, 23 Jun 2017 00:45:06 -0700
Message-ID: <92649d3dc36832bc1002a5b48c700312905d60ad.1498203770.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1498203770.git.liezhi.yang@windriver.com>
References: <cover.1498203770.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: [layerindex-web][PATCH V5 07/10] update_layer.py: remove --update-dependencies
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
X-List-Received-Date: Fri, 23 Jun 2017 07:45:22 -0000
Content-Type: text/plain

It never works since it is in the middle of transaction.atomic() block, and
update.py doesn't need it any more, so remove it.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update_layer.py | 27 ---------------------------
 1 file changed, 27 deletions(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 7b945e7..1c33c78 100644
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
@@ -256,30 +253,6 @@ def main():
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


