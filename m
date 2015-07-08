Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B66B5E00A45; Wed,  8 Jul 2015 09:10:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-03.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB3AFE009C5
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 09:10:42 -0700 (PDT)
X-Halon-ID: dd2ceedb-258b-11e5-8f60-0050569116f7
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-03.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 18:10:34 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Wed,  8 Jul 2015 18:10:33 +0200
Message-Id: <cover.1436366548.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/6] Update packages
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
X-List-Received-Date: Wed, 08 Jul 2015 16:10:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

See http://redmine.gherzan.com/issues/60 for additional info.

The following changes since commit c8532df1c2e4812b3520d32ed49be943bea2edd9:

  If SERIAL_CONSOLE is already define by another layer, this value may not be good. (2015-06-05 16:38:14 +0200)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib petmab/rpi_redmine_60_03
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_redmine_60_03

Petter Mabäcker (6):
  bcm: Bump SRCREV
  rpi-mkimage: Bump SRCREV
  bcm2835: update version to 1.44
  pi-blaster: bump to latest version
  rpi-gpio: update version to 0.5.11
  userland: bump SRCREV

 recipes-bsp/common/firmware.inc                    |  4 +-
 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb         |  2 +-
 .../bcm2835/{bcm2835_1.38.bb => bcm2835_1.44.bb}   |  4 +-
 ...ndle-install-data-hook-when-cross-compile.patch | 54 +++++++++++++++
 .../files/enable-autotools-support.patch           | 77 ----------------------
 recipes-devtools/pi-blaster/pi-blaster.inc         |  4 +-
 recipes-devtools/pi-blaster/pi-blaster_git.bb      |  2 +-
 .../{rpi-gpio_0.5.9.bb => rpi-gpio_0.5.11.bb}      |  4 +-
 recipes-graphics/userland/userland_git.bb          |  4 +-
 9 files changed, 66 insertions(+), 89 deletions(-)
 rename recipes-devtools/bcm2835/{bcm2835_1.38.bb => bcm2835_1.44.bb} (88%)
 create mode 100644 recipes-devtools/pi-blaster/files/0001-handle-install-data-hook-when-cross-compile.patch
 delete mode 100644 recipes-devtools/pi-blaster/files/enable-autotools-support.patch
 rename recipes-devtools/python/{rpi-gpio_0.5.9.bb => rpi-gpio_0.5.11.bb} (76%)

-- 
1.9.1


