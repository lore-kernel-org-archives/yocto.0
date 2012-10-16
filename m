Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63161E011AF
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 14:14:55 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Oct 2012 14:14:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,595,1344236400"; d="scan'208";a="206783481"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.160])
	by orsmga001.jf.intel.com with ESMTP; 16 Oct 2012 14:14:45 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Tue, 16 Oct 2012 14:16:01 -0700
Message-Id: <cover.1350421785.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/2] [meta-intel] meta-crystalforest: Add zlib qat mem module.
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
X-List-Received-Date: Tue, 16 Oct 2012 21:14:55 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

This patch set adds a new recipe for Intel Quick Assist Technology
Memory Management Module based on Zlib and include it to the custom
build Image recipe to build them.

Please pull into meta-intel/master.

Thanks
Kishore.

The following changes since commit 5164713bfbef16e1a49bc599ec0d738df52ab254:

  meta-crystalforest: Update SRCREV for meta. (2012-10-15 14:38:40 -0500)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib Kishore/Zlib-qat_mem
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=Kishore/Zlib-qat_mem

Kishore Bodke (2):
  meta-intel/common: Add a new recipe for Zlib qat_mem Module.
  meta-crystalforest: Add zlib-qat-module to the Image.

 .../zlib-qat-module/zlib-qat-module.bb             |   65 ++++++++++++++++++++
 .../zlib-qat-module/zlib_qat_module.patch          |   43 +++++++++++++
 .../recipes-qat-image/images/core-image-qat-sdk.bb |    1 +
 .../recipes-qat-image/images/core-image-qat.bb     |    1 +
 4 files changed, 110 insertions(+)
 create mode 100644 common/recipes-core/zlib-qat-module/zlib-qat-module.bb
 create mode 100644 common/recipes-core/zlib-qat-module/zlib-qat-module/zlib_qat_module.patch

-- 
1.7.9.5


