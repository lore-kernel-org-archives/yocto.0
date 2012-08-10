Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43739E0034A
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 12:02:28 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Aug 2012 12:02:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,747,1336374000"; d="scan'208";a="206530060"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.174])
	by fmsmga002.fm.intel.com with ESMTP; 10 Aug 2012 12:02:27 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	nitin.a.kamble@intel.com,
	tom.zanussi@intel.com
Date: Fri, 10 Aug 2012 12:02:28 -0700
Message-Id: <cover.1344624483.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/3] [meta-intel] Move Matrox MGA Xorg driver to common
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
X-List-Received-Date: Fri, 10 Aug 2012 19:02:28 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

These patches are for moving the Matrox MGA Xorg driver from
meta-romley to meta-intel/common and adding a variable to 
include the mga recipe in the respective BSPs which uses them.

Romley BSP has been successfully booted with sato desktop.

Please pull into meta-intel/master.

Thanks
Kishore.

The following changes since commit ff7fdafba88a5b7676f601b3d16a97ce7d48c4a9:

  crownbay: make v3.4 the default kernel (2012-07-31 23:08:05 -0500)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib kishore/matrox-mga
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/matrox-mga

Kishore Bodke (3):
  meta-romley: Move Matrox MGA Xorg driver to meta-intel/common
  meta-intel:Add a MATROX MGA variable to ia32-base.inc
  meta-romley: Add Matrox MGA variable to romley.conf

 .../xorg-driver/xf86-video-mga_1.4.13.bb           |    0
 conf/machine/include/ia32-base.inc                 |    4 ++++
 meta-romley/conf/machine/romley.conf               |    3 +--
 3 files changed, 5 insertions(+), 2 deletions(-)
 rename {meta-romley => common}/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb (100%)

-- 
1.7.9.5


