Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C026E00D4A; Sat, 14 May 2016 03:16:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1FBEE00D01
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 03:16:27 -0700 (PDT)
Received: from localhost.localdomain (111-250-208-151.dynamic.hinet.net
	[111.250.208.151])
	by msfrf2604.sfr.fr (SMTP Server) with ESMTP id 7C4221C004CA7;
	Sat, 14 May 2016 12:16:26 +0200 (CEST)
Received: from localhost.localdomain (111-250-208-151.dynamic.hinet.net
	[111.250.208.151])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2604.sfr.fr (SMTP Server) with ESMTPSA;
	Sat, 14 May 2016 12:16:24 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Sat, 14 May 2016 18:15:51 +0800
Message-Id: <1463220952-67318-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v2 0/1] Support for .dtbo files for dtb overlays, required by firmware after 2016/04/12
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
X-List-Received-Date: Sat, 14 May 2016 10:16:31 -0000

Please disregard v1, there was 1 patch missing for 4.4 kernel...

The firmware after 2016/04/12 () seems to have altered the behavior of device tree loading on RaspberryPi: for overlays, it loads only .dtbo files, not .dtb anymore.
Also, it does not check for -overlay extension, so the name of the overlay that is placed in the "overlays" directory must be <overlay_name>.dtbo, instead of <overlay_name>-overlay.dtb.

This patch tries to address this issue for 4.4 and 4.1 kernels.
It must be used in conjunction with another patch to meta/recipes-kernel/linux-dtb.inc, which will allow the processing of .dtbo files, instead of only .dtb.

.dtb are still used, but only for the "real" device trees (not the overlays).

This is in line with the behavior of kernels 4.4.6+

Herve Jourdain (1):
  Support for .dtbo files for dtb overlays, required by firmware after
    2016/04/12

 classes/linux-raspberrypi-base.bbclass             |  4 +--
 classes/sdcard_image-rpi.bbclass                   |  6 ++--
 conf/machine/include/rpi-base.inc                  | 30 +++++++++----------
 .../0002-fix-dtbo-rules.patch                      | 35 ++++++++++++++++++++++
 .../0001-fix-dtbo-rules.patch                      | 13 ++++++++
 recipes-kernel/linux/linux-raspberrypi_4.1.bb      |  1 +
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
 7 files changed, 70 insertions(+), 20 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0002-fix-dtbo-rules.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch

-- 
2.7.4


