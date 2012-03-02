Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45268E0059A
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 23:02:08 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 01 Mar 2012 23:01:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="72669901"
Received: from unknown (HELO localhost) ([10.255.15.122])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Mar 2012 23:01:45 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri,  2 Mar 2012 01:01:10 -0600
Message-Id: <8ef1fb35b82a8be34b16e9e4d655640486384822.1330663414.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <873e25e86273c9263e32c02c296d96d06230e70e.1330663414.git.tom.zanussi@intel.com>
References: <873e25e86273c9263e32c02c296d96d06230e70e.1330663414.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1330663414.git.tom.zanussi@intel.com>
References: <cover.1330663414.git.tom.zanussi@intel.com>
Subject: [PATCH 8/8] yocto-kernel: new script
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Mar 2012 07:02:08 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Implementation of the 'yocto-kernel' command-line tool, for modifying
the kernel portion of a Yocto BSP.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/yocto-kernel |  219 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 219 insertions(+), 0 deletions(-)
 create mode 100755 scripts/yocto-kernel

diff --git a/scripts/yocto-kernel b/scripts/yocto-kernel
new file mode 100755
index 0000000..97a7a7c
--- /dev/null
+++ b/scripts/yocto-kernel
@@ -0,0 +1,219 @@
+#!/usr/bin/env python
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+#
+# Copyright 2012 Intel Corporation
+# Authored-by:  Tom Zanussi <tom.zanussi@intel.com>
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+__version__ = "0.1.0"
+
+import os
+import sys
+import optparse
+import logging
+
+scripts_path = os.path.abspath(os.path.dirname(os.path.abspath(sys.argv[0])))
+lib_path = scripts_path + '/lib'
+sys.path = sys.path + [lib_path]
+
+from bsp.help import *
+from bsp.kernel import *
+
+
+def yocto_kernel_config_list_subcommand(args, usage_str):
+    """
+    Command-line handling for listing BSP config options.  The
+    real work is done by bsp.kernel.yocto_kernel_config_list().
+    """
+    logging.debug("yocto_kernel_config_list_subcommand")
+
+    parser = optparse.OptionParser(usage = usage_str)
+
+    (options, args) = parser.parse_args(args)
+
+    if len(args) != 1:
+        logging.error("Wrong number of arguments, exiting\n")
+        parser.print_help()
+        exit(1)
+
+    yocto_kernel_config_list(scripts_path, args[0])
+
+
+def yocto_kernel_config_add_subcommand(args, usage_str):
+    """
+    Command-line handling for adding BSP config items.  The real work
+    is done by bsp.kernel.yocto_kernel_config_add().
+    """
+    logging.debug("yocto_kernel_config_add_subcommand")
+
+    parser = optparse.OptionParser(usage = usage_str)
+
+    (options, args) = parser.parse_args(args)
+
+    if len(args) < 2:
+        logging.error("Wrong number of arguments, exiting\n")
+        parser.print_help()
+        exit(1)
+
+    machine = args.pop(0)
+    yocto_kernel_config_add(scripts_path, machine, args)
+
+
+def yocto_kernel_config_rm_subcommand(args, usage_str):
+    """
+    Command-line handling for removing BSP config items.  The real
+    work is done by bsp.kernel.yocto_kernel_config_rm().
+    """
+    logging.debug("yocto_kernel_config_rm_subcommand")
+
+    parser = optparse.OptionParser(usage = usage_str)
+
+    (options, args) = parser.parse_args(args)
+
+    if len(args) != 1:
+        logging.error("Wrong number of arguments, exiting\n")
+        parser.print_help()
+        exit(1)
+
+    yocto_kernel_config_rm(scripts_path, args[0])
+
+
+def yocto_kernel_patch_list_subcommand(args, usage_str):
+    """
+    Command-line handling for listing BSP (SRC_URI patches.  The real
+    work is done by bsp.kernel.yocto_kernel_patch_list().
+    """
+    logging.debug("yocto_kernel_patch_list_subcommand")
+
+    parser = optparse.OptionParser(usage = usage_str)
+
+    (options, args) = parser.parse_args(args)
+
+    if len(args) != 1:
+        logging.error("Wrong number of arguments, exiting\n")
+        parser.print_help()
+        exit(1)
+
+    yocto_kernel_patch_list(scripts_path, args[0])
+
+
+def yocto_kernel_patch_add_subcommand(args, usage_str):
+    """
+    Command-line handling for adding BSP patches.  The real work is
+    done by bsp.kernel.yocto_kernel_patch_add().
+    """
+    logging.debug("yocto_kernel_patch_add_subcommand")
+
+    parser = optparse.OptionParser(usage = usage_str)
+
+    (options, args) = parser.parse_args(args)
+
+    if len(args) < 2:
+        logging.error("Wrong number of arguments, exiting\n")
+        parser.print_help()
+        exit(1)
+
+    machine = args.pop(0)
+    yocto_kernel_patch_add(scripts_path, machine, args)
+
+
+def yocto_kernel_patch_rm_subcommand(args, usage_str):
+    """
+    Command-line handling for removing BSP patches.  The real work is
+    done by bsp.kernel.yocto_kernel_patch_rm().
+    """
+    logging.debug("yocto_kernel_patch_rm_subcommand")
+
+    parser = optparse.OptionParser(usage = usage_str)
+
+    (options, args) = parser.parse_args(args)
+
+    if len(args) != 1:
+        logging.error("Wrong number of arguments, exiting\n")
+        parser.print_help()
+        exit(1)
+
+    yocto_kernel_patch_rm(scripts_path, args[0])
+
+
+subcommands = {
+    "config-list": [yocto_kernel_config_list_subcommand,
+                    yocto_kernel_config_list_usage,
+                    yocto_kernel_config_list_help],
+    "config-add": [yocto_kernel_config_add_subcommand,
+                   yocto_kernel_config_add_usage,
+                   yocto_kernel_config_add_help],
+    "config-rm": [yocto_kernel_config_rm_subcommand,
+                  yocto_kernel_config_rm_usage,
+                  yocto_kernel_config_rm_help],
+    "patch-list": [yocto_kernel_patch_list_subcommand,
+                   yocto_kernel_patch_list_usage,
+                   yocto_kernel_patch_list_help],
+    "patch-add": [yocto_kernel_patch_add_subcommand,
+                  yocto_kernel_patch_add_usage,
+                  yocto_kernel_patch_add_help],
+    "patch-rm": [yocto_kernel_patch_rm_subcommand,
+                 yocto_kernel_patch_rm_usage,
+                 yocto_kernel_patch_rm_help],
+}
+
+
+def start_logging(loglevel):
+    logging.basicConfig(filname = 'yocto-kernel.log', filemode = 'w', level=loglevel)
+
+
+def main():
+    parser = optparse.OptionParser(version = "yocto-kernel version %s" % __version__,
+                                   usage = yocto_kernel_usage)
+
+    parser.disable_interspersed_args()
+    parser.add_option("-D", "--debug", dest = "debug", action = "store_true",
+                      default = False, help = "output debug information")
+
+    (options, args) = parser.parse_args()
+
+    loglevel = logging.INFO
+    if options.debug:
+        loglevel = logging.DEBUG
+    start_logging(loglevel)
+
+    if len(args):
+        if args[0] == "help":
+            if len(args) == 1:
+                parser.print_help()
+                exit(1)
+            sc = 1
+        else:
+            sc = 0
+
+        if args[sc] == "config" or args[sc] == "patch":
+            if len(args) < 2 + sc:
+                parser.print_help()
+                exit(1)
+            args[sc] += "-" + args[sc + 1]
+            args.pop(sc + 1)
+
+    invoke_subcommand(args, parser, yocto_kernel_help_usage, subcommands)
+
+
+if __name__ == "__main__":
+    try:
+        ret = main()
+    except Exception:
+        ret = 1
+        import traceback
+        traceback.print_exc(5)
+    sys.exit(ret)
-- 
1.7.0.4


