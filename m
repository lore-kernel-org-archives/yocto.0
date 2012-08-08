Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEB39E00283
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 13:21:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Aug 2012 13:21:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="177680658"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by orsmga001.jf.intel.com with ESMTP; 08 Aug 2012 13:21:48 -0700
From: tom.zanussi@intel.com
To: scott.a.garman@intel.com,
	yocto@yoctoproject.org
Date: Wed,  8 Aug 2012 15:21:32 -0500
Message-Id: <c6411c0bc1db4ef705f918f80efc139042d46d55.1344456875.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1344456875.git.tom.zanussi@intel.com>
References: <cover.1344456875.git.tom.zanussi@intel.com>
Subject: [PATCH 01/13] yocto-bsp: add new strip_base() function
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
X-List-Received-Date: Wed, 08 Aug 2012 20:21:50 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a strip_base() function to remove '/base' from the branch names
presented to the user.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 8e53f00..cda1d14 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -449,6 +449,16 @@ def boolean(input_str, name):
         return name
 
 
+def strip_base(input_str):
+    """
+    strip '/base' off the end of input_str, so we can use 'base' in
+    the branch names we present to the user.
+    """
+    if input_str and input_str.endswith("/base"):
+        return input_str[:-len("/base")]
+    return input_str.strip()
+
+
 deferred_choices = {}
 
 def gen_choices_defer(input_line, context, checklist = False):
-- 
1.7.4.1


