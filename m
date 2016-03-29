Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E60EE00C29; Tue, 29 Mar 2016 08:04:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-02.atm.binero.net (bin-mail-out-06.binero.net
	[195.74.38.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7714CE00951
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 08:04:19 -0700 (PDT)
X-Halon-ID: 7f717ee1-f5bf-11e5-aff0-005056917f90
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.localdomain (unknown [78.78.107.132])
	by bin-vsp-out-02.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Tue, 29 Mar 2016 17:04:12 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Tue, 29 Mar 2016 17:04:07 +0200
Message-Id: <1459263851-32643-1-git-send-email-petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/4] Various upgrade/fixes from Technux
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
X-List-Received-Date: Tue, 29 Mar 2016 15:04:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Various fixes from Technux, with focus on PiTFT28 resistive support and
Official Raspberry Pi 7 inch touchscreen enablers.

Petter Mabäcker (4):
  pitft: Add support for pitft28r
  rpi-base.inc: Remove deprecated MACHINE_FEATURES
  rpi-base.inc: Add overlay for rpi-ft5406
  .gitignore: Ignore some additional files

 .gitignore                                                          | 2 ++
 README                                                              | 1 +
 conf/machine/include/rpi-base.inc                                   | 4 +++-
 recipes-bsp/bootfiles/rpi-config_git.bb                             | 6 ++++++
 .../xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/98-pitft.conf  | 5 +++++
 .../xserver-xf86-config/rpi/xorg.conf.d/99-calibration.conf         | 6 ++++++
 .../xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf  | 5 -----
 recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend      | 6 ++++--
 recipes-kernel/linux/linux-raspberrypi.inc                          | 2 ++
 9 files changed, 29 insertions(+), 8 deletions(-)
 create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/98-pitft.conf
 create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-calibration.conf
 delete mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf

-- 
1.9.1


