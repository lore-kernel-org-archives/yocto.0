Return-Path: <Yang.Shi@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39950E0059A
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 15:17:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q39MH75u021954
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 Apr 2012 15:17:07 -0700 (PDT)
Received: from localhost.localdomain (147.11.152.86) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 9 Apr 2012 15:17:07 -0700
From: Yang Shi <yang.shi@windriver.com>
To: <yocto@yoctoproject.org>, <dvhart@linux.intel.com>,
	<bruce.ashfield@windriver.com>
Date: Mon, 9 Apr 2012 15:15:53 -0700
Message-ID: <1334009754-3012-2-git-send-email-yang.shi@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1334009754-3012-1-git-send-email-yang.shi@windriver.com>
References: <1334009754-3012-1-git-send-email-yang.shi@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/2] initrdscripts: fix init-live.sh and use unionfs
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
X-List-Received-Date: Mon, 09 Apr 2012 22:17:08 -0000
Content-Type: text/plain

[YOCTO #1487]

When booting up with liveCD image, init scripts can't work well on read-only filesystem. Unionfs,
which is supported in Yocto kernel, allows a filesystem to appear as writeable, but without
actually allowing writes to change the filesystem.

Use unionfs to mount rootfs and make root file system can be writen when using liveCD to boot up.
Set UNION_FS variable depending on kernel config, so that it can work with kernel which doesn't
have unionfs feature.

Signed-off-by: Yang Shi <yang.shi@windriver.com>
---
 meta/recipes-core/initrdscripts/files/init-live.sh |   23 ++++++++++++++++---
 .../initrdscripts/initramfs-live-boot_1.0.bb       |    9 +++++++-
 2 files changed, 27 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-core/initrdscripts/files/init-live.sh b/meta/recipes-core/initrdscripts/files/init-live.sh
index eb5ab5b..737dae4 100644
--- a/meta/recipes-core/initrdscripts/files/init-live.sh
+++ b/meta/recipes-core/initrdscripts/files/init-live.sh
@@ -7,6 +7,7 @@ ROOT_IMAGE="rootfs.img"
 MOUNT="/bin/mount"
 UMOUNT="/bin/umount"
 ISOLINUX=""
+UNIONFS="no"
 
 early_setup() {
     mkdir /proc
@@ -89,17 +90,31 @@ case $label in
 	mkdir $ROOT_MOUNT
 	mknod /dev/loop0 b 7 0 2>/dev/null
 
-	if ! $MOUNT -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE $ROOT_MOUNT ; then
-	    fatal "Couldnt mount rootfs image"
+	
+	if [ "$UNIONFS" = "yes" ]; then
+	    mkdir /rootfs-tmp
+
+	    if ! $MOUNT -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE /rootfs-tmp ; then
+		fatal "Could not mount rootfs image"
+	    else
+		mkdir /cow
+		mount -t tmpfs -o rw,noatime,mode=755 tmpfs /cow
+		mount -t unionfs -o dirs=/cow:/rootfs-tmp=ro unionfs $ROOT_MOUNT
+		boot_live_root
+	    fi
 	else
-	    boot_live_root
+	    if ! $MOUNT -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE $ROOT_MOUNT ; then
+		fatal "Could not mount rootfs image"
+	    else
+		boot_live_root
+	    fi
 	fi
 	;;
     install)
 	if [ -f /media/$i/$ISOLINUX/$ROOT_IMAGE ] ; then
 	    ./install.sh $i/$ISOLINUX $ROOT_IMAGE $video_mode $vga_mode
 	else
-	    fatal "Couldnt find install script"
+	    fatal "Could not find install script"
 	fi
 
 	# If we're getting here, we failed...
diff --git a/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb b/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb
index e85a0e1..f7f0c9d 100644
--- a/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb
+++ b/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb
@@ -2,10 +2,17 @@ DESCRIPTION = "A live image init script"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 RDEPENDS = "udev"
+DEPENDS = "virtual/kernel"
 SRC_URI = "file://init-live.sh"
 
-PR = "r7"
+PR = "r8"
 
+do_compile() {
+	if grep -q "CONFIG_UNION_FS=y" ${STAGING_KERNEL_DIR}/.config; then
+		sed -i 's/UNIONFS="no"/UNIONFS="yes"/g' ${WORKDIR}/init-live.sh
+	fi
+}
+ 
 do_install() {
         install -m 0755 ${WORKDIR}/init-live.sh ${D}/init
 }
-- 
1.7.5.4


