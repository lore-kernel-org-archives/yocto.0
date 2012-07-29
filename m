Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2361E004A1
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 07:02:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jul 2012 07:01:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="190280990"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2012 07:01:54 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, tom.zanussi@intel.com, bruce.ashfield@windriver.com
Date: Sun, 29 Jul 2012 06:59:58 -0700
Message-Id: <cover.1343570184.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/4] update emgd driver recipe and yocto-kernel for crownbay BSP
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
X-List-Received-Date: Mon, 30 Jul 2012 14:02:14 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The following changes since commit 7bd163e41f6b861448ab19a13ded4b7c48e16641:

  gnu-efi_3.0m.bb: Fix tabs with spaces in python snippet (2012-07-27 11:41:17 -0700)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/work
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/work

Nitin A Kamble (4):
  emgd-driver-bin: upgrade from 1.10 to 1.14
  crownbay: customize the xorg.conf for the flat panel on the kit
  crownbay: add recipe extension for linux-yocto-3.4
  crownbay: make v3.4 the default kernel

 ...-driver-bin_1.10.bb => emgd-driver-bin_1.14.bb} |   17 +++++++++--------
 meta-crownbay/README                               |    8 ++++----
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 +-
 meta-crownbay/conf/machine/crownbay.conf           |    2 +-
 .../xserver-xf86-config/crownbay/xorg.conf         |   14 ++++++++++++++
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   20 ++++++++++++++++++++
 6 files changed, 49 insertions(+), 14 deletions(-)
 rename common/recipes-graphics/xorg-xserver/{emgd-driver-bin_1.10.bb => emgd-driver-bin_1.14.bb} (88%)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend

-- 
1.7.3.4


