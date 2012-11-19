Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1E05E00348
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2012 12:20:42 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Nov 2012 12:20:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,280,1352102400"; d="scan'208";a="244486466"
Received: from wrk.jf.intel.com ([10.7.202.54])
	by orsmga002.jf.intel.com with ESMTP; 19 Nov 2012 12:20:42 -0800
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 19 Nov 2012 12:18:51 -0800
Message-Id: <cover.1353354792.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-baryon][PATCH 0/3] respect EXTRA_IMAGE_FEATURES
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
X-List-Received-Date: Mon, 19 Nov 2012 20:20:43 -0000

Changes introduced by this patchset:
  * change the IMAGE_FEATURES assignment in baryon-image to append, 
  allowing the EXTRA_IMAGE_FEATUES variable to actually have an affect 
  on the final image. 
  * trimmed down the profile and testapps packagegroup features so they 
  can be pulled in without needing to build x11.
  * util-linux has been swapped out for parted to get around the reset 
  command conflict.

The following changes since commit ad1dfa139195f39a72b8e0fb47de5c3339397b8b:

  proftpd: add initscript and tidy up recipe (2012-10-28 01:47:32 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib strassek/baryon-image-features
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/baryon-image-features

Kevin Strasser (3):
  packagegroup-core-tools: exclude packages that depend on x11
  baryon-image: use parted instead of util-linux
  baryon-image: change IMAGE_FEATURES assignment to "+="

 .../packagegroup-core-tools-profile.bbappend       |   15 +++++++++++++++
 .../packagegroup-core-tools-testapps.bbappend      |   12 ++++++++++++
 recipes-extended/images/baryon-image.bb            |    4 ++--
 3 files changed, 29 insertions(+), 2 deletions(-)
 create mode 100644 recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
 create mode 100644 recipes-core/packagegroups/packagegroup-core-tools-testapps.bbappend

-- 
1.7.9.5


