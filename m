Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC2BAE011AF
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 10:40:15 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Oct 2012 10:40:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,524,1344236400"; d="scan'208";a="200708891"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.160])
	by orsmga001.jf.intel.com with ESMTP; 02 Oct 2012 10:39:50 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	yocto@yoctoproject.org
Date: Tue,  2 Oct 2012 10:40:39 -0700
Message-Id: <cover.1349199109.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/1][meta-intel] Add a custom Image recipe
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
X-List-Received-Date: Tue, 02 Oct 2012 17:40:16 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

This patch adds the custom build Image recipe to install
all the corpus files into the image.

Please pull them into meta-intel/master.

Thanks
Kishore.

The following changes since commit 50ac6e8785c167ea4aa4601fd690ef783151853d:

  meta-intel: use FILESEXTRAPATHS for xserver-xf86-config bbappends (2012-10-02 11:30:47 -0500)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib Kishore/CRF-Image
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=Kishore/CRF-Image

Kishore Bodke (1):
  meta-crystalforest: Create a custom build Image recipe.

 .../recipes-qat-image/images/core-image-qat-sdk.bb |   16 ++++++++++++++++
 .../recipes-qat-image/images/core-image-qat.bb     |   16 ++++++++++++++++
 2 files changed, 32 insertions(+)
 create mode 100644 meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
 create mode 100644 meta-crystalforest/recipes-qat-image/images/core-image-qat.bb

-- 
1.7.9.5


