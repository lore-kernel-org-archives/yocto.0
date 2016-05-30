Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29451E00CC0; Mon, 30 May 2016 13:47:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBE70E00C62
	for <yocto@yoctoproject.org>; Mon, 30 May 2016 13:46:55 -0700 (PDT)
Received: from localhost.localdomain (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])
	by msfrf2612.sfr.fr (SMTP Server) with ESMTP id B33741C0008C7;
	Mon, 30 May 2016 22:46:54 +0200 (CEST)
Received: from localhost.localdomain (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2612.sfr.fr (SMTP Server) with ESMTPSA;
	Mon, 30 May 2016 22:46:54 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Tue, 31 May 2016 04:46:30 +0800
Message-Id: <1464641195-88380-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v4 0/5] Support for .dtbo files for dtb overlays, required by kernels 4.4.6+
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
X-List-Received-Date: Mon, 30 May 2016 20:47:01 -0000

v4: rebased
For kernels 4.4.9+, the behavior for the device tree overlays loading has been modified on RaspberryPi.
For overlays, it loads .dtbo files, not .dtb anymore.
Also, it does not check for -overlay extension, so the name of the overlay that is placed in the "overlays" directory must be <overlay_name>.dtbo, instead of <overlay_name>-overlay.dtb.

This patch addresses the issue for kernels 4.4+, while keeping the same behavior for older kernels.
This patch must be used in conjunction with another patch to meta/recipes-kernel/linux-dtb.inc, which will allow the processing of .dtbo files for overlays, instead of only .dtb like before.

.dtb are still in use, but only for the "real" device trees (not the overlays).

Herve Jourdain (5):
  linux-raspberrypi-base.bbclass: support for .dtbo files for dtb
    overlays
  sdcard_image-rpi.bbclass: support for .dtbo files for dtb overlays
  rpi-base.inc: support for .dtbo files for dtb overlays
  linux-raspberrypi_4.4.inc: support for .dtbo files for dtb overlays
  linux-raspberrypi_4.4.inc: support for .dtbo files for dtb overlays

 classes/linux-raspberrypi-base.bbclass             |  4 ++-
 classes/sdcard_image-rpi.bbclass                   |  7 +++--
 conf/machine/include/rpi-base.inc                  | 36 +++++++++++++++++++++-
 .../0001-fix-dtbo-rules.patch                      | 27 ++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
 5 files changed, 70 insertions(+), 5 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch

-- 
2.7.4


