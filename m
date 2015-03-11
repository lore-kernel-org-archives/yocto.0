Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A82FE00825; Wed, 11 Mar 2015 12:21:09 -0700 (PDT)
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
Received: from bin-vsp-out-05.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A107E00754
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 12:21:04 -0700 (PDT)
X-Halon-ID: c371b7e5-c823-11e4-a4af-005056916f53
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.localdomain (unknown [95.199.204.4])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 20:21:05 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Wed, 11 Mar 2015 20:20:43 +0100
Message-Id: <cover.1426101237.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/1] xserver-xf86-config: add rpi2 awareness
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
X-List-Received-Date: Wed, 11 Mar 2015 19:21:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The following changes since commit 57c8e6bffbbef9b2331551093c3436303eb18386:

  rpi-base.inc: Include the RPI2 DTB (2015-03-01 22:43:40 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib petmab/rpi2_xserver_fix
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi2_xserver_fix

Petter Mabäcker (1):
  xserver-xf86-config: add rpi2 awareness

 .../xorg-xserver/xserver-xf86-config/{raspberrypi => rpi}/xorg.conf       | 0
 .../xserver-xf86-config/{raspberrypi => rpi}/xorg.conf.d/10-evdev.conf    | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename recipes-graphics/xorg-xserver/xserver-xf86-config/{raspberrypi => rpi}/xorg.conf (100%)
 rename recipes-graphics/xorg-xserver/xserver-xf86-config/{raspberrypi => rpi}/xorg.conf.d/10-evdev.conf (100%)

-- 
1.9.1


