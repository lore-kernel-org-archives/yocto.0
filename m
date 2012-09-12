Return-Path: <B19537@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe005.messaging.microsoft.com [216.32.181.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17ABBE0148A
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:50:03 -0700 (PDT)
Received: from mail59-ch1-R.bigfish.com (10.43.68.230) by
	CH1EHSOBE002.bigfish.com (10.43.70.52) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:50:02 +0000
Received: from mail59-ch1 (localhost [127.0.0.1])	by mail59-ch1-R.bigfish.com
	(Postfix) with ESMTP id 8D00B18028D	for <yocto@yoctoproject.org>;
	Wed, 12 Sep 2012 06:50:02 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail59-ch1 (localhost.localdomain [127.0.0.1]) by mail59-ch1
	(MessageSwitch) id 1347432600214303_21107;
	Wed, 12 Sep 2012 06:50:00 +0000 (UTC)
Received: from CH1EHSMHS005.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.237])	by mail59-ch1.bigfish.com (Postfix) with ESMTP id
	28F8C260050
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:50:00 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS005.bigfish.com
	(10.43.70.5) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:50:00 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-004.039d.mgd.msft.net (10.84.1.14) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:49:58 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6nUQT025013;
	Tue, 11 Sep 2012 23:49:56 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:06:25 +0800
Message-ID: <1347433590-8481-11-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1347433590-8481-1-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [meta-fsl-ppc 11/16] u-boot: fix nand image name issue for different core type
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
X-List-Received-Date: Wed, 12 Sep 2012 06:50:03 -0000
Content-Type: text/plain

From: Zhenhua Luo <b19537@freescale.com>

Final nand u-boot image is named differently in u-boot source. That is:
"u-boot-nand.bin" for e500v2 boards, "u-boot.bin" for other boards.

Signed-off-by: Zhenhua Luo <b19537@freescale.com>
Signed-off-by: Ting Liu <b28495@freescale.com>
---
 recipes-kernel/u-boot/u-boot_git.bb |   21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/recipes-kernel/u-boot/u-boot_git.bb b/recipes-kernel/u-boot/u-boot_git.bb
index 38d0574..898cd7a 100644
--- a/recipes-kernel/u-boot/u-boot_git.bb
+++ b/recipes-kernel/u-boot/u-boot_git.bb
@@ -5,7 +5,7 @@ PROVIDES = "virtual/bootloader"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb"
 
-PR = "r19"
+PR = "r21"
 INHIBIT_DEFAULT_DEPS = "1"
 DEPENDS = "boot-format-native virtual/${TARGET_PREFIX}gcc libgcc"
 
@@ -49,19 +49,20 @@ do_compile () {
 		esac
 
 		if [ "x${UBOOT_TARGET}" != "x" ]; then
-			if [ "${UBOOT_TARGET}" == "u-boot-nand" ]; then
-				:
-			elif [ "${MACHINE_ARCH}" == "p1023rds" ] || \
-				[ "${MACHINE_ARCH}" == "p2041rdb" ] || \
-	                        [ "${MACHINE_ARCH}" == "p3041ds" ] || \
-        	                [ "${MACHINE_ARCH}" == "p4080ds" ] || \
-                	        [ "${MACHINE_ARCH}" == "p5020ds" ] || \
-                	        [ "${UBOOT_TARGET}" == "u-boot-sd" ]; then
+			if [ "${UBOOT_TARGET}" == "u-boot-sd" ]; then
 				cp ${S}/${board}/u-boot.bin  ${S}/${board}/${UBOOT_TARGET}.bin
+            elif [ "${UBOOT_TARGET}" == "u-boot-nand" ];then
+				if [ "${DEFAULTTUNE}" != "ppce500v2" ];then
+                    cp ${S}/${board}/u-boot.bin  ${S}/${board}/${UBOOT_TARGET}.bin
+                fi
 			else
-				${STAGING_BINDIR_NATIVE}/boot_format \
+				if [ -n "${BOOTFORMAT_CONFIG}" ];then
+                    ${STAGING_BINDIR_NATIVE}/boot_format \
 					${STAGING_DATADIR_NATIVE}/boot_format/${BOOTFORMAT_CONFIG} \
 					${S}/${board}/u-boot.bin -spi ${S}/${board}/${UBOOT_TARGET}.bin
+                else
+                    cp ${S}/${board}/u-boot.bin  ${S}/${board}/${UBOOT_TARGET}.bin
+                fi
 			fi 
 		fi
 	done
-- 
1.7.9.5



