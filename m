Return-Path: <B19537@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe005.messaging.microsoft.com [216.32.181.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02950E0148B
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:50:07 -0700 (PDT)
Received: from mail66-ch1-R.bigfish.com (10.43.68.235) by
	CH1EHSOBE014.bigfish.com (10.43.70.64) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:50:06 +0000
Received: from mail66-ch1 (localhost [127.0.0.1])	by mail66-ch1-R.bigfish.com
	(Postfix) with ESMTP id 58D6B200125	for <yocto@yoctoproject.org>;
	Wed, 12 Sep 2012 06:50:06 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail66-ch1 (localhost.localdomain [127.0.0.1]) by mail66-ch1
	(MessageSwitch) id 134743260312194_8985; Wed, 12 Sep 2012 06:50:03 +0000
	(UTC)
Received: from CH1EHSMHS042.bigfish.com (snatpool3.int.messaging.microsoft.com
	[10.43.68.228])	by mail66-ch1.bigfish.com (Postfix) with ESMTP id
	002DC4E00B6
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:50:03 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS042.bigfish.com
	(10.43.69.251) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:50:02 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-004.039d.mgd.msft.net (10.84.1.14) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:50:01 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6nUQU025013;
	Tue, 11 Sep 2012 23:49:58 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:06:26 +0800
Message-ID: <1347433590-8481-12-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1347433590-8481-1-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [meta-fsl-ppc 12/16] add nand u-boot in the default build list for p2041rdb
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
X-List-Received-Date: Wed, 12 Sep 2012 06:50:07 -0000
Content-Type: text/plain

From: Zhenhua Luo <b19537@freescale.com>

Signed-off-by: Zhenhua Luo <b19537@freescale.com>
---
 conf/machine/p2041rdb.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/p2041rdb.conf b/conf/machine/p2041rdb.conf
index 5c72e0d..7cb449b 100644
--- a/conf/machine/p2041rdb.conf
+++ b/conf/machine/p2041rdb.conf
@@ -3,7 +3,7 @@
 
 require e500mc.inc
 
-UBOOT_MACHINES ?= "P2041RDB P2041RDB_SECURE_BOOT P2041RDB_SDCARD P2041RDB_SPIFLASH"
+UBOOT_MACHINES ?= "P2041RDB P2041RDB_NAND P2041RDB_SECURE_BOOT P2041RDB_SDCARD P2041RDB_SPIFLASH"
 KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/p2041rdb.dts \
 	${S}/arch/powerpc/boot/dts/p2041rdb-usdpaa.dts"
 KERNEL_DEFCONFIG = "${S}/arch/powerpc/configs/corenet32_smp_defconfig"
-- 
1.7.9.5



