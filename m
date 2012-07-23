Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A523E004A1
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 03:07:17 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Jul 2012 03:07:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="172433651"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by azsmga001.ch.intel.com with ESMTP; 24 Jul 2012 03:07:16 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com, tom.zanussi@intel.com
Date: Mon, 23 Jul 2012 03:06:10 -0700
Message-Id: <cover.1343037893.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/6] commits to move crownbay BSP to v3.4 kernel I v1.14 EMGD driver.
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
X-List-Received-Date: Tue, 24 Jul 2012 10:07:17 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The following changes since commit 961f835e4f5dd2d02b34b7fce13316ec7b0bf1c4:

  emgd-driver-bin: remove FILES_${PN}-dev addition (2012-07-20 11:29:23 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/work
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/work

Nitin A Kamble (6):
  emgd-driver-bin: upgrade from 1.10 to 1.14
  crownbay: customize the xorg.conf for the flat panel on the corwnbay
    kit
  crownbay: update emgd driver version in the README
  crownbay: add recipe extension for linux-yocto-3.4
  crownbay: make v3.4 the default kernel
  gnu-efi: fix whitespace usage

 common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb         |   10 +++++-----
 ...-driver-bin_1.10.bb => emgd-driver-bin_1.14.bb} |   17 +++++++++--------
 meta-crownbay/README                               |    8 ++++----
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 +-
 meta-crownbay/conf/machine/crownbay.conf           |    2 +-
 .../xserver-xf86-config/crownbay/xorg.conf         |   14 ++++++++++++++
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   20 ++++++++++++++++++++
 7 files changed, 54 insertions(+), 19 deletions(-)
 rename common/recipes-graphics/xorg-xserver/{emgd-driver-bin_1.10.bb => emgd-driver-bin_1.14.bb} (88%)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend

-- 
1.7.3.4


