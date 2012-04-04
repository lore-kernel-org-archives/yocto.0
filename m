Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33A0BE0044A
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 13:45:24 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Apr 2012 13:45:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="128757158"
Received: from unknown (HELO localhost) ([10.255.12.143])
	by orsmga002.jf.intel.com with ESMTP; 04 Apr 2012 13:45:23 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed,  4 Apr 2012 13:44:41 -0700
Message-Id: <cover.1333572157.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
Cc: Darren Hart <dvhart@linux.intel.com>, Ross Burton <ross.burton@intel.com>
Subject: [PATCH 0/1][1.2] syslinux: Avoid using linux.ext2_fs.h if possible
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
X-List-Received-Date: Wed, 04 Apr 2012 20:45:24 -0000

Please apply to poky for 1.2. Should also be applied to oe-core.

The following changes since commit cd4d346c0e83fc9bf5497dd0424368e9244b6e08:

  documentation/yocto-project-qs/yocto-project-qs.xml: Added CentOS distro (2012-04-04 00:34:03 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/syslinux
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/syslinux

Darren Hart (1):
  syslinux: Avoid using linux.ext2_fs.h if possible

 .../libinstaller-Avoid-using-linux-ext2_fs.h.patch |  975 ++++++++++++++++++++
 meta/recipes-devtools/syslinux/syslinux_4.03.bb    |    5 +-
 2 files changed, 978 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-devtools/syslinux/files/libinstaller-Avoid-using-linux-ext2_fs.h.patch

-- 
1.7.6.5


