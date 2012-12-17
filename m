Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02312E0144D
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 09:51:47 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Dec 2012 09:51:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,303,1355126400"; d="scan'208";a="258446289"
Received: from unknown (HELO localhost) ([10.255.13.202])
	by orsmga002.jf.intel.com with ESMTP; 17 Dec 2012 09:51:46 -0800
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com, david.c.stewart@intel.com, yocto@yoctoproject.org
Date: Mon, 17 Dec 2012 11:51:36 -0600
Message-Id: <0c46e74f56afa3b2c2922209e8f746ca210c9152.1355766001.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <f339ca3f94ec7bb6a749c5973acb1f85bc1ace6c.1355766001.git.tom.zanussi@intel.com>
References: <f339ca3f94ec7bb6a749c5973acb1f85bc1ace6c.1355766001.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1355766001.git.tom.zanussi@intel.com>
References: <cover.1355766001.git.tom.zanussi@intel.com>
Subject: [PATCH 4/5] yocto-layer: add 'layer' template data
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
X-List-Received-Date: Mon, 17 Dec 2012 17:51:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a 'layer' target containing all the data that will be used to
generate a generic yocto layer.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/substrate/target/arch/layer/COPYING.MIT    | 17 ++++++
 scripts/lib/bsp/substrate/target/arch/layer/README | 64 ++++++++++++++++++++++
 .../substrate/target/arch/layer/conf/layer.conf    | 10 ++++
 .../target/arch/layer/layer-questions.noinstall    | 14 +++++
 .../example.patch"                                 | 12 ++++
 ..._name}}_{{=example_bbappend_version}}.bbappend" |  8 +++
 .../{{=example_recipe_name}}-0.1/example.patch"    | 12 ++++
 .../{{=example_recipe_name}}-0.1/helloworld.c"     |  6 ++
 .../example/{{=example_recipe_name}}_0.1.bb"       | 23 ++++++++
 9 files changed, 166 insertions(+)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/COPYING.MIT
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/README
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}-{{=example_bbappend_version}}/example.patch"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/example.patch"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}_0.1.bb"

