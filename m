Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37995E01454
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 09:51:50 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 17 Dec 2012 09:51:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,303,1355126400"; d="scan'208";a="181982067"
Received: from unknown (HELO localhost) ([10.255.13.202])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Dec 2012 09:51:48 -0800
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com, david.c.stewart@intel.com, yocto@yoctoproject.org
Date: Mon, 17 Dec 2012 11:51:37 -0600
Message-Id: <0fa9aa4dd2070f9f0245dc0af2958cfa895a04b5.1355766001.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <f339ca3f94ec7bb6a749c5973acb1f85bc1ace6c.1355766001.git.tom.zanussi@intel.com>
References: <f339ca3f94ec7bb6a749c5973acb1f85bc1ace6c.1355766001.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1355766001.git.tom.zanussi@intel.com>
References: <cover.1355766001.git.tom.zanussi@intel.com>
Subject: [PATCH 5/5] scripts/lib/bsp/engine.py: refactor bsp-creation code
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
X-List-Received-Date: Mon, 17 Dec 2012 17:51:50 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This does a bit of refactoring of the bsp-generation code to make it
generically reusable for generating non-bsp layers.

The first user remains the existing yocto-bsp tool; these changes
allow a second user, the new yocto-layer tool, to use the same code.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py | 120 +++++++++++++++++++++++++---------------------
 1 file changed, 65 insertions(+), 55 deletions(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index d406e79..6a13a03 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1039,7 +1039,9 @@ def gen_program_machine_lines(machine, program_lines):
     Use the input values we got from the command line.
     """
     line = "machine = \"" + machine + "\""
+    program_lines.append(line)
 
+    line = "layer_name = \"" + machine + "\""
     program_lines.append(line)
 
 
@@ -1321,10 +1323,13 @@ def capture_context(context):
     return captured_context
 
 
-def expand_targets(context, bsp_output_dir):
+def expand_targets(context, bsp_output_dir, expand_common=True):
     """
     Expand all the tags in both the common and machine-specific
     'targets'.
+
+    If expand_common is False, don't expand the common target (this
+    option is used to create special-purpose layers).
     """
     target_files = []
 
@@ -1336,8 +1341,9 @@ def expand_targets(context, bsp_output_dir):
     bsp_path = lib_path + '/bsp'
     arch_path = bsp_path + '/substrate/target/arch'
 
-    common = os.path.join(arch_path, "common")
-    expand_target(common, target_files, bsp_output_dir)
+    if expand_common:
+        common = os.path.join(arch_path, "common")
+        expand_target(common, target_files, bsp_output_dir)
 
     arches = os.listdir(arch_path)
     if arch not in arches or arch == "common":
@@ -1352,18 +1358,17 @@ def expand_targets(context, bsp_output_dir):
     return target_files
 
 
-def yocto_layer_create(layer_name, scripts_path, layer_output_dir, codedump, properties_file):
+def yocto_common_create(machine, arch, scripts_path, bsp_output_dir, codedump, properties_file, expand_common=True):
     """
-    Create yocto layer
+    Create bsp
 
-    layer_name - user-defined layer name
+    machine - user-defined machine name
+    arch - the arch the bsp will be based on, must be one in
+           scripts/lib/bsp/substrate/target/arch
     scripts_path - absolute path to yocto /scripts dir
     bsp_output_dir - dirname to create for BSP
     codedump - dump generated code to bspgen.out
     properties_file - use values from here if nonempty i.e no prompting
-
-    arch - the arch for a generic layer is 'generic-layer', defined in
-           scripts/lib/bsp/substrate/target/generic-layer
     """
     if os.path.exists(bsp_output_dir):
         print "\nBSP output dir already exists, exiting. (%s)" % bsp_output_dir
@@ -1383,7 +1388,7 @@ def yocto_layer_create(layer_name, scripts_path, layer_output_dir, codedump, pro
     os.mkdir(bsp_output_dir)
 
     context = create_context(machine, arch, scripts_path)
-    target_files = expand_targets(context, bsp_output_dir)
+    target_files = expand_targets(context, bsp_output_dir, expand_common)
 
     input_lines = gather_inputlines(target_files)
 
@@ -1405,7 +1410,24 @@ def yocto_layer_create(layer_name, scripts_path, layer_output_dir, codedump, pro
 
     run_program_lines(program_lines, codedump)
 
-    print "New %s BSP created in %s" % (arch, bsp_output_dir)
+
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
+    yocto_common_create(layer_name, "layer", scripts_path, layer_output_dir, codedump, properties_file, False)
+
+    print "\nNew layer created in %s.\n" % (layer_output_dir)
+    print "Don't forget to add it to your BBLAYERS (for details see %s\README)." % (layer_output_dir)
 
 
 def yocto_bsp_create(machine, arch, scripts_path, bsp_output_dir, codedump, properties_file):
@@ -1420,47 +1442,9 @@ def yocto_bsp_create(machine, arch, scripts_path, bsp_output_dir, codedump, prop
     codedump - dump generated code to bspgen.out
     properties_file - use values from here if nonempty i.e no prompting
     """
