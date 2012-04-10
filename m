Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9414AE00596
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 11:56:57 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 10 Apr 2012 11:56:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="87478278"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Apr 2012 11:56:56 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Tue, 10 Apr 2012 11:55:37 -0700
Message-Id: <cover.1334083666.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/9] [meta-intel] cedartrail patches to support pvr graphics
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
X-List-Received-Date: Tue, 10 Apr 2012 18:56:57 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

These patch set adds the support for the following 
pvr graphics driver 
EFI support for pvr graphics version of build.
updates the SRCREVS.

Please pull into meta-intel/master.

Thanks
Kishore.

The following changes since commit b669b9363197a6af2014c5d54b2c651894e62a5e:

  Romley: Add new bbappend file for 3.2 kernel (2012-04-05 16:35:11 -0700)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib kishore/cedartrail-pvr
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/cedartrail-pvr

Kishore Bodke (9):
  Cedartrail: Split machine.conf
  Cedartrail: Update SRCREVS and add EFI Support.
  Cedartrail: split xorg.conf files.
  Cedartrail: Add PVR graphics support.
  Cedartrail: Add Cedartrail-nopvr statement.
  Cedartrail: separte machconfig in recipes-bsp.
  Cedartrail: Add new recipes for audio and video samples.
  Cedartrail:  Add new recipe for test image.
  Cedartrail: Update the README.

 meta-cedartrail/README                             |   49 +++++++++-
 meta-cedartrail/conf/machine/cedartrail-nopvr.conf |   19 ++++
 meta-cedartrail/conf/machine/cedartrail.conf       |   10 ++-
 .../formfactor/cedartrail-nopvr/machconfig         |    3 +
 .../images/core-image-cdv-media-sdk.bb             |   12 +++
 .../images/core-image-cdv-media.bb                 |   13 +++
 .../tasks/task-core-tools-profile.bbappend         |    1 +
 .../xorg-driver/cdv-pvr-driver.inc                 |   39 ++++++++
 .../xorg-driver/cdv-pvr-driver_1.0.bb              |  101 ++++++++++++++++++++
 .../xserver-xf86-config/cedartrail-nopvr/xorg.conf |   26 +++++
 .../xserver-xf86-config/cedartrail/xorg.conf       |   25 ++---
 .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   14 +++-
 .../ogg-CC-BY-3.0-music-samples_0.1.bb             |   21 ++++
 .../video-samples/bigbuckbunny-ogg.bb              |   22 ++++
 15 files changed, 342 insertions(+), 21 deletions(-)
 create mode 100644 meta-cedartrail/conf/machine/cedartrail-nopvr.conf
 create mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
 create mode 100644 meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media-sdk.bb
 create mode 100644 meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media.bb
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
 create mode 100644 meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
 create mode 100644 meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb

-- 
1.7.5.4


