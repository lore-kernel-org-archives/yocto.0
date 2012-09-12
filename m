Return-Path: <B19537@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe005.messaging.microsoft.com [65.55.88.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3CB9E0146C
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:49:43 -0700 (PDT)
Received: from mail87-tx2-R.bigfish.com (10.9.14.244) by
	TX2EHSOBE012.bigfish.com (10.9.40.32) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:49:43 +0000
Received: from mail87-tx2 (localhost [127.0.0.1])	by mail87-tx2-R.bigfish.com
	(Postfix) with ESMTP id 2877B4200F2	for <yocto@yoctoproject.org>;
	Wed, 12 Sep 2012 06:49:43 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail87-tx2 (localhost.localdomain [127.0.0.1]) by mail87-tx2
	(MessageSwitch) id 1347432581652548_28721;
	Wed, 12 Sep 2012 06:49:41 +0000 (UTC)
Received: from TX2EHSMHS014.bigfish.com (unknown [10.9.14.240])	by
	mail87-tx2.bigfish.com (Postfix) with ESMTP id 9C6C2400048	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:49:41 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS014.bigfish.com
	(10.9.99.114) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:49:40 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-005.039d.mgd.msft.net (10.84.1.17) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:49:40 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6nUQL025013;
	Tue, 11 Sep 2012 23:49:36 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:06:17 +0800
Message-ID: <1347433590-8481-3-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1347433590-8481-1-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [meta-fsl-ppc 03/16] add additional u-boot and dts for mpc85xx
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
X-List-Received-Date: Wed, 12 Sep 2012 06:49:44 -0000
Content-Type: text/plain

From: Ting Liu <b28495@freescale.com>

Signed-off-by: Ting Liu <b28495@freescale.com>
---
 conf/machine/mpc8536ds.conf  |    3 ++-
 conf/machine/mpc8548cds.conf |    5 +++--
 conf/machine/mpc8572ds.conf  |    5 +++--
 3 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/conf/machine/mpc8536ds.conf b/conf/machine/mpc8536ds.conf
index eac14ac..babca86 100644
--- a/conf/machine/mpc8536ds.conf
+++ b/conf/machine/mpc8536ds.conf
@@ -6,7 +6,8 @@ require e500v2.inc
 
 BOOTFORMAT_CONFIG = "config_ddr2_512m_mpc8536ds_667M.dat"
 UBOOT_MACHINES ?= "MPC8536DS MPC8536DS_36BIT MPC8536DS_NAND MPC8536DS_SDCARD MPC8536DS_SPIFLASH"
-KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/mpc8536ds.dts"
+KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/mpc8536ds.dts \
+                    ${S}/arch/powerpc/boot/dts/mpc8536ds_36b.dts"
 KERNEL_DEFCONFIG = "${S}/arch/powerpc/configs/mpc85xx_defconfig"
 
 JFFS2_ERASEBLOCK = "0x20000"
diff --git a/conf/machine/mpc8548cds.conf b/conf/machine/mpc8548cds.conf
index 71f4669..631c4cb 100644
--- a/conf/machine/mpc8548cds.conf
+++ b/conf/machine/mpc8548cds.conf
@@ -4,8 +4,9 @@
 
 require e500v2.inc
 
-UBOOT_MACHINES ?= "MPC8548CDS"
-KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/mpc8548cds_32b.dts"
+UBOOT_MACHINES ?= "MPC8548CDS MPC8548CDS_36BIT"
+KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/mpc8548cds_32b.dts \
+                    ${S}/arch/powerpc/boot/dts/mpc8548cds_36b.dts"
 KERNEL_DEFCONFIG = "${S}/arch/powerpc/configs/mpc85xx_defconfig"
 
 JFFS2_ERASEBLOCK = "0x20000"
diff --git a/conf/machine/mpc8572ds.conf b/conf/machine/mpc8572ds.conf
index 51d3c52..1c06b53 100644
--- a/conf/machine/mpc8572ds.conf
+++ b/conf/machine/mpc8572ds.conf
@@ -3,8 +3,9 @@
 
 require e500v2.inc
 
-UBOOT_MACHINES ?= "MPC8572DS"
-KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/mpc8572ds.dts"
+UBOOT_MACHINES ?= "MPC8572DS MPC8572DS_36BIT MPC8572DS_NAND"
+KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/mpc8572ds.dts \
+                    ${S}/arch/powerpc/boot/dts/mpc8572ds_36b.dts"
 KERNEL_DEFCONFIG = "${S}/arch/powerpc/configs/mpc85xx_smp_defconfig"
 
 JFFS2_ERASEBLOCK = "0x20000"
-- 
1.7.9.5



