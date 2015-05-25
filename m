Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E735AE00A00; Mon, 25 May 2015 07:59:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-05.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30A2BE0095C
	for <yocto@yoctoproject.org>; Mon, 25 May 2015 07:59:29 -0700 (PDT)
X-Halon-ID: a3e28024-02ee-11e5-b72b-005056916f53
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.localdomain (unknown [95.197.1.175])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Mon, 25 May 2015 16:59:27 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Mon, 25 May 2015 16:59:20 +0200
Message-Id: <cover.1432564621.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCHv2 0/2] kernel fixes
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
X-List-Received-Date: Mon, 25 May 2015 14:59:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The following changes since commit 6ef9d94a2c2588dcefe442577ef6ae5bbe722dec:

  linux-raspberrypi: Update 3.12 branch to latest (2015-05-18 00:48:49 +0200)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib petmab/rpi_kernel_fixes_dts_v2
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_kernel_fixes_dts_v2

Petter Mabäcker (2):
  devicetree: auto-disable dts for old kernels
  README: fix outdated device tree info

 README                                     |  3 ++-
 classes/linux-raspberrypi-base.bbclass     | 39 ++++++++++++++++++++++++++++++
 classes/sdcard_image-rpi.bbclass           | 15 +++++++-----
 recipes-kernel/linux/linux-raspberrypi.inc |  4 ++-
 4 files changed, 53 insertions(+), 8 deletions(-)
 create mode 100644 classes/linux-raspberrypi-base.bbclass

-- 
1.9.1


