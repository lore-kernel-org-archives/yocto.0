Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93CA7E006DD
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 23:37:03 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Dec 2011 23:37:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="104536831"
Received: from nbuild0.sc.intel.com ([172.25.110.36])
	by fmsmga002.fm.intel.com with ESMTP; 20 Dec 2011 23:37:03 -0800
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Tue, 20 Dec 2011 23:36:52 -0800
Message-Id: <cover.1324452915.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.6.4
Subject: [bernard 0/1] fix for bernard
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
X-List-Received-Date: Wed, 21 Dec 2011 07:37:03 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This commit fixes the binutils build issue on a perticular suse host.

Thanks,
Nitin

The following changes since commit 4f5622fb01bef25b121f293533cbfdd0067329ae:

  poky.conf: DISTRO bump (2011-12-19 14:35:40 -0800)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib nitin/bugfix
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/bugfix

Nitin Kamble (1):
  binutils-2.21: fix building on suse 11.4

 .../binutils/binutils-cross-canadian_2.21.bb       |    2 +-
 .../binutils/binutils-crosssdk_2.21.bb             |    2 +-
 meta/recipes-devtools/binutils/binutils.inc        |    2 +-
 meta/recipes-devtools/binutils/binutils_2.21.bb    |    2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.7.6.4


