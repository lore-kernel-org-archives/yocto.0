Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C884AE0045D
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 14:00:44 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 17 Oct 2012 14:00:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,602,1344236400"; d="scan'208";a="157400807"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.160])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Oct 2012 14:00:43 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Wed, 17 Oct 2012 14:02:02 -0700
Message-Id: <cover.1350507483.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/2][meta-intel] meta-crystalforest: Add openssl qat_mem module
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
X-List-Received-Date: Wed, 17 Oct 2012 21:00:45 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

This patch set adds a new recipe for Intel Quick Assist Technology
Memory Management Module based on Openssl and inlcude them into custom
build Image recipe.

Please pull into meta-intel/master.

Thanks
Kishore.

The following changes since commit 4614417599d35b004e4cf8a4d27530212cc05e20:

  sugarbay: update kernel repo srcrevs (2012-10-16 21:14:55 -0500)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib Kishore/openssl-qat_mem
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=Kishore/openssl-qat_mem

Kishore Bodke (2):
  meta-intel/common: Add new recipe for libcrypto module.
  meta-crystalforest: Add openssl-qat-module to the Image.

 common/recipes-connectivity/openssl-qat-module.bb  |   63 ++++++++++++++++++++
 .../openssl-qat-module/openssl_qat_module.patch    |   43 +++++++++++++
 .../recipes-qat-image/images/core-image-qat-sdk.bb |    1 +
 .../recipes-qat-image/images/core-image-qat.bb     |    1 +
 4 files changed, 108 insertions(+)
 create mode 100644 common/recipes-connectivity/openssl-qat-module.bb
 create mode 100644 common/recipes-connectivity/openssl-qat-module/openssl_qat_module.patch

-- 
1.7.9.5


