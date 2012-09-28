Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09A39E0049B
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 17:31:21 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Sep 2012 17:31:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,498,1344236400"; d="scan'208";a="198853025"
Received: from wrk.jf.intel.com ([10.7.202.68])
	by orsmga001.jf.intel.com with ESMTP; 27 Sep 2012 17:31:05 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 27 Sep 2012 17:31:10 -0700
Message-Id: <fa5da79ac8cbd8bb938d9e4351a4e9acc21a3b64.1348791431.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1f6183c270424b625be133d6c7368f5013679cc0.1348791431.git.kevin.strasser@linux.intel.com>
References: <1f6183c270424b625be133d6c7368f5013679cc0.1348791431.git.kevin.strasser@linux.intel.com>
In-Reply-To: <cover.1348791431.git.kevin.strasser@linux.intel.com>
References: <cover.1348791431.git.kevin.strasser@linux.intel.com>
Subject: [meta-baryon][PATCH 3/4] orc: specify the generic licenses being used
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

With the exception of source that contains the Mersenne Twister algorithm,
the majority of orc source code is made available under the BSD 2-Clause
license. The source that contains the Mersenne Twister algorithm is made
available under the BSD 3-Clause license.

This change fixes the following warning:

"WARNING: orc: No generic license file exists for: orc in any provider"

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-multimedia/orc/orc.inc      |    2 +-
 recipes-multimedia/orc/orc_0.4.5.bb |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-multimedia/orc/orc.inc b/recipes-multimedia/orc/orc.inc
index e149a9b..971be62 100644
--- a/recipes-multimedia/orc/orc.inc
+++ b/recipes-multimedia/orc/orc.inc
@@ -1,6 +1,6 @@
 DESCRIPTION = "orc - The Oil Runtime Compiler"
 HOMEPAGE = "http://code.entropywave.com/projects/orc/"
-LICENSE = "orc"
+LICENSE = "BSD-2-Clause & BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://COPYING;md5=1400bd9d09e8af56b9ec982b3d85797e"
 
 SRC_URI = "http://code.entropywave.com/download/orc/orc-${PV}.tar.gz;name=orc"
diff --git a/recipes-multimedia/orc/orc_0.4.5.bb b/recipes-multimedia/orc/orc_0.4.5.bb
index 271e55e..cf77efb 100644
--- a/recipes-multimedia/orc/orc_0.4.5.bb
+++ b/recipes-multimedia/orc/orc_0.4.5.bb
@@ -1,6 +1,6 @@
 require orc.inc
 
-PR = "r1"
+PR = "r2"
 
 SRC_URI[orc.md5sum] = "e26e59428b13ec251916f34bea96eee5"
 SRC_URI[orc.sha256sum] = "4e04953643cd8e67f8d9796da9547a606954e3944e42e7ce5a099440fd8e729e"
-- 
1.7.9.5


