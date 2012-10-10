Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29F0DE00292
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 11:07:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Oct 2012 11:07:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,565,1344236400"; d="scan'208";a="233101419"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga002.fm.intel.com with ESMTP; 10 Oct 2012 11:07:13 -0700
From: nitin.a.kamble@intel.com
To: tom.zanussi@intel.com,
	darren.hart@intel.com,
	yocto@yoctoproject.org
Date: Wed, 10 Oct 2012 11:06:10 -0700
Message-Id: <cover.1349892258.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCHv3 0/6] Misc meta-intel commits
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
X-List-Received-Date: Wed, 10 Oct 2012 18:07:14 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

In this v3 pull request, teh commits are rebased to the altest tree. And one more
commit is added for Intel-binary-only License.

Thanks,
Nitin

The following changes since commit 5d8a05811101f7d69994f4028ec620c4480f6da4:

  Fix use of PRINC in meta-intel BSPs (2012-10-09 16:04:30 -0700)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/misc
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc

Nitin A Kamble (6):
  xf86-video-intel: Bring 2.20.0 version to match released graphics
    stack
  crownbay.conf: specify the 8.0.4 version as preferred version of
    mesa-dri
  emgd-driver_bin_1.10: Remove in favor of 1.14
  fishriver BSP retirement
  update maintainers of various BSPs
  custom-licenses dir for Intel-binary-only License

 MAINTAINERS                                        |   16 +--
 common/custom-licenses/Intel-binary-only           |   42 +++++++
 .../xorg-driver/emgd-driver-bin_1.10.bb            |   93 ----------------
 .../xorg-driver/xf86-video-intel_2.20.0.bb         |   27 +++++
 .../xorg-driver/xorg-driver-common.inc             |   33 ++++++
 .../xorg-driver/xorg-driver-video.inc              |    4 +
 conf/layer.conf                                    |    3 +
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
 27 files changed, 131 insertions(+), 359 deletions(-)
 create mode 100644 common/custom-licenses/Intel-binary-only
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


