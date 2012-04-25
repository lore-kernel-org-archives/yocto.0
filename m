Return-Path: <rahul.saxena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C45BE00596
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2012 18:30:16 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Apr 2012 18:30:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="158448851"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by fmsmga002.fm.intel.com with ESMTP; 25 Apr 2012 18:30:15 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.org,
	tom.zanussi@intel.com, kishore.k.bodke@intel.com
Date: Wed, 25 Apr 2012 11:17:53 -0700
Message-Id: <cover.1335393639.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [kernel][PATCH 0/3] Cover letter to update pvr patches
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
X-List-Received-Date: Thu, 26 Apr 2012 01:30:16 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Cover letter to update pvr patches. 
A updated version of linux-3.0.0-cdv patch for pvr driver that
includes vaapi (Video Acceleration API) related fixes was recently released by MeeGo.
A revert of the existing version of this patch is done and then the new
version is added. A new patch to handle TTM page allocation from
high memory is also added.

Please pull into yocto/pvr branch of linux-yocto-3.0

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
--

The following changes since commit 9d0264753e869d21ec4d9a6dd5558de73d64f94d:

  yocto/pvr: add hdmi/acpi definitions (2012-03-09 14:50:44 -0500)

are available in the git repository at:
  git://git.pokylinux.org/linux-yocto-2.6.37-contrib rsaxena-yocto/pvr
  http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=rsaxena-yocto/pvr

Rahul Saxena (3):
  Revert "yocto/pvr: integrate pvr support"
  add updated version of linux-3.0.0-cdv.patch
  add patch linux-3.0.0-ttm-clear-high.patch

 drivers/gpu/drm/ttm/ttm_page_alloc.c               |    5 +-
 drivers/staging/cdv/Kconfig                        |    1 +
 drivers/staging/cdv/Makefile                       |    2 +-
 drivers/staging/cdv/drv/psb_drm.h                  |    3 +
 drivers/staging/cdv/drv/psb_drv.c                  |   73 +++--
 drivers/staging/cdv/drv/psb_drv.h                  |   24 +-
 drivers/staging/cdv/drv/psb_fb.c                   |  134 ++++-----
 drivers/staging/cdv/drv/psb_gtt.c                  |   29 +-
 drivers/staging/cdv/drv/psb_intel_bios.c           |   90 +++++-
 drivers/staging/cdv/drv/psb_intel_bios.h           |   35 ++-
 drivers/staging/cdv/drv/psb_intel_display.c        |  310 +++++++++++++-------
 drivers/staging/cdv/drv/psb_intel_dpll_cdv.c       |   85 +++++-
 drivers/staging/cdv/drv/psb_intel_drv.h            |   12 +-
 drivers/staging/cdv/drv/psb_intel_lvds.c           |  178 +++++++++++-
 drivers/staging/cdv/drv/psb_intel_opregion.c       |    2 +-
 drivers/staging/cdv/drv/psb_intel_reg.h            |   36 +++-
 drivers/staging/cdv/drv/psb_irq.c                  |   12 +-
 drivers/staging/cdv/drv/psb_powermgmt.c            |   29 ++-
 drivers/staging/cdv/drv/psb_pvr_glue.c             |    4 +-
 drivers/staging/cdv/drv/psb_reg.h                  |    8 +-
 drivers/staging/cdv/imgv/psb_msvdx.c               |   25 ++-
 drivers/staging/cdv/imgv/psb_msvdx.h               |    7 +-
 drivers/staging/cdv/imgv/psb_msvdxinit.c           |   51 +++-
 .../3rdparty/linux_framebuffer_mrst/mrstlfb.h      |    6 +
 .../linux_framebuffer_mrst/mrstlfb_displayclass.c  |  125 +++++++-
 .../linux_framebuffer_mrst/mrstlfb_linux.c         |    8 +-
 .../pvr/services4/srvkm/devices/sgx/sgxconfig.h    |   65 ++++
 .../cdv/pvr/services4/srvkm/hwdefs/sgxerrata.h     |    4 +
 .../pvr/services4/srvkm/hwdefs/sgxfeaturedefs.h    |    3 +-
 .../cdv/pvr/services4/system/unified/sysconfig.c   |   11 +-
 .../cdv/pvr/services4/system/unified/sysconfig.h   |   30 --
 31 files changed, 1021 insertions(+), 386 deletions(-)

-- 
1.7.4.1


