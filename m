Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 193DCE01402
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 15:14:01 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Apr 2012 15:14:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="130357708"
Received: from nbuild0.sc.intel.com ([172.25.110.36])
	by orsmga001.jf.intel.com with ESMTP; 16 Apr 2012 15:14:00 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Mon, 16 Apr 2012 15:13:59 -0700
Message-Id: <cover.1334614375.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.6.5
Subject: [PATCH 0/1] Misc Fixes
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
X-List-Received-Date: Mon, 16 Apr 2012 22:14:01 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The following changes since commit a5afc58319d3c7e082a090f5fad7f89bd6e588c9:

  connman-gnome: fix segfault on connect (2012-04-16 22:53:00 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib nitin/bugfixes
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/bugfixes

Nitin A Kamble (1):
  poky-tiny: fix eglibc configuration

 meta-yocto/conf/distro/poky-tiny.conf |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

-- 
1.7.7


