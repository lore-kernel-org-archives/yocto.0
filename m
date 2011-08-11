Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 125C7E006AB
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 01:23:43 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Aug 2011 01:23:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,355,1309762800"; d="scan'208";a="40432604"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by fmsmga001.fm.intel.com with ESMTP; 11 Aug 2011 01:23:52 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 11 Aug 2011 01:23:31 -0700
Message-Id: <cover.1313050084.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Subject: [PATCH 00/17][linux-yocto-3.0:meta] preempt-rt update (3.0.1-rt8 scc's)
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
X-List-Received-Date: Thu, 11 Aug 2011 08:23:43 -0000

The following series adds the necessary scc files in support of preempt-rt
for the following machines. These have all been build tested, issues
are noted below.  A handful have been boot tested, also noted.
	sugarbay
	common-pc (boots)
	common-pc-64
	jasperforest
	fri2
	fishriver
	emenlow
	crownbay (boots)
	qemuarm (arm-versatile-926ejs, boots)
	qemumips (mti-malta32-be, panics on boot)
	qemuppc (boot hangs with lost interrupts for hda)
	routerstationpro (build fails)
	mpc8315e-rdb
	beagleboard (build fails)

Also included in the series are some preempt-rt related configuration
changes and a minor correction to a fix made for the mpc8315e-rdb compilation
breakage with -Os in the boot Makefile.

The accompanying linux-yocto-rt recipes will follow once these are committed,
and I have SRC_REVs to include in the recipes.

note: approximately 17 hadrosaurs were converted to electricity to complete
      the necessary test builds.
The following changes since commit c692a2320dd10c7f3ac89f474f4bdd302da56634:

  meta/rt: remove explicit patch references (2011-08-10 00:16:17 -0400)

are available in the git repository at:
  git://git.kernel.org/pub/scm/linux/kernel/git/dvhart/yocto/linux-yocto-3.0.git dvhart/meta

Darren Hart (17):
  meta/rt: use CONFIG_PREEMPT_RT_FULL for 3.0 kernels
  meta/rt: beagleboard preempt-rt support
  meta/rt: mpc8315 preempt-rt support
  meta-rt: rsp preempt-rt support
  meta/rt: qemu-ppc32 preempt-rt support
  meta/rt: mti-malta32-be preempt-rt support
  meta/rt: arm-versatile-926ejs preempt-rt support
  meta/rt: crownbay preempt-rt support
  meta/rt: emenlow preempt-rt support
  meta/rt: fishriver preempt-rt support
  meta/rt: fri2 preempt-rt support
  meta/rt: jasperforest preempt-rt support
  meta/rt: common-pc[-64] preempt-rt no branch fix
  meta/rt: sugarbay preempt-rt support
  mpc8315e-rdb: remove boot -Os patch which is now in base
  routerstationpro: add remove-superfluous-endif patch to scc
  routerstationpro: remove CONFIG_PREEMPT* definitions

 .../arm-versatile-926ejs-preempt-rt.scc            |    7 ++++
 .../bsp/beagleboard/beagleboard-preempt-rt.scc     |    7 ++++
 .../bsp/common-pc-64/common-pc-64-preempt-rt.scc   |    4 +-
 .../bsp/common-pc/common-pc-preempt-rt.scc         |    4 +-
 .../bsp/crownbay/crownbay-preempt-rt.scc           |    7 ++++
 .../bsp/emenlow/emenlow-preempt-rt.scc             |    7 ++++
 .../bsp/fishriver/fishriver-preempt-rt.scc         |    7 ++++
 meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc |    7 ++++
 .../fsl-mpc8315e-rdb-preempt-rt.scc                |    7 ++++
 .../bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.scc      |    1 -
 .../powerpc-boot-remove-Os-from-BOOTFLAGS.patch    |   35 -------------------
 .../bsp/jasperforest/jasperforest-preempt-rt.scc   |    8 ++++
 .../bsp/mti-malta32/mti-malta32-be-preempt-rt.scc  |    8 ++++
 .../bsp/qemu-ppc32/qemu-ppc32-preempt-rt.scc       |    7 ++++
 .../remove-superfluous-endif-in-gpio-Kconfig.patch |   36 ++++++++++++++++++++
 .../routerstationpro-preempt-rt.scc                |    7 ++++
 .../bsp/routerstationpro/routerstationpro.cfg      |    3 --
 .../bsp/routerstationpro/routerstationpro.scc      |    1 +
 .../bsp/sugarbay/sugarbay-preempt-rt.scc           |    8 ++++
 .../kernel-cache/ktypes/preempt-rt/preempt-rt.cfg  |    2 +-
 20 files changed, 129 insertions(+), 44 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/arm-versatile-926ejs/arm-versatile-926ejs-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/crownbay/crownbay-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/emenlow/emenlow-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/fishriver-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb-preempt-rt.scc
 delete mode 100644 meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/powerpc-boot-remove-Os-from-BOOTFLAGS.patch
 create mode 100644 meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/mti-malta32/mti-malta32-be-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/qemu-ppc32/qemu-ppc32-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/routerstationpro/remove-superfluous-endif-in-gpio-Kconfig.patch
 create mode 100644 meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc

-- 
1.7.6


