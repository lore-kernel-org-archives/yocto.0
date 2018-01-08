Return-Path: <marex@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0035FE00DA3; Mon,  8 Jan 2018 06:28:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D963EE0056D
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 06:28:38 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3zFd1K1xChz1qvCM;
	Mon,  8 Jan 2018 15:28:37 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 3zFd1K1hYgz26T1y;
	Mon,  8 Jan 2018 15:28:37 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id jM97VBlCeknC; Mon,  8 Jan 2018 15:28:36 +0100 (CET)
X-Auth-Info: 73NH7bn6rXquZcqKK2HHR6V48F0ioad6hlNunSU3Tik=
Received: from kurokawa.lan (ip-86-49-107-50.net.upcbroadband.cz
	[86.49.107.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Mon,  8 Jan 2018 15:28:36 +0100 (CET)
From: Marek Vasut <marex@denx.de>
To: yocto@yoctoproject.org
Date: Mon,  8 Jan 2018 15:28:30 +0100
Message-Id: <20180108142830.23684-1-marex@denx.de>
X-Mailer: git-send-email 2.11.0
X-Mailman-Approved-At: Thu, 11 Jan 2018 09:16:41 -0800
Cc: Marek Vasut <marex@denx.de>, Joshua Lock <joshua.g.lock@intel.com>
Subject: [PATCH V2] beaglebone: Fix serial console device node
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
X-List-Received-Date: Mon, 08 Jan 2018 14:28:41 -0000

The serial console on BBB is now on /dev/ttyS0 , not /dev/ttyO0,
which comes from legacy omap-serial driver. Support both options
using SERIAL_CONSOLES.

For details of the change to /dev/ttyS0, see Linux kernel
commit 61929cf0169d91366fd3f30d6ee60681b037bc19
Author: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Date:   Mon Sep 29 20:06:39 2014 +0200

    tty: serial: Add 8250-core based omap driver
...
    The device name is ttyS based instead of ttyO. If a ttyO based node name
    is required please ask udev for it. If both driver are activated (this
    and omap-serial) then this serial driver will take control over the
    device due to the link order

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Joshua Lock <joshua.g.lock@intel.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
---
V2: Use SERIAL_CONSOLES to handle both old and new variant of the
    serial console node used.
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 990c967416..31856cf94b 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -20,7 +20,7 @@ WKS_FILE ?= "beaglebone-yocto.wks"
 IMAGE_INSTALL_append = " kernel-devicetree kernel-image-zimage"
 do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot"
 
-SERIAL_CONSOLE = "115200 ttyO0"
+SERIAL_CONSOLES = "115200;ttyS0 115200;ttyO0"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "4.12%"
-- 
2.11.0


