Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B35AE0059A
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 23:02:37 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 23:02:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="113740223"
Received: from unknown (HELO localhost) ([10.255.15.122])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2012 23:01:42 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri,  2 Mar 2012 01:01:08 -0600
Message-Id: <f3d38d21be561582ec89ae73f98cdee3fb3003f7.1330663414.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <873e25e86273c9263e32c02c296d96d06230e70e.1330663414.git.tom.zanussi@intel.com>
References: <873e25e86273c9263e32c02c296d96d06230e70e.1330663414.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1330663414.git.tom.zanussi@intel.com>
References: <cover.1330663414.git.tom.zanussi@intel.com>
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
X-List-Received-Date: Fri, 02 Mar 2012 07:02:37 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Some constants used by the templating engine.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/tags.py |   39 +++++++++++++++++++++++++++++++++++++++
 1 files changed, 39 insertions(+), 0 deletions(-)
 create mode 100644 scripts/lib/bsp/tags.py

diff --git a/scripts/lib/bsp/tags.py b/scripts/lib/bsp/tags.py
new file mode 100644
index 0000000..99b5785
--- /dev/null
+++ b/scripts/lib/bsp/tags.py
@@ -0,0 +1,39 @@
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+#
+# Copyright 2012 Intel Corporation
+# Authored-by:  Tom Zanussi <tom.zanussi@intel.com>
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


