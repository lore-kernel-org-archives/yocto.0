Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00271E00347
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 17:31:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Sep 2012 17:31:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,498,1344236400"; d="scan'208";a="198853026"
Received: from wrk.jf.intel.com ([10.7.202.68])
	by orsmga001.jf.intel.com with ESMTP; 27 Sep 2012 17:31:05 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 27 Sep 2012 17:31:11 -0700
Message-Id: <e4efadec4a1ded0a66fa67c7cca868b7a4b6221b.1348791431.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1f6183c270424b625be133d6c7368f5013679cc0.1348791431.git.kevin.strasser@linux.intel.com>
References: <1f6183c270424b625be133d6c7368f5013679cc0.1348791431.git.kevin.strasser@linux.intel.com>
In-Reply-To: <cover.1348791431.git.kevin.strasser@linux.intel.com>
References: <cover.1348791431.git.kevin.strasser@linux.intel.com>
Subject: [meta-baryon][PATCH 4/4] talloc: specify the version of LGPL and include the license text
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
X-List-Received-Date: Fri, 28 Sep 2012 00:31:21 -0000

talloc is made available under version 3 (or later) of the LGPL.

This change fixes the following warning:

"WARNING: talloc: No generic license file exists for: LGPL in any provider"

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-support/talloc/talloc_2.0.1.bb |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-support/talloc/talloc_2.0.1.bb b/recipes-support/talloc/talloc_2.0.1.bb
index a69bd40..5a3eba2 100644
--- a/recipes-support/talloc/talloc_2.0.1.bb
+++ b/recipes-support/talloc/talloc_2.0.1.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "Hierarchical, reference counted memory pool system with destructors"
 HOMEPAGE = "http://talloc.samba.org"
-LICENSE = "LGPL"
-LIC_FILES_CHKSUM = "file://NEWS;md5=5fe776b23a711c9153ee94bc87e47334"
+LICENSE = "LGPL-3.0+"
+LIC_FILES_CHKSUM = "file://talloc.h;beginline=4;endline=25;md5=e437634499a4434b4a24518195ff357d"
 
 inherit autotools pkgconfig
 
@@ -11,7 +11,7 @@ SRC_URI[sha256sum] = "5b810527405f29d54f50efd78bf2c89e318f2cd8bed001f22f2a1412fd
 
 TARGET_CC_ARCH += "${LDFLAGS}"
 
-PR = "r1"
+PR = "r2"
 
 # autoreconf doesn't work well while reconfiguring included libreplace
 do_configure () {
-- 
1.7.9.5


