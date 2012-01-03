Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 667A6E0070D
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2012 08:18:37 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 03 Jan 2012 08:18:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="52838427"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.13.127])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Jan 2012 08:18:36 -0800
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Jan 2012 08:18:31 -0800
Message-Id: <cover.1325607441.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
Subject: [CONSOLIDATED PULL (meta-yocto) 0/4]
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
X-List-Received-Date: Tue, 03 Jan 2012 16:18:37 -0000

Richard,

This is the meta-yocto patches that coordiate with the oe-core changes
you have already pulled.

Sau!

The following changes since commit f3a1a8897c78e116d7d28947a85687d0ce9d7df7:

  pseudo: ensure libs are included in package (2012-01-03 12:14:41 +0000)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib sgw/stage
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/stage

Bruce Ashfield (2):
  linux-yocto/meta-yocto: routerstationpro/beagleboard: add 3.0.x
    support
  linux-yocto-rt/meta-yocto: add routerstationpro support

Darren Hart (2):
  distro: Add POKY_DEFAULT_EXTRA_R* variables
  distro: Add poky-tiny distro definition

 meta-yocto/conf/distro/poky-tiny.conf              |  103 ++++++++++++++++++++
 meta-yocto/conf/distro/poky.conf                   |    8 +-
 meta-yocto/conf/machine/beagleboard.conf           |    1 +
 meta-yocto/conf/machine/routerstationpro.conf      |    1 +
 .../linux/linux-yocto-rt_3.0.bbappend              |    8 +-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 +-
 6 files changed, 119 insertions(+), 10 deletions(-)
 create mode 100644 meta-yocto/conf/distro/poky-tiny.conf

-- 
1.7.6.4


