Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17EB5E006AB
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 11:19:47 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Aug 2011 11:19:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="41931564"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.178])
	by orsmga002.jf.intel.com with ESMTP; 25 Aug 2011 11:19:46 -0700
From: Jessica Zhang <jessica.zhang@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Aug 2011 11:49:11 -0700
Message-Id: <cover.1314297940.git.jessica.zhang@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] [YOCTO #1396] Fix adt-installer for consistent naming for powerpc and add all arch template for installation
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
X-List-Received-Date: Thu, 25 Aug 2011 18:19:47 -0000

The following changes since commit 1759d6dac3fe4022183f73898c035322c3f49865:
  Jessica Zhang (1):
        Merge branch 'master' of ssh://git.yoctoproject.org/poky

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib jzhang/1396
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=jzhang/1396

Jessica Zhang (1):
  [YOCTO #1396] Fix adt-installer for consistent naming for powerpc and
    add all arch template for installation

 .../installer/adt-installer/adt_installer.conf     |   17 +++++++++++++++--
 .../adt-installer/scripts/adt_installer_internal   |    2 +-
 .../installer/adt-installer/scripts/data_define    |    2 +-
 3 files changed, 17 insertions(+), 4 deletions(-)


