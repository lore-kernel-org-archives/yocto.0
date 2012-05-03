Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2396AE013B7
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 20:35:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 May 2012 20:35:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="136422084"
Received: from unknown (HELO localhost) ([10.255.12.135])
	by orsmga001.jf.intel.com with ESMTP; 02 May 2012 20:35:25 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed,  2 May 2012 22:35:18 -0500
Message-Id: <cover.1336015630.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/5][KERNEL] add x/ehci-hcd and mei features
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
X-List-Received-Date: Thu, 03 May 2012 03:35:26 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds a few new features, one for xhci-hcd and another for
amt/mei, and refactors some existing config options into a new
echi-hcd, which is then used in crownbay.

If this looks like the way to go, I'll add similar USB features
for ohci and uhci and fix up all the meta-intel BSPs to use
them.

Please pull into linux-yocto-3.2.

Thanks,

Tom

The following changes since commit b14a08f5c7b469a5077c10942f4e1aec171faa9d:
  Yang Shi (1):
        meta: Clean up BSPs kernel config

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/xhcd-mei-features
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/xhcd-mei-features

Tom Zanussi (5):
  meta: add usb/host/base feature
  meta: add usb/xhci-hcd feature
  meta: add usb/ehci-hcd feature
  meta/crownbay: use ehci-hcd feature
  meta: add mei feature

 meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |    4 ----
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    2 ++
 meta/cfg/kernel-cache/features/amt/mei/mei.cfg     |    3 +++
 meta/cfg/kernel-cache/features/amt/mei/mei.scc     |    4 ++++
 .../features/usb/ehci-hcd/ehci-hcd.cfg             |    1 +
 .../features/usb/ehci-hcd/ehci-hcd.scc             |    6 ++++++
 meta/cfg/kernel-cache/features/usb/host/base.cfg   |    3 +++
 meta/cfg/kernel-cache/features/usb/host/base.scc   |    4 ++++
 .../features/usb/xhci-hcd/xhci-hcd.cfg             |    1 +
 .../features/usb/xhci-hcd/xhci-hcd.scc             |    6 ++++++
 10 files changed, 30 insertions(+), 4 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.cfg
 create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.scc
 create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.cfg
 create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.scc
 create mode 100644 meta/cfg/kernel-cache/features/usb/host/base.cfg
 create mode 100644 meta/cfg/kernel-cache/features/usb/host/base.scc
 create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.cfg
 create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.scc


