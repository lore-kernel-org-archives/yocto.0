Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67EB0E00D9D; Wed, 20 Jul 2016 15:01:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27834E00D94
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 15:01:29 -0700 (PDT)
Received: from localhost.localdomain (unknown [8.36.234.10])
	by msfrf2633.sfr.fr (SMTP Server) with ESMTP id D161F1C000C21;
	Thu, 21 Jul 2016 00:01:26 +0200 (CEST)
Received: from localhost.localdomain (unknown [8.36.234.10])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2633.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 21 Jul 2016 00:01:26 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Thu, 21 Jul 2016 06:00:35 +0800
Message-Id: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v6 0/4] Support for .dtbo files for dtb overlays, required by kernels 4.4.6+
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
X-List-Received-Date: Wed, 20 Jul 2016 22:01:34 -0000

v6: rebased

v5: modifications after more review
* Added an Upstream-Status to the kernel patch
* Only one instance of KERNEL_DEVICETREE defined (with the new .dtbo syntax)
* Modification of the KERNEL_DEVICETREE is done in linux-raspberry-base.bbclass, based on the kernel version
 
v4: rebased
For kernels 4.4.9+, the behavior for the device tree overlays loading has been modified on RaspberryPi.
For overlays, it loads .dtbo files, not .dtb anymore.
Also, it does not check for -overlay extension, so the name of the overlay that is placed in the "overlays" directory must be <overlay_name>.dtbo, instead of <overlay_name>-overlay.dtb.

This patch addresses the issue for kernels 4.4+, while keeping the same behavior for older kernels.
This patch must be used in conjunction with another patch to meta/recipes-kernel/linux-dtb.inc, which will allow the processing of .dtbo files for overlays, instead of only .dtb like before.

.dtb are still in use, but only for the "real" device trees (not the overlays).

Herve Jourdain (4):
  linux-raspberrypi_4.4.bb: support for .dtbo files for dtb overlays
  rpi-base.inc: support for .dtbo files for dtb overlays
  linux-raspberrypi-base.bbclass: support for .dtbo files for dtb
    overlays
  sdcard_image-rpi.bbclass: support for .dtbo files for dtb overlays

 classes/linux-raspberrypi-base.bbclass             | 19 ++++++----
 classes/sdcard_image-rpi.bbclass                   | 15 +++++---
 conf/machine/include/rpi-base.inc                  | 30 +++++++--------
 .../0001-fix-dtbo-rules.patch                      | 44 ++++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
 5 files changed, 81 insertions(+), 28 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch

-- 
2.7.4


