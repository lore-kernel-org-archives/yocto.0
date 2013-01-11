Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47CC3E01301
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2013 12:43:52 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Jan 2013 12:43:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,453,1355126400"; d="scan'208";a="272856659"
Received: from unknown (HELO localhost) ([10.255.14.242])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jan 2013 12:43:51 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com
Date: Fri, 11 Jan 2013 14:43:39 -0600
Message-Id: <5ba0919b5bcadba47f59a3b342aaa27048f0ff18.1357935675.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <1d1bf17bacd100d0ad849607863157e017617754.1357935675.git.tom.zanussi@intel.com>
References: <1d1bf17bacd100d0ad849607863157e017617754.1357935675.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1357935675.git.tom.zanussi@intel.com>
References: <cover.1357935675.git.tom.zanussi@intel.com>
Subject: [PATCH 7/7] scripts/lib/bsp/engine.py: add handling for JSON strings
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
X-List-Received-Date: Fri, 11 Jan 2013 20:43:52 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Normally pre-canned properties are supplied as JSON from a file, which
the user can specify using e.g. the -i option.

We can reuse that basic functionality for dedicated command-line
parameters by sythesizing a JSON string containing those param values
on the fly and passing that in instead.

This adds the ability for the common creation code to accept JSON
strings as well as JSON files.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 7431860..aa26280 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1387,6 +1387,9 @@ def yocto_common_create(machine, target, scripts_path, layer_output_dir, codedum
 
         properties = json.load(infile)
 
+    if properties_str and not properties:
+        properties = json.loads(properties_str)
+
     os.mkdir(layer_output_dir)
 
     context = create_context(machine, target, scripts_path)
@@ -1413,7 +1416,7 @@ def yocto_common_create(machine, target, scripts_path, layer_output_dir, codedum
     run_program_lines(program_lines, codedump)
 
 
-def yocto_layer_create(layer_name, scripts_path, layer_output_dir, codedump, properties_file):
+def yocto_layer_create(layer_name, scripts_path, layer_output_dir, codedump, properties_file, properties=""):
     """
     Create yocto layer
 
@@ -1424,13 +1427,13 @@ def yocto_layer_create(layer_name, scripts_path, layer_output_dir, codedump, pro
     properties_file - use values from this file if nonempty i.e no prompting
     properties - use values from this string if nonempty i.e no prompting
     """
-    yocto_common_create(layer_name, "layer", scripts_path, layer_output_dir, codedump, properties_file, False)
+    yocto_common_create(layer_name, "layer", scripts_path, layer_output_dir, codedump, properties_file, properties, False)
 
     print "\nNew layer created in %s.\n" % (layer_output_dir)
     print "Don't forget to add it to your BBLAYERS (for details see %s\README)." % (layer_output_dir)
 
 
-def yocto_bsp_create(machine, arch, scripts_path, bsp_output_dir, codedump, properties_file):
+def yocto_bsp_create(machine, arch, scripts_path, bsp_output_dir, codedump, properties_file, properties=None):
     """
     Create bsp
 
@@ -1443,7 +1446,7 @@ def yocto_bsp_create(machine, arch, scripts_path, bsp_output_dir, codedump, prop
     properties_file - use values from this file if nonempty i.e no prompting
     properties - use values from this string if nonempty i.e no prompting
     """
-    yocto_common_create(machine, arch, scripts_path, bsp_output_dir, codedump, properties_file)
+    yocto_common_create(machine, arch, scripts_path, bsp_output_dir, codedump, properties_file, properties)
 
     print "\nNew %s BSP created in %s" % (arch, bsp_output_dir)
 
-- 
1.7.11.4


