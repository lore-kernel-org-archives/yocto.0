Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ABE6E00C75; Sun, 20 Nov 2016 04:46:37 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D401AE009A4
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 04:46:33 -0800 (PST)
Received: from localhost.localdomain (111-250-155-21.dynamic.hinet.net
	[111.250.155.21])
	by msfrf2632.sfr.fr (SMTP Server) with ESMTP id E38241C000841;
	Sun, 20 Nov 2016 13:46:30 +0100 (CET)
Received: from localhost.localdomain (111-250-155-21.dynamic.hinet.net
	[111.250.155.21])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2632.sfr.fr (SMTP Server) with ESMTPSA;
	Sun, 20 Nov 2016 13:46:28 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Sun, 20 Nov 2016 20:46:12 +0800
Message-Id: <1479645974-95274-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/2] Support for 64bits target on raspberrypi3
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
X-List-Received-Date: Sun, 20 Nov 2016 12:46:37 -0000

This adds the support of 64bits, for raspberrypi3 only (because based on cortexa53).
It's composed of a "generic" part, which should apply to all 64bits ports on future kernels,
and of a port to Linux kernel 4.7.
The port to Linux kernel 4.7 was finished early August, initially on 4.7.0, then was moved to 4.7.2.
Since the revisions I used then seem to have vanished from the raspberrypi tree, it was ported
to the latest 4.7 "good version" (4.7.10).
There are a few things to know about the 64bits ports on raspberrypi:
* userland doesn't work. It's mostly because the binary blob in the GPU communicates with the CPU using 32bits pointers... And since 64bits is not officially supported by raspberrypi foundation, they will not modify the binary blob (until they decide it's officially supported)
* VC4 should work (but I didn't test it). Boot messages seem to show it initialized correctly.
* Some drivers selected are different than the stock 32bits drivers, which can lead to some different log messages.

It's been tested with ethernet, sdcards support, USB support, and a few others, and seemed to work fine with those.
It's not been tested with HATs.

This is mostly for people who have an interest in 64bits, and can bear the limitations.

Herve Jourdain (2):
  Support for 64bits target on raspberrypi3 (generic part)
  Support for 64bits target on raspberrypi3 (patches for supporting
    64bits on linux 4.7)

 classes/sdcard_image-rpi.bbclass                   |    2 +
 conf/machine/include/rpi-base.inc                  |   21 +
 recipes-bsp/bootfiles/rpi-config_git.bb            |    6 +
 .../0001-fix-dtbo-rules.patch                      |   19 +-
 .../0002-support-64bits.patch                      | 2080 ++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi.inc         |    2 +
 recipes-kernel/linux/linux-raspberrypi_4.7.bb      |    2 +
 recipes-kernel/linux/linux-rpi.inc                 |   38 +-
 8 files changed, 2157 insertions(+), 13 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.7/0002-support-64bits.patch

-- 
2.7.4


