Return-Path: <aalonso@secretlab.ca>
Received: from mail-qy0-f196.google.com (mail-qy0-f196.google.com
	[209.85.216.196])
	by mx1.pokylinux.org (Postfix) with ESMTP id C587A4C800A4
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2011 17:18:23 -0600 (CST)
Received: by qyk35 with SMTP id 35so718717qyk.11
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2011 15:18:23 -0800 (PST)
Received: by 10.224.11.129 with SMTP id t1mr6415540qat.382.1299021503557;
	Tue, 01 Mar 2011 15:18:23 -0800 (PST)
Received: from localhost.localdomain
	(adsl-99-36-28-120.dsl.emhril.sbcglobal.net [99.36.28.120])
	by mx.google.com with ESMTPS id nb15sm4410109qcb.26.2011.03.01.15.18.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 01 Mar 2011 15:18:23 -0800 (PST)
From: Adrian Alonso <aalonso@secretlab.ca>
To: yocto@yoctoproject.org
Date: Tue,  1 Mar 2011 17:18:21 -0600
Message-Id: <8224b169ecb05d559eaaaa3258c734fbe9a63848.1299015730.git.aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.4
In-Reply-To: <cover.1299015730.git.aalonso@secretlab.ca>
References: <cover.1299015730.git.aalonso@secretlab.ca>
Subject: [PATCH 1/5] virtex4: add u-boot image to rootfs
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

* Add u-boot image to EXTRA_IMAGEDEPENDS
  Trigger u-boot elf built and to be exported to hardware
  project path (see xilinx-boot.bbclass).

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 conf/machine/virtex4.conf |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/conf/machine/virtex4.conf b/conf/machine/virtex4.conf
index f9643cb..114b4b7 100644
--- a/conf/machine/virtex4.conf
+++ b/conf/machine/virtex4.conf
@@ -13,6 +13,8 @@ require conf/machine/include/tune-ppc405.inc
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-xilinx"
 PREFERRED_VERSION_u-boot_virtex4 = "u-boot-xilinx"
+# Add u-boot image
+EXTRA_IMAGEDEPENDS += "u-boot-xilinx"
 
 KERNEL_IMAGETYPE = "uImage"
 
-- 
1.7.4


