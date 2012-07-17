Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E1D3E00283
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 22:58:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Jul 2012 22:58:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="179356350"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga001.fm.intel.com with ESMTP; 17 Jul 2012 22:58:00 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, tom.zanussi@intel.com, bruce.ashfield@windriver.com
Date: Mon, 16 Jul 2012 22:57:46 -0700
Message-Id: <cover.1342504457.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/1] meta: update crownbay.scc for newer emgd driver
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
X-List-Received-Date: Wed, 18 Jul 2012 05:58:01 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This commit changes emgd kernel driver for crownbay bsp to the emgd-1.14.

Thanks,
Nitin

The following changes since commit c2b5ee363bf2612932301488f3ac0644ff70fc7c:

  meta: disable CONFIG_MTD_NAND_VERIFY_WRITE (2012-07-14 00:21:49 -0400)

are available in the git repository at:
  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib nitin/meta
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=nitin/meta

Nitin A Kamble (1):
  meta: crownbay.scc change emgd branch name

 .../bsp/crownbay/crownbay-standard.scc             |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.3.4


