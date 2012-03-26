Return-Path: <Yang.Shi@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9D18E011D1
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 14:20:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q2QLKLsZ017331
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Mar 2012 14:20:21 -0700 (PDT)
Received: from localhost.localdomain (147.11.152.86) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 26 Mar 2012 14:20:22 -0700
From: Yang Shi <yang.shi@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 26 Mar 2012 14:19:17 -0700
Message-ID: <1332796758-9702-2-git-send-email-yang.shi@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1332796758-9702-1-git-send-email-yang.shi@windriver.com>
References: <1332796758-9702-1-git-send-email-yang.shi@windriver.com>
MIME-Version: 1.0
Cc: dvhart@linux.intel.com
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
X-List-Received-Date: Mon, 26 Mar 2012 21:20:21 -0000
Content-Type: text/plain

[YOCTO #1487]

Use unionfs to mount rootfs and make root file system can be writen when using liveCD to boot up.
Set UNION_FS variable depending on kenrel config, so that it can work with kernel which doesn't
have unionfs feature.

Signed-off-by: Yang Shi <yang.shi@windriver.com>
---
 meta/recipes-core/initrdscripts/files/init-live.sh |   21 +++++++++++++++++--
 .../initrdscripts/initramfs-live-boot_1.0.bb       |    9 +++++++-
 2 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-core/initrdscripts/files/init-live.sh b/meta/recipes-core/initrdscripts/files/init-live.sh
index eb5ab5b..abaf16c 100644
--- a/meta/recipes-core/initrdscripts/files/init-live.sh
+++ b/meta/recipes-core/initrdscripts/files/init-live.sh
@@ -7,6 +7,7 @@ ROOT_IMAGE="rootfs.img"
 MOUNT="/bin/mount"
 UMOUNT="/bin/umount"
 ISOLINUX=""
+UNIONFS="no"
 
 early_setup() {
     mkdir /proc
@@ -89,10 +90,24 @@ case $label in
 	mkdir $ROOT_MOUNT
 	mknod /dev/loop0 b 7 0 2>/dev/null
 
-	if ! $MOUNT -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE $ROOT_MOUNT ; then
-	    fatal "Couldnt mount rootfs image"
+	
+	if [ "$UNIONFS" = "yes" ]; then
+	    mkdir /rootfs-tmp
+
+	    if ! $MOUNT -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE /rootfs-tmp ; then
+		fatal "Couldnt mount rootfs image"
+	    else
+		mkdir /cow
+		mount -t tmpfs -o rw,noatime,mode=755 tmpfs /cow
+		mount -t unionfs -o dirs=/cow:/rootfs-tmp=ro unionfs $ROOT_MOUNT
+		boot_live_root
+	    fi
 	else
-	    boot_live_root
+	    if ! $MOUNT -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE $ROOT_MOUNT ; then
+		fatal "Couldnt mount rootfs image"
+	    else
+		boot_live_root
+	    fi
 	fi
 	;;
     install)
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


