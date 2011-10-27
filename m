Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C24F1E006F9
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2011 14:37:17 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Oct 2011 14:37:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,415,1315206000"; d="scan'208";a="78734057"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.161])
	by fmsmga001.fm.intel.com with ESMTP; 27 Oct 2011 14:37:17 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org
Date: Thu, 27 Oct 2011 14:37:05 -0700
Message-Id: <cover.1319751104.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/1] New meta-romley BSP created.--v3
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
X-List-Received-Date: Thu, 27 Oct 2011 21:37:17 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi All

 This layer provides  new BSP meta-romley and tested against the master branch.
 This provides the support for Romley + Patsburg Chipset for Intel Systems.
 Romley refers to the Intel Rosecity Board.
 This has been verified by Tom Zanussi, and wanted to pull this BSP into the 
 main line.
 
 I had incorporated the comments mentioned by Tom.

 Please let me know if anything is required further to get into the main line.
 
 Please pull.

Thanks
Kishore.



The following changes since commit b5c9f0af18b80c2b4c478fd7cfb537e0a04a4e22:

  meta-fri2: README correction (2011-10-25 14:52:36 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib master0
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=master0

Kishore Bodke (1):
  New Romley BSP created. Uses Matrox MGA graphics driver.

 MAINTAINERS                                        |    4 +
 meta-romley/COPYING.MIT                            |   17 ++++
 meta-romley/README                                 |   88 ++++++++++++++++++++
 meta-romley/README.sources                         |   17 ++++
 meta-romley/conf/layer.conf                        |   10 ++
 meta-romley/conf/machine/romley.conf               |   46 ++++++++++
 .../formfactor/formfactor/romley/machconfig        |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 +
 .../xorg-driver/xf86-video-mga_1.4.13.bb           |   19 ++++
 .../xserver-xf86-config/romley/xorg.conf           |   26 ++++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../xorg-xserver/xserver-xorg_1.11.1.bbappend      |    1 +
 .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    7 ++
 15 files changed, 254 insertions(+), 0 deletions(-)
 create mode 100644 meta-romley/COPYING.MIT
 create mode 100644 meta-romley/README
 create mode 100644 meta-romley/README.sources
 create mode 100644 meta-romley/binary/.gitignore
 create mode 100644 meta-romley/conf/layer.conf
 create mode 100644 meta-romley/conf/machine/romley.conf
 create mode 100644 meta-romley/recipes-bsp/formfactor/formfactor/romley/machconfig
 create mode 100644 meta-romley/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-romley/recipes-core/tasks/task-core-tools.bbappend
 create mode 100755 meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb
 create mode 100644 meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config/romley/xorg.conf
 create mode 100644 meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-romley/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend
 create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend

-- 
1.7.5.4


