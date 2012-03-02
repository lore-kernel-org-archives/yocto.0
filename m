Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72563E01353
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 23:01:35 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 01 Mar 2012 23:01:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="72669879"
Received: from unknown (HELO localhost) ([10.255.15.122])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Mar 2012 23:01:34 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri,  2 Mar 2012 01:01:04 -0600
Message-Id: <ebb9cbcd2cdf5a45fd35d59e6b4b2490dd94542b.1330663414.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <873e25e86273c9263e32c02c296d96d06230e70e.1330663414.git.tom.zanussi@intel.com>
References: <873e25e86273c9263e32c02c296d96d06230e70e.1330663414.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1330663414.git.tom.zanussi@intel.com>
References: <cover.1330663414.git.tom.zanussi@intel.com>
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
X-List-Received-Date: Fri, 02 Mar 2012 07:01:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Create a home for the yocto bsp tools.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/__init__.py |   17 +++++++++++++++++
 1 files changed, 17 insertions(+), 0 deletions(-)
 create mode 100644 scripts/lib/bsp/__init__.py

diff --git a/scripts/lib/bsp/__init__.py b/scripts/lib/bsp/__init__.py
new file mode 100644
index 0000000..978c2e4
--- /dev/null
+++ b/scripts/lib/bsp/__init__.py
@@ -0,0 +1,17 @@
+#
+# Yocto BSP tools library
+#
+# Copyright (C) 2012 Tom Zanussi
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
-- 
1.7.0.4


