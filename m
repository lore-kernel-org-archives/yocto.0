Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F057BE00903; Mon, 11 Jan 2016 08:51:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_20,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.227 listed in list.dnswl.org]
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0941]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 Jan 2016 08:50:59 PST
Received: from bin-vsp-out-05.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EA98E0079A
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 08:50:58 -0800 (PST)
X-Halon-ID: 67a55177-b883-11e5-8d6c-005056916f53
Authorized-sender: petter@technux.se
Received: from localhost.localdomain (unknown [85.195.55.167])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Mon, 11 Jan 2016 17:50:22 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Mon, 11 Jan 2016 17:49:42 +0100
Message-Id: <1452530987-994-1-git-send-email-petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/5] Various upgrade/fixes from Technux
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
X-List-Received-Date: Mon, 11 Jan 2016 16:51:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Various fixes from Technux, with focus on PiTFT support.

Petter Mabäcker (5):
  .gitignore: Ignore .swp files
  linux-raspberrypi: Update 4.1 recipe to 4.1.15
  rpi-config: I2C support
  pitft: Add basic support for PiTFT
  pitft: Add PiTFT22 support

 .gitignore                                         |   1 +
 README                                             |  43 ++++++--
 conf/machine/include/rpi-base.inc                  |   1 +
 recipes-bsp/bootfiles/rpi-config_git.bb            |  26 +++++
 .../rpi/xorg.conf.d/99-pitft.conf                  |   5 +
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |   1 +
 recipes-kernel/linux/linux-raspberrypi.inc         |   1 +
 ...dts-add-overlay-for-pitft22-in-linux-3.18.patch | 110 +++++++++++++++++++++
 .../0001-dts-add-overlay-for-pitft22.patch         | 110 +++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_3.18.bb     |   5 +-
 recipes-kernel/linux/linux-raspberrypi_4.1.bb      |   8 +-
 11 files changed, 298 insertions(+), 13 deletions(-)
 create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22.patch

-- 
1.9.1


