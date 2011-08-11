Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03836E00771
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 16:09:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Aug 2011 16:09:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="36969837"
Received: from unknown (HELO localhost) ([10.7.199.156])
	by orsmga002.jf.intel.com with ESMTP; 11 Aug 2011 16:09:20 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: bruce.ashfield@windriver.com, tom.zanussi@intel.com, yocto@yoctoproject.org
Date: Thu, 11 Aug 2011 16:08:52 -0700
Message-Id: <cover.1313093647.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Subject: [PATCH 0/2] preempt-rt support for meta-yocto BSPs
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
X-List-Received-Date: Thu, 11 Aug 2011 23:09:11 -0000

This series add build and boot tested support for the atom-pc and mpc8315e-rdb.
The routerstationpro and beagleboard still suffer from build failures and are
commented out.

The following changes since commit 760d79558c5e35b9b0e73734bb90ebadf427f208:

  recipes-rt: add a README documenting the contents of recipes-rt (2011-08-11 12:36:02 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/rt-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/rt-yocto

Darren Hart (2):
  meta-yocto: allow for virtual/kernel override
  meta-yocto: add linux-yocto-rt support for all meta-yocto machines

 meta-yocto/conf/machine/mpc8315e-rdb.conf          |    2 +-
 meta-yocto/conf/machine/routerstationpro.conf      |    2 +-
 .../linux/linux-yocto-rt_3.0.bbappend              |   25 ++++++++++++++++++++
 3 files changed, 27 insertions(+), 2 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend

-- 
1.7.6


