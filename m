Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7C16E013EB
	for <yocto@yoctoproject.org>; Wed, 16 May 2012 08:51:01 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 16 May 2012 08:51:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="100803867"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by AZSMGA002.ch.intel.com with ESMTP; 16 May 2012 08:51:00 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed, 16 May 2012 10:50:34 -0500
Message-Id: <cover.1337182769.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 00/22][KERNEL] policy cleanup patches, v3
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
X-List-Received-Date: Wed, 16 May 2012 15:51:01 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This set of patches factors out the policy vs hardware-related config
of the common-pc and common-pc-64 along with some meta-intel BSPs.

There are also a couple usb cleanups as well.

This patchset has been boot-tested with sato images on the following
machines: qemux86, qemux86-64, crownbay, sugarbay, emenlow, and
jasperforest.

v2: updated to reflect Darren's comments.  This new patchset also
adds the usb-mass-storage feature to common-pc and common-pc-64,
and at the same time factors out the common SCSI pieces into a new
set of scsi features.  It also removes options and feature use made
redundant by the above changes.

v3: updated to reflect Darren's latest comments i.e. CONFIG_BLOCK
added to the scsi feature, and ehci removed from jasperforest and
sugarbay since that comes in via common-pc-64.

Please pull into linux-yocto-3.2.
 
Tom

The following changes since commit 1dfd60fa1250259eed38ae5b2840eb37e3758a1b:
  Tom Zanussi (1):
        meta/fishriver: move smp options from recipe-space

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/policy-cleanup
  http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/policy-cleanup

Tom Zanussi (22):
  meta: add ROOT_HUB_TT config option to the usb/ehci-hcd feature
  meta/common-pc: use usb features
  meta/common-pc-64: use usb features
  meta/common-pc: factor out policy-related options
  meta/common-pc-64: factor out policy-related options
  meta/crownbay: factor out policy-related options
  meta/emenlow: factor out policy-related options
  meta/fishriver: factor out policy-related options
  meta/jasperforest: factor out policy-related options
  meta/sugarbay: factor out policy-related options
  meta: add scsi feature
  meta: add scsi disk feature
  meta: factor out SCSI options from the usb-mass-storage feature
  meta/common-pc: use usb-mass-storage feature
  meta: add scsi cdrom feature
  meta/common-pc-64: use usb-mass-storage feature
  meta/common-pc-64: factor out SCSI CDROM option
  meta/jasperforest: remove redundant features and options
  meta/sugarbay: remove redundant features and options
  meta/crownbay: remove redundant features and options
  meta/emenlow: remove redundant features and options
  meta/fishriver: remove redundant features and options

 .../bsp/common-pc-64/common-pc-64-preempt-rt.scc   |    7 +++++++
 .../bsp/common-pc-64/common-pc-64-standard.scc     |    7 +++++++
 .../kernel-cache/bsp/common-pc-64/common-pc-64.cfg |    8 --------
 .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |   10 ++++------
 .../bsp/common-pc/common-pc-preempt-rt.scc         |    8 ++++++++
 .../bsp/common-pc/common-pc-standard.scc           |    7 +++++++
 .../kernel-cache/bsp/common-pc/common-pc-tiny.scc  |    5 +----
 meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg  |    8 --------
 meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc  |    7 +++----
 .../bsp/crownbay/crownbay-preempt-rt.scc           |    8 ++++++++
 .../bsp/crownbay/crownbay-standard.scc             |    7 +++++++
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |    1 -
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    8 --------
 .../bsp/emenlow/emenlow-preempt-rt.scc             |    8 ++++++++
 .../kernel-cache/bsp/emenlow/emenlow-standard.scc  |    8 ++++++++
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg      |    1 -
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc      |    8 --------
 .../bsp/fishriver/fishriver-preempt-rt.scc         |    8 ++++++++
 .../bsp/fishriver/fishriver-standard.scc           |    8 ++++++++
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg  |    1 -
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |    8 --------
 .../bsp/jasperforest/jasperforest-preempt-rt.scc   |    4 ++++
 .../bsp/jasperforest/jasperforest-standard.scc     |    3 +++
 .../kernel-cache/bsp/jasperforest/jasperforest.cfg |    1 -
 .../kernel-cache/bsp/jasperforest/jasperforest.scc |   10 ----------
 .../bsp/sugarbay/sugarbay-preempt-rt.scc           |    4 ++++
 .../bsp/sugarbay/sugarbay-standard.scc             |    3 +++
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg    |    1 -
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc    |   10 ----------
 meta/cfg/kernel-cache/cfg/usb-mass-storage.cfg     |    2 --
 meta/cfg/kernel-cache/cfg/usb-mass-storage.scc     |    2 ++
 meta/cfg/kernel-cache/features/scsi/cdrom.cfg      |    1 +
 meta/cfg/kernel-cache/features/scsi/cdrom.scc      |    6 ++++++
 meta/cfg/kernel-cache/features/scsi/disk.cfg       |    1 +
 meta/cfg/kernel-cache/features/scsi/disk.scc       |    6 ++++++
 meta/cfg/kernel-cache/features/scsi/scsi.cfg       |    2 ++
 meta/cfg/kernel-cache/features/scsi/scsi.scc       |    4 ++++
 meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg    |    1 +
 38 files changed, 121 insertions(+), 81 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/scsi/cdrom.cfg
 create mode 100644 meta/cfg/kernel-cache/features/scsi/cdrom.scc
 create mode 100644 meta/cfg/kernel-cache/features/scsi/disk.cfg
 create mode 100644 meta/cfg/kernel-cache/features/scsi/disk.scc
 create mode 100644 meta/cfg/kernel-cache/features/scsi/scsi.cfg
 create mode 100644 meta/cfg/kernel-cache/features/scsi/scsi.scc


