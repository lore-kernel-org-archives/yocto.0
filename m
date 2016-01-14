Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56C40E00C08; Thu, 14 Jan 2016 08:41:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-02.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B2C9E00C02
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 08:40:55 -0800 (PST)
X-Halon-ID: 926df607-badd-11e5-8dda-005056917f90
Authorized-sender: petter@technux.se
Received: from localhost.localdomain (unknown [85.195.55.167])
	by bin-vsp-out-02.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Thu, 14 Jan 2016 17:40:51 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Thu, 14 Jan 2016 17:40:36 +0100
Message-Id: <1452789643-17903-1-git-send-email-petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v2 0/7] Various upgrade/fixes from Technux
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
X-List-Received-Date: Thu, 14 Jan 2016 16:41:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Various fixes from Technux, with focus on PiTFT support.

Major changes from v1 is that after feedback, MACHINE_FEATURES is used to
enable/disable pitft support instead of MACHINEOVERRIDES.

Petter Mabäcker (7):
  README: Add SPI bus chapter to content
  .gitignore: Ignore .swp files
  linux-raspberrypi: Update 4.1 recipe to 4.1.15
  rpi-config: I2C support
  rpi-base.inc: Allow MACHINE_FEATURES appends
  pitft: Add basic support for PiTFT
  pitft: Add PiTFT22 support

 .gitignore                                         |   1 +
 README                                             |  55 ++++++++---
 conf/machine/include/rpi-base.inc                  |   3 +-
 recipes-bsp/bootfiles/rpi-config_git.bb            |  17 +++-
 .../rpi/xorg.conf.d/99-pitft.conf                  |   5 +
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |  11 ++-
 recipes-kernel/linux/linux-raspberrypi.inc         |   6 +-
 ...dts-add-overlay-for-pitft22-in-linux-3.18.patch | 110 +++++++++++++++++++++
 .../0001-dts-add-overlay-for-pitft22.patch         | 110 +++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_3.18.bb     |   5 +-
 recipes-kernel/linux/linux-raspberrypi_4.1.bb      |   8 +-
 11 files changed, 308 insertions(+), 23 deletions(-)
 create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22.patch

-- 
1.9.1


