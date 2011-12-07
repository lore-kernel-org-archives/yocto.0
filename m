Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B893E0030C
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 11:19:09 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Dec 2011 11:19:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="83318680"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by azsmga001.ch.intel.com with ESMTP; 07 Dec 2011 11:19:08 -0800
From: Darren Hart <darren@dvhart.com>
To: yocto@yoctoproject.org, Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 11:19:06 -0800
Message-Id: <cover.1323285225.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
Subject: [PATCH 0/3][linux-yocto-3.0] EFI support backports
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
X-List-Received-Date: Wed, 07 Dec 2011 19:19:09 -0000

From: Darren Hart <dvhart@linux.intel.com>

The following patches have been merged back from upstream to address various
issues with the EFI boot process. These are intended to be merged with
yocto/standard/base.

Please watch for a subsequent patch adding a series of efi config fragments.

The following changes since commit ab1de8c21d2b1d084b8488496d75cc54fcd94f02:

  Merge commit 'v3.0.10' into yocto/standard/base (2011-11-23 00:31:29 -0500)

are available in the git repository at:

  git://git.infradead.org/users/dvhart/linux-yocto-3.0.git dvhart/standard/efi
  http://git.infradead.org/users/dvhart/linux-yocto-3.0.git/shortlog/refs/heads/dvhart/standard/efi

Matt Fleming (2):
  x86/rtc: Don't recursively acquire rtc_lock
  x86, efi: Make efi_call_phys_prelog() CONFIG_RELOCATABLE-aware

Maurice Ma (1):
  x86, efi: Convert efi_phys_get_time() args to physical addresses

 arch/x86/kernel/rtc.c          |   23 ++++++++++++-----------
 arch/x86/platform/efi/efi.c    |    3 ++-
 arch/x86/platform/efi/efi_32.c |   22 +++++++++++++---------
 arch/x86/platform/mrst/vrtc.c  |    9 +++++++++
 4 files changed, 36 insertions(+), 21 deletions(-)

-- 
1.7.6.4


