Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F83AE00A54; Thu, 13 Aug 2015 06:12:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FA46E009D7
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 06:12:24 -0700 (PDT)
X-Halon-ID: ef175c8c-41bc-11e5-b1f7-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 15:12:22 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Thu, 13 Aug 2015 15:12:20 +0200
Message-Id: <cover.1439471046.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][fido][PATCH 0/4] Backport of various fixes
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
X-List-Received-Date: Thu, 13 Aug 2015 13:12:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Backport of various fixes and important updates (backward compatible) from
meta-raspberrypi:master to meta-raspberrypi:fido

The following changes since commit b896a7da70dd7a16ba7ffd664f7747cb37e1d142:

  .gitignore: Ignore some stuff (2015-03-12 22:20:51 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib petmab/rpi_fido_fixes
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_fido_fixes

Andrei Gherzan (1):
  rpi-default-providers: Let users overwrite the default providers

Khem Raj (1):
  userland: Fix POSIX compliance expectation

Petter Mabäcker (1):
  linux-raspberrypi: Update 3.18 branch to 3.18.11

Thomas Perrot (1):
  If SERIAL_CONSOLE is already define by another layer, this value may
    not be good.

 conf/machine/include/rpi-base.inc                  |  2 +-
 conf/machine/include/rpi-default-providers.inc     |  8 ++---
 .../userland/0001-Use-newer-POSIX-macro.patch      | 35 ++++++++++++++++++++++
 recipes-graphics/userland/userland_git.bb          |  1 +
 recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  8 ++---
 5 files changed, 44 insertions(+), 10 deletions(-)
 create mode 100644 recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch

-- 
1.9.1


