Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5741E00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 15:27:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Apr 2012 15:27:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="128893336"
Received: from nbuild0.sc.intel.com ([172.25.110.36])
	by azsmga001.ch.intel.com with ESMTP; 09 Apr 2012 15:27:51 -0700
From: nitin.a.kamble@intel.com
To: openembedded-core@lists.openembedded.org,
	yocto@yoctoproject.org
Date: Mon,  9 Apr 2012 15:27:49 -0700
Message-Id: <cover.1334010389.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.6.5
Subject: [PATCH 0/2] Misc bugfixes
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
X-List-Received-Date: Mon, 09 Apr 2012 22:27:51 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The following changes since commit 190f6d791d51aaa4cfb9f1cf932bc205ff674fb5:

  runqemu-internal: Add console=tty for qemuppc and NFS (2012-04-06 01:12:47 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib nitin/bugfixes
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/bugfixes

Nitin A Kamble (2):
  tclibc-eglibc.inc: make locale packages dependency conditional
  poky-tiny.conf: adjust eglibc options for poky-tiny

 meta-yocto/conf/distro/poky-tiny.conf      |    6 ++++++
 meta/conf/distro/include/tclibc-eglibc.inc |   23 ++++++++++++++++-------
 2 files changed, 22 insertions(+), 7 deletions(-)

-- 
1.7.7


