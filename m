Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30A22E00A38; Tue, 18 Apr 2017 13:59:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CB0BE00A38
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 13:59:22 -0700 (PDT)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
	[217.70.183.200])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id C9CE647EFC1
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 22:51:52 +0200 (CEST)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by relay7-d.mail.gandi.net (Postfix) with ESMTPS id A56522923;
	Tue, 18 Apr 2017 22:51:51 +0200 (CEST)
Received: from mfilter11-d.gandi.net (mfilter11-d.gandi.net [217.70.178.131])
	by relay3-d.mail.gandi.net (Postfix) with ESMTP id 93BF0A80C2;
	Tue, 18 Apr 2017 22:51:51 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter11-d.gandi.net
Received: from relay3-d.mail.gandi.net ([IPv6:::ffff:217.70.183.195])
	by mfilter11-d.gandi.net (mfilter11-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id Mw_qS4RL4Gxf; Tue, 18 Apr 2017 22:51:50 +0200 (CEST)
X-Originating-IP: 82.34.23.153
Received: from host0.betafive.co.uk
	(cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net [82.34.23.153])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 23AEEA80CD;
	Tue, 18 Apr 2017 22:51:50 +0200 (CEST)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 7C9A440004CA; Tue, 18 Apr 2017 21:51:19 +0100 (BST)
From: Paul Barker <pbarker@toganlabs.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Apr 2017 21:51:00 +0100
Message-Id: <20170418205108.14629-1-pbarker@toganlabs.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-raspberrypi][morty][PATCH 0/8] Stable branch backports
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
X-List-Received-Date: Tue, 18 Apr 2017 20:59:24 -0000

* Upgrade linux-raspberrypi 4.9 recipe

* Add support for raspberrypi3-64 MACHINE

Boot tested on raspberrypi, raspberrypi3 and raspberrypi3-64 using the 4.9
series kernel.

These patches were tested on top of Andrei's latest series of backports. The
exact series tested can be found at:
    https://gitlab.com/oryx/meta-raspberrypi/commits/pbarker/morty-next-2017-04-18

Andrei Gherzan (1):
  linux-raspberrypi_4.9: Bump to 4.9.21

Herve Jourdain (1):
  Add raspberrypi3-64.conf

Khem Raj (5):
  linux-raspberrypi: Add defconfig for raspberrypi3-64
  raspberrypi3-64.conf: Use 4.9 as default kernel
  raspberrypi3-64.conf: Specifiy rpi3-64bit dtbs
  sdcard: Use kernel8.img for 64bit kernel image name
  rpi-config: Specify bcm2710-rpi-3-b dtb for 64bit rpi3

Paul Barker (1):
  raspberrypi3-64: Override rpi-default-versions.inc

 classes/sdcard_image-rpi.bbclass              |  1 +
 conf/machine/raspberrypi3-64.conf             | 41 +++++++++++++++++++++++++++
 recipes-bsp/bootfiles/rpi-config_git.bb       |  6 ++++
 recipes-kernel/linux/linux-raspberrypi.inc    |  1 +
 recipes-kernel/linux/linux-raspberrypi_4.9.bb |  4 +--
 5 files changed, 51 insertions(+), 2 deletions(-)
 create mode 100644 conf/machine/raspberrypi3-64.conf

-- 
2.11.0


