Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABD13E011B0
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 16:31:29 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Dec 2011 16:31:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="83420141"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by azsmga001.ch.intel.com with ESMTP; 07 Dec 2011 16:31:28 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 16:31:28 -0800
Message-Id: <cover.1323303673.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
Subject: [PATCH 0/7][meta-intel] fri2: Update display, wifi, serial, and EFI
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
X-List-Received-Date: Thu, 08 Dec 2011 00:31:29 -0000

This series applies to the master branch.

The following changes since commit 3d5574efe623923b24f78d77f1d4bd8ef8432698:

  meta-emenlow: use original libva (2011-12-06 09:27:08 -0600)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib dvhart/fri2
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=dvhart/fri2

Darren Hart (7):
  fri2: use ttyS0,115200 for serial console and syslinux
  fri2: change preferred display order
  linux-firmware: append support for the iwlwifi-6000g2a-5 firmware
  fri2: include linux-firmware for iwlwifi in images
  fri2: Add pcbios and efi to MACHINE_FEATURES
  fri2: Add efi-ext to KERNEL_FEATURES
  fri2: Comment framebuffer APPEND setting

 meta-fri2/conf/machine/fri2-noemgd.conf            |    9 ++++++++-
 meta-fri2/conf/machine/fri2.conf                   |    8 +++++++-
 .../xserver-xf86-config/fri2/xorg.conf             |    2 +-
 .../linux-firmware/linux-firmware_git.bbappend     |   18 ++++++++++++++++++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 5 files changed, 36 insertions(+), 5 deletions(-)
 create mode 100644 meta-fri2/recipes-kernel/linux-firmware/linux-firmware_git.bbappend

-- 
1.7.6.4


