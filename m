Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5F9E44C80335
	for <yocto@yoctoproject.org>; Thu, 26 May 2011 00:05:56 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 May 2011 22:05:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,271,1304319600"; 
   d="scan'208";a="5092702"
Received: from unknown (HELO localhost) ([10.255.12.181])
	by orsmga001.jf.intel.com with ESMTP; 25 May 2011 22:05:55 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 May 2011 22:05:43 -0700
Message-Id: <cover.1306386209.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/1] beagleboard: specify UBOOT_MACHINE in machine conf
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
X-List-Received-Date: Thu, 26 May 2011 05:05:56 -0000

This is a follow-on to the u-boot bbappend support patches recently sent to oe:
http://lists.linuxtogo.org/pipermail/openembedded-core/2011-May/003161.html

The following changes since commit 1607d7b6809eb3f0aa8d09713a4e467a1f4585a2:

  IMAGE_ROOTFS_SIZE: Cleanup machine conf files (2011-05-25 14:07:37 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/yocto/beagle
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/yocto/beagle

Darren Hart (1):
  beagleboard: specify UBOOT_MACHINE in machine conf

 meta-yocto/conf/machine/beagleboard.conf |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)


