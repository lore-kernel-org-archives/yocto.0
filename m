Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0827AE0047F; Sun, 19 Jul 2015 02:11:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-05.atm.binero.net (vsp-authed02.binero.net
	[195.74.38.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E381E0047F
	for <yocto@yoctoproject.org>; Sun, 19 Jul 2015 02:11:26 -0700 (PDT)
X-Halon-ID: 29c6eb66-2df6-11e5-8d85-005056916f53
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Sun, 19 Jul 2015 11:11:38 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Sun, 19 Jul 2015 11:11:24 +0200
Message-Id: <cover.1437296854.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/2] More package updates
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
X-List-Received-Date: Sun, 19 Jul 2015 09:11:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The following changes since commit c8532df1c2e4812b3520d32ed49be943bea2edd9:

  If SERIAL_CONSOLE is already define by another layer, this value may not be good. (2015-06-05 16:38:14 +0200)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib petmab/rpi_redmine_60_more_updates
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_redmine_60_more_updates

Petter Mabäcker (2):
  omxplayer: Bump SRCREV
  wiringpi: Bump SRCREV

 .../0001-Add-initial-cross-compile-support.patch   | 429 +++++++++++++++++++++
 .../wiringPi/files/Makefiles-install.patch         | 202 ----------
 recipes-devtools/wiringPi/wiringpi_git.bb          |  10 +-
 recipes-multimedia/omxplayer/omxplayer_git.bb      |   4 +-
 4 files changed, 437 insertions(+), 208 deletions(-)
 create mode 100644 recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-support.patch
 delete mode 100644 recipes-devtools/wiringPi/files/Makefiles-install.patch

-- 
1.9.1


