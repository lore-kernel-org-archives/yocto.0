Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B278EE006AB
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 01:21:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Aug 2011 01:22:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,355,1309762800"; d="scan'208";a="38080958"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by fmsmga002.fm.intel.com with ESMTP; 11 Aug 2011 01:22:04 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 11 Aug 2011 01:22:00 -0700
Message-Id: <cover.1313049765.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Subject: [PATCH 0/1][linux-yocto-3.0:routerstationpro] gpio Kconfig fix
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
X-List-Received-Date: Thu, 11 Aug 2011 08:21:55 -0000

The following fix addresses a superfluous endif introduced by the patch
adding the gpio support for the nxp_74hc153. Applies to
yocto/standard/routerstationpro.

A patch is included in my meta series to update the routerstationpro.scc
with this patch.
The following changes since commit 022556dea477e50b3e09140e1f2e328901b3664c:

  Merge branch 'yocto/standard/base' into yocto/standard/routerstationpro (2011-08-10 09:59:50 -0400)

are available in the git repository at:

 git://git.kernel.org/pub/scm/linux/kernel/git/dvhart/yocto/linux-yocto-3.0.git  dvhart/yocto/standard/routerstationpro

Darren Hart (1):
  routerstationpro: remove superfluous endif in gpio Kconfig

 drivers/gpio/Kconfig |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

-- 
1.7.6


