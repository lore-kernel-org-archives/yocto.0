Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C128E0071A
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 11:32:38 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 Aug 2011 11:32:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="43860072"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.178])
	by orsmga002.jf.intel.com with ESMTP; 31 Aug 2011 11:32:38 -0700
From: Jessica Zhang <jessica.zhang@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 31 Aug 2011 12:03:05 -0700
Message-Id: <cover.1314817176.git.jessica.zhang@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] [YOCTO #1396] 1396 is reopened from the initial fix
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
X-List-Received-Date: Wed, 31 Aug 2011 18:32:38 -0000

This patch revert the original fix which broke ppc/powerpc case and fix
term consistency in adt_installer.conf 

The following changes since commit 0ac19e84db3794b0d9280bd3cf9bae1719de3d6d:
  Jessica Zhang (1):
        Merge branch 'master' of ssh://git.yoctoproject.org/poky

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib jzhang/1396-reopen
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=jzhang/1396-reopne

Jessica Zhang (2):
  Revert "Fix adt-installer for consistent naming for powerpc and add
    all arch template for installation"
  [YOCTO #1396] Fix powerpc term and provide more template for
    different arches

 .../installer/adt-installer/adt_installer.conf     |   10 +++++-----
 .../adt-installer/scripts/adt_installer_internal   |    2 +-
 .../installer/adt-installer/scripts/data_define    |    2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)


