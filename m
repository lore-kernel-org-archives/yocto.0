Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B607E00C62; Wed, 30 Mar 2016 07:36:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [195.74.38.227 listed in list.dnswl.org]
Received: from bin-vsp-out-03.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFBC3E007C2
	for <yocto@yoctoproject.org>; Wed, 30 Mar 2016 07:35:59 -0700 (PDT)
X-Halon-ID: b54eae0b-f684-11e5-8ff9-0050569116f7
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.localdomain (unknown [78.78.107.132])
	by bin-vsp-out-03.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Wed, 30 Mar 2016 16:35:54 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Wed, 30 Mar 2016 16:35:44 +0200
Message-Id: <1459348549-32007-1-git-send-email-petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v2 0/5] Various upgrade/fixes from Technux
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
X-List-Received-Date: Wed, 30 Mar 2016 14:36:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Various fixes from Technux, with focus on PiTFT28 resistive support and
Official Raspberry Pi 7 inch touchscreen enablers.

Petter Mabäcker (5):
  pitft: Add support for pitft28r
  rpi-base.inc: Remove deprecated MACHINE_FEATURES
  rpi-base.inc: Add overlay for rpi-ft5406
  .gitignore: Ignore some additional files
  linux-raspberrypi: Drop support for 3.14

 .gitignore                                         |   2 +
 README                                             |   3 +-
 conf/machine/include/rpi-base.inc                  |   4 +-
 recipes-bsp/bootfiles/rpi-config_git.bb            |   6 +
 .../rpi/xorg.conf.d/98-pitft.conf                  |   5 +
 .../rpi/xorg.conf.d/99-calibration.conf            |   6 +
 .../rpi/xorg.conf.d/99-pitft.conf                  |   5 -
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |   6 +-
 .../0001-ASoC-Add-BCM2708-fixes.patch              | 263 ---------------------
 ...ng-lock-from-atomic-context-in-i2c-driver.patch | 235 ------------------
 recipes-kernel/linux/linux-raspberrypi.inc         |   2 +
 recipes-kernel/linux/linux-raspberrypi_3.14.bb     |  11 -
 12 files changed, 30 insertions(+), 518 deletions(-)
 create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/98-pitft.conf
 create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-calibration.conf
 delete mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-3.14/0001-ASoC-Add-BCM2708-fixes.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-3.14/0002-Fix-grabbing-lock-from-atomic-context-in-i2c-driver.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.14.bb

-- 
1.9.1


