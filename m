Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D359EE013D3
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 14:05:47 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Aug 2012 14:05:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,742,1336374000"; d="scan'208";a="195747847"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by fmsmga001.fm.intel.com with ESMTP; 09 Aug 2012 14:05:47 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Aug 2012 16:05:24 -0500
Message-Id: <c157f1f265310327265af210da4e9af4b23c67d3.1344546148.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1344546148.git.tom.zanussi@intel.com>
References: <cover.1344546148.git.tom.zanussi@intel.com>
Subject: [PATCH 01/19] yocto-bsp: add new strip_base() function
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
X-List-Received-Date: Thu, 09 Aug 2012 21:05:48 -0000

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


