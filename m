Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7900E006AB
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 14:23:24 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Aug 2011 14:23:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="39198362"
Received: from btwarden-mobl1.amr.corp.intel.com (HELO localhost)
	([10.7.199.156])
	by orsmga002.jf.intel.com with ESMTP; 18 Aug 2011 14:23:35 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 18 Aug 2011 14:23:34 -0700
Message-Id: <cover.1313702539.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/1] n450: decouple from meta-yocto atom-pc machine config
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
X-List-Received-Date: Thu, 18 Aug 2011 21:23:25 -0000

The following changes since commit fa92a44396b16be74f0de10256b0d42e52cf0bb6:

  meta-intel: update linux-yocto 3.0 kernel SRCREVs (2011-08-17 07:50:46 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel dvhart/n450
  http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=dvhart/n450

Darren Hart (1):
  n450: decouple from meta-yocto atom-pc machine config

 meta-n450/conf/machine/n450.conf                   |   32 +++++++++++++++++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    9 +++++
 2 files changed, 37 insertions(+), 4 deletions(-)
 create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend

-- 
1.7.6


