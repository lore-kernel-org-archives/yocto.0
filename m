Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFBDEE01304
	for <yocto@yoctoproject.org>; Sun, 15 Apr 2012 19:56:24 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Apr 2012 19:56:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="153987114"
Received: from unknown (HELO localhost) ([10.255.12.66])
	by fmsmga002.fm.intel.com with ESMTP; 15 Apr 2012 19:56:24 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sun, 15 Apr 2012 21:56:30 -0500
Message-Id: <a5ad9cd77e0801ba4cfb20718f196b5cb85289a8.1334544668.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1334544668.git.tom.zanussi@intel.com>
References: <cover.1334544668.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] yocto-bsp: update help to match property list changes
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
X-List-Received-Date: Mon, 16 Apr 2012 02:56:24 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The interface to the 'list properties' command changed to allow nested
properties, along with some changes to the property names used in the
documentation.  Update the help text to match.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/help.py |   48 +++++++++++++++++++++++++++-------------------
 1 files changed, 28 insertions(+), 20 deletions(-)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index f78b09b..d7c1e8f 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -246,18 +246,14 @@ DESCRIPTION
     "kernel_choice" : {
         "prio" : 10
         "default" : linux-yocto_3.2
-        "depends-on" : use_default_kernel
-        "depends-on-val" : n
         "msg" : Please choose the kernel to use in this BSP =>
         "type" : choicelist
         "gen" : bsp.kernel.kernels
     }
     "if kernel_choice == "linux-yocto_3.0":" : {
-        "base_kbranch_linux_yocto_3_0" : {
+        "new_kbranch" : {
             "prio" : 20
             "default" : yocto/standard
-            "depends-on" : new_kbranch_linux_yocto_3_0
-            "depends-on-val" : y
             "msg" : Please choose a machine branch to base this BSP on =>
             "type" : choicelist
             "gen" : bsp.kernel.all_branches
@@ -269,20 +265,16 @@ DESCRIPTION
     Each entry in the output consists of the name of the input element
     e.g. "touchscreen", followed by the properties defined for that
     element enclosed in braces.  This information should provide
-    sufficient information to create a complete user interface with.
-    Two features of the scheme provide for conditional input.  First,
-    if a Python "if" statement appears in place of an input element
-    name, the set of enclosed input elements apply and should be
-    presented to the user only if the 'if' statement evaluates to
-    true.  The test in the if statement will always reference another
-    input element in the list, which means that the element being
-    tested should be presented to the user before the elements
-    enclosed by the if block.  Secondly, in a similar way, some
-    elements contain "depends-on" and depends-on-val" tags, which mean
-    that the affected input element should only be presented to the
-    user if the element it depends on has already been presented to
-    the user and the user has selected the specified value for that
-    element.
+    sufficient information with which to create a complete user
+    interface.  Conditional input can be provided by enclosing other
+    elements within a Python "if" statement.  If a Python "if"
+    statement appears in place of an input element name, the set of
+    enclosed input elements apply and should be presented to the user
+    only if the "if" statement evaluates to true.  The test in the
+    "if" statement will always reference another input element in the
+    list, which means that the element being tested should be
+    presented to the user before the elements enclosed by the if
+    block.
 
     The third form enumerates all the possible values that exist and
     can be specified for any of the enumerable properties of the given
@@ -298,7 +290,19 @@ DESCRIPTION
         ["xserver_emgd", "EMGD xserver support (proprietary)"]
         ["xserver_i915", "i915 xserver support"]
 
-    $ yocto-bsp list arm property base_kbranch_linux_yocto_3_0
+    In order to allow nested properties to be unambiguously specified,
+    standard JSON '.' notation is supported.  For example, to name the
+    'base_kbranch' property in the listing above, the full
+    specification would be:
+
+    $ yocto-bsp list i386 property "if kernel_choice == "linux-yocto_3.2":".new_kbranch
+
+    However, as a usability feature, a subset of the top-level
+    property can also be specified instead.  It will return the first
+    match, so the subset should be unique.  Here specifying just the
+    kernel name produces the desired result:
+
+    $ yocto-bsp list i386 property "linux-yocto_3.0".new_kbranch
         Getting branches from remote repo git://git.yoctoproject.org/linux-yocto-3.0...
         ["yocto/base", "yocto/base"]
         ["yocto/eg20t", "yocto/eg20t"]
@@ -316,6 +320,10 @@ DESCRIPTION
         ["yocto/standard/qemu-ppc32", "yocto/standard/qemu-ppc32"]
         ["yocto/standard/routerstationpro", "yocto/standard/routerstationpro"]
 
+    Note that because the property separator is '.', if a portion of
+    the nested property itself contains a '.', that part of the nested
+    property should be enclosed in double quotes.
+
     The third form as well is meant mainly for developers of
     alternative interfaces - it allows the developer to fetch the
     possible values for a given input element on-demand.  This
-- 
1.7.0.4


