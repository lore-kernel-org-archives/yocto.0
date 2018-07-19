Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C164E01342; Thu, 19 Jul 2018 06:17:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C75AE00EE0
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 06:17:56 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Jul 2018 06:17:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,374,1526367600"; d="scan'208";a="73712019"
Received: from wulili-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.50.201])
	by fmsmga001.fm.intel.com with ESMTP; 19 Jul 2018 06:17:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jul 2018 15:17:32 +0200
Message-Id: <3fa8a75a2fda7e55af09ba32a6619220478f035f.1532006209.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1532006209.git.paul.eggleton@linux.intel.com>
References: <cover.1532006209.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 1/3] update: fix handling of moves outside of a layer
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
X-List-Received-Date: Thu, 19 Jul 2018 13:17:58 -0000

If a file is moved (renamed) to a path outside of the layer, e.g.
another layer within a multi-layer repository, then we need to treat it
as a delete. Up until now we were updating the path and continuing, and
then the recipe was also picked up as an add in the other layer, leading
to duplicate recipe entries. I'd noticed these duplicates before but up
until now I'd thought that they were due to another bug we already
fixed, apparently not.

In order to remove these erroneous duplicate entries in existing
databases I have also added a layerindex/tools/fixup_duplicates.py
script. I've also made the -r/--reload option delete them as well.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/tools/fixup_duplicates.py | 69 ++++++++++++++++++++++++++++
 layerindex/update_layer.py           | 27 +++++++----
 2 files changed, 87 insertions(+), 9 deletions(-)
 create mode 100644 layerindex/tools/fixup_duplicates.py

diff --git a/layerindex/tools/fixup_duplicates.py b/layerindex/tools/fixup_duplicates.py
new file mode 100644
index 00000000..5abe2c2d
--- /dev/null
+++ b/layerindex/tools/fixup_duplicates.py
@@ -0,0 +1,69 @@
+#!/usr/bin/env python3
+
+# Fix recipes that were moved out
+#
+# Copyright (C) 2017 Intel Corporation
+# Author: Paul Eggleton <paul.eggleton@linux.intel.com>
+#
+# Licensed under the MIT license, see COPYING.MIT for details
+
+
+import sys
+import os
+
+sys.path.insert(0, os.path.realpath(os.path.join(os.path.dirname(__file__), '..')))
+
+import optparse
+import utils
+import logging
+
+class DryRunRollbackException(Exception):
+    pass
+
+logger = utils.logger_create('LayerIndexFixup')
+
+
+
+def main():
+    parser = optparse.OptionParser(
+        usage = """
+    %prog [options""")
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
+    utils.setup_django()
+    import settings
+    from layerindex.models import Recipe
+    from django.db import transaction
+
+    logger.setLevel(options.loglevel)
+
+    try:
+        with transaction.atomic():
+            #LayerBranch.objects.filter(layermaintainer__isnull=True).delete()
+            #LayerItem.objects.filter(layerbranch__isnull=True).filter(classic=False).delete()
+            #LayerItem.objects.filter(layerbranch__isnull=True).filter(classic=False).delete()
+            for recipe in Recipe.objects.filter(filepath__startswith='../'):
+                print('Deleting erroneous recipe %s %s' % (recipe.layerbranch, recipe))
+                recipe.delete()
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
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index d34d8a59..2b39e8ef 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -502,6 +502,10 @@ def main():
                         if skip:
                             continue
                         if oldpath.startswith(subdir_start):
+                            if not newpath.startswith(subdir_start):
+                                logger.debug("Treating rename of %s to %s as a delete since new path is outside layer" % (oldpath, newpath))
+                                other_deletes.append(diffitem)
+                                continue
                             (oldtypename, oldfilepath, oldfilename) = recipeparse.detect_file_type(oldpath, subdir_start)
                             (newtypename, newfilepath, newfilename) = recipeparse.detect_file_type(newpath, subdir_start)
                             if oldtypename != newtypename:
@@ -684,16 +688,21 @@ def main():
                         # First, check which recipes still exist
                         layerrecipe_values = layerrecipes.values('id', 'filepath', 'filename', 'pn')
                         for v in layerrecipe_values:
-                            root = os.path.join(layerdir, v['filepath'])
-                            fullpath = os.path.join(root, v['filename'])
-                            preserve = True
-                            if os.path.exists(fullpath):
-                                for removedir in removedirs:
-                                    if fullpath.startswith(removedir):
-                                        preserve = False
-                                        break
-                            else:
+                            if v['filepath'].startswith('../'):
+                                # FIXME: These recipes were present due to a bug (not handling renames
+                                # to paths outside the layer) - this can be removed at some point in the future
                                 preserve = False
+                            else:
+                                root = os.path.join(layerdir, v['filepath'])
+                                fullpath = os.path.join(root, v['filename'])
+                                if os.path.exists(fullpath):
+                                    preserve = True
+                                    for removedir in removedirs:
+                                        if fullpath.startswith(removedir):
+                                            preserve = False
+                                            break
+                                else:
+                                    preserve = False
 
                             if preserve:
                                 # Recipe still exists, update it
-- 
2.17.1


