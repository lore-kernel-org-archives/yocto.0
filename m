Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8971E01456
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 12:03:25 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Aug 2012 12:03:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,747,1336374000"; d="scan'208";a="184761079"
Received: from unknown (HELO localhost) ([10.255.12.203])
	by orsmga002.jf.intel.com with ESMTP; 10 Aug 2012 12:03:22 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 10 Aug 2012 14:02:53 -0500
Message-Id: <041d242670ad63fff5c4ceaadbb9373b80fb6646.1344623733.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <c157f1f265310327265af210da4e9af4b23c67d3.1344623733.git.tom.zanussi@intel.com>
References: <c157f1f265310327265af210da4e9af4b23c67d3.1344623733.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344623733.git.tom.zanussi@intel.com>
References: <cover.1344623733.git.tom.zanussi@intel.com>
Subject: [PATCH 04/19] yocto-bsp: allow branch display filtering
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
X-List-Received-Date: Fri, 10 Aug 2012 19:03:25 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a "branches_base" property that can be used to allow only matching
branches to be returned from all_branches().

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py |    7 +++++++
 scripts/lib/bsp/kernel.py |   19 +++++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index cda1d14..8b05809 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -473,6 +473,11 @@ def gen_choices_defer(input_line, context, checklist = False):
     except KeyError:
         nameappend = ""
 
+    try:
+        branches_base = input_line.props["branches_base"]
+    except KeyError:
+        branches_base = ""
+
     filename = input_line.props["filename"]
 
     closetag_start = filename.find(CLOSE_TAG)
@@ -488,6 +493,8 @@ def gen_choices_defer(input_line, context, checklist = False):
     captured_context["filename"] = filename
     context["nameappend"] = nameappend
     captured_context["nameappend"] = nameappend
+    context["branches_base"] = branches_base
+    captured_context["branches_base"] = branches_base
 
     deferred_choice = (input_line, captured_context, checklist)
     key = name + "_" + filename + "_" + nameappend
diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 7c6da4e..d4bdc4c 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -713,6 +713,17 @@ def all_branches(context):
 
     branches = []
 
+    base_prefixes = None
+
+    try:
+        branches_base = context["branches_base"]
+        if branches_base:
+            base_prefixes = branches_base.split(":")
+    except KeyError:
+        pass
+
+    arch = context["arch"]
+
     if tmp:
         tmpline = tmp.split("\n")
         for line in tmpline:
@@ -720,6 +731,14 @@ def all_branches(context):
                 break;
             idx = line.find("refs/heads/")
             kbranch = line[idx + len("refs/heads/"):]
+            kbranch_prefix = kbranch.rsplit("/", 1)[0]
+
+            if base_prefixes:
+                for base_prefix in base_prefixes:
+                    if kbranch_prefix == base_prefix:
+                        branches.append(kbranch)
+                continue
+
             if (kbranch.find("/") != -1 and
                 (kbranch.find("standard") != -1 or kbranch.find("base") != -1) or
                 kbranch == "base"):
-- 
1.7.9.5