-    if os.path.exists(bsp_output_dir):
-        print "\nBSP output dir already exists, exiting. (%s)" % bsp_output_dir
-        sys.exit(1)
-
-    properties = None
-
-    if properties_file:
-        try:
-            infile = open(properties_file, "r")
-        except IOError:
-            print "Couldn't open properties file %s for reading, exiting" % properties_file
-            sys.exit(1)
-
-        properties = json.load(infile)
+    yocto_common_create(machine, arch, scripts_path, bsp_output_dir, codedump, properties_file)
 
-    os.mkdir(bsp_output_dir)
-
-    context = create_context(machine, arch, scripts_path)
-    target_files = expand_targets(context, bsp_output_dir)
-
-    input_lines = gather_inputlines(target_files)
-
-    program_lines = []
-
-    gen_program_header_lines(program_lines)
-
-    gen_initial_property_vals(input_lines, program_lines)
-
-    if properties:
-        gen_supplied_property_vals(properties, program_lines)
-
-    gen_program_machine_lines(machine, program_lines)
-
-    if not properties:
-        gen_program_input_lines(input_lines, program_lines, context)
-
-    gen_program_lines(target_files, program_lines)
-
-    run_program_lines(program_lines, codedump)
-
-    print "New %s BSP created in %s" % (arch, bsp_output_dir)
+    print "\nNew %s BSP created in %s" % (arch, bsp_output_dir)
 
 
 def print_dict(items, indent = 0):
@@ -1508,7 +1492,7 @@ def get_properties(input_lines):
     return properties
 
 
-def yocto_bsp_list_properties(arch, scripts_path, properties_file):
+def yocto_bsp_list_properties(arch, scripts_path, properties_file, expand_common=True):
     """
     List the complete set of properties for all the input items in the
     BSP.  If properties_file is non-null, write the complete set of
@@ -1516,7 +1500,7 @@ def yocto_bsp_list_properties(arch, scripts_path, properties_file):
     nested dictionary.
     """
     context = create_context("unused", arch, scripts_path)
-    target_files = expand_targets(context, "unused")
+    target_files = expand_targets(context, "unused", expand_common)
 
     input_lines = gather_inputlines(target_files)
 
@@ -1605,7 +1589,7 @@ def print_values(type, values_list):
             print "[\"%s\", \"%s\"]" % (value[0], value[1])
 
 
-def yocto_bsp_list_property_values(arch, property, scripts_path, properties_file):
+def yocto_bsp_list_property_values(arch, property, scripts_path, properties_file, expand_common=True):
     """
     List the possible values for a given input property.  If
     properties_file is non-null, write the complete set of properties
@@ -1614,7 +1598,7 @@ def yocto_bsp_list_property_values(arch, property, scripts_path, properties_file
     context = create_context("unused", arch, scripts_path)
     context["name"] = property
 
-    target_files = expand_targets(context, "unused")
+    target_files = expand_targets(context, "unused", expand_common)
 
     input_lines = gather_inputlines(target_files)
 
@@ -1710,6 +1694,32 @@ def yocto_bsp_list(args, scripts_path, properties_file):
     return True
 
 
+def yocto_layer_list(args, scripts_path, properties_file):
+    """
+    Print the complete list of input properties defined by the layer,
+    or the possible values for a particular layer property.
+    """
+    if len(args) < 1:
+        return False
+
+    if len(args) < 1 or len(args) > 2:
+        return False
+
+    if len(args) == 1:
+        if args[0] == "properties":
+            yocto_bsp_list_properties("layer", scripts_path, properties_file, False)
+        else:
+            return False
+
+    if len(args) == 2:
+        if args[0] == "property":
+            yocto_bsp_list_property_values("layer", args[1], scripts_path, properties_file, False)
+        else:
+            return False
+
+    return True
+
+
 def map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch):
     """
     Return the linux-yocto bsp branch to use with the specified
-- 
1.7.11.4


