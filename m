Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C5C4E00810; Wed, 11 Mar 2015 12:21:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48D46E0034E
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 12:21:04 -0700 (PDT)
X-Halon-ID: c408066d-c823-11e4-a4af-005056916f53
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.localdomain (unknown [95.199.204.4])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 20:21:06 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Wed, 11 Mar 2015 20:20:44 +0100
Message-Id: <a012dd1e7cd803c50cfffe97a56d23c850855099.1426101237.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426101237.git.petter@technux.se>
References: <cover.1426101237.git.petter@technux.se>
In-Reply-To: <cover.1426101237.git.petter@technux.se>
References: <cover.1426101237.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/1] xserver-xf86-config: add rpi2 awareness
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

Use a MACHINEOVERRIDE that is visible for both raspberrypi
and raspberrypi2.

[Bug #52]

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 .../xorg-xserver/xserver-xf86-config/{raspberrypi => rpi}/xorg.conf       | 0
 .../xserver-xf86-config/{raspberrypi => rpi}/xorg.conf.d/10-evdev.conf    | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename recipes-graphics/xorg-xserver/xserver-xf86-config/{raspberrypi => rpi}/xorg.conf (100%)
 rename recipes-graphics/xorg-xserver/xserver-xf86-config/{raspberrypi => rpi}/xorg.conf.d/10-evdev.conf (100%)

diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config/raspberrypi/xorg.conf b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf
similarity index 100%
rename from recipes-graphics/xorg-xserver/xserver-xf86-config/raspberrypi/xorg.conf
rename to recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf
diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config/raspberrypi/xorg.conf.d/10-evdev.conf b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-evdev.conf
similarity index 100%
rename from recipes-graphics/xorg-xserver/xserver-xf86-config/raspberrypi/xorg.conf.d/10-evdev.conf
rename to recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-evdev.conf
-- 
1.9.1


