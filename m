Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05309E0030C
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 16:28:59 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 07 Dec 2011 16:28:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="45018459"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Dec 2011 16:28:59 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 16:29:03 -0800
Message-Id: <cover.1323303722.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
Subject: [PATCH 0/4][meta-intel] fri2: Update display, wifi, and serial console
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
X-List-Received-Date: Thu, 08 Dec 2011 00:29:00 -0000

The following changes since commit c3e12aa981e97261093abee05bb0301c35f54c23:

  meta-emenlow: switch edison back to linux-yocto-2.6.37 kernel (2011-10-11 13:54:59 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib dvhart/edison/fri2
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=dvhart/edison/fri2

Darren Hart (4):
  fri2: use ttyS0,115200 for serial console and syslinux
  fri2: change preferred display order
  linux-firmware: append support for the iwlwifi-6000g2a-5 firmware
  fri2: include linux-firmware for iwlwifi in images

 meta-fri2/conf/machine/fri2-noemgd.conf            |    5 ++++-
 meta-fri2/conf/machine/fri2.conf                   |    5 ++++-
 .../xserver-xf86-config/fri2/xorg.conf             |    2 +-
 .../linux-firmware/linux-firmware_git.bbappend     |   18 ++++++++++++++++++
 4 files changed, 27 insertions(+), 3 deletions(-)
 create mode 100644 meta-fri2/recipes-kernel/linux-firmware/linux-firmware_git.bbappend

-- 
1.7.6.4


