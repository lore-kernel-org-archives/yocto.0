Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BD96E003DA
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 19:24:45 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Oct 2012 19:24:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,683,1344236400"; d="scan'208";a="242184136"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga002.fm.intel.com with ESMTP; 30 Oct 2012 19:24:43 -0700
From: nitin.a.kamble@intel.com
To: tom.zanussi@intel.com,
	darren.hart@intel.com,
	yocto@yoctoproject.org
Date: Tue, 30 Oct 2012 19:23:43 -0700
Message-Id: <cover.1351650062.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/4] misc fixes for 1.3 meta-intel release
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
X-List-Received-Date: Wed, 31 Oct 2012 02:24:45 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Tested these on all BSPs i maintain with results as expected.
Also this testing Acks the kernel SRCREV bumps done by Tom today.

Thanks,
Nitin


The following changes since commit 76d2942087d7563ae42f0bea6d97460ee2561f3e:

  crystalforest: Update the README Instructions. (2012-10-30 08:47:40 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/misc
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc

Nitin A Kamble (3):
  libva: update to the latest version
  libva-intel-driver: update to the latest version
  mesa-dri.bbappend: avoid conflict with emgd-driver-bin

Ross Burton (1):
  libva: remove redundant libva 1.0.12

 .../recipes-graphics/mesa/mesa-dri_8.0.4.bbappend  |   27 +++++++++++++++++---
 .../libva/libva-intel-driver.inc                   |    2 +-
 .../libva/libva-intel-driver_1.0.15.bb             |    8 ------
 .../libva/libva-intel-driver_1.0.17.bb             |    9 ++++++
 common/recipes-multimedia/libva/libva_1.0.12.bb    |    8 ------
 common/recipes-multimedia/libva/libva_1.0.15.bb    |    8 ------
 common/recipes-multimedia/libva/libva_1.0.16.bb    |    8 ++++++
 7 files changed, 41 insertions(+), 29 deletions(-)
 delete mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.15.bb
 create mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.17.bb
 delete mode 100644 common/recipes-multimedia/libva/libva_1.0.12.bb
 delete mode 100644 common/recipes-multimedia/libva/libva_1.0.15.bb
 create mode 100644 common/recipes-multimedia/libva/libva_1.0.16.bb

-- 
1.7.3.4


