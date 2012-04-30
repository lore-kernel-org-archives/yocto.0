Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF4EBE013FF
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 12:11:48 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Apr 2012 12:11:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="138391966"
Received: from unknown (HELO localhost) ([10.255.12.127])
	by orsmga002.jf.intel.com with ESMTP; 30 Apr 2012 12:11:48 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 30 Apr 2012 14:12:15 -0500
Message-Id: <bd53feca27fc84d1b8bfbf0d2979a1fef7228e44.1335812928.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3cea3e5b38f503cb2ac22bedf88e1ba14391c2ab.1335812928.git.tom.zanussi@intel.com>
References: <3cea3e5b38f503cb2ac22bedf88e1ba14391c2ab.1335812928.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1335812928.git.tom.zanussi@intel.com>
References: <cover.1335812928.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] yocto-bsp: clarify help with reference to meta-intel
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
X-List-Received-Date: Mon, 30 Apr 2012 19:11:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The current yocto-bsp help assumes knowledge that the meta-intel layer
needs to be cloned before it's put into the BBLAYERS.  Avoid the
guesswork and state the details explicitly in the help.

Also, the shorter 'usage' string doesn't mention it at all; it would
help to at minimum mention it and refer the user to the detailed help.

Fixes [YOCTO #2330].

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/help.py |   48 +++++++++++++++++++++++++++++++++++++++++++---
 1 files changed, 44 insertions(+), 4 deletions(-)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index f78b09b..2d16d2e 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -115,6 +115,18 @@ yocto_bsp_create_usage = """
  'properties' that will be used to fill out the BSP-specific portions
  of the BSP.  The possible values for the 'karch' paramter can be
  listed via 'yocto-bsp list karch'.
+
+ NOTE: Once created, you should add your new layer to your
+ bblayers.conf file in order for it to be subsequently seen and
+ modified by the yocto-kernel tool.
+
+ See 'yocto bsp help create' for more detailed instructions.
+
+ NOTE: For x86- and x86_64-based BSPs, the generated BSP assumes the
+ presence of the meta-intel layer. Ensure the meta-intel layer is
+ present and added to bblayers.conf.
+
+ See 'yocto bsp help create' for more detailed instructions.
 """
 
 yocto_bsp_create_help = """
@@ -156,12 +168,40 @@ DESCRIPTION
     current directory, and is useful for debugging.
 
     NOTE: Once created, you should add your new layer to your
-    bblayers.conf file in order for it to be subsquently seen and
+    bblayers.conf file in order for it to be subsequently seen and
     modified by the yocto-kernel tool.
 
-    NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
-    presence of the of the meta-intel layer, so you should also have a
-    meta-intel layer present and added to your bblayers.conf as well.
+    For example, assuming your poky repo is at /path/to/poky, your new
+    BSP layer is at /path/to/poky/meta-mybsp, and your build directory
+    is /path/to/build:
+
+    $ gedit /path/to/build/conf/bblayers.conf
+
+    BBLAYERS ?= " \\
+      /path/to/poky/meta \\
+      /path/to/poky/meta-yocto \\
+      /path/to/poky/meta-mybsp \\
+      "
+
+    NOTE: For x86- and x86_64-based BSPs, the generated BSP assumes
+    the presence of the meta-intel layer. Ensure the meta-intel layer
+    is present and added to bblayers.conf.
+
+    For example, assuming your poky repo is at /path/to/poky, your new
+    BSP layer is at /path/to/poky/meta-mybsp, and your build directory
+    is /path/to/build:
+
+    $ cd /path/to/poky
+    $ git clone git://git.yoctoproject.org/meta-intel.git
+
+    $ gedit /path/to/build/conf/bblayers.conf
+
+    BBLAYERS ?= " \\
+      /path/to/poky/meta \\
+      /path/to/poky/meta-yocto \\
+      /path/to/poky/meta-intel \\
+      /path/to/poky/meta-mybsp \\
+      "
 """
 
 yocto_bsp_list_usage = """
-- 
1.7.0.4


