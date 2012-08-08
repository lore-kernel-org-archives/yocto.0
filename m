Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AC30E00346
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 13:21:58 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Aug 2012 13:21:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="178470672"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by azsmga001.ch.intel.com with ESMTP; 08 Aug 2012 13:21:56 -0700
From: tom.zanussi@intel.com
To: scott.a.garman@intel.com,
	yocto@yoctoproject.org
Date: Wed,  8 Aug 2012 15:21:35 -0500
Message-Id: <412c086bd1cd39351be954596e8379259482ede3.1344456875.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <c6411c0bc1db4ef705f918f80efc139042d46d55.1344456875.git.tom.zanussi@intel.com>
References: <c6411c0bc1db4ef705f918f80efc139042d46d55.1344456875.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344456875.git.tom.zanussi@intel.com>
References: <cover.1344456875.git.tom.zanussi@intel.com>
Subject: [PATCH 04/13] yocto-bsp: allow branch display filtering
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
X-List-Received-Date: Wed, 08 Aug 2012 20:21:58 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a "branches_base" property that can be used to allow only matching
branches to be returned from all_branches().

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py |    7 +++++++
 scripts/lib/bsp/kernel.py |   18 ++++++++++++++++++
 2 files changed, 25 insertions(+), 0 deletions(-)

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
index 8b3aa72..e9bc2e8 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -711,6 +711,16 @@ def all_branches(context):
     tmp = os.popen(gitcmd).read()
 
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
 
     if tmp:
         tmpline = tmp.split("\n")
@@ -719,6 +729,14 @@ def all_branches(context):
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
1.7.4.1


