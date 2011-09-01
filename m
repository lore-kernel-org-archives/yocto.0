Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76E41E0122C
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 19:34:31 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 31 Aug 2011 19:34:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,310,1312182000"; d="scan'208";a="47353108"
Received: from unknown (HELO localhost) ([10.255.14.55])
	by fmsmga002.fm.intel.com with ESMTP; 31 Aug 2011 19:34:30 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 31 Aug 2011 19:34:20 -0700
Message-Id: <24a30eaf49c25c0b5d8b5d7405691c6c1b67588d.1314844442.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH][meta-intel] grub: remove the dependency on freetype, disable grub-mkfont
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
X-List-Received-Date: Thu, 01 Sep 2011 02:34:31 -0000

Grub's configure task was picking up the host freetype libraries if
bitbake hadn't gotten around building freetype yet. We could add a
dependency on freetype, but it's only used for the optional grub-mkfont
utility which we don't really need.

Disable grub-mkfont via EXTRA_OECONF, removing the dependency on freetype.

Testing: core-image-minimal build and install on sugarbay.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Tested-by: Tom Zanussi <tom.zanussi@intel.com>
---
 common/recipes-bsp/grub/grub_1.98.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/common/recipes-bsp/grub/grub_1.98.bb b/common/recipes-bsp/grub/grub_1.98.bb
index 0cd3a40..802733f 100644
--- a/common/recipes-bsp/grub/grub_1.98.bb
+++ b/common/recipes-bsp/grub/grub_1.98.bb
@@ -24,7 +24,7 @@ SRC_URI = "ftp://alpha.gnu.org/gnu/grub/grub-${PV}.tar.gz \
 inherit autotools
 inherit gettext
 
-EXTRA_OECONF = "--with-platform=pc --target=i386"
+EXTRA_OECONF = "--with-platform=pc --target=i386 --disable-grub-mkfont"
 
 do_configure() {
     oe_runconf
-- 
1.7.6


