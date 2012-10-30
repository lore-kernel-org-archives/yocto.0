Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77ED4E0145A
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 10:11:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 30 Oct 2012 10:11:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,680,1344236400"; d="scan'208";a="213081928"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.87])
	by orsmga001.jf.intel.com with ESMTP; 30 Oct 2012 10:11:05 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Tue, 30 Oct 2012 10:11:54 -0700
Message-Id: <b3c825a8aa5a4e1d8fd7a861ce48b1de69fbd381.1351616833.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1351616833.git.kishore.k.bodke@intel.com>
References: <cover.1351616833.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [meta-intel] meta-intel/common: Add License info for openssl-qat-module
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
X-List-Received-Date: Tue, 30 Oct 2012 17:11:06 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

openssl-qat-module has the dual license. So add GPLv2 and BSD
License to openssl qat Module.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../openssl-qat-module/openssl-qat-module.bb       |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/recipes-connectivity/openssl-qat-module/openssl-qat-module.bb b/common/recipes-connectivity/openssl-qat-module/openssl-qat-module.bb
index a4fe3c5..fdeebbb 100644
--- a/common/recipes-connectivity/openssl-qat-module/openssl-qat-module.bb
+++ b/common/recipes-connectivity/openssl-qat-module/openssl-qat-module.bb
@@ -7,8 +7,10 @@ implemented on Intel Communications Chipset 89xx Series based platforms."
 HOMEPAGE = "http://www.openssl.org/"
 SECTION = "libs/network"
 
-LICENSE = "openssl"
-LIC_FILES_CHKSUM = "file://${WORKDIR}/openssl-${PV}/LICENSE;md5=f9a8f968107345e0b75aa8c2ecaa7ec8"
+LICENSE = "openssl & GPLv2 & BSD"
+LIC_FILES_CHKSUM = "file://${WORKDIR}/openssl-${PV}/LICENSE;md5=f9a8f968107345e0b75aa8c2ecaa7ec8 \
+			file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6 \
+			file://${COMMON_LICENSE_DIR}/BSD;md5=3775480a712fc46a69647678acb234cb"
 
 PV = "1.0.1"
 PR = "r0"
-- 
1.7.9.5


