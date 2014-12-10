Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B858E0093A; Wed, 10 Dec 2014 04:12:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCC3CE0092E
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 04:12:13 -0800 (PST)
Received: from localhost.localdomain (unknown [78.10.193.111])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id C3AA842A390;
	Wed, 10 Dec 2014 13:12:12 +0100 (CET)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: yocto@yoctoproject.org, Andrei Gherzan <andrei@gherzan.ro>,
	Dan McGregor <dan.mcgregor@usask.ca>, Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 10 Dec 2014 13:12:05 +0100
Message-Id: <1418213525-1202-3-git-send-email-maciej.borzecki@open-rnd.pl>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1418213525-1202-1-git-send-email-maciej.borzecki@open-rnd.pl>
References: <1418213525-1202-1-git-send-email-maciej.borzecki@open-rnd.pl>
Cc: Maciek Borzecki <maciek.borzecki@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/2] sdimage-raspberrypi.wks: kickstart image definition
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
X-List-Received-Date: Wed, 10 Dec 2014 12:12:21 -0000

Although the sdimage-bootpart.wks kickstrt file in Poky works
fine with Raspberry Pi, this patch adds a kickstart file that
mirrors sdcard_image-rpi.bbclass layout.

Signed-off-by: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
Signed-off-by: Maciek Borzecki <maciek.borzecki@gmail.com>
---
 scripts/lib/image/canned-wks/sdimage-raspberrypi.wks | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 scripts/lib/image/canned-wks/sdimage-raspberrypi.wks

diff --git a/scripts/lib/image/canned-wks/sdimage-raspberrypi.wks b/scripts/lib/image/canned-wks/sdimage-raspberrypi.wks
new file mode 100644
index 0000000..353daac
--- /dev/null
+++ b/scripts/lib/image/canned-wks/sdimage-raspberrypi.wks
@@ -0,0 +1,6 @@
+# short-description: Create Raspberry Pi SD card image
+# long-description: Creates a partitioned SD card image for use with
+# Raspberry Pi. Boot files are located in the first vfat partition.
+
+part /boot --source bootimg-partition --ondisk mmcblk --fstype=vfat --label boot --active --align 4096 --size 20
+part / --source rootfs --ondisk mmcblk --fstype=ext4 --label root --align 4096
-- 
1.9.3


