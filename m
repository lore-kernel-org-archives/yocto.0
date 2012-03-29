Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF633E013BF
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 10:50:50 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 Mar 2012 10:50:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="147542785"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.164])
	by fmsmga002.fm.intel.com with ESMTP; 29 Mar 2012 10:50:48 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	rahul.saxena@intel.com
Date: Thu, 29 Mar 2012 10:49:36 -0700
Message-Id: <cover.1333043012.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/1] [meta-intel] Add PVR Graphics Driver to the Cedartrail BSP
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
X-List-Received-Date: Thu, 29 Mar 2012 17:50:51 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

These patch set updates the existing Cedartrail BSP with PVR Graphics Driver and 
also the SRCREVS to build with both pvr and nopvr images.

pvr version supports EFI and pcbios.
no-pvr (VESA Graphics) version does not support EFI.

Please pull into meta-intel/master.

Thanks
Kishore.

The following changes since commit f89405e115d73426c8a6450b6e795b5885d6bdf3:

  MAINTAINERS: Add FRI2 maintainer (2012-03-23 09:46:15 -0700)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib kishore/cedartrail-pvr-graphics
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/cedartrail-pvr-graphics

Kishore Bodke (1):
  Cedartrail: Add pvr graphics driver

 conf/machine/include/ia32-base.inc                 |    2 +
 meta-cedartrail/README                             |   42 ++++++++-
 meta-cedartrail/conf/machine/cedartrail-nopvr.conf |   21 ++++
 meta-cedartrail/conf/machine/cedartrail.conf       |   13 ++-
 .../cedartrail-audio/cedartrail-audio.bb           |   30 ++++++
 .../cedartrail-audio/cedartrail-audio              |   42 ++++++++
 .../formfactor/cedartrail-nopvr/machconfig         |    3 +
 .../tasks/task-core-tools-profile.bbappend         |    2 +-
 .../xorg-driver/cdv-pvr-driver.inc                 |   48 +++++++++
 .../xorg-driver/cdv-pvr-driver_1.0.bb              |  101 ++++++++++++++++++++
 .../xserver-xf86-config/cedartrail-nopvr/xorg.conf |   26 +++++
 .../xserver-xf86-config/cedartrail/xorg.conf       |   24 ++---
 .../linux/linux-yocto-rt_3.0.bbappend              |   16 +++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   20 ++++-
 .../ogg-CC-BY-3.0-music-samples_0.1.bb             |   23 +++++
 .../video-samples/bigbuckbunny-ogg.bb              |   24 +++++
 .../images/core-image-sato-dev.bbappend            |    2 +
 .../images/core-image-sato-sdk.bbappend            |    2 +
 .../recipes-sato/images/core-image-sato.bbappend   |    1 +
 19 files changed, 418 insertions(+), 24 deletions(-)
 create mode 100644 meta-cedartrail/conf/machine/cedartrail-nopvr.conf
 create mode 100644 meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio.bb
 create mode 100644 meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio/cedartrail-audio
 create mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
 create mode 100644 meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
 create mode 100644 meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb
 create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
 create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
 create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato.bbappend

-- 
1.7.5.4


