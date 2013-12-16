Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D42AE00798
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2013 12:37:55 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 36247F811E7; Mon, 16 Dec 2013 13:37:54 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from zeus.chez-thomas.org (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CC7F6F811E5;
	Mon, 16 Dec 2013 13:37:52 -0700 (MST)
From: Gary Thomas <gary@mlbassoc.com>
To: yocto@yoctoproject.org
Date: Mon, 16 Dec 2013 13:37:59 -0700
Message-Id: <1387226279-3963-1-git-send-email-gary@mlbassoc.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Gary Thomas <gary@mlbassoc.com>
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi: Drop 3.12.0
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
X-List-Received-Date: Mon, 16 Dec 2013 20:38:01 -0000

Remove old kernel - this version no longer builds as the
required revision has vanished in upstream, replaced by
3.12.4.

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 recipes-kernel/linux/linux-raspberrypi_3.12.0.bb |    6 ------
 1 file changed, 6 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.0.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
deleted file mode 100644
index 3631da5..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "839f349b6ed2a63a2bff0b5f0d718a7b07ca2316"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
-- 
1.7.9.5


