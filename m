Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71725E00288
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 07:49:46 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 Jul 2012 07:49:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170406856"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by azsmga001.ch.intel.com with ESMTP; 19 Jul 2012 07:49:45 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com, tom.zanussi@intel.com
Date: Wed, 18 Jul 2012 07:49:15 -0700
Message-Id: <cover.1342622602.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/7] meta-intel userland changes for corwnbay & emgd 1.14
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
X-List-Received-Date: Thu, 19 Jul 2012 14:49:46 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

These commits emable crownbay bsp with v3.4 kernel and emgd 1.14 graphics driver.
the last SRC_REV commit need updating to reflect upstream commit-ids. And that commit
can be used to do any testing before pulling these commits.

These commit work along with the emgd-1.14 kenrel repo commit sent before. so for testing
take both sets of commits for the v3.4 kernel repo & meta-intel repo.

Thanks,
Nitin

The following changes since commit ae18053df8d2b176b4f714bc5a826276f3fcbfad:

  linux-firmware: update md5sum for LICENCE.iwlwifi_firmware (2012-07-11 19:06:58 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/work-crownbay
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/work-crownbay

Nitin A Kamble (7):
  crownbay: customize the xorg.conf for the flat panel on the corwnbay
    kit
  ia32-base.inc: also take -dev package of emgd
  emgd-driver-bin: upgrade from 1.10 to 1.14
  crownbay: update emgd driver version in the README
  crownbay: add recipe extension for linux-yocto-3.4
  crownbay: make v3.4 the default kernel
  crownbay: update kernel meta SRC_REV

 ...-driver-bin_1.10.bb => emgd-driver-bin_1.14.bb} |   13 +++++----
 conf/machine/include/ia32-base.inc                 |    1 +
 meta-crownbay/README                               |    8 +++---
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 +-
 meta-crownbay/conf/machine/crownbay.conf           |    2 +-
 .../xserver-xf86-config/crownbay/xorg.conf         |   14 ++++++++++
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   26 ++++++++++++++++++++
 7 files changed, 54 insertions(+), 12 deletions(-)
 rename common/recipes-graphics/xorg-xserver/{emgd-driver-bin_1.10.bb => emgd-driver-bin_1.14.bb} (92%)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend

-- 
1.7.3.4


