Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 711EFE0044D
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 13:51:02 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Apr 2012 13:51:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="127162832"
Received: from unknown (HELO localhost) ([10.255.12.143])
	by azsmga001.ch.intel.com with ESMTP; 04 Apr 2012 13:51:01 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed,  4 Apr 2012 13:50:04 -0700
Message-Id: <cover.1333572471.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
Cc: Darren Hart <dvhart@linux.intel.com>, Ross Burton <ross.burton@intel.com>
Subject: [PATCH 0/1][1.1.2] syslinux: Avoid using linux.ext2_fs.h if possible
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
X-List-Received-Date: Wed, 04 Apr 2012 20:51:02 -0000

Please apply to poky/edison branch for 1.1.2 release. A corresponding patch has
been sent for oe-core and poky/master for the 1.2 release.

The following changes since commit 0fbd6a161576b2cafa8583adde0ffb15347c884a:

  poky.conf: Bumping SKD_VERSION (2012-03-14 15:49:33 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/bug2236
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/bug/2036

Darren Hart (1):
  syslinux: Avoid using linux.ext2_fs.h if possible

 .../libinstaller-Avoid-using-linux-ext2_fs.h.patch |  975 ++++++++++++++++++++
 meta/recipes-devtools/syslinux/syslinux_4.03.bb    |    5 +-
 2 files changed, 978 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-devtools/syslinux/files/libinstaller-Avoid-using-linux-ext2_fs.h.patch

-- 
1.7.6.5


