Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 84E3F4C80186
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2011 19:35:40 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jun 2011 17:35:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,384,1304319600"; d="scan'208";a="17670557"
Received: from unknown (HELO localhost) ([10.255.13.112])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jun 2011 17:35:39 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 17 Jun 2011 17:35:26 -0700
Message-Id: <cover.1308357152.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/3] beagleboard: machine conf, xorg, audio mixer
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
X-List-Received-Date: Sat, 18 Jun 2011 00:35:40 -0000

Refresh the meta-yocto components of the beagleboard BSP in support of
the recently sent linux-yocto updates for the kernel. The xorg.conf
and audio mixer patches are stop-gaps that should be eventually replaced
with more generic implementations. With this, we have fb video support and
sane default audio mixer settings.

The following changes since commit 2163461ec94528ecf046a04edc5db3d2dd3a6b8b:

  systemtap: remove non-core COMPATIBLE_MACHINES (2011-06-16 22:14:06 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/beagle
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/beagle

Darren Hart (3):
  beagleboard: cleanup machine config commentary
  beagleboard: xserver-kdrive xorg.conf installation
  beagleboard: add basic audio mixer defaults

 meta-yocto/conf/machine/beagleboard.conf           |   11 +++--
 .../beagleboard-audio/beagleboard-audio.bb         |   30 +++++++++++++
 .../beagleboard-audio/beagleboard-audio            |   44 ++++++++++++++++++++
 .../xserver-kdrive/beagleboard/xorg.conf           |   34 +++++++++++++++
 .../xorg-xserver/xserver-kdrive_1.7.99.2.bbappend  |   10 ++++
 5 files changed, 124 insertions(+), 5 deletions(-)
 create mode 100644 meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
 create mode 100644 meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio/beagleboard-audio
 create mode 100644 meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive/beagleboard/xorg.conf
 create mode 100644 meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bbappend


