Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F4E8E013ED
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 16:45:17 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Apr 2012 16:45:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="128397923"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.75])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2012 16:45:13 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	yocto@yoctoproject.org
Date: Tue,  3 Apr 2012 16:43:56 -0700
Message-Id: <cover.1333496206.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/7] [meta-intel] Cedartrail BSP updates with pvr Graphics driver
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
X-List-Received-Date: Tue, 03 Apr 2012 23:45:17 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

These patches are for adding the PVR graphics driver, EFI Support, 
and to add Cedartrail Audio and Video files .

These also updates the SRCREVS for build with pvr and no-pvr versions.

Please pull into meta-intel/master.

Thanks
Kishore.

The following changes since commit f89405e115d73426c8a6450b6e795b5885d6bdf3:

  MAINTAINERS: Add FRI2 maintainer (2012-03-23 09:46:15 -0700)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib kishore/cedartrail-pvr-updates
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/cedartrail-pvr-updates

Kishore Bodke (7):
  Cedartrail: Add PVR graphics support.
  Cedartrail: Update SRCREVS and add EFI Support.
  Cedartrail: Add new recipes for audio and video samples.
  Cedartrail: Add bbappend files to install Audio and Video files.
  Cedartrail: Separte out machine.conf files.
  Cedartrail: Add a new recipe for Audio.
  Cedartrail: Update the README.

 conf/machine/include/ia32-base.inc                 |    2 +
 meta-cedartrail/README                             |   41 ++++++++-
 meta-cedartrail/conf/machine/cedartrail-nopvr.conf |   21 ++++
 meta-cedartrail/conf/machine/cedartrail.conf       |   13 ++-
 .../cedartrail-audio/cedartrail-audio.bb           |   30 ++++++
 .../cedartrail-audio/cedartrail-audio              |   42 ++++++++
 .../formfactor/cedartrail-nopvr/machconfig         |    3 +
 .../tasks/task-core-tools-profile.bbappend         |    2 +-
 .../xorg-driver/cdv-pvr-driver.inc                 |   39 ++++++++
 .../xorg-driver/cdv-pvr-driver_1.0.bb              |  101 ++++++++++++++++++++
 .../xserver-xf86-config/cedartrail-nopvr/xorg.conf |   26 +++++
 .../xserver-xf86-config/cedartrail/xorg.conf       |   24 ++---
 .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   16 +++-
 .../ogg-CC-BY-3.0-music-samples_0.1.bb             |   23 +++++
 .../video-samples/bigbuckbunny-ogg.bb              |   24 +++++
 .../images/core-image-sato-dev.bbappend            |    2 +
 .../images/core-image-sato-sdk.bbappend            |    2 +
 .../recipes-sato/images/core-image-sato.bbappend   |    1 +
 19 files changed, 396 insertions(+), 24 deletions(-)
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


