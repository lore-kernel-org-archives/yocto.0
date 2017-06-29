Return-Path: <drew.moseley@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9C3BE00BD5; Wed, 28 Jun 2017 18:14:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [107.14.166.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81FCDE00BD5
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 18:14:52 -0700 (PDT)
Received: from [65.32.40.152] ([65.32.40.152:47378]
	helo=tobago.home.moseleynet.net)
	by cdptpa-omsmta01 (envelope-from <drew.moseley@mender.io>)
	(ecelerity 3.6.9.48312 r(Core:3.6.9.0)) with ESMTP
	id 45/FE-10880-B8454595; Thu, 29 Jun 2017 01:14:52 +0000
From: drew.moseley@mender.io
To: yocto@yoctoproject.org
Date: Wed, 28 Jun 2017 21:12:02 -0400
Message-Id: <cover.1498698415.git.drew.moseley@mender.io>
X-Mailer: git-send-email 2.7.4
X-RR-Connecting-IP: 107.14.168.6:25
Subject: [meta-chip][PATCH V3 0/4] Initial attempt at flashing instructions.
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
X-List-Received-Date: Thu, 29 Jun 2017 01:14:57 -0000

From: Drew Moseley <drew.moseley@mender.io>

* V3:

Cleanup README.

Add CHIP_UBI_PAGE_SIZE variable to reuse the data from the machine configuration.

* V2:

Updated README and layer dependencies.

Added error checking to flashing script

* V1:

This set of patches adds the native tools and target components needed to
reflash the CHIP boards.  Additionally a shell script is added to the deploy
directory showing how to kick off a flash update. It's not ideal as I've
hardcoded a max size for the UBI image into the script and didn't see much
of an alternative. It does function though.

Drew

The following changes since commit 0079e6ac10fc371d6f527270c23b887561f717aa:

  chip: Append to MACHINE_EXTRA_RRECOMMENDS rather than overwriting (2017-06-15 13:37:19 +0100)

are available in the git repository at:

  git@github.com:drewmoseley/meta-chip.git flashing-instructions-v3

for you to fetch changes up to 69920ec23cef400687a2a8c1ab1a825a911278d2:

  chip: Add chip-u-boot-scr recipe and flash script (2017-06-28 19:06:01 -0400)

----------------------------------------------------------------
Drew Moseley (4):
      chip: Make page size into a variable.
      u-boot-chip: Deploy the sunxi-spl-with-ecc.bin file.
      chip: Build sunxi-tools-native.
      chip: Add chip-u-boot-scr recipe and flash script

 README                                          | 94 ++++++++++++++++++++++++-
 conf/layer.conf                                 |  3 +
 conf/machine/chip.conf                          |  8 ++-
 recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb  | 89 +++++++++++++++++++++++
 recipes-bsp/chip-u-boot-scr/files/boot.cmd.full | 32 +++++++++
 recipes-bsp/chip-u-boot-scr/files/boot.cmd.in   | 43 +++++++++++
 recipes-bsp/u-boot/u-boot-chip_git.bb           |  7 ++
 7 files changed, 272 insertions(+), 4 deletions(-)
 create mode 100644 recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb
 create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.full
 create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.in

Drew Moseley (4):
  chip: Make page size into a variable.
  u-boot-chip: Deploy the sunxi-spl-with-ecc.bin file.
  chip: Build sunxi-tools-native.
  chip: Add chip-u-boot-scr recipe and flash script

 README                                          | 94 ++++++++++++++++++++++++-
 conf/layer.conf                                 |  3 +
 conf/machine/chip.conf                          |  8 ++-
 recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb  | 89 +++++++++++++++++++++++
 recipes-bsp/chip-u-boot-scr/files/boot.cmd.full | 32 +++++++++
 recipes-bsp/chip-u-boot-scr/files/boot.cmd.in   | 43 +++++++++++
 recipes-bsp/u-boot/u-boot-chip_git.bb           |  7 ++
 7 files changed, 272 insertions(+), 4 deletions(-)
 create mode 100644 recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb
 create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.full
 create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.in

-- 
2.7.4


