Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 298D7E013EB
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 17:16:50 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Apr 2012 17:16:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="140218010"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by fmsmga001.fm.intel.com with ESMTP; 10 Apr 2012 17:16:35 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	bruse.ashfield@windriver.com
Date: Tue, 10 Apr 2012 17:15:16 -0700
Message-Id: <cover.1334103101.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/1] [KERNEL] Add igb driver to Romley Machine
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
X-List-Received-Date: Wed, 11 Apr 2012 00:16:50 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Romley machine has builtin 82580 Giga bit Ethernet 
Controller. Adding the relavent igb nic driver.

Please pull into linux-yocto-3.2/meta

Thanks
Kishore.

The following changes since commit 59f350ec3794e19fa806c1b73749d851f8ebf364:

  meta: Add common-pc-tiny.scc (2012-03-31 23:43:34 -0400)

are available in the git repository at:
  git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/romley/meta
  http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=kishore/romley/meta

Kishore Bodke (1):
  meta: Add igb.scc to Romley

 meta/cfg/kernel-cache/bsp/romley/romley.scc |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

-- 
1.7.5.4


