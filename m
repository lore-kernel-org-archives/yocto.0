Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B2B334C80A79
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:47:01 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 May 2011 13:47:01 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost) ([10.255.12.115])
	by orsmga002.jf.intel.com with ESMTP; 27 May 2011 13:46:59 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:45:58 -0500
Message-Id: <cover.1306514719.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/3][KERNEL] base patches needed for romley
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
X-List-Received-Date: Fri, 27 May 2011 20:47:01 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

These upstreamed post-2.6.37 patches are needed by the romley BSP
for 2.6.37.

Note that I've removed the e-mail addresses from these posted patches,
but the git branch retains them.

Please pull into linux-yocto-2.6.37.

Thanks,

Tom

Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/romley-new-options-and-refactor-base
  Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/romley-new-options-and-refactor-base

Greg Rose (1):
  Remove extra struct page member from the buffer info structure

Seth Heasley (2):
  x86/PCI: irq and pci_ids patch for Intel Patsburg
  ahci: AHCI mode SATA patch for Intel Patsburg SATA RAID controller

 arch/x86/pci/irq.c        |    3 ++-
 drivers/ata/ahci.c        |    1 +
 drivers/net/igbvf/igbvf.h |    1 -
 include/linux/pci_ids.h   |    3 ++-
 4 files changed, 5 insertions(+), 3 deletions(-)


