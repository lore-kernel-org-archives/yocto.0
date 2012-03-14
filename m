Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AF76E004D2
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 20:58:06 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Mar 2012 20:58:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118599907"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by azsmga001.ch.intel.com with ESMTP; 13 Mar 2012 20:58:03 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 22:57:38 -0500
Message-Id: <cover.1331696906.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 00/17][KERNEL] emenlow updates for linux-yocto 3.2
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
X-List-Received-Date: Wed, 14 Mar 2012 03:58:06 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Hi Bruce,

Please pull this patchset into linux-yocto-3.2,
standard/default/emenlow.

Thanks,

Tom

The following changes since commit 764090858adaa214395b3667fe1929892c2083f7:
  Darren Hart (1):
        pch_uart: Use existing default_baud in setup_console

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/standard/default/emenlow-3.2
  http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/standard/default/emenlow-3.2

Tom Zanussi (17):
  drm: add the base source of the Poulsbo (psb) 2D X11 driver
  drm-psb: remove the package Makefile and replace it with the kernel
    Makefile
  drm: apply psb-kernel-source package's build.patch
  drm: intel_ldvs.c: add missing arg to backlight_device_register()
    call
  emenlow: switch to psb
  drm: Fix psb ioctl assignment
  drm-psb: remove BKL remnants
  drm-psb: update spinlock initializers
  drm-psb: remove call to agp_flush_chipset
  drm-psb: remove includes of nonexistent i2c-id.h
  drm-psb: remove assigment to deprecated i2c_adapter.id
  drm-psb: use console_lock/unlock()
  drm-psb: add DRM_UNLOCKED flag
  drm-psb: mark unlocked ioctls
  drm-psb: initialize backlight type
  drm-psb: fix ioremap calls
  drm-psb: change udelay to mdelay in intel_wait_for_vblank()


