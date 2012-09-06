Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D9CDE002AC
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 11:02:42 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Sep 2012 11:02:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,380,1344236400"; d="scan'208";a="189671549"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.177])
	by azsmga001.ch.intel.com with ESMTP; 06 Sep 2012 11:02:42 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Thu,  6 Sep 2012 11:03:01 -0700
Message-Id: <cover.1346954020.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/1] [meta-intel] Crystal Forest BSP Created.
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
X-List-Received-Date: Thu, 06 Sep 2012 18:02:47 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

This is the Initial Checkin for the new Crystal Forest BSP.
This BSP has two versions of platform.
1. Stargo Platform is based on Intel Sandy Bridge Gladden Processor,plus the Cave Creek chipset.
2. Shumway Platform is based on two Intel Sandy Bridge (SNB-EP ES2 Grade and SNB-EN ES2 Grade)
   Processors plus two Cave Creek Chipsets.

Both Platforms uses Matrox graphics Card.

Both the Platforms have been successfully booted and done basic testing for 3.4 kernel.

Please pull this into meta-intel/master.

Thanks
Kishore.

The following changes since commit 66b516f3d3a287eecbf8804b2221bfc27e36db63:

  README: add info explaining meta-tlk layer purpose (2012-09-06 10:36:02 -0500)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib Kishore/CrystalForest
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=Kishore/CrystalForest

Kishore Bodke (1):
  meta-crystalforest: Crystal Forest BSP Created.

 meta-crystalforest/COPYING.MIT                     |   17 +++
 meta-crystalforest/README                          |  139 ++++++++++++++++++++
 meta-crystalforest/README.sources                  |   17 +++
 meta-crystalforest/conf/layer.conf                 |   12 ++
 .../conf/machine/crystalforest-shumway.conf        |   26 ++++
 .../conf/machine/crystalforest-stargo.conf         |   27 ++++
 .../formfactor/crystalforest-shumway/machconfig    |    3 +
 .../formfactor/crystalforest-stargo/machconfig     |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../crystalforest-shumway/xorg.conf                |   26 ++++
 .../crystalforest-stargo/xorg.conf                 |   26 ++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../linux/linux-yocto-rt_3.4.bbappend              |   18 +++
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   17 +++
 14 files changed, 337 insertions(+)
 create mode 100644 meta-crystalforest/COPYING.MIT
 create mode 100644 meta-crystalforest/README
 create mode 100644 meta-crystalforest/README.sources
 create mode 100644 meta-crystalforest/binary/.gitignore
 create mode 100644 meta-crystalforest/conf/layer.conf
 create mode 100644 meta-crystalforest/conf/machine/crystalforest-shumway.conf
 create mode 100644 meta-crystalforest/conf/machine/crystalforest-stargo.conf
 create mode 100644 meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-shumway/machconfig
 create mode 100644 meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-stargo/machconfig
 create mode 100644 meta-crystalforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-shumway/xorg.conf
 create mode 100644 meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-stargo/xorg.conf
 create mode 100644 meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-crystalforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
 create mode 100644 meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend

-- 
1.7.9.5


