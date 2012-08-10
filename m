Return-Path: <Vladimir_Zapolskiy@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93CACE003C8
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 15:48:46 -0700 (PDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1Szy0c-0002NR-B5 from Vladimir_Zapolskiy@mentor.com ;
	Fri, 10 Aug 2012 15:48:46 -0700
Received: from SVR-IES-FEM-01.mgc.mentorg.com ([137.202.0.104]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Fri, 10 Aug 2012 15:48:46 -0700
Received: from eyas.fin.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.1.289.1; Fri, 10 Aug 2012 23:48:44 +0100
From: Vladimir Zapolskiy <vladimir_zapolskiy@mentor.com>
To: <yocto@yoctoproject.org>
Date: Sat, 11 Aug 2012 01:48:37 +0300
Message-ID: <1344638917-31571-1-git-send-email-vladimir_zapolskiy@mentor.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
X-Originating-IP: [137.202.0.76]
X-OriginalArrivalTime: 10 Aug 2012 22:48:46.0136 (UTC)
	FILETIME=[4CADDB80:01CD774A]
Cc: Matthew McClintock <msm@freescale.com>
Subject: [meta-fsl-ppc][PATCH] u-boot: correct path to config files
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
X-List-Received-Date: Fri, 10 Aug 2012 22:48:46 -0000
Content-Type: text/plain

The trivial change fixes u-boot compilation task, boot_format utility installs
board configuration files into a subdirectory of STAGING_DATADIR_NATIVE.

Signed-off-by: Vladimir Zapolskiy <vladimir_zapolskiy@mentor.com>
Cc: Matthew McClintock <msm@freescale.com>
---
 recipes-kernel/u-boot/u-boot_git.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/u-boot/u-boot_git.bb b/recipes-kernel/u-boot/u-boot_git.bb
index 8ced122..4dfb723 100644
--- a/recipes-kernel/u-boot/u-boot_git.bb
+++ b/recipes-kernel/u-boot/u-boot_git.bb
@@ -59,7 +59,7 @@ do_compile () {
 				cp ${S}/${board}/u-boot.bin  ${S}/${board}/${UBOOT_TARGET}.bin
 			else
 				${STAGING_BINDIR_NATIVE}/boot_format \
-					${STAGING_DATADIR_NATIVE}/${BOOTFORMAT_CONFIG} \
+					${STAGING_DATADIR_NATIVE}/boot_format/${BOOTFORMAT_CONFIG} \
 					${S}/${board}/u-boot.bin -spi ${S}/${board}/${UBOOT_TARGET}.bin
 			fi 
 		fi
-- 
1.7.10.4


