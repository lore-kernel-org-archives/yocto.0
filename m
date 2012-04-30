Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03B1DE0137A
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 12:11:46 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Apr 2012 12:11:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="160071264"
Received: from unknown (HELO localhost) ([10.255.12.127])
	by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2012 12:11:46 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 30 Apr 2012 14:12:14 -0500
Message-Id: <3cea3e5b38f503cb2ac22bedf88e1ba14391c2ab.1335812928.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1335812928.git.tom.zanussi@intel.com>
References: <cover.1335812928.git.tom.zanussi@intel.com>
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
X-List-Received-Date: Mon, 30 Apr 2012 19:11:47 -0000

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


