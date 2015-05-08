Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7244DE00A18; Fri,  8 May 2015 14:49:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C201DE009CA
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 14:49:14 -0700 (PDT)
X-Halon-ID: 0fc0de57-f5cc-11e4-a7da-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 23:49:11 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Fri,  8 May 2015 23:49:00 +0200
Message-Id: <cover.1431121258.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/5] kernel fixes
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
X-List-Received-Date: Fri, 08 May 2015 21:49:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit


The following changes since commit c9f29df249b80ab488e4ea6eddc01a6522a28c09:

  linux-raspberrypi: Update 3.18 branch to 3.18.11 (2015-04-30 21:55:02 +0200)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib petmab/rpi_kernel_fixes_dts
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_kernel_fixes_dts

Petter Mabäcker (5):
  devicetree: auto-disable dts for old kernels
  README: fix outdated device tree info
  linux-raspberrypi: Add 3.14 support
  linux-raspberrypi: Drop support for old kernel versions
  linux-raspberrypi: Update 3.12 branch to latest

 README                                             |   3 +-
 classes/linux-raspberrypi-base.bbclass             |  29 +++
 classes/sdcard_image-rpi.bbclass                   |   6 +-
 recipes-kernel/linux/linux-raspberrypi.inc         |   4 +-
 .../0001-ASoC-Add-BCM2708-fixes.patch              | 263 +++++++++++++++++++++
 ...ng-lock-from-atomic-context-in-i2c-driver.patch | 235 ++++++++++++++++++
 .../sl030raspberrypii2ckernel.patch                |  32 ---
 recipes-kernel/linux/linux-raspberrypi_3.10.bb     |   8 -
 recipes-kernel/linux/linux-raspberrypi_3.12.bb     |   3 +-
 recipes-kernel/linux/linux-raspberrypi_3.14.bb     |   9 +
 recipes-kernel/linux/linux-raspberrypi_3.16.bb     |   8 -
 recipes-kernel/linux/linux-raspberrypi_3.6.bb      |   8 -
 recipes-kernel/linux/linux-raspberrypi_3.8.bb      |   8 -
 13 files changed, 546 insertions(+), 70 deletions(-)
 create mode 100644 classes/linux-raspberrypi-base.bbclass
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-ASoC-Add-BCM2708-fixes.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0002-Fix-grabbing-lock-from-atomic-context-in-i2c-driver.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckernel.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.14.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.16.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.6.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.bb

-- 
1.9.1


