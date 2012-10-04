Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AAE3E01471
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 13:17:53 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Oct 2012 13:17:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,537,1344236400"; d="scan'208";a="220318503"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga002.jf.intel.com with ESMTP; 04 Oct 2012 13:17:51 -0700
From: nitin.a.kamble@intel.com
To: darren.hart@intel.com,
	tom.zanussi@intel.com,
	yocto@yoctoproject.org
Date: Thu,  4 Oct 2012 13:16:39 -0700
Message-Id: <452bc6fac7feb05204b3a4134269e312da565f18.1349381455.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1349381455.git.nitin.a.kamble@intel.com>
References: <cover.1349381455.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] crownbay.conf: add kernel parameters for EMGD video acceleration
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
X-List-Received-Date: Thu, 04 Oct 2012 20:17:53 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This is recommended in the EMGD User Guide.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 40dbd1d..f02615e 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -21,7 +21,7 @@ PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
 PREFERRED_VERSION_mesa-dri ?= "7.11"
 PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 
-APPEND += "video=vesafb vga=0x318"
+APPEND += "vga=current vmalloc=256MB"
 
 VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
 	    "commercial", "gst-va-intel va-intel", "va-intel", d)}"
-- 
1.7.3.4


