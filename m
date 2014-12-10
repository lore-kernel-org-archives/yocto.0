Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6A1FE0093A; Wed, 10 Dec 2014 04:12:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9F5EE00924
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 04:12:13 -0800 (PST)
Received: from localhost.localdomain (unknown [78.10.193.111])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 8BFBF42A7A4;
	Wed, 10 Dec 2014 13:12:12 +0100 (CET)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: yocto@yoctoproject.org, Andrei Gherzan <andrei@gherzan.ro>,
	Dan McGregor <dan.mcgregor@usask.ca>, Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 10 Dec 2014 13:12:04 +0100
Message-Id: <1418213525-1202-2-git-send-email-maciej.borzecki@open-rnd.pl>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1418213525-1202-1-git-send-email-maciej.borzecki@open-rnd.pl>
References: <1418213525-1202-1-git-send-email-maciej.borzecki@open-rnd.pl>
Cc: Maciek Borzecki <maciek.borzecki@gmail.com>
Subject: [meta-raspberrypi][PATCH 1/2] raspberrypi.conf: add IMAGE_BOOT_FILES
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
X-List-Received-Date: Wed, 10 Dec 2014 12:12:19 -0000

Add IMAGE_BOOT_FILES that defines a list of files to be placed in boot
partition. The variable is effectivey used with wic when building a SD
card image.

Signed-off-by: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
Signed-off-by: Maciek Borzecki <maciek.borzecki@gmail.com>
---
 conf/machine/raspberrypi.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index 1b3702f..732ba32 100644
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -35,3 +35,5 @@ MACHINE_EXTRA_RRECOMMENDS += " \
 
 # Set raspberrypi splash image
 SPLASH = "psplash-raspberrypi"
+
+IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* ${KERNEL_IMAGETYPE};kernel.img"
-- 
1.9.3


