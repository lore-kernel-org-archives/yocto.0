Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98326E002AB
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 15:11:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Oct 2012 15:10:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,562,1344236400"; d="scan'208";a="224566338"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga002.jf.intel.com with ESMTP; 09 Oct 2012 15:11:10 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Tue,  9 Oct 2012 15:10:06 -0700
Message-Id: <cover.1349820369.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/5] Misc meta-intel commits
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
X-List-Received-Date: Tue, 09 Oct 2012 22:11:10 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Various commits here.

Thanks,
Nitin


The following changes since commit 2bd31135bdcdda19dabdf69706d9a38d5872e1fe:

  crownbay: uprev v3.4 kernel commit ids (2012-10-08 16:09:33 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/misc
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc

Nitin A Kamble (5):
  xf86-video-intel: Bring 2.20.0 version to match released graphics
    stack
  crownbay.conf: specify the 8.0.4 version as preferred version of
    mesa-dri
  emgd-driver_bin_1.10: drop it as all BSP using EMGD have switched to
    1.14 version now
  fishriver BSP retirement
  update maintainers of various BSPs

 MAINTAINERS                                        |   16 +--
 .../xorg-driver/emgd-driver-bin_1.10.bb            |   93 ----------------
 .../xorg-driver/xf86-video-intel_2.20.0.bb         |   26 +++++
 .../xorg-driver/xorg-driver-common.inc             |   33 ++++++
 .../xorg-driver/xorg-driver-video.inc              |    4 +
 meta-chiefriver/README                             |   11 ++
 meta-crownbay/README                               |    2 +-
 meta-crownbay/conf/machine/crownbay.conf           |    2 +-
 meta-emenlow/README                                |    2 +-
 meta-fishriver/COPYING.MIT                         |   17 ---
 meta-fishriver/README                              |  114 --------------------
 meta-fishriver/README.sources                      |   17 ---
 meta-fishriver/conf/layer.conf                     |   12 --
 meta-fishriver/conf/machine/fishriver.conf         |   17 ---
 .../formfactor/formfactor/fishriver/machconfig     |    3 -
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 -
 .../xserver-xf86-config/fishriver/xorg.conf        |   26 -----
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    1 -
 .../linux/linux-yocto-rt_3.0.bbappend              |    8 --
 .../linux/linux-yocto-rt_3.2.bbappend              |    8 --
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    9 --
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    8 --
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 --
 meta-jasperforest/README                           |    2 +-
 meta-sugarbay/README                               |    2 +-
 25 files changed, 85 insertions(+), 359 deletions(-)
 delete mode 100644 common/recipes-graphics/xorg-driver/emgd-driver-bin_1.10.bb
 create mode 100644 common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb
 create mode 100644 common/recipes-graphics/xorg-driver/xorg-driver-common.inc
 create mode 100644 common/recipes-graphics/xorg-driver/xorg-driver-video.inc
 delete mode 100644 meta-fishriver/COPYING.MIT
 delete mode 100644 meta-fishriver/README
 delete mode 100644 meta-fishriver/README.sources
 delete mode 100644 meta-fishriver/binary/.gitignore
 delete mode 100644 meta-fishriver/conf/layer.conf
 delete mode 100644 meta-fishriver/conf/machine/fishriver.conf
 delete mode 100644 meta-fishriver/recipes-bsp/formfactor/formfactor/fishriver/machconfig
 delete mode 100644 meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
 delete mode 100644 meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config/fishriver/xorg.conf
 delete mode 100644 meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
 delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
 delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_3.4.bbappend

-- 
1.7.3.4


