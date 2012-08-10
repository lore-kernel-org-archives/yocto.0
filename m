Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 634C6E01450
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 12:03:54 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Aug 2012 12:03:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,747,1336374000"; d="scan'208";a="179521504"
Received: from unknown (HELO localhost) ([10.255.12.203])
	by azsmga001.ch.intel.com with ESMTP; 10 Aug 2012 12:03:53 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 10 Aug 2012 14:03:04 -0500
Message-Id: <a7152bc305ec329edb76a33d8fd735d4bf2ead17.1344623733.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <c157f1f265310327265af210da4e9af4b23c67d3.1344623733.git.tom.zanussi@intel.com>
References: <c157f1f265310327265af210da4e9af4b23c67d3.1344623733.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344623733.git.tom.zanussi@intel.com>
References: <cover.1344623733.git.tom.zanussi@intel.com>
Subject: [PATCH 15/19] yocto-bsp: update standard branch mapping
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
X-List-Received-Date: Fri, 10 Aug 2012 19:03:54 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Remove mapping for 3.0 and add mapping for 3.4.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 9d16b19..ac5058c 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1508,7 +1508,7 @@ def yocto_bsp_list(args, scripts_path, properties_file):
 def map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch):
     """
     Return the linux-yocto bsp branch to use with the specified
-    kbranch.  This handles the -standard variants for 3.0 and 3.2; the
+    kbranch.  This handles the -standard variants for 3.2 and 3.4; the
     other variants don't need mappings.
     """
     if need_new_kbranch == "y":
@@ -1517,10 +1517,10 @@ def map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch):
         kbranch = existing_kbranch
 
     if (kbranch.startswith("standard/default/common-pc-64") or
-        kbranch.startswith("yocto/standard/common-pc-64")):
+        kbranch.startswith("standard/common-pc-64")):
         return "bsp/common-pc-64/common-pc-64-standard"
     if (kbranch.startswith("standard/default/common-pc") or
-        kbranch.startswith("yocto/standard/common-pc")):
+        kbranch.startswith("standard/common-pc")):
         return "bsp/common-pc/common-pc-standard"
     else:
         return "ktypes/standard"
-- 
1.7.9.5


