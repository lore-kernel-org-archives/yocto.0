Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB7F8E00D3D; Fri, 24 Jun 2016 21:22:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 859D5E00A75
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 21:22:37 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jun 2016 21:22:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,524,1459839600"; d="scan'208";a="834909979"
Received: from wcrandle-mobl1.amr.corp.intel.com ([10.254.24.83])
	by orsmga003.jf.intel.com with ESMTP; 24 Jun 2016 21:22:36 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 24 Jun 2016 21:22:31 -0700
Message-Id: <1466828551-11784-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [PATCH] keep platform_extra and default_platform_extra lists ordered
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 25 Jun 2016 04:22:41 -0000

In RpmPM:insert_feeds_uris, the paths are kept in sets, which are unordered,
but they are later used to set the priority for the Smart channels, so
unexpected results could occur. Change the sets to lists and use the same
code as in create_configs() to add items to the list, reather than the set
operators.

[YOCTO #9717]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 meta/lib/oe/package_manager.py | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/meta/lib/oe/package_manager.py b/meta/lib/oe/package_manager.py
index 717246d..2004a42 100644
--- a/meta/lib/oe/package_manager.py
+++ b/meta/lib/oe/package_manager.py
@@ -700,18 +700,19 @@ class RpmPM(PackageManager):
             arch_list = self.feed_archs.split()
         else:
             # List must be prefered to least preferred order
-            default_platform_extra = set()
-            platform_extra = set()
+            default_platform_extra = list()
+            platform_extra = list()
             bbextendvariant = self.d.getVar('BBEXTENDVARIANT', True) or ""
             for mlib in self.ml_os_list:
                 for arch in self.ml_prefix_list[mlib]:
                     plt = arch.replace('-', '_') + '-.*-' + self.ml_os_list[mlib]
                     if mlib == bbextendvariant:
-                            default_platform_extra.add(plt)
+                        if plt not in default_platform_extra:
+                            default_platform_extra.append(plt)
                     else:
-                            platform_extra.add(plt)
-
-            platform_extra = platform_extra.union(default_platform_extra)
+                        if plt not in platform_extra:
+                            platform_extra.append(plt)
+            platform_extra = default_platform_extra + platform_extra
 
             for canonical_arch in platform_extra:
                 arch = canonical_arch.split('-')[0]
-- 
2.5.5


