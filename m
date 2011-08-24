Return-Path: <liming.wang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35E45E0071A
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2011 02:04:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7O94vjw019915
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 24 Aug 2011 02:04:57 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.211) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 24 Aug 2011 02:04:57 -0700
From: Liming Wang <liming.wang@windriver.com>
To: <Bruce.Ashfield@windriver.com>
Date: Wed, 24 Aug 2011 16:48:27 +0800
Message-ID: <1314175707-9214-2-git-send-email-liming.wang@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1314175707-9214-1-git-send-email-liming.wang@windriver.com>
References: <1314175707-9214-1-git-send-email-liming.wang@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: [PATCH 1/1] script/runqemu: change boot command line for qemuppc
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 24 Aug 2011 09:04:58 -0000
Content-Type: text/plain

Because qemuppc has no graphic emulation, remove console=tty0
and make it run into 3 run level. This can reduce boot time
for qemuppc booting.

Signed-off-by: Liming Wang <liming.wang@windriver.com>
---
 scripts/runqemu-internal |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/runqemu-internal b/scripts/runqemu-internal
index c15632d..883fa5b 100755
--- a/scripts/runqemu-internal
+++ b/scripts/runqemu-internal
@@ -384,7 +384,7 @@ if [ "$MACHINE" = "qemuppc" ]; then
     BIOS=powerpc_rom.bin
     QEMU_UI_OPTIONS="$QEMU_UI_OPTIONS -nographic"
     if [ "$FSTYPE" = "ext3" -o "$FSTYPE" = "btrfs" ]; then
-        KERNCMDLINE="root=/dev/hda rw console=ttyS0 console=tty0 $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
+        KERNCMDLINE="root=/dev/hda rw console=ttyS0 3 $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
         QEMUOPTIONS="$QEMU_NETWORK_CMD -cpu $CPU_SUBTYPE -M $MACHINE_SUBTYPE -bios $BIOS -hda $ROOTFS -no-reboot $QEMU_UI_OPTIONS"
     fi
     if [ "$FSTYPE" = "nfs" ]; then
@@ -393,7 +393,7 @@ if [ "$MACHINE" = "qemuppc" ]; then
             cleanup
             return
         fi
-        KERNCMDLINE="root=/dev/nfs console=ttyS0 console=tty0 nfsroot=$NFS_SERVER:$NFS_DIR,$UNFS_OPTS rw $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
+        KERNCMDLINE="root=/dev/nfs console=ttyS0 3 nfsroot=$NFS_SERVER:$NFS_DIR,$UNFS_OPTS rw $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
         QEMUOPTIONS="$QEMU_NETWORK_CMD -cpu $CPU_SUBTYPE -M $MACHINE_SUBTYPE -bios $BIOS -no-reboot $QEMU_UI_OPTIONS"
     fi
 fi
-- 
1.7.0.4


