Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B99EEE00283
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 13:44:15 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Aug 2012 13:44:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="183310967"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by orsmga002.jf.intel.com with ESMTP; 08 Aug 2012 13:44:14 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  8 Aug 2012 15:43:46 -0500
Message-Id: <374f755bbf3ee823f7c936a7bc5e05194609a904.1344458451.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <c2f8f4743b9369476fd0cb7fb6a7bf0ada2b7c13.1344458451.git.tom.zanussi@intel.com>
References: <c2f8f4743b9369476fd0cb7fb6a7bf0ada2b7c13.1344458451.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344458451.git.tom.zanussi@intel.com>
References: <cover.1344458451.git.tom.zanussi@intel.com>
Subject: [PATCH 08/17] yocto-bsp: use rstrip() for assignment lines
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
X-List-Received-Date: Wed, 08 Aug 2012 20:44:15 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

strip() isn't necessary and causes unintended formatting changes in
the output; rstrip() remove the trailing newlines as intended while
leaving indenting whitespace intact.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 756b882..af90e91 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -668,7 +668,7 @@ class SubstrateBase(object):
         """
         Expand all tags in a line.
         """
-        expanded_line = AssignmentLine(line.strip())
+        expanded_line = AssignmentLine(line.rstrip())
 
         while start != -1:
             end = line.find(CLOSE_TAG, start)
-- 
1.7.4.1


