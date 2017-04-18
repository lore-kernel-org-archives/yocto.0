Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59E01E00ACE; Tue, 18 Apr 2017 13:59:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.178.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DE60E00A80
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 13:59:21 -0700 (PDT)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 10D6E47F0E3
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 22:51:24 +0200 (CEST)
Received: from mfilter13-d.gandi.net (mfilter13-d.gandi.net [217.70.178.141])
	by relay4-d.mail.gandi.net (Postfix) with ESMTP id A211A172093;
	Tue, 18 Apr 2017 22:51:23 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter13-d.gandi.net
Received: from relay4-d.mail.gandi.net ([IPv6:::ffff:217.70.183.196])
	by mfilter13-d.gandi.net (mfilter13-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id iRPJunr-ofpV; Tue, 18 Apr 2017 22:51:22 +0200 (CEST)
X-Originating-IP: 82.34.23.153
Received: from host0.betafive.co.uk
	(cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net [82.34.23.153])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id E2C4817209A;
	Tue, 18 Apr 2017 22:51:21 +0200 (CEST)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 93BC94045D7D; Tue, 18 Apr 2017 21:51:19 +0100 (BST)
From: Paul Barker <pbarker@toganlabs.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Apr 2017 21:51:07 +0100
Message-Id: <20170418205108.14629-8-pbarker@toganlabs.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170418205108.14629-1-pbarker@toganlabs.com>
References: <20170418205108.14629-1-pbarker@toganlabs.com>
Subject: [meta-raspberrypi][morty][PATCH 7/8] sdcard: Use kernel8.img for 64bit kernel image name
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
X-List-Received-Date: Tue, 18 Apr 2017 20:59:26 -0000

From: Khem Raj <raj.khem@gmail.com>

This helps the firmware to identify the kernel as 64bit
image

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 classes/sdcard_image-rpi.bbclass | 1 +
 1 file changed, 1 insertion(+)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 116d5e8..79ab53a 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -35,6 +35,7 @@ KERNEL_INITRAMFS ?= ""
 # Kernel image name
 SDIMG_KERNELIMAGE_raspberrypi  ?= "kernel.img"
 SDIMG_KERNELIMAGE_raspberrypi2 ?= "kernel7.img"
+SDIMG_KERNELIMAGE_raspberrypi3-64 ?= "kernel8.img"
 
 # Boot partition volume id
 BOOTDD_VOLUME_ID ?= "${MACHINE}"
-- 
2.11.0


