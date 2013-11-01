Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA727E0166B
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 15:02:34 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Nov 2013 14:59:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="402364566"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.15.12])
	by orsmga001.jf.intel.com with ESMTP; 01 Nov 2013 15:02:33 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org,
	flihp@twobit.us
Date: Fri,  1 Nov 2013 15:02:26 -0700
Message-Id: <1383343353-23232-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [meta-measured][PATCH 0/7] Update to latest oe-core/Poky
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Nov 2013 22:02:35 -0000

This patch set updates to use the latest 3.10 kernel and adds the needed
support, including switching form unionfs to aufs for the initramfs.  

Saul Wold (7):
  trousers: Add libgcc as Runtime dependency
  linux-yocto: Update to 3.10 and set as default
  measured-image-bootimg: imstall mboot.c32 for iso
  measured-image-bootimg: add libcom32
  pcr-calc: Use site-packages instead of dist-packages
  init-boot-tpm.sh: Use aufs instead of unionfs for 3.10 kernel
  core-image-tpm: add kmod and udev-extraconf

 conf/distro/oe-measured.conf                                           | 2 +-
 .../linux/{linux-yocto_3.8.bbappend => linux-yocto_3.10.bbappend}      | 0
 recipes-tpm/images/core-image-tpm-initramfs.bb                         | 2 ++
 recipes-tpm/images/core-image-tpm.inc                                  | 3 ++-
 recipes-tpm/initrdscripts/files/init-boot-tpm.sh                       | 2 +-
 recipes-tpm/trousers/trousers_0.3.10.bb                                | 2 ++
 recipes-txt/images/measured-image-bootimg.inc                          | 2 ++
 recipes-txt/pcr-calc/pcr-calc_git.bb                                   | 2 +-
 8 files changed, 11 insertions(+), 4 deletions(-)
 rename recipes-kernel/linux/{linux-yocto_3.8.bbappend => linux-yocto_3.10.bbappend} (100%)

-- 
1.8.3.1


