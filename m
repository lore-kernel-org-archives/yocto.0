Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8B50E00B52; Thu, 27 Aug 2015 23:27:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (bin-mail-out-06.binero.net
	[195.74.38.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F154AE00474
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2015 23:27:13 -0700 (PDT)
X-Halon-ID: cfa866ff-4d4d-11e5-b213-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Fri, 28 Aug 2015 08:27:09 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Fri, 28 Aug 2015 08:27:15 +0200
Message-Id: <cover.1440742765.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/1] pi-blaster: Bump SRCREV
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
X-List-Received-Date: Fri, 28 Aug 2015 06:27:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The following changes since commit 17dad9328b100beda1cf870c9075e509b5cbfa90:

  README: Add extra iformation on creating/sending patches using git (2015-08-10 23:37:14 +0200)

are available in the git repository at:

  https://github.com/Technux/meta-raspberrypi/commit/f2a71b6959484f9a6d4c60bb28b7b47b13f57607

Petter Mabäcker (1):
  pi-blaster: Bump SRCREV

 ...ndle-install-data-hook-when-cross-compile.patch | 54 ----------------------
 recipes-devtools/pi-blaster/pi-blaster.inc         |  1 -
 recipes-devtools/pi-blaster/pi-blaster_git.bb      |  2 +-
 3 files changed, 1 insertion(+), 56 deletions(-)
 delete mode 100644 recipes-devtools/pi-blaster/files/0001-handle-install-data-hook-when-cross-compile.patch

-- 
1.9.1


