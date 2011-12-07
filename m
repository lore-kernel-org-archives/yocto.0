Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5B6AE00728
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 14:49:59 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Dec 2011 14:49:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="44978375"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Dec 2011 14:49:58 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org, Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 14:50:05 -0800
Message-Id: <cover.1323296855.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
Subject: [PATCH 0/1][linux-yocto-3.0] EFI config fragments
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
X-List-Received-Date: Wed, 07 Dec 2011 22:50:00 -0000

The following changes since commit 67ce7623909cef63927fd145026aaf371cf4abf1:

  meta: bumping kver to v3.0.10 (2011-11-23 00:33:19 -0500)

are available in the git repository at:
  git://git.infradead.org/users/dvhart/linux-yocto-3.0.git dvhart/meta/efi
  http://git.infradead.org/users/dvhart/linux-yocto-3.0.git/shortlog/refs/heads/dvhart/meta/efi

Darren Hart (1):
  Add EFI scc and cfg files

 meta/cfg/kernel-cache/cfg/efi-ext.cfg |   14 ++++++++++++++
 meta/cfg/kernel-cache/cfg/efi-ext.scc |    2 ++
 meta/cfg/kernel-cache/cfg/efi.cfg     |    8 ++++++++
 meta/cfg/kernel-cache/cfg/efi.scc     |    1 +
 4 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/cfg/efi-ext.cfg
 create mode 100644 meta/cfg/kernel-cache/cfg/efi-ext.scc
 create mode 100644 meta/cfg/kernel-cache/cfg/efi.cfg
 create mode 100644 meta/cfg/kernel-cache/cfg/efi.scc

-- 
1.7.6.4


