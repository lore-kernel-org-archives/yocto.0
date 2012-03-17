Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31435E013BB
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2012 22:32:26 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 16 Mar 2012 22:32:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="78596354"
Received: from unknown (HELO localhost) ([10.255.15.231])
	by AZSMGA002.ch.intel.com with ESMTP; 16 Mar 2012 22:32:25 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Sat, 17 Mar 2012 00:30:58 -0500
Message-Id: <6dac82eb3b130f581b11e4f9167dead2ac8565f1.1331961098.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <5ca45595832a36794b748e7f93d6b56036d840e6.1331961098.git.tom.zanussi@intel.com>
References: <5ca45595832a36794b748e7f93d6b56036d840e6.1331961098.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331961098.git.tom.zanussi@intel.com>
References: <cover.1331961098.git.tom.zanussi@intel.com>
Subject: [PATCH 7/8] yocto-bsp: new script
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
X-List-Received-Date: Sat, 17 Mar 2012 05:32:26 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Implementation of the 'yocto-bsp' command-line tool, for creating BSPs
and listing BSP properties.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/yocto-bsp |  143 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 143 insertions(+), 0 deletions(-)
 create mode 100755 scripts/yocto-bsp

diff --git a/scripts/yocto-bsp b/scripts/yocto-bsp
new file mode 100755
index 0000000..126fc8d
--- /dev/null
+++ b/scripts/yocto-bsp
@@ -0,0 +1,143 @@
+#!/usr/bin/env python
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+#
+# Copyright (c) 2012, Intel Corporation.
+# All rights reserved.
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
+#
+# DESCRIPTION
+# 'yocto-bsp' is the Yocto BSP Tool that helps users create a new
+# Yocto BSP.  Invoking it without any arguments will display help
+# screens for the 'yocto-bsp' command and list the available
+# 'yocto-bsp' subcommands.  Invoking a subcommand without any
+# arguments will likewise display help screens for the specified
+# subcommand.  Please use that interface for detailed help.
+#
+# AUTHORS
+# Tom Zanussi <tom.zanussi (at] intel.com>
+#
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
+from bsp.engine import *
+
+
+def yocto_bsp_create_subcommand(args, usage_str):
+    """
+    Command-line handling for BSP creation.  The real work is done by
+    bsp.engine.yocto_bsp_create()
+    """
+    parser = optparse.OptionParser(usage = usage_str)
+
+    parser.add_option("-o", "--outdir", dest = "outdir", action = "store",
+                      help = "name of BSP dir to create")
+    parser.add_option("-i", "--infile", dest = "properties_file", action = "store",
+                      help = "name of file containing the values for BSP properties as a JSON file")
+    parser.add_option("-c", "--codedump", dest = "codedump", action = "store_true",
+                      default = False, help = "dump the generated code to bspgen.out")
+    (options, args) = parser.parse_args(args)
+
+    if len(args) != 2:
+        logging.error("Wrong number of arguments, exiting\n")
+        parser.print_help()
+        sys.exit(1)
+
+    machine = args[0]
+    karch = args[1]
+
+    if options.outdir:
+        bsp_output_dir = options.outdir
+    else:
+        bsp_output_dir = "meta-" + machine
+
+    yocto_bsp_create(machine, karch, scripts_path, bsp_output_dir, options.codedump, options.properties_file)
+
+
+def yocto_bsp_list_subcommand(args, usage_str):
+    """
+    Command-line handling for listing available BSP properties and
+    values.  The real work is done by bsp.engine.yocto_bsp_list()
+    """
+    parser = optparse.OptionParser(usage = usage_str)
+
+    parser.add_option("-o", "--outfile", action = "store", dest = "properties_file",
+                      help = "dump the possible values for BSP properties to a JSON file")
+
+    (options, args) = parser.parse_args(args)
+
+    if not yocto_bsp_list(args, scripts_path, options.properties_file):
+        logging.error("Bad list arguments, exiting\n")
+        parser.print_help()
+        sys.exit(1)
+
+
+subcommands = {
+    "create": [yocto_bsp_create_subcommand,
+               yocto_bsp_create_usage,
+               yocto_bsp_create_help],
+    "list":   [yocto_bsp_list_subcommand,
+               yocto_bsp_list_usage,
+               yocto_bsp_list_help],
+}
+
+
+def start_logging(loglevel):
+    logging.basicConfig(filname = 'yocto-bsp.log', filemode = 'w', level=loglevel)
+
+
+def main():
+    parser = optparse.OptionParser(version = "yocto-bsp version %s" % __version__,
+                                   usage = yocto_bsp_usage)
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
+                sys.exit(1)
+
+    invoke_subcommand(args, parser, yocto_bsp_help_usage, subcommands)
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
+
-- 
1.7.0.4


