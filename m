Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FA37E013FB
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 14:26:43 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Apr 2012 14:26:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="134095100"
Received: from unknown (HELO localhost) ([10.255.12.196])
	by orsmga002.jf.intel.com with ESMTP; 18 Apr 2012 14:26:42 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 18 Apr 2012 16:26:42 -0500
Message-Id: <e181fc2fd029f7853acab1ba7b66bc9f5c87126d.1334784305.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1334784305.git.tom.zanussi@intel.com>
References: <cover.1334784305.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] yocto-kernel: use BUILDDIR to find bblayers.conf
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
X-List-Received-Date: Wed, 18 Apr 2012 21:26:43 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The current code assumes that builddir == srcdir/build, which it
obviously isn't sometimes.  Use BUILDDIR to get the actual builddir
being used.

Fixes [YOCTO #2219].

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/kernel.py |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 360851b..8b3aa72 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -37,7 +37,12 @@ def find_bblayers(scripts_path):
     """
     Find and return a sanitized list of the layers found in BBLAYERS.
     """
-    bblayers_conf = os.path.join(scripts_path, "../build/conf/bblayers.conf")
+    try:
+        builddir = os.environ["BUILDDIR"]
+    except KeyError:
+        print "BUILDDIR not found, exiting. (Did you forget to source oe-init-build-env?)"
+        sys.exit(1)
+    bblayers_conf = os.path.join(builddir, "conf/bblayers.conf")
 
     layers = []
 
-- 
1.7.0.4


