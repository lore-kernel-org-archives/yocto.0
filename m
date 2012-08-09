Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC709E0145E
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 14:06:05 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Aug 2012 14:06:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,742,1336374000"; d="scan'208";a="205688732"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by fmsmga002.fm.intel.com with ESMTP; 09 Aug 2012 14:06:05 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Aug 2012 16:05:31 -0500
Message-Id: <9a5c28d9ee62da92efe664a4fd8c0b0425d3de16.1344546148.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <c157f1f265310327265af210da4e9af4b23c67d3.1344546148.git.tom.zanussi@intel.com>
References: <c157f1f265310327265af210da4e9af4b23c67d3.1344546148.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344546148.git.tom.zanussi@intel.com>
References: <cover.1344546148.git.tom.zanussi@intel.com>
Subject: [PATCH 08/19] yocto-bsp: use rstrip() for assignment lines
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
X-List-Received-Date: Thu, 09 Aug 2012 21:06:06 -0000

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


