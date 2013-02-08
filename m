Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CB09E00724;
	Fri,  8 Feb 2013 14:31:52 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 08 Feb 2013 14:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,632,1355126400"; d="scan'208";a="200292474"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.181])
	by AZSMGA002.ch.intel.com with ESMTP; 08 Feb 2013 14:31:51 -0800
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com, dvhart@linux.intel.com, nitin.a.kamble@intel.com,
	rahul.saxena@intel.com, song.liu@intel.com, meta-intel@yoctoproject.org,
	yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:34:15 -0800
Message-Id: <cover.1360362497.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/2][meta-intel] Remove Cedartrail BSP
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
X-List-Received-Date: Fri, 08 Feb 2013 22:31:52 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi All,

This patch set is to remove Cedartrail BSP from
meta-intel/master.
Cedartrail BSP will be no longer supported in Yocto 
from 1.4 release.

Please pull these patches into meta-intel/master.

Thanks
Kishore.

The following changes since commit 575f93dd4ba1fb9aca8a58dc66e9066eca0a3925:

  meta-intel: remove kernel AUTOREVs (2013-02-04 10:39:06 -0600)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib kishore/cedartrail_remove
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/cedartrail_remove

Kishore Bodke (2):
  Cedartrail: Remove Cedartrail BSP
  meta-intel: Update the MAINTAINERS list.

 MAINTAINERS                                        |    4 -
 meta-cedartrail/COPYING.MIT                        |   17 --
 meta-cedartrail/README                             |  199 --------------------
 meta-cedartrail/README.sources                     |   17 --
 meta-cedartrail/conf/layer.conf                    |   12 --
 meta-cedartrail/conf/machine/cedartrail-nopvr.conf |   21 ---
 meta-cedartrail/conf/machine/cedartrail.conf       |   29 ---
 .../formfactor/cedartrail-nopvr/machconfig         |    3 -
 .../formfactor/formfactor/cedartrail/machconfig    |    3 -
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 -
 .../images/core-image-cdv-media-sdk.bb             |   12 --
 .../images/core-image-cdv-media.bb                 |   13 --
 .../xorg-driver/cdv-pvr-driver_1.0.3.bb            |  197 -------------------
 .../xserver-xf86-config/cedartrail-nopvr/xorg.conf |   26 ---
 .../xserver-xf86-config/cedartrail/xorg.conf       |   19 --
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    1 -
 .../linux/linux-yocto-rt_3.0.bbappend              |   18 --
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   23 ---
 .../ogg-CC-BY-3.0-music-samples_0.1.bb             |   21 ---
 .../video-samples/bigbuckbunny-ogg.bb              |   22 ---
 20 files changed, 660 deletions(-)
 delete mode 100755 meta-cedartrail/COPYING.MIT
 delete mode 100755 meta-cedartrail/README
 delete mode 100755 meta-cedartrail/README.sources
 delete mode 100644 meta-cedartrail/binary/.gitignore
 delete mode 100644 meta-cedartrail/conf/layer.conf
 delete mode 100644 meta-cedartrail/conf/machine/cedartrail-nopvr.conf
 delete mode 100644 meta-cedartrail/conf/machine/cedartrail.conf
 delete mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
 delete mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig
 delete mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
 delete mode 100644 meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media-sdk.bb
 delete mode 100644 meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media.bb
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 delete mode 100644 meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
 delete mode 100644 meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
 delete mode 100644 meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb

-- 
1.7.9.5


