Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7718E01444
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 05:39:44 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Jul 2012 05:39:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="119509597"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Jul 2012 05:39:44 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Fri,  6 Jul 2012 05:38:37 -0700
Message-Id: <cover.1341578164.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/7] move intel bsps to v3.4 kernel
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
X-List-Received-Date: Fri, 06 Jul 2012 12:39:44 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

These commits move Intel BSPs to v3.4 kernel.
The crownbay v3.4 kernel is not quet ready yet, so for crown bay the default kerenl is still v3.2

The following changes since commit f5dcebe57832551219da048945237a7cf7bda369:

  linux-firmware: Fix FILESEXTRAPATHS typo (2012-06-20 13:12:12 -0700)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/work
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/work

Nitin A Kamble (7):
  FishRiver: add recipe extention for linux-yocto_3.4
  FishRiver: set v3.4 as the default kernel recipe version
  emenlow: add recipe extention for linux-yocto_3.4
  emenlow: set v3.4 as the default kernel recipe version
  sugarbay: add recipe extention for linux-yocto_3.4
  sugarbay: set v3.4 as the default kernel recipe version
  crownbay: add recipe extention for linux-yocto-3.4

 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   15 +++++++++++++++
 meta-emenlow/conf/machine/emenlow.conf             |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 ++++++++
 meta-fishriver/conf/machine/fishriver.conf         |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 ++++++++
 meta-sugarbay/conf/machine/sugarbay.conf           |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    9 +++++++++
 7 files changed, 43 insertions(+), 3 deletions(-)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend
 create mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
 create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_3.4.bbappend

-- 
1.7.3.4


