Return-Path: <denis@denix.org>
Received: from vms173025pub.verizon.net (vms173025pub.verizon.net
	[206.46.173.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2366AE00B8C
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 10:08:52 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173025.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N43001W70YR1SF0@vms173025.mailsrvcs.net> for
	yocto@yoctoproject.org; Tue, 15 Apr 2014 12:08:51 -0500 (CDT)
Received: from localhost.localdomain (elrond [192.168.0.7])
	by gandalf.denix.org (Postfix) with ESMTP id 5C96F20182; Tue,
	15 Apr 2014 13:08:51 -0400 (EDT)
From: Denys Dmytriyenko <denis@denix.org>
To: yocto@yoctoproject.org
Date: Tue, 15 Apr 2014 13:08:44 -0400
Message-id: <1397581724-20576-2-git-send-email-denis@denix.org>
X-Mailer: git-send-email 1.9.2
In-reply-to: <1397581724-20576-1-git-send-email-denis@denix.org>
References: <1397581724-20576-1-git-send-email-denis@denix.org>
Cc: Denys Dmytriyenko <denys@ti.com>
Subject: [not-for-merge][PATCH 2/2] beaglebone: switch default kernel format to zImage
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
X-List-Received-Date: Tue, 15 Apr 2014 17:08:55 -0000

From: Denys Dmytriyenko <denys@ti.com>

Requires U-boot 2013.10+

Signed-off-by: Denys Dmytriyenko <denys@ti.com>
---
 meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
index 4263715..7ce2563 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -24,7 +24,7 @@ SERIAL_CONSOLE = "115200 ttyO0"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "3.14%"
 
-KERNEL_IMAGETYPE = "uImage"
+KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
 KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
 
-- 
1.9.2


