Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F536E013B2
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2012 16:58:54 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Aug 2012 16:58:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="178117422"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.174])
	by azsmga001.ch.intel.com with ESMTP; 07 Aug 2012 16:58:52 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	nitin.a.kamble@intel.com,
	tom.zanussi@intel.com
Date: Tue,  7 Aug 2012 16:58:47 -0700
Message-Id: <cover.1344383407.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/1] [meta-intel] move Matrox MGA Xorg driver to common
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
X-List-Received-Date: Tue, 07 Aug 2012 23:58:54 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

This patch is for moving the Matrox MGA Xorg driver from meta-romley
to meta-intel/commmon/recipes-graphics/xorg-xserver location.

This MGA Xorg driver will be used by other ISG meta-intel BSPs. 

Please pull into meta-intel/master.

Thanks
Kishore.

The following changes since commit ff7fdafba88a5b7676f601b3d16a97ce7d48c4a9:

  crownbay: make v3.4 the default kernel (2012-07-31 23:08:05 -0500)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib kishore/matrox-mga
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/matrox-mga

Kishore Bodke (1):
  meta-intel: Move Matrox MGA Xorg driver to common

 .../xorg-xserver}/xf86-video-mga_1.4.13.bb         |    0
 conf/machine/include/ia32-base.inc                 |    4 ++++
 meta-romley/conf/machine/romley.conf               |    3 +--
 3 files changed, 5 insertions(+), 2 deletions(-)
 rename {meta-romley/recipes-graphics/xorg-driver => common/recipes-graphics/xorg-xserver}/xf86-video-mga_1.4.13.bb (100%)

-- 
1.7.9.5


