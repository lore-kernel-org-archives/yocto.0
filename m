Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6269EE0027F
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 15:46:13 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Sep 2012 15:46:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,451,1344236400"; d="scan'208";a="208202794"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.166])
	by orsmga002.jf.intel.com with ESMTP; 19 Sep 2012 15:46:12 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Wed, 19 Sep 2012 15:46:54 -0700
Message-Id: <cover.1348094339.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/3][meta-intel] Add new Corpus recipes to Crystal Forest BSP.
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
X-List-Received-Date: Wed, 19 Sep 2012 22:46:13 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

This patch set adds three different types of Corpus files
to Crystal Forest BSP, which are basically used to test the
Lossless Compression algorithms.

1. calgary-corpus
2. canterbury-corpus
3. silesia-corpus

These have been tested on both Crystal Forest Platforms.

Please pull into meta-intel/master.

Thanks
Kishore.

The following changes since commit c3644c66fad3d9a91259ea382e72304dc6576ca0:

  cdv-pvr-driver: fix unpack (2012-09-19 12:24:19 +0100)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib Kishore/CRF-corpus
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=Kishore/CRF-corpus

Kishore Bodke (3):
  meta-crystalforest: Add Calgary Corpus recipe.
  meta-crystalforest: Add Canterbury Cropus recipe.
  meta-crystalforest: Add Silesia Corpus recipe.

 .../calgary-corpus/calgary-corpus.bb               |   27 +++++++++++++
 .../canterbury-corpus/canterbury-corpus.bb         |   40 ++++++++++++++++++++
 .../silesia-corpus/silesia-corpus.bb               |   32 ++++++++++++++++
 3 files changed, 99 insertions(+)
 create mode 100644 meta-crystalforest/recipes-corpus/calgary-corpus/calgary-corpus.bb
 create mode 100644 meta-crystalforest/recipes-corpus/canterbury-corpus/canterbury-corpus.bb
 create mode 100644 meta-crystalforest/recipes-corpus/silesia-corpus/silesia-corpus.bb

-- 
1.7.9.5


