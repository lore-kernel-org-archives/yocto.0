Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C8D8E013E5
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 13:22:02 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Aug 2012 13:22:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="183303232"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by orsmga002.jf.intel.com with ESMTP; 08 Aug 2012 13:22:01 -0700
From: tom.zanussi@intel.com
To: scott.a.garman@intel.com,
	yocto@yoctoproject.org
Date: Wed,  8 Aug 2012 15:21:37 -0500
Message-Id: <1bbcc61b60327239dd52c29b4edb4deed39f2d76.1344456875.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <c6411c0bc1db4ef705f918f80efc139042d46d55.1344456875.git.tom.zanussi@intel.com>
References: <c6411c0bc1db4ef705f918f80efc139042d46d55.1344456875.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344456875.git.tom.zanussi@intel.com>
References: <cover.1344456875.git.tom.zanussi@intel.com>
Subject: [PATCH 06/13] yocto-bsp: add standard branch mapping
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
X-List-Received-Date: Wed, 08 Aug 2012 20:22:02 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a mechanism to distinguish common-pc variants of standard
branches.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py |   21 +++++++++++++++++++++
 1 files changed, 21 insertions(+), 0 deletions(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 8b05809..756b882 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1503,3 +1503,24 @@ def yocto_bsp_list(args, scripts_path, properties_file):
             return False
 
     return True
+
+
+def map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch):
+    """
+    Return the linux-yocto bsp branch to use with the specified
+    kbranch.  This handles the -standard variants for 3.0 and 3.2; the
+    other variants don't need mappings.
+    """
+    if need_new_kbranch == "y":
+        kbranch = new_kbranch
+    else:
+        kbranch = existing_kbranch
+
+    if (kbranch.startswith("standard/default/common-pc-64") or
+        kbranch.startswith("yocto/standard/common-pc-64")):
+        return "bsp/common-pc-64/common-pc-64-standard"
+    if (kbranch.startswith("standard/default/common-pc") or
+        kbranch.startswith("yocto/standard/common-pc")):
+        return "bsp/common-pc/common-pc-standard"
+    else:
+        return "ktypes/standard"
-- 
1.7.4.1


