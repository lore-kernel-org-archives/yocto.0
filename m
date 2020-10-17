Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web12.2931.1602957831471307671
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eNU7qlqP;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id ds1so3049190pjb.5
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=uu7Oe3wGggZXSqyCpr6MgBCF0nZ8Bttz+zPPTYBu/CM=;
        b=eNU7qlqPSuR1TepIgNvsh/M0jY/Mo50kty0IqpDY1Do8Hu/pWpg7csI21qoRImhhNY
         EsW3i4B5BpjsDyTwmCCevk4mBE0ofpZ+VrHFZkq4A7M4XCYAywIhAOGmw1/w6b1iXLVo
         GUkgDLpItyMwi0L+mlWxOZDoun5nssbZOzcRq83BseTUY6Uip0ttuX3bbneyTY5bt8g6
         63PwhB/98d8xe1IH5C55hQtF4r6C/Rod+EQRDNjnQxt26YSAQCjDB66B9jAaraZVa8cZ
         ipbu/SVhpL+ZSr984nWaLh/RaEdorRFTnUUDYx1rbMRsT35HmuOh5pweyb/97+BehAsy
         bcdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=uu7Oe3wGggZXSqyCpr6MgBCF0nZ8Bttz+zPPTYBu/CM=;
        b=T3AT8YanD2fhRW9pdzp4XtIdvLVz2Wya/N3DGhl7ifo5I+bXrE1WJOzcHA5VmMvOrO
         4P2Ecopl1L+3jeq4H6JMjMnDs7t3G8Mfroqb2LMj06AeXOsiHud7jKqP/9sVk2ggyH0A
         sEVZN+9s4Arib9QKubWRi6e0PpPBvT6n4mSEYI/Qml5ahgbopnyl8OWzsOSFB3RB65cK
         6tLO/FTYmWqFqIWF+5wZNuR59OPIAwsPurPvQlzP200obmJpOJkC7YQXXEPXqa+6FeeK
         gsG66YvVs2w7Hi6bG+LHocR6o5j5Lk0ugl9XLDO1VZ9HrynD/5ATbcbZv+MkPsoWAAyj
         cGbw==
X-Gm-Message-State: AOAM531HjP7UhhWVl+fnCBIwjEbO43nZU8y71Em3pua65YsAQcYnpShJ
	2emPANJpEvkn2Fu146H0deD1rS6nj5E=
X-Google-Smtp-Source: ABdhPJwwoZFuQkvzi6xw02jCJhMsJlDwwMHqp0IZzp7Z9pO1clCqvMjEOyIzZu6rTE69sMYQIfaLLw==
X-Received: by 2002:a17:902:9a87:b029:d2:1ec0:4373 with SMTP id w7-20020a1709029a87b02900d21ec04373mr9679349plp.40.1602957830833;
        Sat, 17 Oct 2020 11:03:50 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:50 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 15/32] dm-verity-image-initramfs: Use initramfs-framework
Date: Sat, 17 Oct 2020 11:03:12 -0700
Message-Id: <1e1944d13c2a9d41ef58ffffdec2df6a4e08b9f3.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>

Switch from this layer's initramfs-dm-verity recipe to poky-provided
initramfs-framework suite to manage veritysetup et al.

This commit also removes initramfs-dm-verity recipe which is not
referred from elsewhere in this meta layer.

