Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id DF6B74C80AC3
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2011 02:17:39 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jun 2011 00:17:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,399,1304319600"; d="scan'208";a="18720199"
Received: from unknown (HELO localhost) ([10.255.12.247])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jun 2011 00:17:39 -0700
From: Darren Hart <darren@dvhart.com>
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	koen@dominion.thruhere.net
Date: Tue, 21 Jun 2011 00:17:25 -0700
Message-Id: <cover.1308640367.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH RESEND 0/1][linux-yocto] beagleboard: align config with with meta-ti linux-omap
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
X-List-Received-Date: Tue, 21 Jun 2011 07:17:40 -0000

From: Darren Hart <dvhart@linux.intel.com>

Update the Beagleboard meta data to align with the meta-ti linux-omap_2.6.37
recipe defconfig while preserving the policy configuration from linux-yocto.
Core platform bits were maintained, while things like filesystems and very
generic drivers were left to whatever linux-yocto had originally.

There is surely still room for tweaking, but this gets us most of the way there.

Fixes [YOCTO #764]
Fixes [YOCTO #765]
Fixes [YOCTO #767]

The following changes since commit 46a1be20b01e50d5d0646e5622e9dd06433238c2:

The following changes since commit 8888d948e0ddbc5f37bd3dc23cc1b398ab230e2e:

  meta: add utrace feature for linux-yocto (2011-06-16 15:41:23 -0400)

are available in the git repository at:
  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/meta/beagleboard
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/meta/beagleboard

Darren Hart (1):
  beagleboard: new config based on meta-texasinstruments

 .../kernel-cache/bsp/beagleboard/beagleboard.cfg   |   97 ++++++++++++++++++--
 .../kernel-cache/bsp/beagleboard/beagleboard.scc   |    2 +
 meta/cfg/kernel-cache/bsp/beagleboard/wifi.cfg     |    3 +
 meta/cfg/kernel-cache/bsp/beagleboard/wl1271.cfg   |    6 +
 4 files changed, 100 insertions(+), 8 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/beagleboard/wifi.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/beagleboard/wl1271.cfg


