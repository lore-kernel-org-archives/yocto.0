Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 633F4E013C0
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2012 22:32:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Mar 2012 22:32:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="121890149"
Received: from unknown (HELO localhost) ([10.255.15.231])
	by orsmga002.jf.intel.com with ESMTP; 16 Mar 2012 22:32:15 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Sat, 17 Mar 2012 00:30:53 -0500
Message-Id: <b4501d70defe8df3f4df7d0d41a4440fe0c927f1.1331961098.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <5ca45595832a36794b748e7f93d6b56036d840e6.1331961098.git.tom.zanussi@intel.com>
References: <5ca45595832a36794b748e7f93d6b56036d840e6.1331961098.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331961098.git.tom.zanussi@intel.com>
References: <cover.1331961098.git.tom.zanussi@intel.com>
Subject: [PATCH 2/8] yocto-bsp-tools: add bsp library
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
X-List-Received-Date: Sat, 17 Mar 2012 05:32:16 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Create a home for the yocto bsp tools.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/__init__.py |   22 ++++++++++++++++++++++
 1 files changed, 22 insertions(+), 0 deletions(-)
 create mode 100644 scripts/lib/bsp/__init__.py

diff --git a/scripts/lib/bsp/__init__.py b/scripts/lib/bsp/__init__.py
new file mode 100644
index 0000000..8bbb6e1
--- /dev/null
+++ b/scripts/lib/bsp/__init__.py
@@ -0,0 +1,22 @@
+#
+# Yocto BSP tools library
+#
+# Copyright (c) 2012, Intel Corporation.
+# All rights reserved.
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+#
+# AUTHORS
+# Tom Zanussi <tom.zanussi (at] intel.com>
+#
-- 
1.7.0.4


