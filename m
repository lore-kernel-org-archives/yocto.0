Return-Path: <aalonso@secretlab.ca>
Received: from mail-qy0-f196.google.com (mail-qy0-f196.google.com
	[209.85.216.196])
	by mx1.pokylinux.org (Postfix) with ESMTP id 636E04C80AAF
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2011 17:18:27 -0600 (CST)
Received: by mail-qy0-f196.google.com with SMTP id 35so718717qyk.11
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2011 15:18:27 -0800 (PST)
Received: by 10.229.215.76 with SMTP id hd12mr6000536qcb.125.1299021507025;
	Tue, 01 Mar 2011 15:18:27 -0800 (PST)
Received: from localhost.localdomain
	(adsl-99-36-28-120.dsl.emhril.sbcglobal.net [99.36.28.120])
	by mx.google.com with ESMTPS id q12sm4438898qcu.42.2011.03.01.15.18.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 01 Mar 2011 15:18:26 -0800 (PST)
From: Adrian Alonso <aalonso@secretlab.ca>
To: yocto@yoctoproject.org
Date: Tue,  1 Mar 2011 17:18:25 -0600
Message-Id: <d65596e8fd90ee5a1e3de9910c47133e724ded3d.1299015730.git.aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.4
In-Reply-To: <cover.1299015730.git.aalonso@secretlab.ca>
References: <cover.1299015730.git.aalonso@secretlab.ca>
Subject: [PATCH 2/5] virtex5: add u-boot image to rootfs
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
X-List-Received-Date: Tue, 01 Mar 2011 23:18:27 -0000

* Add u-boot image to EXTRA_IMAGEDEPENDS
  Trigger u-boot elf built and to be exported to hardware
  project path (see xilinx-boot.bbclass).

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 conf/machine/virtex5.conf |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/conf/machine/virtex5.conf b/conf/machine/virtex5.conf
index 232ab6a..b9ea61e 100644
--- a/conf/machine/virtex5.conf
+++ b/conf/machine/virtex5.conf
@@ -13,6 +13,8 @@ require conf/machine/include/tune-ppc440.inc
 #ASSUME_PROVIDED += "virtual/kernel"
 PREFERRED_PROVIDER_virtual/kernel = "linux-xilinx"
 PREFERRED_VERSION_u-boot_virtex5 = "u-boot-xilinx"
+# Add u-boot image
+EXTRA_IMAGEDEPENDS += "u-boot-xilinx"
 
 KERNEL_IMAGETYPE = "uImage"
 
-- 
1.7.4


