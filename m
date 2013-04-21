Return-Path: <richard@rpsys.net>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64B65E013C9
	for <yocto@yoctoproject.org>; Sun, 21 Apr 2013 08:22:10 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3LFMsFP017059; Sun, 21 Apr 2013 16:22:54 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id szu3SjuUfbyK; Sun, 21 Apr 2013 16:22:53 +0100 (BST)
Received: from ted (bebox.config [93.97.175.187] (may be forged))
	(authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3LFMmEh017053
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Sun, 21 Apr 2013 16:22:49 +0100
Received: from richard by ted with local (Exim 4.80)
	(envelope-from <richard@dan.rpsys.net>)
	id 1UTw5P-0003XD-Dy; Sun, 21 Apr 2013 16:21:51 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@yoctoproject.org
Date: Sun, 21 Apr 2013 16:21:50 +0100
Message-Id: <1366557710-13551-1-git-send-email-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] linux-libc-headers-raspberrypi: Drop, its unneeded and bad practise
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
X-List-Received-Date: Sun, 21 Apr 2013 15:22:10 -0000

If we have this recipe, it means the whole armv6 (or whichever tune) is chosen depends
on a machine specific recipe. This makes no sense as armX packages are meant to be
machine independent.

We've had this problem in other layers and it causes needed rebuilds of packages
when you switch machines since the sstate checksums change. These headers are just part
of the toolchain bootstrap process so "standard" kernel headers are fine. The kernel
header version does need to be later of equal to the kernel version but we're fine in
that regard since the core is on 3.8, the latest pi kernel is 3.6.

There is nothing special about these headers so lets remove them and use the standard
system provided recipe, avoding any rebuilds. I tested the various other recipes in
the layer and there doesn't seem to be any dependency on these headers.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../linux-libc-headers-raspberrypi_3.2.27.bb               |   12 ------------
 1 file changed, 12 deletions(-)
 delete mode 100644 recipes-kernel/linux-libc-headers/linux-libc-headers-raspberrypi_3.2.27.bb

diff --git a/recipes-kernel/linux-libc-headers/linux-libc-headers-raspberrypi_3.2.27.bb b/recipes-kernel/linux-libc-headers/linux-libc-headers-raspberrypi_3.2.27.bb
deleted file mode 100644
index a5964ab..0000000
--- a/recipes-kernel/linux-libc-headers/linux-libc-headers-raspberrypi_3.2.27.bb
+++ /dev/null
@@ -1,12 +0,0 @@
-require recipes-kernel/linux-libc-headers/linux-libc-headers.inc
-
-PR = "r0"
-
-PROVIDES = "linux-libc-headers"
-RPROVIDES_${PN}-dev = "linux-libc-headers-dev"
-RPROVIDES_${PN}-dbg = "linux-libc-headers-dbg"
-
-SRCREV = "10182a3bc434b27740f81c2b836a1af943060241"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27 \
-          "
-S = "${WORKDIR}/git"
-- 
1.7.10.4


