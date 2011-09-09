Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F96FE012AA
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2011 13:30:38 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Sep 2011 13:30:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,357,1312182000"; d="scan'208";a="47257475"
Received: from unknown (HELO [10.255.14.214]) ([10.255.14.214])
	by azsmga001.ch.intel.com with ESMTP; 09 Sep 2011 13:30:24 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 09 Sep 2011 15:30:21 -0500
Message-ID: <1315600221.2367.74.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH] grub2: update license version
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
X-List-Received-Date: Fri, 09 Sep 2011 20:30:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

The license version specified in the recipe is wrong - it should be v3
rather than 2+.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 common/recipes-bsp/grub/grub_1.98.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/common/recipes-bsp/grub/grub_1.98.bb b/common/recipes-bsp/grub/grub_1.98.bb
index 802733f..1b3040b 100644
--- a/common/recipes-bsp/grub/grub_1.98.bb
+++ b/common/recipes-bsp/grub/grub_1.98.bb
@@ -9,7 +9,7 @@ HOMEPAGE = "http://www.gnu.org/software/grub/"
 SECTION = "bootloaders"
 PRIORITY = "optional"
 
-LICENSE = "GPLv2+"
+LICENSE = "GPLv3"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 
 RDEPENDS = "diffutils freetype"
-- 
1.7.0.4




