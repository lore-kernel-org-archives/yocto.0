Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C854DE0127A
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 11:17:55 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Oct 2012 11:17:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,608,1344236400"; d="scan'208";a="206185972"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.160])
	by azsmga001.ch.intel.com with ESMTP; 18 Oct 2012 11:17:54 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Thu, 18 Oct 2012 11:19:14 -0700
Message-Id: <cover.1350583189.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/3][meta-intel] Add zlib and openssl qat_mem module
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
X-List-Received-Date: Thu, 18 Oct 2012 18:17:56 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

This is a revised patchset to add two new recipes for
zlib and openssl based Memory Management Module implemented
in the Intel Quick Assist Technology.

Please pull them into meta-intel/master.

Thanks
Kishore.

The following changes since commit 8341ed1b28a91b184547e62449ecbedabffa1ab3:

  ffmpeg: set LICENSE_FLAGS (2012-10-17 16:05:08 -0500)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib Kishore/CRF-qat_mem
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=Kishore/CRF-qat_mem

Kishore Bodke (3):
  meta-intel/common: Add a new recipe for Zlib qat_mem Module.
  meta-intel/common: Add new recipe for libcrypto module.
  meta-crystalforest: Add zlib-qat and openssl-qat module.

 .../openssl-qat-module/openssl-qat-module.bb       |   54 ++++++++++++++++++++
 .../openssl-qat-module/openssl_qat_module.patch    |   43 ++++++++++++++++
 .../zlib-qat-module/zlib-qat-module.bb             |   52 +++++++++++++++++++
 .../zlib-qat-module/zlib_qat_module.patch          |   43 ++++++++++++++++
 .../recipes-qat-image/images/core-image-qat-sdk.bb |    2 +
 .../recipes-qat-image/images/core-image-qat.bb     |    2 +
 6 files changed, 196 insertions(+)
 create mode 100644 common/recipes-connectivity/openssl-qat-module/openssl-qat-module.bb
 create mode 100644 common/recipes-connectivity/openssl-qat-module/openssl-qat-module/openssl_qat_module.patch
 create mode 100644 common/recipes-core/zlib-qat-module/zlib-qat-module.bb
 create mode 100644 common/recipes-core/zlib-qat-module/zlib-qat-module/zlib_qat_module.patch

-- 
1.7.9.5


