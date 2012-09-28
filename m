Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C789CE00344
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 17:55:52 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Sep 2012 17:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,498,1344236400"; d="scan'208";a="198169339"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.81])
	by azsmga001.ch.intel.com with ESMTP; 27 Sep 2012 17:55:51 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Thu, 27 Sep 2012 17:56:32 -0700
Message-Id: <cover.1348793549.git.kishore.k.bodke@intel.com>
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
X-List-Received-Date: Fri, 28 Sep 2012 00:55:53 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

This patch adds the custom build Image recipe to install
all the corpus files into the image.

Please pull them into meta-intel/master. 

Thanks
Kishore.

The following changes since commit 34f561ad87aa2e70140a1d1586b84e9018137a5d:

  meta-cedartrail: add machine override to SRC_URI (2012-09-27 11:58:25 -0500)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib Kishore/crf-image
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=Kishore/crf-image

Kishore Bodke (1):
  meta-crystalforest: Create a custom build Image recipe.

 .../recipes-qat-image/images/core-image-qat-sdk.bb |   12 ++++++++++++
 .../recipes-qat-image/images/core-image-qat.bb     |   13 +++++++++++++
 2 files changed, 25 insertions(+)
 create mode 100644 meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
 create mode 100644 meta-crystalforest/recipes-qat-image/images/core-image-qat.bb

-- 
1.7.9.5


