Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5626CE00DFF; Mon,  8 Jan 2018 20:21:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1B30E00DE3
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 20:21:21 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Jan 2018 20:21:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,334,1511856000"; 
   d="scan'208";a="9740751"
Received: from cooi24-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.70.11])
	by orsmga006.jf.intel.com with ESMTP; 08 Jan 2018 20:21:18 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Jan 2018 17:20:27 +1300
Message-Id: <8dd24abf99578e3d2572062ca04dbeac4321b2ea.1515471545.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <cover.1515471545.git.paul.eggleton@linux.intel.com>
References: <cover.1515471545.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 4/6] update: don't stop on unsatisfied layer dependencies
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
X-List-Received-Date: Tue, 09 Jan 2018 04:21:22 -0000

Unsatisfied layer dependencies shouldn't error out of the script -
broken metadata isn't supposed to terminate the index update process.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update.py | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index d1e67a0..dc20b30 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -299,7 +299,7 @@ def main():
                 # If layer_A depends(or recommends) on layer_B, add layer_B before layer_A
                 deps_dict_all = {}
                 layerquery_sorted = []
-                collections_done = set()
+                collections = set()
                 branchobj = utils.get_branch(branch)
                 for layer in layerquery_all:
                     # Get all collections from database, but we can't trust the
@@ -309,7 +309,7 @@ def main():
                         continue
                     layerbranch = layer.get_layerbranch(branch)
                     if layerbranch:
-                        collections_done.add((layerbranch.collection, layerbranch.version))
+                        collections.add((layerbranch.collection, layerbranch.version))
 
                 for layer in layerquery:
                     cmd = prepare_update_layer_command(options, branchobj, layer, initial=True)
@@ -323,11 +323,12 @@ def main():
                     deps = re.search("^LAYERDEPENDS = \"(.*)\"", output, re.M).group(1) or ''
                     recs = re.search("^LAYERRECOMMENDS = \"(.*)\"", output, re.M).group(1) or ''
 
+                    collections.add((col, ver))
+
                     deps_dict = utils.explode_dep_versions2(bitbakepath, deps + ' ' + recs)
                     if len(deps_dict) == 0:
                         # No depends, add it firstly
                         layerquery_sorted.append(layer)
-                        collections_done.add((col, ver))
                         continue
                     deps_dict_all[layer] = {'requires': deps_dict, 'collection': col, 'version': ver}
 
@@ -342,24 +343,23 @@ def main():
                                 req_ver = req_ver_list[0]
                             else:
                                 req_ver = None
-                            if utils.is_deps_satisfied(req_col, req_ver, collections_done):
+                            if utils.is_deps_satisfied(req_col, req_ver, collections):
                                 del(value['requires'][req_col])
                         if not value['requires']:
-                            # All the depends are in collections_done:
+                            # All the depends are in collections:
                             del(deps_dict_all[layer])
                             layerquery_sorted.append(layer)
-                            collections_done.add((value['collection'], value['version']))
 
                     if not len(deps_dict_all):
                         break
 
-                    # Something is wrong if nothing changed after a run
+                    # If nothing changed after a run then some dependencies couldn't be resolved
                     if operator.eq(deps_dict_all_copy, deps_dict_all):
-                        logger.error("Cannot find required collections on branch %s:" % branch)
+                        logger.warning("Cannot find required collections on branch %s:" % branch)
                         for layer, value in deps_dict_all.items():
                             logger.error('%s: %s' % (layer.name, value['requires']))
-                        logger.error("Known collections: %s" % collections_done)
-                        sys.exit(1)
+                        logger.warning("Known collections on branch %s: %s" % (branch, collections))
+                        break
 
                 for layer in layerquery_sorted:
                     layerupdate = LayerUpdate()
-- 
2.9.5


