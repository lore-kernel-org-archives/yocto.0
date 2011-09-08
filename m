Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FFC0E0071A
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2011 12:27:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Sep 2011 12:27:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,351,1312182000"; d="scan'208";a="49397281"
Received: from unknown (HELO localhost) ([10.255.14.214])
	by fmsmga001.fm.intel.com with ESMTP; 08 Sep 2011 12:27:44 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  8 Sep 2011 14:27:33 -0500
Message-Id: <cover.1315509303.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] More fixes for bug 1428
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
X-List-Received-Date: Thu, 08 Sep 2011 19:27:45 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

oe-core commit dc3a8274c7e935fa564eea142d2535c9bcf2b272 for YOCTO #1428
broke meta-intel x86_64 builds:

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'initramfs-live-install' (but /usr/local/src/yocto/sugarbay/meta/recipes-core/images/core-image-minimal-initramfs.bb RDEPENDS on or otherwise requires it)
ERROR: initramfs-live-install was skipped: incompatible with host x86_64-poky-linux

This patchset restores the build.

Build and install-tested on sugarbay and crownbay.

More fixes for [YOCTO #1428]

The following changes since commit b86f811663d834064af1e6778c408eb904fad0b9:
  Darren Hart (1):
        n450: update linux-yocto PREFERRED_VERSION to 3.0%

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/1428-fix
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/1428-fix

Tom Zanussi (2):
  meta-intel/common: create a grub2 version initramfs-live-install
  meta-intel/common: remove initramfs-live-install 1.0 bbappend

 .../initramfs-live-install_1.0.bbappend            |    2 -
 .../initrdscripts/initramfs-live-install_2.0.bb    |   24 ++++++++++++++++++++
 2 files changed, 24 insertions(+), 2 deletions(-)
 delete mode 100644 common/recipes-core/initrdscripts/initramfs-live-install_1.0.bbappend
 create mode 100644 common/recipes-core/initrdscripts/initramfs-live-install_2.0.bb


