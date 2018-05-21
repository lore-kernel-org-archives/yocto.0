Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88663E00D0B; Sun, 20 May 2018 20:05:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C16FEE00D4C
	for <yocto@yoctoproject.org>; Sun, 20 May 2018 20:04:59 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 May 2018 20:04:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,425,1520924400"; d="scan'208";a="225835621"
Received: from syadandx-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.168.242])
	by orsmga005.jf.intel.com with ESMTP; 20 May 2018 20:04:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 21 May 2018 15:04:13 +1200
Message-Id: <8be35ede38039b4695237cdbdfadd30b1f560ec7.1526871767.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <cover.1526871767.git.paul.eggleton@linux.intel.com>
References: <cover.1526871767.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 5/6] Add a script to import layers from an existing layer index
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
X-List-Received-Date: Mon, 21 May 2018 03:05:02 -0000

Add a script that uses the REST API to gather information from another
running layer index instance (e.g. layers.openembedded.org) and import
that into the local index. Only information for branches that are
already set up is imported, and only manually entered information -
no recipes, machines, etc.

Partially implements [YOCTO #9760].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/tools/import_layers.py | 251 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 251 insertions(+)
 create mode 100755 layerindex/tools/import_layers.py

diff --git a/layerindex/tools/import_layers.py b/layerindex/tools/import_layers.py
new file mode 100755
index 00000000..b02759ea
--- /dev/null
+++ b/layerindex/tools/import_layers.py
@@ -0,0 +1,251 @@
+#!/usr/bin/env python3
+
+# Import layers from another layer index instance
+#
+# Copyright (C) 2018 Intel Corporation
+# Author: Paul Eggleton <paul.eggleton@linux.intel.com>
+#
+# Licensed under the MIT license, see COPYING.MIT for details
+
+
+import sys
+import os
+import optparse
+import re
+import glob
+import logging
+import subprocess
+import urllib.request
+import json
+
+sys.path.insert(0, os.path.realpath(os.path.join(os.path.dirname(__file__), '..')))
+
+import utils
+from layerconfparse import LayerConfParse
+
+class DryRunRollbackException(Exception):
+    pass
+
+logger = utils.logger_create('LayerIndexImport')
+
+
+
+def main():
+    valid_layer_name = re.compile('[-\w]+$')
+
+    parser = optparse.OptionParser(
+        usage = """
+    %prog [options] <url>""")
+
+    parser.add_option("-n", "--dry-run",
+            help = "Don't write any data back to the database",
+            action="store_true", dest="dryrun")
+    parser.add_option("-d", "--debug",
+            help = "Enable debug output",
+            action="store_const", const=logging.DEBUG, dest="loglevel", default=logging.INFO)
+    parser.add_option("-q", "--quiet",
+            help = "Hide all output except error messages",
+            action="store_const", const=logging.ERROR, dest="loglevel")
+
+    options, args = parser.parse_args(sys.argv)
+
+    if len(args) < 2:
+        print("Please specify URL of the layer index")
+        sys.exit(1)
+
+    layerindex_url = args[1]
+
+    utils.setup_django()
+    import settings
+    from layerindex.models import Branch, LayerItem, LayerBranch, LayerDependency, LayerMaintainer, LayerNote
+    from django.db import transaction
+
+    logger.setLevel(options.loglevel)
+
+    fetchdir = settings.LAYER_FETCH_DIR
+    if not fetchdir:
+        logger.error("Please set LAYER_FETCH_DIR in settings.py")
+        sys.exit(1)
+
+    if not os.path.exists(fetchdir):
+        os.makedirs(fetchdir)
+
+    if not layerindex_url.endswith('/'):
+        layerindex_url += '/'
+    if not '/layerindex/api/' in layerindex_url:
+        layerindex_url += '/layerindex/api/'
+
+    rq = urllib.request.Request(layerindex_url)
+    data = urllib.request.urlopen(rq).read()
+    jsdata = json.loads(data.decode('utf-8'))
+
+    branches_url = jsdata['branches']
+    layers_url = jsdata['layerItems']
+    layerdeps_url = jsdata['layerDependencies']
+    layerbranches_url = jsdata['layerBranches']
+    layermaintainers_url = jsdata.get('layerMaintainers', None)
+    layernotes_url = jsdata.get('layerNotes', None)
+
+    logger.debug('Getting branches')
+
+    # Get branches (we assume the ones we want are already there, so skip any that aren't)
+    rq = urllib.request.Request(branches_url)
+    data = urllib.request.urlopen(rq).read()
+    jsdata = json.loads(data.decode('utf-8'))
+    branch_idmap = {}
+    for branchjs in jsdata:
+        res = Branch.objects.filter(name=branchjs['name'])
+        if res:
+            branch = res.first()
+            branch_idmap[branchjs['id']] = branch
+
+    try:
+        with transaction.atomic():
+            # Get layers
+            logger.debug('Importing layers')
+            rq = urllib.request.Request(layers_url)
+            data = urllib.request.urlopen(rq).read()
+            jsdata = json.loads(data.decode('utf-8'))
+
+            layer_idmap = {}
+            exclude_fields = ['id', 'updated']
+            for layerjs in jsdata:
+                res = LayerItem.objects.filter(name=layerjs['name'])
+                if res:
+                    # Already have this layer
+                    logger.debug('Skipping layer %s, already in database' % layerjs['name'])
+                    layer_idmap[layerjs['id']] = res[0]
+                    continue
+                logger.debug('Adding layer %s' % layerjs['name'])
+                layeritem = LayerItem()
+                for key, value in layerjs.items():
+                    if key in exclude_fields:
+                        continue
+                    setattr(layeritem, key, value)
+                layeritem.save()
+                layer_idmap[layerjs['id']] = layeritem
+
+            # Get layer branches
+            logger.debug('Importing layer branches')
+            rq = urllib.request.Request(layerbranches_url)
+            data = urllib.request.urlopen(rq).read()
+            jsdata = json.loads(data.decode('utf-8'))
+
+            layerbranch_idmap = {}
+            exclude_fields = ['id', 'layer', 'branch', 'vcs_last_fetch', 'vcs_last_rev', 'vcs_last_commit', 'yp_compatible_version', 'updated']
+            for layerbranchjs in jsdata:
+                branch = branch_idmap.get(layerbranchjs['branch'], None)
+                if not branch:
+                    # We don't have this branch, skip it
+                    logger.debug('Skipping layerbranch %s, branch not imported' % layerbranchjs['id'])
+                    continue
+                layer = layer_idmap.get(layerbranchjs['layer'], None)
+                if not layer:
+                    # We didn't import this layer, skip it
+                    logger.debug('Skipping layerbranch %s, layer not imported' % layerbranchjs['id'])
+                    continue
+                res = LayerBranch.objects.filter(layer=layer).filter(branch=branch)
+                if res:
+                    # The layerbranch already exists (this will occur for layers
+                    # that already existed, since we need to have those in layer_idmap
+                    # to be able to import layer dependencies)
+                    logger.debug('Skipping layerbranch %s, already exists' % layerbranchjs['id'])
+                    continue
+
+                layerbranch = LayerBranch()
+                for key, value in layerbranchjs.items():
+                    if key in exclude_fields:
+                        continue
+                    setattr(layerbranch, key, value)
+                layerbranch.branch = branch
+                layerbranch.layer = layer
+                layerbranch.save()
+                layerbranch_idmap[layerbranchjs['id']] = layerbranch
+
+            # Get layer dependencies
+            logger.debug('Importing layer dependencies')
+            rq = urllib.request.Request(layerdeps_url)
+            data = urllib.request.urlopen(rq).read()
+            jsdata = json.loads(data.decode('utf-8'))
+
+            exclude_fields = ['id', 'layerbranch', 'dependency', 'updated']
+            for layerdepjs in jsdata:
+                layerbranch = layerbranch_idmap.get(layerdepjs['layerbranch'], None)
+                if not layerbranch:
+                    # We didn't import this layerbranch, skip it
+                    continue
+                dependency = layer_idmap.get(layerdepjs['dependency'], None)
+                if not dependency:
+                    # We didn't import the dependency, skip it
+                    continue
+
+                layerdep = LayerDependency()
+                for key, value in layerdepjs.items():
+                    if key in exclude_fields:
+                        continue
+                    setattr(layerdep, key, value)
+                layerdep.layerbranch = layerbranch
+                layerdep.dependency = dependency
+                layerdep.save()
+
+            if layermaintainers_url:
+                # Get layer maintainers (only available in latest code)
+                logger.debug('Importing layer maintainers')
+                rq = urllib.request.Request(layermaintainers_url)
+                data = urllib.request.urlopen(rq).read()
+                jsdata = json.loads(data.decode('utf-8'))
+
+                exclude_fields = ['id', 'layerbranch']
+                for layermaintainerjs in jsdata:
+                    layerbranch = layerbranch_idmap.get(layermaintainerjs['layerbranch'], None)
+                    if not layerbranch:
+                        # We didn't import this layerbranch, skip it
+                        continue
+
+                    layermaintainer = LayerMaintainer()
+                    for key, value in layermaintainerjs.items():
+                        if key in exclude_fields:
+                            continue
+                        setattr(layermaintainer, key, value)
+                    layermaintainer.layerbranch = layerbranch
+                    layermaintainer.save()
+
+            if layernotes_url:
+                # Get layer notes (only available in latest code)
+                logger.debug('Importing layer notes')
+                rq = urllib.request.Request(layernotes_url)
+                data = urllib.request.urlopen(rq).read()
+                jsdata = json.loads(data.decode('utf-8'))
+
+                exclude_fields = ['id', 'layer']
+                for layernotejs in jsdata:
+                    layer = layer_idmap.get(layernotejs['layer'], None)
+                    if not layer:
+                        # We didn't import this layer, skip it
+                        continue
+                    res = LayerNote.objects.filter(layer=layer).filter(text=layernotejs['text'])
+                    if res:
+                        # The note already exists (this will occur for layers
+                        # that already existed, since we need to have those in layer_idmap
+                        # to be able to import layer dependencies)
+                        logger.debug('Skipping note %s, already exists' % layernotejs['id'])
+                        continue
+
+                    layernote = LayerNote()
+                    for key, value in layernotejs.items():
+                        if key in exclude_fields:
+                            continue
+                        setattr(layernote, key, value)
+                    layernote.layer = layer
+                    layernote.save()
+
+            if options.dryrun:
+                raise DryRunRollbackException()
+    except DryRunRollbackException:
+        pass
+
+    sys.exit(0)
+
+
+if __name__ == "__main__":
+    main()
-- 
2.14.3


