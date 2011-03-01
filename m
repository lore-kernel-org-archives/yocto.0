Return-Path: <aalonso@secretlab.ca>
Received: from mail-qw0-f68.google.com (mail-qw0-f68.google.com
	[209.85.216.68])
	by mx1.pokylinux.org (Postfix) with ESMTP id DCCE44C800A4
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2011 17:18:22 -0600 (CST)
Received: by qwj9 with SMTP id 9so723451qwj.11
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2011 15:18:22 -0800 (PST)
Received: by 10.224.39.2 with SMTP id d2mr6463199qae.334.1299021499800;
	Tue, 01 Mar 2011 15:18:19 -0800 (PST)
Received: from localhost.localdomain
	(adsl-99-36-28-120.dsl.emhril.sbcglobal.net [99.36.28.120])
	by mx.google.com with ESMTPS id q12sm4444202qcu.18.2011.03.01.15.18.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 01 Mar 2011 15:18:19 -0800 (PST)
From: Adrian Alonso <aalonso@secretlab.ca>
To: yocto@yoctoproject.org
Date: Tue,  1 Mar 2011 17:18:17 -0600
Message-Id: <cover.1299015730.git.aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.4
Subject: [PATCH 0/5][PULL] meta-xilinx powerpc bsp
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
X-List-Received-Date: Tue, 01 Mar 2011 23:18:23 -0000

Several fixes for meta-xilinx powerpc bsp support

Pull URL: git://git.pokylinux.org/meta-xilinx.git
  Branch: powerpc-support
  Browse: http://git.pokylinux.org/cgit.cgi/meta-xilinx/log/?h=powerpc-support

Thanks,
    Adrian Alonso <aalonso@secretlab.ca>
---


Adrian Alonso (5):
  virtex4: add u-boot image to rootfs
  virtex5: add u-boot image to rootfs
  u-boot-xilinx: fix missing license definition
  openssl: Fix files search path
  linux-xilinx: update kernel version

 conf/machine/virtex4.conf                          |    2 +
 conf/machine/virtex5.conf                          |    2 +
 recipes-bsp/uboot/u-boot-xilinx_git.bb             |    6 +-
 ...enssl-linux-gnueabi-powerpc-configuration.patch |    0
 .../openssl/openssl_0.9.8p.bbappend                |    5 +-
 recipes-kernel/linux/linux-xilinx_git.bb           |    8 +-
 recipes-kernel/linux/linux.inc                     |   95 ++++++++++++++++++++
 7 files changed, 109 insertions(+), 9 deletions(-)
 rename recipes-connectivity/openssl/{openssl-0.9.8p => files}/openssl-linux-gnueabi-powerpc-configuration.patch (100%)
 create mode 100644 recipes-kernel/linux/linux.inc

-- 
1.7.4


