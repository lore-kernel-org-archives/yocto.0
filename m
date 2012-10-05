Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AD64E00524
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 18:03:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Oct 2012 18:03:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,537,1344236400"; d="scan'208";a="201866821"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.160])
	by orsmga001.jf.intel.com with ESMTP; 04 Oct 2012 18:03:41 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Thu,  4 Oct 2012 18:04:35 -0700
Message-Id: <cover.1349398751.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/2][meta-intel] Add a new recipe for Zlib QAT Kernel Module.
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
X-List-Received-Date: Fri, 05 Oct 2012 01:03:42 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

This patch set adds the new recipe for Zlib QAT Kernel Module for 
building the Quick Assist Technology driver by adding it to the 
custom Image.

Please pull into meta-intel/master.

Thanks
Kishore.

The following changes since commit bc6f631c1eaa7154e667325da8fd636a05628f87:

  jasperforest: uprev v3.4 kernel commit ids (2012-10-04 14:21:55 -0500)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib Kishore/Zlib-qat-module
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=Kishore/Zlib-qat-module

Kishore Bodke (2):
  meta-crystalforest: Add a new recipe for Zlib QAT Kernel Module.
  meta-crystalforest: Add zlib kernel module to the qat Image.

 .../zlib-qat-module/zlib-qat-module.bb             |   53 +
 .../zlib-1.2.7-qat.L.0.4.0-005.patch               | 8559 ++++++++++++++++++++
 .../zlib-qat-module/zlib_qat_module.patch          |   27 +
 .../recipes-qat-image/images/core-image-qat-sdk.bb |    1 +
 .../recipes-qat-image/images/core-image-qat.bb     |    1 +
 5 files changed, 8641 insertions(+)
 create mode 100644 common/recipes-core/zlib-qat-module/zlib-qat-module.bb
 create mode 100644 common/recipes-core/zlib-qat-module/zlib-qat-module/zlib-1.2.7-qat.L.0.4.0-005.patch
 create mode 100644 common/recipes-core/zlib-qat-module/zlib-qat-module/zlib_qat_module.patch

-- 
1.7.9.5


