Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C639AE013D1
	for <yocto@yoctoproject.org>; Sun,  6 May 2012 09:53:42 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 May 2012 09:53:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="139511821"
Received: from unknown (HELO localhost) ([10.255.12.135])
	by azsmga001.ch.intel.com with ESMTP; 06 May 2012 09:53:41 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Sun,  6 May 2012 11:53:17 -0500
Message-Id: <cover.1336321542.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/7][KERNEL] add usb and mei features
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
X-List-Received-Date: Sun, 06 May 2012 16:53:42 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds a few new features, one each for usb/[xeou]hci-hcd and
another for amt/mei, and refactors existing config options into a new
usb/base, which are then used in crownbay.

v2: after suggestions from Bruce and Darren of a preference for a more
flattened feature tree structure, moved all the features into a single
usb/ feature dir.  I did however retain the common 'base' feature
because inlining that in each feature would mean that the same common
set would be repeated in multiple config fragments if more than one usb
feature was included in a BSP.

v3: include base.scc into each *hcd fragment again.

Please pull into linux-yocto-3.2.

Thanks,

Tom

The following changes since commit b14a08f5c7b469a5077c10942f4e1aec171faa9d:
  Yang Shi (1):
        meta: Clean up BSPs kernel config

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/xhcd-mei-features
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/xhcd-mei-features

Tom Zanussi (7):
  meta: add usb/base feature
  meta: add usb/xhci-hcd feature
  meta: add usb/ehci-hcd feature
  meta: add usb/ohci-hcd feature
  meta: add usb/uhci-hcd feature
  meta/crownbay: use usb features
  meta: add mei feature

 meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg |    6 ------
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    4 ++++
 meta/cfg/kernel-cache/features/amt/mei/mei.cfg  |    3 +++
 meta/cfg/kernel-cache/features/amt/mei/mei.scc  |    4 ++++
 meta/cfg/kernel-cache/features/usb/base.cfg     |    3 +++
 meta/cfg/kernel-cache/features/usb/base.scc     |    4 ++++
 meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg |    1 +
 meta/cfg/kernel-cache/features/usb/ehci-hcd.scc |    6 ++++++
 meta/cfg/kernel-cache/features/usb/ohci-hcd.cfg |    1 +
 meta/cfg/kernel-cache/features/usb/ohci-hcd.scc |    6 ++++++
 meta/cfg/kernel-cache/features/usb/uhci-hcd.cfg |    1 +
 meta/cfg/kernel-cache/features/usb/uhci-hcd.scc |    6 ++++++
 meta/cfg/kernel-cache/features/usb/xhci-hcd.cfg |    1 +
 meta/cfg/kernel-cache/features/usb/xhci-hcd.scc |    6 ++++++
 14 files changed, 46 insertions(+), 6 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.cfg
 create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.scc
 create mode 100644 meta/cfg/kernel-cache/features/usb/base.cfg
 create mode 100644 meta/cfg/kernel-cache/features/usb/base.scc
 create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg
 create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd.scc
 create mode 100644 meta/cfg/kernel-cache/features/usb/ohci-hcd.cfg
 create mode 100644 meta/cfg/kernel-cache/features/usb/ohci-hcd.scc
 create mode 100644 meta/cfg/kernel-cache/features/usb/uhci-hcd.cfg
 create mode 100644 meta/cfg/kernel-cache/features/usb/uhci-hcd.scc
 create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd.cfg
 create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd.scc


