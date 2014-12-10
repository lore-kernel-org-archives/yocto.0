Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B60BE0093A; Wed, 10 Dec 2014 04:12:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB520E00928
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 04:12:13 -0800 (PST)
Received: from localhost.localdomain (unknown [78.10.193.111])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 3D1F5427934;
	Wed, 10 Dec 2014 13:12:11 +0100 (CET)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: yocto@yoctoproject.org, Andrei Gherzan <andrei@gherzan.ro>,
	Dan McGregor <dan.mcgregor@usask.ca>, Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 10 Dec 2014 13:12:03 +0100
Message-Id: <1418213525-1202-1-git-send-email-maciej.borzecki@open-rnd.pl>
X-Mailer: git-send-email 1.9.3
Cc: Maciek Borzecki <maciek.borzecki@gmail.com>
Subject: [meta-raspberrypi][PATCH 0/2] wic support
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
X-List-Received-Date: Wed, 10 Dec 2014 12:12:20 -0000

The patch series adds support for wic image build tool. The patches allow for a
bootable SD card image to be built with wic, without any additional changes.

The first patch defines an IMAGE_BOOT_FILES variable that will pick up all of
bcm2835 boot files and the kernel file (renaming it to kernel.img). The patch
uses glob pattern and thus depends on a patch series posted here:
http://lists.openembedded.org/pipermail/openembedded-core/2014-December/099732.html

The second patch adds a kickstart file that mirrors the layout defined in
sdcard_image-rpi.bbclass. Note that this patch is mainly for reference, as the
default sdimage-bootpart.wks from Poky will also produce a bootable image.

Maciej Borzecki (2):
  raspberrypi.conf: add IMAGE_BOOT_FILES
  sdimage-raspberrypi.wks: kickstart image definition

 conf/machine/raspberrypi.conf                        | 2 ++
 scripts/lib/image/canned-wks/sdimage-raspberrypi.wks | 6 ++++++
 2 files changed, 8 insertions(+)
 create mode 100644 scripts/lib/image/canned-wks/sdimage-raspberrypi.wks

-- 
1.9.3