diff --git a/scripts/lib/bsp/substrate/target/arch/layer/COPYING.MIT b/scripts/lib/bsp/substrate/target/arch/layer/COPYING.MIT
new file mode 100644
index 0000000..89de354
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/layer/COPYING.MIT
@@ -0,0 +1,17 @@
+Permission is hereby granted, free of charge, to any person obtaining a copy
+of this software and associated documentation files (the "Software"), to deal
+in the Software without restriction, including without limitation the rights
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+copies of the Software, and to permit persons to whom the Software is
+furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
+THE SOFTWARE.
diff --git a/scripts/lib/bsp/substrate/target/arch/layer/README b/scripts/lib/bsp/substrate/target/arch/layer/README
new file mode 100644
index 0000000..943dfc4
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/layer/README
@@ -0,0 +1,64 @@
+This README file contains information on the contents of the
+{{=layer_name}} layer.
+
+Please see the corresponding sections below for details.
+
+
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.openembedded.org/bitbake
+  branch: master
+
+  URI: git://git.openembedded.org/openembedded-core
+  layers: meta
+  branch: master
+
+  URI: git://git.yoctoproject.org/xxxx
+  layers: xxxx
+  branch: master
+
+
+Patches
+=======
+
+Please submit any patches against the {{=layer_name}} layer to the
+xxxx mailing list (xxxx@zzzz.org) and cc: the maintainer:
+
+Maintainer: XXX YYYYYY <xxx.yyyyyy@zzzzz.com>
+
+
+Table of Contents
+=================
+
+  I. Adding the {{=layer_name}} layer to your build
+ II. Misc
+
+
+I. Adding the {{=layer_name}} layer to your build
+=================================================
+
+--- replace with specific instructions for the {{=layer_name}} layer ---
+
+In order to use this layer, you need to make the build system aware of
+it.
+
+Assuming the {{=layer_name}} layer exists at the top-level of your
+yocto build tree, you can add it to the build system by adding the
+location of the {{=layer_name}} layer to bblayers.conf, along with any
+other layers needed. e.g.:
+
+  BBLAYERS ?= " \
+    /path/to/yocto/meta \
+    /path/to/yocto/meta-yocto \
+    /path/to/yocto/meta-yocto-bsp \
+    /path/to/yocto/meta-{{=layer_name}} \
+    "
+
+
+II. Misc
+========
+
+--- replace with specific information about the {{=layer_name}} layer ---
diff --git a/scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf b/scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf
new file mode 100644
index 0000000..84a9abb
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf
@@ -0,0 +1,10 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH := "${BBPATH}:${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+	${LAYERDIR}/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "{{=layer_name}}"
+BBFILE_PATTERN_{{=layer_name}} := "^${LAYERDIR}/"
+BBFILE_PRIORITY_{{=layer_name}} = "{{=layer_priority}}"
diff --git a/scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall b/scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
new file mode 100644
index 0000000..e2a89c3
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
@@ -0,0 +1,14 @@
+{{ input type:"edit" name:"layer_priority" prio:"20" msg:"Please enter the layer priority you'd like to use for the layer:" default:"6"}}
+
+{{ input type:"boolean" name:"create_example_recipe" prio:"20" msg:"Would you like to have an example recipe created? (y/n)" default:"n"}}
+
+{{ if create_example_recipe == "y": }}
+{{ input type:"edit" name:"example_recipe_name" prio:"20" msg:"Please enter the name you'd like to use for your example recipe:" default:"example"}}
+
+{{ input type:"boolean" name:"create_example_bbappend" prio:"20" msg:"Would you like to have an example bbappend file created? (y/n)" default:"n"}}
+
+{{ if create_example_bbappend == "y": }}
+{{ input type:"edit" name:"example_bbappend_name" prio:"20" msg:"Please enter the name you'd like to use for your bbappend file:" default:"example"}}
+
+{{ if create_example_bbappend == "y": }}
+{{ input type:"edit" name:"example_bbappend_version" prio:"20" msg:"Please enter the version number you'd like to use for your bbappend file (this should match the recipe you're appending to):" default:"0.1"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}-{{=example_bbappend_version}}/example.patch" "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}-{{=example_bbappend_version}}/example.patch"
new file mode 100644
index 0000000..2000a34
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}-{{=example_bbappend_version}}/example.patch"	
@@ -0,0 +1,12 @@
+#
+# This is a non-functional placeholder file, here for example purposes
+# only.
+#
+# If you had a patch for your recipe, you'd put it in this directory
+# and reference it from your recipe's SRC_URI:
+#
+#  SRC_URI += "file://example.patch"
+#
+# Note that you could also rename the directory containing this patch
+# to remove the version number or simply rename it 'files'.  Doing so
+# allows you to use the same directory for multiple recipes.
diff --git "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend" "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend"
new file mode 100644
index 0000000..2e50ff6
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend"	
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
+
+#
+# This .bbappend doesn't yet do anything - replace this text with
+# modifications to the example_0.1.bb recipe, or whatever recipe it is
+# that you want to modify with this .bbappend (make sure you change
+# the recipe name (PN) and version (PV) to match).
+#
diff --git "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/example.patch" "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/example.patch"
new file mode 100644
index 0000000..2000a34
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/example.patch"	
@@ -0,0 +1,12 @@
+#
+# This is a non-functional placeholder file, here for example purposes
+# only.
+#
+# If you had a patch for your recipe, you'd put it in this directory
+# and reference it from your recipe's SRC_URI:
+#
+#  SRC_URI += "file://example.patch"
+#
+# Note that you could also rename the directory containing this patch
+# to remove the version number or simply rename it 'files'.  Doing so
+# allows you to use the same directory for multiple recipes.
diff --git "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c" "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c"
new file mode 100644
index 0000000..90ce90e
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c"	
@@ -0,0 +1,6 @@
+#include <stdio.h>
+
+int main(int argc, char **argv)
+{
+    printf("Hello World!\n");
+}
diff --git "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}_0.1.bb" "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}_0.1.bb"
new file mode 100644
index 0000000..14bf344
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}_0.1.bb"	
@@ -0,0 +1,23 @@
+#
+# This file was derived from the 'Hello World!' example recipe in the
+# Yocto Project Development Manual.
+#
+
+DESCRIPTION = "Simple helloworld application"
+SECTION = "examples"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
+PR = "r0"
+
+SRC_URI = "file://helloworld.c"
+
+S = "${WORKDIR}"
+
+do_compile() {
+	     ${CC} helloworld.c -o helloworld
+}
+
+do_install() {
+	     install -d ${D}${bindir}
+	     install -m 0755 helloworld ${D}${bindir}
+}
-- 
1.7.11.4


