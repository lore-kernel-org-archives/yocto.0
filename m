Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CC44E013DB
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2012 22:32:24 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Mar 2012 22:32:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="120035419"
Received: from unknown (HELO localhost) ([10.255.15.231])
	by azsmga001.ch.intel.com with ESMTP; 16 Mar 2012 22:32:23 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Sat, 17 Mar 2012 00:30:57 -0500
Message-Id: <7413c2958a19c1dbf3fb1c0677738f76de4a581b.1331961098.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <5ca45595832a36794b748e7f93d6b56036d840e6.1331961098.git.tom.zanussi@intel.com>
References: <5ca45595832a36794b748e7f93d6b56036d840e6.1331961098.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331961098.git.tom.zanussi@intel.com>
References: <cover.1331961098.git.tom.zanussi@intel.com>
Subject: [PATCH 6/8] yocto-bsp: add some useful constants
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
X-List-Received-Date: Sat, 17 Mar 2012 05:32:24 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Some constants used by the templating engine.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/tags.py |   47 +++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 47 insertions(+), 0 deletions(-)
 create mode 100644 scripts/lib/bsp/tags.py

diff --git a/scripts/lib/bsp/tags.py b/scripts/lib/bsp/tags.py
new file mode 100644
index 0000000..869b1d0
--- /dev/null
+++ b/scripts/lib/bsp/tags.py
@@ -0,0 +1,47 @@
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
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
+# DESCRIPTION
+# This module provides a place to define common constants for the
+# Yocto BSP Tools.
+#
+# AUTHORS
+# Tom Zanussi <tom.zanussi (at] intel.com>
+#
+
+OPEN_TAG =    "{{"
+CLOSE_TAG =   "}}"
+ASSIGN_TAG =  "{{="
+INPUT_TAG =   "input"
+IF_TAG =      "if"
+
+INDENT_STR =  "    "
+
+BLANKLINE_STR = "of.write(\"\\n\")"
+NORMAL_START =  "of.write"
+OPEN_START =    "of = open"
+
+INPUT_TYPE_PROPERTY = "type"
+
+SRC_URI_FILE = "file://"
+
+
+
+
+
-- 
1.7.0.4


