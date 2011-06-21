Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3066A4C80AC3
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2011 02:19:28 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Jun 2011 00:19:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,399,1304319600"; d="scan'208";a="16259673"
Received: from unknown (HELO localhost) ([10.255.12.247])
	by orsmga002.jf.intel.com with ESMTP; 21 Jun 2011 00:19:15 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	koen@dominion.thruhere.net
Date: Tue, 21 Jun 2011 00:19:07 -0700
Message-Id: <cover.1308639171.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH v2 0/3] beagleboard: machine conf, xorg, audio mixer
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
X-List-Received-Date: Tue, 21 Jun 2011 07:19:28 -0000

Refresh the meta-yocto components of the beagleboard BSP in support of the
recently sent linux-yocto updates for the kernel. The audio mixer patch is a
stop-gap that should be eventually replaced with a more generic implementation,
such as alsa-state - but it ensures the beagleboard boots with sane mixer
defaults. Also, switch to the xf86-lite xserver from kdrive. This keeps the
Yocto Project BSP more inline with the meta-texasinstruments BSP, and eliminates
some trouble with keyboard handling present with the kdrive server.


The following changes since commit 2163461ec94528ecf046a04edc5db3d2dd3a6b8b:

  systemtap: remove non-core COMPATIBLE_MACHINES (2011-06-16 22:14:06 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/beagle
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/beagle

Darren Hart (3):
  beagleboard: cleanup machine config commentary
  beagleboard: add basic audio mixer defaults
  beagleboard: switch to xserver-xf86-lite

 meta-yocto/conf/machine/beagleboard.conf           |   21 ++++++----
 .../beagleboard-audio/beagleboard-audio.bb         |   30 +++++++++++++
 .../beagleboard-audio/beagleboard-audio            |   44 ++++++++++++++++++++
 .../xserver-xf86-config/beagleboard/xorg.conf      |   34 +++++++++++++++
 4 files changed, 121 insertions(+), 8 deletions(-)
 create mode 100644 meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
 create mode 100644 meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio/beagleboard-audio
 create mode 100644 meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf


