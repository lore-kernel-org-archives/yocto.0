Return-Path: <SRS0=KBcBbE=6U=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout09.eigbox.net (bosmailout09.eigbox.net [66.96.184.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2E8FE006B0
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 14:04:54 -0800 (PST)
Received: from bosmailscan03.eigbox.net ([10.20.15.3])
	by bosmailout09.eigbox.net with esmtp (Exim) id 1RYm5F-0004eF-N1
	for yocto@yoctoproject.org; Thu, 08 Dec 2011 17:04:53 -0500
Received: from bosimpout02.eigbox.net ([10.20.55.2])
	by bosmailscan03.eigbox.net with esmtp (Exim)
	id 1RYm5F-0006jJ-Ey; Thu, 08 Dec 2011 17:04:53 -0500
Received: from bosauthsmtp08.eigbox.net ([10.20.18.8])
	by bosimpout02.eigbox.net with NO UCE
	id 6m4t1i0050ASroS01m4tKG; Thu, 08 Dec 2011 17:04:53 -0500
X-EN-OrigOutIP: 10.20.18.8
X-EN-IMPSID: 6m4t1i0050ASroS01m4tKG
Received: from [108.25.134.198] (helo=[192.168.1.46])
	by bosauthsmtp08.eigbox.net with esmtpa (Exim)
	id 1RYm5F-0005Oq-7I; Thu, 08 Dec 2011 17:04:53 -0500
Message-ID: <4EE13483.7070104@mindchasers.com>
Date: Thu, 08 Dec 2011 17:04:51 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.23) Gecko/20110922 Thunderbird/3.1.15
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.25.134.198
X-EN-OrigHost: unknown
Cc: McClintock Matthew-B29882 <B29882@freescale.com>
Subject: [PATCH] meta-fsl-ppc layer: p1010rdb.conf only has one core, so don't use smp_defconfig
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
X-List-Received-Date: Thu, 08 Dec 2011 22:04:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

P1010 is a single core processor, don't use SMP for defconfig

Should we get a meta-fsl-ppc mail list going?

Signed-off-by: Robert Cochran<yocto@mindchasers.com>
---
  conf/machine/p1010rdb.conf |    2 +-
  1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/conf/machine/p1010rdb.conf b/conf/machine/p1010rdb.conf
index 726d212..693eed1 100644
--- a/conf/machine/p1010rdb.conf
+++ b/conf/machine/p1010rdb.conf
@@ -6,4 +6,4 @@ require e500v2.inc

  UBOOT_MACHINES = "P1010RDB_NAND"
  KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/p1010rdb.dts"
-KERNEL_DEFCONFIG = "${S}/arch/powerpc/configs/mpc85xx_smp_defconfig"
+KERNEL_DEFCONFIG = "${S}/arch/powerpc/configs/mpc85xx_defconfig"
--
1.7.1

