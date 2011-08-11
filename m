Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5B22E00771
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 16:09:35 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Aug 2011 16:09:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="37689001"
Received: from unknown (HELO localhost) ([10.7.199.156])
	by orsmga001.jf.intel.com with ESMTP; 11 Aug 2011 16:09:45 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: bruce.ashfield@windriver.com, tom.zanussi@intel.com, yocto@yoctoproject.org
Date: Thu, 11 Aug 2011 16:09:39 -0700
Message-Id: <cover.1313092725.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Subject: [PATCH 0/2][meta-intel] Add linux-yocto-rt_3.0 support to all BSPs
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
X-List-Received-Date: Thu, 11 Aug 2011 23:09:35 -0000

This patch series adds the necessary linux-yocto-rt bbappend files for each
BSP. It also conditionally sets the kernel provider and version so they can
be overriden by the user or a layer.

All the BSPs are known to build the rt kernel. The n450, atom-pc, and
crownbay are known to boot and run cyclictest using the core-image-rt
image.

The following changes since commit 58f707b29e20c2f1712da2e0c1eedc78ea7de6c8:

  meta-fishriver: switch to linux-yocto 3.0 kernel (2011-08-08 13:15:52 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel dvhart/rt
  http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=dvhart/rt

Darren Hart (2):
  add linux-yocto-rt_3.0 support for all meta-intel BSPs
  allow override of kernel provider

 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 +-
 meta-crownbay/conf/machine/crownbay.conf           |    2 +-
 .../linux/linux-yocto-rt_3.0.bbappend              |    9 +++++++++
 meta-emenlow/conf/machine/emenlow.conf             |    2 +-
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 +++++++
 meta-fishriver/conf/machine/fishriver.conf         |    5 ++---
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 +++++++
 meta-fri2/conf/machine/fri2.conf                   |    4 ++--
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 +++++++
 meta-jasperforest/conf/machine/jasperforest.conf   |    4 ++--
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 +++++++
 .../linux/linux-yocto-rt_3.0.bbappend              |    9 +++++++++
 meta-sugarbay/conf/machine/sugarbay.conf           |    2 +-
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 +++++++
 14 files changed, 63 insertions(+), 11 deletions(-)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend

-- 
1.7.6


