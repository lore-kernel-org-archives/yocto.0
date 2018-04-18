Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23F9DE00C6A; Wed, 18 Apr 2018 03:57:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76963E00C27
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 03:57:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w3IAvBLP020403
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 Apr 2018 03:57:11 -0700 (PDT)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 18 Apr 2018 03:57:10 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Wed, 18 Apr 2018 19:04:32 +0800
Message-ID: <74f1d08fd28898ac18ca8faafcc73ad2313718bc.1524049072.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1524049072.git.liezhi.yang@windriver.com>
References: <cover.1524049072.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 3/4] update.py: print failed layers summary in the end
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
X-List-Received-Date: Wed, 18 Apr 2018 10:57:13 -0000
Content-Type: text/plain

This makes it easy to see which layers are failed. For example:

ERROR: Failed layers on branch master: openembedded-core meta-python

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/layerindex/update.py b/layerindex/update.py
index e4ca7b6..44a7b90 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -319,6 +319,7 @@ def main():
             # unreliable due to leaking memory (we're using bitbake internals in a manner in which
             # they never get used during normal operation).
             last_rev = {}
+            failed_layers = {}
             for branch in branches:
                 # If layer_A depends(or recommends) on layer_B, add layer_B before layer_A
                 deps_dict_all = {}
@@ -384,9 +385,12 @@ def main():
                     # If nothing changed after a run then some dependencies couldn't be resolved
                     if operator.eq(deps_dict_all_copy, deps_dict_all):
                         logger.warning("Cannot find required collections on branch %s:" % branch)
+                        layer_names = []
                         for layer, value in deps_dict_all.items():
                             logger.error('%s: %s' % (layer.name, value['requires']))
+                            layer_names.append(layer.name)
                         logger.warning("Known collections on branch %s: %s" % (branch, collections))
+                        failed_layers[branch] = layer_names
                         break
 
                 for layer in layerquery_sorted:
@@ -427,6 +431,11 @@ def main():
                         # Interrupted by user, break out of loop
                         logger.info('Update interrupted, exiting')
                         sys.exit(254)
+            if failed_layers:
+                print()
+                for branch, err_msg_list in failed_layers.items():
+                    logger.error("Failed layers on branch %s: %s" % (branch, " ".join(err_msg_list)))
+                print()
         finally:
             utils.unlock_file(lockfile)
 
-- 
2.7.4


