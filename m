Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32850E005A3
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 19:51:07 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Dec 2011 19:51:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="90247293"
Received: from unknown (HELO localhost) ([10.255.12.82])
	by orsmga002.jf.intel.com with ESMTP; 21 Dec 2011 19:51:06 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 21 Dec 2011 21:48:27 -0600
Message-Id: <cover.1324525136.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] meta-intel: libva fixes
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
X-List-Received-Date: Thu, 22 Dec 2011 03:51:07 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset fixes some problems that that started showing up with some
higher BBTHREADS values and ipk packaging.

I've done successful ipk and rpm builds with 16 threads and don't
seen the problem any longer.

Thanks to Jeffrey Moore and Darren Hart for testing fixes and helping to
narrow down the triggering conditions.

The following changes since commit b6d5d9a3b06caf578103a04dc5fcf5e476343205:
  Darren Hart (1):
        fri2: Update SRCREV to include efi patches and meta-data

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/libva-glx-rootfs-fix-4
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/libva-glx-rootfs-fix-4

Tom Zanussi (2):
  meta-intel: add PROVIDES for extra packages provided by libva
  meta-intel: change EMGD xserver libva dependency to libva-x11

 common/recipes-multimedia/libva/libva.inc |   42 +++++++++++++++++++++-------
 conf/machine/include/ia32-base.inc        |    2 +-
 2 files changed, 32 insertions(+), 12 deletions(-)


