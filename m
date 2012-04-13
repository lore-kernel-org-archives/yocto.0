Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6822E013A5
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 20:30:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Apr 2012 20:30:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="128782927"
Received: from unknown (HELO localhost) ([10.255.12.48])
	by orsmga001.jf.intel.com with ESMTP; 12 Apr 2012 20:30:10 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 12 Apr 2012 22:28:18 -0500
Message-Id: <a57362e323e1f5a9efa2d8682bc4be14450a894b.1334286512.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1334286512.git.tom.zanussi@intel.com>
References: <cover.1334286512.git.tom.zanussi@intel.com>
Subject: [PATCH 1/4] yocto-bsp: enable property value display of nested properties
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
X-List-Received-Date: Fri, 13 Apr 2012 03:30:10 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Previous versions of yocto-bsp mapped every input element to a unique
variable name, which is what the current property value display code
expects.  When that was changed to a nested form, the display code
wasn't updated to match - this updated does that.

Fixes [YOCTO #2222]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py |   56 +++++++++++++++++++++++++++++++++++++++++++-
 scripts/lib/bsp/kernel.py |    2 +-
 2 files changed, 55 insertions(+), 3 deletions(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index d2f0735..8e53f00 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1222,8 +1222,7 @@ def yocto_bsp_create(machine, arch, scripts_path, bsp_output_dir, codedump, prop
     context = create_context(machine, arch, scripts_path)
     target_files = expand_targets(context, bsp_output_dir)
 
-    if not properties:
-        input_lines = gather_inputlines(target_files)
+    input_lines = gather_inputlines(target_files)
 
     program_lines = []
 
@@ -1316,6 +1315,44 @@ def yocto_bsp_list_properties(arch, scripts_path, properties_file):
     print_dict(properties)
 
 
+def split_nested_property(property):
+    """
+    A property name of the form x.y describes a nested property
+    i.e. the property y is contained within x and can be addressed
+    using standard JSON syntax for nested properties.  Note that if a
+    property name itself contains '.', it should be contained in
+    double quotes.
+    """
+    splittable_property = ""
+    in_quotes = False
+    for c in property:
+        if c == '.' and not in_quotes:
+            splittable_property += '\n'
+            continue
+        if c == '"':
+            in_quotes = not in_quotes
+        splittable_property += c
+
+    split_properties = splittable_property.split('\n')
+
+    if len(split_properties) > 1:
+        return split_properties
+
+    return None
+
+
+def find_input_line_group(substring, input_lines):
+    """
+    Find and return the InputLineGroup containing the specified substring.
+    """
+    for line in input_lines:
+        if isinstance(line, InputLineGroup):
+            if substring in line.group[0].line:
+                return line
+
+    return None
+
+
 def find_input_line(name, input_lines):
     """
     Find the input line with the specified name.
@@ -1330,6 +1367,8 @@ def find_input_line(name, input_lines):
             try:
                 if line.props["name"] == name:
                     return line
+                if line.props["name"] + "_" + line.props["nameappend"] == name:
+                    return line
             except KeyError:
                 pass
 
@@ -1363,6 +1402,17 @@ def yocto_bsp_list_property_values(arch, property, scripts_path, properties_file
 
     properties = get_properties(input_lines)
 
+    nested_properties = split_nested_property(property)
+    if nested_properties:
+        # currently the outer property of a nested property always
+        # corresponds to an input line group
+        input_line_group = find_input_line_group(nested_properties[0], input_lines)
+        if input_line_group:
+            input_lines[:] = input_line_group.group[1:]
+            # The inner property of a nested property name is the
+            # actual property name we want, so reset to that
+            property = nested_properties[1]
+
     input_line = find_input_line(property, input_lines)
     if not input_line:
         print "Couldn't find values for property %s" % property
@@ -1376,6 +1426,8 @@ def yocto_bsp_list_property_values(arch, property, scripts_path, properties_file
     elif type == "choicelist" or type == "checklist":
         try:
             gen_fn = input_line.props["gen"]
+            if nested_properties:
+                context["filename"] = nested_properties[0]
             values_list = input_line.gen_choices_list(context, False)
         except KeyError:
             for choice in input_line.choices:
diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index b4e7fbf..360851b 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -657,7 +657,7 @@ def find_giturl(context):
     bbs = glob.glob(bbglob)
     for kernel in bbs:
         filename = os.path.splitext(os.path.basename(kernel))[0]
-        if filename == filebase:
+        if filename in filebase:
             giturl = extract_giturl(kernel)
             return giturl
     
-- 
1.7.0.4


