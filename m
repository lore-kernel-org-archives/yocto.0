Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EF52E00559
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2013 12:43:41 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Jan 2013 12:43:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,453,1355126400"; d="scan'208";a="271091059"
Received: from unknown (HELO localhost) ([10.255.14.242])
	by orsmga002.jf.intel.com with ESMTP; 11 Jan 2013 12:43:40 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com
Date: Fri, 11 Jan 2013 14:43:33 -0600
Message-Id: <1d1bf17bacd100d0ad849607863157e017617754.1357935675.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1357935675.git.tom.zanussi@intel.com>
References: <cover.1357935675.git.tom.zanussi@intel.com>
Subject: [PATCH 1/7] scripts/lib/bsp/engine.py: add yocto_layer_create()
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
X-List-Received-Date: Fri, 11 Jan 2013 20:43:41 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a new yocto_layer_create() function that will be used to generate
a generic yocto layer (for the new 'yocto-layer' command).

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py | 56 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 8985544..d406e79 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1352,6 +1352,62 @@ def expand_targets(context, bsp_output_dir):
     return target_files
 
 
+def yocto_layer_create(layer_name, scripts_path, layer_output_dir, codedump, properties_file):
+    """
+    Create yocto layer
+
+    layer_name - user-defined layer name
+    scripts_path - absolute path to yocto /scripts dir
+    bsp_output_dir - dirname to create for BSP
+    codedump - dump generated code to bspgen.out
+    properties_file - use values from here if nonempty i.e no prompting
+
+    arch - the arch for a generic layer is 'generic-layer', defined in
+           scripts/lib/bsp/substrate/target/generic-layer
+    """
+    if os.path.exists(bsp_output_dir):
+        print "\nBSP output dir already exists, exiting. (%s)" % bsp_output_dir
+        sys.exit(1)
+
+    properties = None
+
+    if properties_file:
+        try:
+            infile = open(properties_file, "r")
+        except IOError:
+            print "Couldn't open properties file %s for reading, exiting" % properties_file
+            sys.exit(1)
+
+        properties = json.load(infile)
+
+    os.mkdir(bsp_output_dir)
+
+    context = create_context(machine, arch, scripts_path)
+    target_files = expand_targets(context, bsp_output_dir)
+
+    input_lines = gather_inputlines(target_files)
+
+    program_lines = []
+
+    gen_program_header_lines(program_lines)
+
+    gen_initial_property_vals(input_lines, program_lines)
+
+    if properties:
+        gen_supplied_property_vals(properties, program_lines)
+
+    gen_program_machine_lines(machine, program_lines)
+
+    if not properties:
+        gen_program_input_lines(input_lines, program_lines, context)
+
+    gen_program_lines(target_files, program_lines)
+
+    run_program_lines(program_lines, codedump)
+
+    print "New %s BSP created in %s" % (arch, bsp_output_dir)
+
+
 def yocto_bsp_create(machine, arch, scripts_path, bsp_output_dir, codedump, properties_file):
     """
     Create bsp
-- 
1.7.11.4


