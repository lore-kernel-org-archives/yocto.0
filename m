Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EB25E00572
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2013 11:13:20 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 57FFBF811E7; Mon, 16 Dec 2013 12:13:17 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from zeus.chez-thomas.org (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id B1C7BF811E5;
	Mon, 16 Dec 2013 12:13:15 -0700 (MST)
From: Gary Thomas <gary@mlbassoc.com>
To: yocto@yoctoproject.org
Date: Mon, 16 Dec 2013 12:13:22 -0700
Message-Id: <1387221202-1702-1-git-send-email-gary@mlbassoc.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Gary Thomas <gary@mlbassoc.com>
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi: Add version 3.12.4+
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
X-List-Received-Date: Mon, 16 Dec 2013 19:13:24 -0000

This kernel enables camera video via the new 'bcm2835-v4l2' module.
Just add 'start_x=1' to your boot config.txt

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 recipes-kernel/linux/linux-raspberrypi_3.12.4.bb |    6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.4.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.4.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.4.bb
new file mode 100644
index 0000000..17025f2
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.12.4.bb
@@ -0,0 +1,6 @@
+SRCREV = "9fbb114990c409406ae20c56871727ff8d4fa6ca"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
-- 
1.7.9.5


