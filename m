Return-Path: <Jackie.Huang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFF9CE0088E
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2014 22:17:41 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0M6HeHe004616
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2014 22:17:40 -0800 (PST)
Received: from pek-kkang-d2.wrs.com (128.224.163.135) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Tue, 21 Jan 2014 22:17:40 -0800
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>, <Xin.Ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Wed, 22 Jan 2014 14:17:52 +0800
Message-ID: <1390371472-17124-1-git-send-email-jackie.huang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] udev/init: fix the invalid binary path
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
X-List-Received-Date: Wed, 22 Jan 2014 06:17:49 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

The invalid binary path causes failure:
udevd[102]: starting version 182
/etc/rcS.d/S04udev: line 106: /usr/bin/udevadm: No such file or directory

use the command 'udevadm' directly in the init just as the oe-core one does.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 recipes-core/udev/udev/init |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/recipes-core/udev/udev/init b/recipes-core/udev/udev/init
index a96638f..29146ec 100644
--- a/recipes-core/udev/udev/init
+++ b/recipes-core/udev/udev/init
@@ -103,13 +103,13 @@ case "$1" in
     echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug
     @UDEVD@ -d
 
-    /usr/bin/udevadm control --env=STARTUP=1
+    udevadm control --env=STARTUP=1
     if [ "$not_first_boot" != "" ];then
-            /usr/bin/udevadm trigger --action=add --subsystem-nomatch=tty --subsystem-nomatch=mem --subsystem-nomatch=vc --subsystem-nomatch=vtconsole --subsystem-nomatch=misc --subsystem-nomatch=dcon --subsystem-nomatch=pci_bus  --subsystem-nomatch=graphics	 --subsystem-nomatch=backlight --subsystem-nomatch=video4linux	--subsystem-nomatch=platform
-            (/usr/bin/udevadm settle --timeout=10; /usr/bin/udevadm control --env=STARTUP=)&
+            udevadm trigger --action=add --subsystem-nomatch=tty --subsystem-nomatch=mem --subsystem-nomatch=vc --subsystem-nomatch=vtconsole --subsystem-nomatch=misc --subsystem-nomatch=dcon --subsystem-nomatch=pci_bus  --subsystem-nomatch=graphics	 --subsystem-nomatch=backlight --subsystem-nomatch=video4linux	--subsystem-nomatch=platform
+            (udevadm settle --timeout=10; udevadm control --env=STARTUP=)&
     else
-            /usr/bin/udevadm trigger --action=add
-            /usr/bin/udevadm settle
+            udevadm trigger --action=add
+            udevadm settle
     fi
 
     test ! -x /sbin/restorecon || /sbin/restorecon -F /dev
-- 
1.7.9.5