Also update the install path of dm-verity.env from /usr/share to
/usr/share/misc in order to better comply with FHS3.0, see
https://refspecs.linuxfoundation.org/FHS_3.0/fhs/ch04s11.html#usrsharemiscMiscellaneousArchitecture

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 45e8b20cd022eb7b20d72c23db9fcc6824f08c7a)
---
 .../images/dm-verity-image-initramfs.bb       |  5 +-
 .../initrdscripts/initramfs-dm-verity.bb      | 13 ------
 .../initramfs-dm-verity/init-dm-verity.sh     | 46 -------------------
 3 files changed, 3 insertions(+), 61 deletions(-)
 delete mode 100644 recipes-core/initrdscripts/initramfs-dm-verity.bb
 delete mode 100644 recipes-core/initrdscripts/initramfs-dm-verity/init-dm-verity.sh

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-core/images/dm-verity-image-initramfs.bb
index e791c19..6a1058d 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -4,7 +4,8 @@ DESCRIPTION = "Simple initramfs image for mounting the rootfs over the verity de
 IMAGE_FEATURES = ""
 
 PACKAGE_INSTALL = " \
-    initramfs-dm-verity \
+    initramfs-module-dmverity \
+    initramfs-module-udev \
     base-files \
     busybox \
     util-linux-mount \
@@ -24,6 +25,6 @@ IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"
 inherit core-image
 
 deploy_verity_hash() {
-    install -D -m 0644 ${STAGING_VERITY_DIR}/${DM_VERITY_IMAGE}.${DM_VERITY_IMAGE_TYPE}.verity.env ${IMAGE_ROOTFS}${datadir}/dm-verity.env
+    install -D -m 0644 ${STAGING_VERITY_DIR}/${DM_VERITY_IMAGE}.${DM_VERITY_IMAGE_TYPE}.verity.env ${IMAGE_ROOTFS}${datadir}/misc/dm-verity.env
 }
 IMAGE_PREPROCESS_COMMAND += "deploy_verity_hash;"
diff --git a/recipes-core/initrdscripts/initramfs-dm-verity.bb b/recipes-core/initrdscripts/initramfs-dm-verity.bb
deleted file mode 100644
index b614956..0000000
--- a/recipes-core/initrdscripts/initramfs-dm-verity.bb
+++ /dev/null
@@ -1,13 +0,0 @@
-SUMMARY = "Simple init script that uses devmapper to mount the rootfs in read-only mode protected by dm-verity"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-
-SRC_URI = "file://init-dm-verity.sh"
-
-do_install() {
-    install -m 0755 ${WORKDIR}/init-dm-verity.sh ${D}/init
-    install -d ${D}/dev
-    mknod -m 622 ${D}/dev/console c 5 1
-}
-
-FILES_${PN} = "/init /dev/console"
diff --git a/recipes-core/initrdscripts/initramfs-dm-verity/init-dm-verity.sh b/recipes-core/initrdscripts/initramfs-dm-verity/init-dm-verity.sh
deleted file mode 100644
index 307d2c7..0000000
--- a/recipes-core/initrdscripts/initramfs-dm-verity/init-dm-verity.sh
+++ /dev/null
@@ -1,46 +0,0 @@
-#!/bin/sh
-
-PATH=/sbin:/bin:/usr/sbin:/usr/bin
-RDEV=""
-ROOT_DIR="/new_root"
-
-mkdir -p /proc
-mkdir -p /sys
-mkdir -p /run
-mkdir -p /tmp
-mount -t proc proc /proc
-mount -t sysfs sysfs /sys
-mount -t devtmpfs none /dev
-
-udevd --daemon
-udevadm trigger --type=subsystems --action=add
-udevadm trigger --type=devices --action=add
-udevadm settle --timeout=10
-
-for PARAM in $(cat /proc/cmdline); do
-	case $PARAM in
-		root=*)
-			RDEV=${PARAM#root=}
-			;;
-	esac
-done
-
-if ! [ -b $RDEV ]; then
-	echo "Missing root command line argument!"
-	exit 1
-fi
-
-case $RDEV in
-	UUID=*)
-		RDEV=$(realpath /dev/disk/by-uuid/${RDEV#UUID=})
-		;;
-esac
-
-. /usr/share/dm-verity.env
-
-echo "Mounting $RDEV over dm-verity as the root filesystem"
-
-veritysetup --data-block-size=1024 --hash-offset=$DATA_SIZE create rootfs $RDEV $RDEV $ROOT_HASH
-mkdir -p $ROOT_DIR
-mount -o ro /dev/mapper/rootfs $ROOT_DIR
-exec switch_root $ROOT_DIR /sbin/init
-- 
2.17.1

