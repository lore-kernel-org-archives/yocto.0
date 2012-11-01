Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C688E006C1
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 22:15:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 31 Oct 2012 22:15:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,691,1344236400"; d="scan'208";a="241182278"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2012 22:15:55 -0700
From: nitin.a.kamble@intel.com
To: tom.zanussi@intel.com,
	darren.hart@intel.com,
	yocto@yoctoproject.org
Date: Wed, 31 Oct 2012 22:14:56 -0700
Message-Id: <cover.1351746741.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [Patch v2 0/4] Misc Fixes for meta-intel 1.3 release
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
X-List-Received-Date: Thu, 01 Nov 2012 05:15:56 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This v2 pull request is with newer version of libva-intel-driver.
These commits tested on All the BSPs I am maintaining with expected results.

Thanks,
Nitin

The following changes since commit 43b2e9c34363ade4241a60f699b47179929c6fb6:

  n450: Add WEBTITLE and boilerplate README (2012-10-31 08:40:15 -0700)

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
 .../libva/libva-intel-driver_1.0.18.bb             |    8 ++++++
 common/recipes-multimedia/libva/libva_1.0.12.bb    |    8 ------
 common/recipes-multimedia/libva/libva_1.0.15.bb    |    8 ------
 common/recipes-multimedia/libva/libva_1.0.16.bb    |    8 ++++++
 7 files changed, 40 insertions(+), 29 deletions(-)
 delete mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.15.bb
 create mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.18.bb
 delete mode 100644 common/recipes-multimedia/libva/libva_1.0.12.bb
 delete mode 100644 common/recipes-multimedia/libva/libva_1.0.15.bb
 create mode 100644 common/recipes-multimedia/libva/libva_1.0.16.bb

-- 
1.7.3.4


