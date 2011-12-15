Return-Path: <rahul.saxena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 420B3E0030D
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 15:06:43 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Dec 2011 15:06:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102741603"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by fmsmga002.fm.intel.com with ESMTP; 15 Dec 2011 15:06:42 -0800
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Thu, 15 Dec 2011 08:07:06 -0800
Message-Id: <cover.1323963953.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-cedartrail: new layer for Cedar Trail systems
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
X-List-Received-Date: Thu, 15 Dec 2011 23:06:43 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

This is the initial version of the BSP for Cedar Trail platform.
The Cedar Trail platform is based on the Intel Cedarview Atom processor and
Tiger Point Chipset. I have sucessfuly booted sato image on the Cedar Falls
CRB, desktop and mobile pre-production sample boards and tested features such
as wired networking, VESA graphics, SATA, USB ports etc

Support for accelerated graphics will be added in the future.

This BSP uses the 3.0 kernel.

Please pull into meta-intel/edison

Thanks
Rahul

Signed-off-by: Rahul Saxena <rahul.saxena at intel.com>
---

The following changes since commit 10e3a043fbc6abcf4b1f5b464c2df5a6d957cf97:
  Darren Hart (1):
        fri2: include linux-firmware for iwlwifi in images

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib rsaxena-meta-cedartrail
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-meta-cedartrail

Rahul Saxena (1):
  meta-cedartrail: new layer for Cedar Trail Systems     This layer
    provides the initial version of the BSP for Cedar Trail    
    platform. The Cedar Trail platform is based on the Cedarview
    processor     and Tiger Point Chipset.

 MAINTAINERS                                        |    4 +
 meta-cedartrail/COPYING.MIT                        |   17 ++++
 meta-cedartrail/README                             |   83 ++++++++++++++++++++
 meta-cedartrail/README.sources                     |   17 ++++
 meta-cedartrail/conf/layer.conf                    |   10 +++
 meta-cedartrail/conf/machine/cedartrail.conf       |   38 +++++++++
 .../formfactor/formfactor/cedartrail/machconfig    |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 +
 .../xserver-xf86-config/cedartrail/xorg.conf       |   26 ++++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../linux/linux-yocto-rt_3.0.bbappend              |   11 +++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   10 +++
 13 files changed, 227 insertions(+), 0 deletions(-)
 create mode 100755 meta-cedartrail/COPYING.MIT
 create mode 100755 meta-cedartrail/README
 create mode 100755 meta-cedartrail/README.sources
 create mode 100755 meta-cedartrail/binary/.gitignore
 create mode 100755 meta-cedartrail/conf/layer.conf
 create mode 100755 meta-cedartrail/conf/machine/cedartrail.conf
 create mode 100755 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig
 create mode 100755 meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100755 meta-cedartrail/recipes-core/tasks/task-core-tools.bbappend
 create mode 100755 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
 create mode 100755 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100755 meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100755 meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend


