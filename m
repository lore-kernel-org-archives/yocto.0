Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3C07F4C80A78
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 17:27:49 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Jul 2011 15:27:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,531,1304319600"; d="scan'208";a="26012736"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.58])
	by orsmga002.jf.intel.com with ESMTP; 14 Jul 2011 15:27:48 -0700
From: Darren Hart <darren@dvhart.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 14 Jul 2011 15:27:43 -0700
Message-Id: <cover.1310682167.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Subject: [PATCH 0/1][linux-yocto] Fix boot failure with less than 17 MB RAM
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
X-List-Received-Date: Thu, 14 Jul 2011 22:27:49 -0000

From: Darren Hart <dvhart@linux.intel.com>

The following patch from mainline addresses an issues that prevented my
qemu testing from booting in less than 17M of memory. With this page,
the kernel can boot to init in 8M of memory.

Apply to yocto/standard/base

The following changes since commit bb8e31f2c99f5e007660d4540df246fb7ecfa746:

  USB: ehci: remove structure packing from ehci_def (2011-06-22 14:23:26 -0400)

are available in the git repository at:
  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/mm
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/mm

Yinghai Lu (1):
  mm: use alloc_bootmem_node_nopanic() on really needed path

 include/linux/bootmem.h |    2 ++
 mm/page_alloc.c         |    7 ++++---
 2 files changed, 6 insertions(+), 3 deletions(-)


