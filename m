Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B869E00C60; Fri,  7 Oct 2016 08:57:35 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AABAE00C31
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 08:57:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u97FvTDs016465
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 7 Oct 2016 08:57:30 -0700 (PDT)
Received: from yow-lhowlett-d0.wrs.com (128.224.56.217) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 7 Oct 2016 08:57:29 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Oct 2016 11:57:15 -0400
Message-ID: <1475855841-30009-7-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH v2 06/12] layerindex/tools/import_project: Add import_project
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
X-List-Received-Date: Fri, 07 Oct 2016 15:57:35 -0000
Content-Type: text/plain

import_project will scan through a project and find any layer and add it
to the database by calling import_layer on each layer.  This differs
from import_layer as it tires to figure out the remote url and uses the
subdirectory (if one exists) as the name.

Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
---
 layerindex/tools/import_project.py | 180 +++++++++++++++++++++++++++++++++++++
 1 file changed, 180 insertions(+)
 create mode 100755 layerindex/tools/import_project.py

diff --git a/layerindex/tools/import_project.py b/layerindex/tools/import_project.py
new file mode 100755
index 0000000..511282d
--- /dev/null
+++ b/layerindex/tools/import_project.py
@@ -0,0 +1,180 @@
+#!/usr/bin/python3
+
+# Import a project into the database.
+#  This will scan through the directories in a project and find any layer and
+#  call import_layer.
+#
+#
+# Copyright (C) 2016 Wind River Systems
+# Author: Liam R. Howlett <liam.howlett@windriver.com>
+#
+# Licensed under the MIT license, see COPYING.MIT for details
+
+from git import Repo
+from urllib.parse import urlparse
+import logging
+import optparse
+import os, fnmatch
+import sys
+
+sys.path.insert(0, os.path.realpath(os.path.join(os.path.dirname(__file__), '..')))
+
+import import_layer
+import update
+
+import utils
+
+
+
+
+class ImportProject:
+    logger = utils.logger_create('ProjectIndexImport')
+
+    def find_layers(self, path):
+        self.logger.debug("finding layer..");
+        result = []
+        for root, dirs, files in os.walk(path, followlinks=True):
+            for name in fnmatch.filter(files, 'layer.conf'):
+                if not root.endswith('conf'):
+                    continue
+
+                self.logger.debug("Found %s" % root)
+                result.append(root)
+        return result
+
+
+    def main(self):
+        parser = optparse.OptionParser(
+            usage = """
+            %prog [options] [directory]""")
+
+        parser.add_option("-d", "--debug",
+            help = "Enable debug output",
+            action="store_const", const=logging.DEBUG, dest="loglevel", default=logging.INFO)
+        parser.add_option("-n", "--dry-run",
+            help = "Don't write any data back to the database",
+            action="store_true", dest="dryrun")
+
+        self.options, args = parser.parse_args(sys.argv)
+
+        self.logger.setLevel(self.options.loglevel)
+
+        if len(args) == 1:
+            print("Please provide a directory.");
+            sys.exit(1)
+
+        install_dir = args[1]
+        lc_list = self.find_layers(install_dir)
+        core_layer = self.add_core(lc_list)
+        if core_layer:
+            lc_list.remove(core_layer)
+
+
+
+        for layer in lc_list:
+            self.add_layer(layer)
+
+    def add_layer(self, layer):
+        self.logger.debug("Processing layer %s" % layer);
+        try:
+            git_dir = utils.runcmd("git rev-parse --show-toplevel", destdir=layer, logger=self.logger)
+        except Exception as e:
+            self.logger.error("Cannot get root dir for layer %s: %s - Skipping." % (layer, str(e)))
+            return 1
+
+        repo = Repo(git_dir)
+        actual_branch = repo.active_branch.name
+
+
+        layer_name = layer.split('/')[-2]
+
+        layer_subdir = None
+        if os.path.basename(git_dir) != layer_name:
+            layer_subdir = layer_name
+
+        layer_name = self.get_layer_name(layer)
+
+        for i in [1, 2, 3]:
+            try:
+                git_url = utils.runcmd("git config --get remote.origin.url", destdir=git_dir, logger=self.logger)
+            except Exception as e:
+                self.logger.info("Cannot get remote.origin.url for git dir %s: %s" % (git_dir, str(e)))
+
+            if not os.path.exists(git_url):
+                # Assume this is remote.
+                self.logger.debug("Found git url = %s" % git_url)
+                break;
+            self.logger.debug("Iterating to find git url into %s" % git_dir)
+            git_dir = git_url
+
+        cmd = ['import_layer.py']
+        if self.options.loglevel == logging.DEBUG:
+            cmd.append("-d")
+        if layer_subdir:
+            cmd.append("-s")
+            cmd.append(layer_subdir)
+
+        if actual_branch:
+            cmd.append("-a")
+            cmd.append(actual_branch)
+        cmd.append(git_url)
+        cmd.append(layer_name)
+        prefix = "Calling"
+
+        if self.options.dryrun:
+            prefix = "Would Call"
+
+
+        self.logger.info("%s import_layer.main with %s for dir %s" % (prefix, str(cmd), layer))
+        sys.argv = cmd
+        if not self.options.dryrun:
+            try:
+                import_layer.main();
+            except SystemExit as see:
+                return see.code
+        return 0
+
+    def get_layer_name(self, layerconfdir):
+        layer_name = layerconfdir.split('/')[-2]
+        self.logger.debug('getting layer %s' % layerconfdir)
+        layer_conf = os.path.join(layerconfdir, 'layer.conf')
+        if os.path.isfile(layer_conf):
+            with open(layer_conf) as conf:
+                for line in conf:
+                    if 'BBLAYERS_LAYERINDEX_NAME' in line:
+                        layer_name = line.split('=')[1].strip(' "\n')
+        return layer_name
+
+    def add_core(self, layers):
+        utils.setup_django()
+        core = None
+        import settings
+        for layer in layers:
+            layer_name = self.get_layer_name(layer)
+            if layer_name == settings.CORE_LAYER_NAME:
+                if self.add_layer(layer):
+                    self.logger.info('Failed to add core layer\n')
+                core = layer
+                self.update()
+                break
+        return core
+
+    def update(self):
+        update_py = os.path.realpath(os.path.join(os.path.dirname(__file__), '../update.py'))
+        cmd = [update_py]
+        if self.options.loglevel == logging.DEBUG:
+            cmd.append("-d")
+        sys.argv = cmd
+        self.logger.info("update")
+        if not self.options.dryrun:
+            try:
+                update.main();
+            except SystemExit:
+                return 1
+
+        return 0
+
+
+if __name__ == "__main__":
+    x = ImportProject()
+    x.main()
-- 
1.9.1


