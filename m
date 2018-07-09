Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92D3BE00E97; Sun,  8 Jul 2018 21:01:40 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BAF9E00E8D
	for <yocto@yoctoproject.org>; Sun,  8 Jul 2018 21:01:36 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w6941ZXK013891
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 8 Jul 2018 21:01:35 -0700 (PDT)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.399.0; Sun, 8 Jul 2018 21:01:33 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Mon, 9 Jul 2018 12:11:29 +0800
Message-ID: <80d1a821c96364c67d8bd0e48cddb7909adcfd71.1531109397.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1531109397.git.liezhi.yang@windriver.com>
References: <cover.1531109397.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 3/4] update.py: add layers when RECOMMENDS isn't satisfied
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
X-List-Received-Date: Mon, 09 Jul 2018 04:01:40 -0000
Content-Type: text/plain

When layer_a RECOMMENDS layer_b, try to add layer_b before layer_a, but if
layer_b is not found, still add layer_a.

And print summary error mesage:

$ update.py -b master

ERROR: Issues found on branch master:
    openembedded-core: Added without LAYERRECOMMENDS
    meta-secure-env: Failed to add since LAYERDEPENDS is not satisfied

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py | 67 ++++++++++++++++++++++++++++++++++++----------------
 1 file changed, 46 insertions(+), 21 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 06c61a7..5b5fc43 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -299,6 +299,7 @@ def main():
             last_rev = {}
             failed_layers = {}
             for branch in branches:
+                failed_layers[branch] = []
                 # If layer_A depends(or recommends) on layer_B, add layer_B before layer_A
                 deps_dict_all = {}
                 layerquery_sorted = []
@@ -399,28 +400,34 @@ def main():
                     deps = re.search("^LAYERDEPENDS = \"(.*)\"", output, re.M).group(1) or ''
                     recs = re.search("^LAYERRECOMMENDS = \"(.*)\"", output, re.M).group(1) or ''
 
-                    deps_dict = utils.explode_dep_versions2(bitbakepath, deps + ' ' + recs)
-                    if len(deps_dict) == 0:
+                    deps_dict = utils.explode_dep_versions2(bitbakepath, deps)
+                    recs_dict = utils.explode_dep_versions2(bitbakepath, recs)
+                    if not (deps_dict or recs_dict):
                         # No depends, add it firstly
                         layerquery_sorted.append(layer)
                         collections.add((col, ver))
                         continue
-                    deps_dict_all[layer] = {'requires': deps_dict, 'collection': col, 'version': ver}
+                    deps_dict_all[layer] = {'deps': deps_dict, \
+                                            'recs': recs_dict, \
+                                            'collection': col, \
+                                            'version': ver}
 
                 # Move deps_dict_all to layerquery_sorted orderly
-                logger.info("Sorting layers for branch %s" % branch)
+                if deps_dict_all:
+                    logger.info("Sorting layers for branch %s" % branch)
                 while True:
                     deps_dict_all_copy = deps_dict_all.copy()
                     for layer, value in deps_dict_all_copy.items():
-                        for req_col, req_ver_list in value['requires'].copy().items():
-                            matched = False
-                            if req_ver_list:
-                                req_ver = req_ver_list[0]
-                            else:
-                                req_ver = None
-                            if utils.is_deps_satisfied(req_col, req_ver, collections):
-                                del(value['requires'][req_col])
-                        if not value['requires']:
+                        for deps_recs in ('deps', 'recs'):
+                            for req_col, req_ver_list in value[deps_recs].copy().items():
+                                matched = False
+                                if req_ver_list:
+                                    req_ver = req_ver_list[0]
+                                else:
+                                    req_ver = None
+                                if utils.is_deps_satisfied(req_col, req_ver, collections):
+                                    del(value[deps_recs][req_col])
+                        if not (value['deps'] or value['recs']):
                             # All the depends are in collections:
                             del(deps_dict_all[layer])
                             layerquery_sorted.append(layer)
@@ -429,15 +436,32 @@ def main():
                     if not len(deps_dict_all):
                         break
 
-                    # If nothing changed after a run then some dependencies couldn't be resolved
+                    finished = True
+                    # If nothing changed after a run, drop recs and try again
                     if operator.eq(deps_dict_all_copy, deps_dict_all):
+                        for layer, value in deps_dict_all.items():
+                            if value['recs'] and not value['deps']:
+                                # Add it if recs isn't satisfied only.
+                                logger.warn('Adding %s without LAYERRECOMMENDS...' % layer.name)
+                                del(deps_dict_all[layer])
+                                layerquery_sorted.append(layer)
+                                collections.add((value['collection'], value['version']))
+                                failed_msg = '%s: Added without LAYERRECOMMENDS' % layer.name
+                                failed_layers[branch].append(failed_msg)
+                                finished = False
+                                break
+                        if not finished:
+                            continue
                         logger.warning("Cannot find required collections on branch %s:" % branch)
-                        layer_names = []
                         for layer, value in deps_dict_all.items():
-                            logger.error('%s: %s' % (layer.name, value['requires']))
-                            layer_names.append(layer.name)
+                            logger.warn('%s: LAYERDEPENDS: %s LAYERRECOMMENDS: %s' % (layer.name, value['deps'], value['recs']))
+                            if value['deps']:
+                                failed_layers[branch].append('%s: Failed to add since LAYERDEPENDS is not satisfied' % layer.name)
+                            else:
+                                # Should never come here
+                                logger.error("Unexpected errors when sorting layers")
+                                sys.exit(1)
                         logger.warning("Known collections on branch %s: %s" % (branch, collections))
-                        failed_layers[branch] = layer_names
                         break
 
                 for layer in layerquery_sorted:
@@ -479,10 +503,11 @@ def main():
                         logger.info('Update interrupted, exiting')
                         sys.exit(254)
             if failed_layers:
-                print()
                 for branch, err_msg_list in failed_layers.items():
-                    logger.error("Failed layers on branch %s: %s" % (branch, " ".join(err_msg_list)))
-                print()
+                    if err_msg_list:
+                        print()
+                        logger.error("Issues found on branch %s:\n    %s" % (branch, "\n    ".join(err_msg_list)))
+                        print()
         finally:
             utils.unlock_file(lockfile)
 
-- 
2.7.4


