Return-Path: <abdelkhalek.mansouri@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4E1C282C5
	for <webhook@archiver.kernel.org>; Fri, 28 Feb 2025 23:14:19 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.211.1740784451323729958
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Feb 2025 15:14:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HDRh2L51;
 spf=pass (domain: gmail.com, ip: 209.85.221.50, mailfrom: abdelkhalek.mansouri@gmail.com)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-390f69f8083so386896f8f.0
        for <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2025 15:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740784449; x=1741389249; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vvwRKzuS/yJ/dWU7onGt75nbVz6hDhk0/mMszO/EBm8=;
        b=HDRh2L51N5XZVESfUmJKHkWODvNCq9gcN6lW6XNEb+XJC3gNh16d/w3gRqw2gUMMeN
         gXZUlPbiyucjjKF2FlB/menitfuFBBuf8fWF/SBYPdDyylDIYsUt3Cvgab/xufeIrXec
         RAJTkGUtrNOhbqgtKp4vXCPDQdUUE+eSALsBb2F9DBgkwJm0VzTkboJ3ZilHC1eVceRC
         kEDlp7Prt/xHCf30y88F6OUOslIyAG8sYDZBxK5QPufKnXlHDwMXIMb1yXuWowfzO3fW
         2wlWtSuzJKz97lnNW8sdDNXTZIDlv0RNv3vY6CLOQBIzHEwaDshxOk3DtaDaIfgoqOw0
         HHIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740784449; x=1741389249;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vvwRKzuS/yJ/dWU7onGt75nbVz6hDhk0/mMszO/EBm8=;
        b=mmjLH3VHJ4vsSy//vlyhyhU2BTQNvmJrrnjPT8M//hExvIOG5v6znKbsLOC4OWZ8La
         F/FH8ia0kaYLm844XEKP006/tDVHOKuxVnV28n2caJ7wN0HljV3xslZFsbpziMFTO2kn
         fSSncO3f+zKgJiqgL64c3aPx0aFAN6eGiuoc6xYUyITknaQK8asVpXDtwp7JRoOiOIQP
         Xsu7yJy78Ruhhpy/4Xy9xEwnpOyqUHf3xGqtnyqnD2Yvdkigrt5Iv+lAz5tlvc1d1ep5
         i8IjwNvuU+VZEEvhFtfT6IkV1ReXxL0/MIfHt7gGfLmjKNYltWHNKuo3ojtcS4u6TPFA
         rOJw==
X-Gm-Message-State: AOJu0Yyvj+SJXv9AeoZMJz3z4ISlHXi8DKG6lsNprole30DTrqVChhxn
	SI7afpeGlrJreNdRtMn/fr64Dr1Sf8YvMbH4sn/bcYmm8U1svz5ElJtcDQ==
X-Gm-Gg: ASbGnct9W0LUrx/52mz5/w/3mspDW3O99UVTz2viSopArH+PHpln/Q9gSYWw5EZvvbL
	HBrZ923TwNPkEtsjmDSwZCyW0DNytnjv6PCud+PUZVNdxnzsPcBjI14eLFqliNtFHn71PGFCIsK
	jsed+KOwih4GN8XDVL6PW4gZFhCbwUd6SNlMw411xvl1haUPIELpqxZlac5GVhBN5RLMYaD71V4
	YtfdyJG23oPEfK1of2xXWTjkEB4AfBKXHqwIbr4+AWhr5RyaqvQ3aPk+1Eutsu0LnfcAoIoJB9W
	cjOdG0gff1cbkBlfQYKtG2OXsWYXyl/bPPoqn7INSfIOYRkuv8//dcYi5xB7AQmZMnBCzgBFbiZ
	s3KBVmmIf9FuvHELtgWGQQzd7mxP7l5z239WxPocf
X-Google-Smtp-Source: AGHT+IEiF8lRplxpcQcLa0PY0RNnesi2YJgSKt+RpCkobad5k6MtcB88+8j6uubykTm/6k8tTw/iJw==
X-Received: by 2002:a05:6000:2a2:b0:390:f9a5:bd79 with SMTP id ffacd0b85a97d-390f9a5bf4amr79753f8f.26.1740784449071;
        Fri, 28 Feb 2025 15:14:09 -0800 (PST)
Received: from tns-ubuntu.TECHANDSTRAT.COM (89-89-71-101.abo.bbox.fr. [89.89.71.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b6ce3sm6365951f8f.43.2025.02.28.15.14.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 15:14:07 -0800 (PST)
From: Abdelkhalek Mansouri <abdelkhalek.mansouri@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: "abdelkhalek-mansouri" <abdelkhalek.mansouri@gmail.com>
Subject: [meta-raspberrypi][PATCH 1/2] Add support for A/B partition layout in rpi-sdimg class
Date: Sat,  1 Mar 2025 00:14:03 +0100
Message-ID: <20250228231404.2998-1-abdelkhalek.mansouri@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2025 23:14:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64897

From: "abdelkhalek-mansouri" <abdelkhalek.mansouri@gmail.com>

Description:

This patch introduces support for an A/B partition layout in the rpi-sdimg image creation
process, enabling dual root filesystem partitions. This enhancement allows for more robust and flexible
system updates by providing a fallback partition.

Key Changes:
New Variables Introduced:
ROOTFS_PARTITION_SIZE: Specifies the size of each root filesystem partition. The default value is set to 4 GB.
RPI_AB_PARTITION_LAYOUT: Determines the partition layout. The default value is 0, which indicates
a single root filesystem partition. Setting this variable to 1 enables the A/B partition layout.

Disk Layout:

Single Partition Layout:

0                      -> IMAGE_ROOTFS_ALIGNMENT         - reserved for other data
IMAGE_ROOTFS_ALIGNMENT -> BOOT_SPACE                     - bootloader and kernel
BOOT_SPACE             -> SDIMG_SIZE                     - rootfs

A/B Partition Layout:

0                       -> IMAGE_ROOTFS_ALIGNMENT           - reserved for other data
IMAGE_ROOTFS_ALIGNMENT  -> BOOT_SPACE                       - bootloader and kernel
BOOT_SPACE              -> ROOTFS_A                         - rootfs for partition A
ROOTFS_A                -> ROOTFS_B                         - rootfs for partition B

Signed-off-by: abdelkhalek-mansouri <abdelkhalek.mansouri@gmail.com>
Signed-off-by: abdelkhalek-mansouri <abdelkhalek.mansouri@gmail.com>
---
 classes/sdcard_image-rpi.bbclass | 100 +++++++++++++++++++++++++++----
 1 file changed, 89 insertions(+), 11 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index ddcd69d..7f719dd 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -21,6 +21,27 @@ inherit image_types
 # ^                        ^            ^                        ^
 # |                        |            |                        |
 # 0                      4MiB     4MiB + 48MiB       4MiB + 48Mib + SDIMG_ROOTFS
+#
+# In case of A/B symmetric setup:
+#
+# The disk layout used is:
+#
+#    0                       -> IMAGE_ROOTFS_ALIGNMENT           - reserved for other data
+#    IMAGE_ROOTFS_ALIGNEMENT -> BOOT_SPACE                       - bootloader and kernel
+#    BOOT_SPACE              -> ROOTFS_A                         - rootfs for partition A
+#    ROOTFS_A                -> ROOTFS_B                         - rootfs for partition B
+#                                                      Default Free space = 1.3x
+#                                                      Use IMAGE_OVERHEAD_FACTOR to add more space
+#                                                      <--------->
+#            4MiB              48MiB           ROOTFS_A                    ROOTFS_B
+# <-----------------------> <----------> <----------------------> <------------------>
+#  ------------------------ ------------ ------------------------ --------------------
+# | IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE | ROOTFS_PARTITION_A     | ROOTFS_PARTITION_B |
+#  ------------------------ ------------ ------------------------ --------------------
+# ^                        ^            ^                        ^                    ^
+# |                        |            |                        |                    |
+# 0                      4MiB     4MiB + 48MiB  4MiB + 48MiB + ROOTFS_A     4MiB + 48MiB + ROOTFS_A + ROOTFS_B
+
 
 # This image depends on the rootfs image
 IMAGE_TYPEDEP:rpi-sdimg = "${SDIMG_ROOTFS_TYPE}"
@@ -36,6 +57,13 @@ BOOT_SPACE ?= "49152"
 # Set alignment to 4MB [in KiB]
 IMAGE_ROOTFS_ALIGNMENT = "4096"
 
+# Set Rootfs partition size [in KiB] by default 4GB
+ROOTFS_PARTITION_SIZE ?= "4194304"
+
+# Variable to enable or disable A/B partiton layout for dual root filesystem setup
+# Set to 0 by default to use a single root filesystem layout
+RPI_AB_PARTITION_LAYOUT ?= "0"
+
 # Use an uncompressed ext3 by default as rootfs
 SDIMG_ROOTFS_TYPE ?= "ext3"
 SDIMG_ROOTFS = "${IMGDEPLOYDIR}/${IMAGE_LINK_NAME}.${SDIMG_ROOTFS_TYPE}"
@@ -75,23 +103,51 @@ IMAGE_CMD:rpi-sdimg () {
     # Align partitions
     BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)
     BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE_ALIGNED} - ${BOOT_SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
-    SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + $ROOTFS_SIZE)
 
-    echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNED} KiB and RootFS $ROOTFS_SIZE KiB"
+    if [ "${RPI_AB_PARTITION_LAYOUT}" = "0" ]; then
+        SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE})
+        echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNED} KiB and RootFS $ROOTFS_SIZE KiB"
+    else
+        ROOTFS_SIZE_ALIGNED=$(expr ${ROOTFS_SIZE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)
+        ROOTFS_SIZE_ALIGNED=$(expr ${ROOTFS_SIZE_ALIGNED} - ${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
+
+        if [ ${ROOTFS_SIZE_ALIGNED} > ${ROOTFS_PARTITION_SIZE} ]; then
+            ROOTFS_PARTITION_SIZE=${ROOTFS_SIZE_ALIGNED}
+        fi
+
+        SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + ${ROOTFS_PARTITION_SIZE} \* 2)
+        echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNED} KiB and two RootFS partition with $ROOTFS_SIZE KiB each"
+    fi
 
     # Check if we are building with device tree support
     DTS="${@make_dtb_boot_files(d)}"
 
     # Initialize sdcard image file
-    dd if=/dev/zero of=${SDIMG} bs=1024 count=0 seek=${SDIMG_SIZE}
+    dd if=/dev/zero of=${SDIMG} bs=1K count=0 seek=${SDIMG_SIZE}
 
     # Create partition table
     parted -s ${SDIMG} mklabel msdos
+
     # Create boot partition and mark it as bootable
-    parted -s ${SDIMG} unit KiB mkpart primary fat32 ${IMAGE_ROOTFS_ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT})
+    parted -s ${SDIMG} unit KiB mkpart primary fat32 \
+        ${IMAGE_ROOTFS_ALIGNMENT} \
+        $(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT})
     parted -s ${SDIMG} set 1 boot on
+
     # Create rootfs partition to the end of disk
-    parted -s ${SDIMG} -- unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) -1s
+    if [ "${RPI_AB_PARTITION_LAYOUT}" = "0" ]; then
+        parted -s ${SDIMG} -- unit KiB mkpart primary ext2 \
+            $(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT}) \
+            -1s
+    else
+        parted -s ${SDIMG} -- unit KiB mkpart primary ext2 \
+            $(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT}) \
+            $(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} + ${ROOTFS_PARTITION_SIZE})
+
+        parted -s ${SDIMG} -- unit KiB mkpart primary ext2 \
+            $(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} + ${ROOTFS_PARTITION_SIZE}) \
+	        -1s
+    fi
     parted ${SDIMG} print
 
     # Create a vfat image with boot files
@@ -170,13 +226,35 @@ IMAGE_CMD:rpi-sdimg () {
     fi
 
     # Burn Partitions
-    dd if=${WORKDIR}/boot.img of=${SDIMG} conv=notrunc seek=1 bs=$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024)
-    # If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
-    if echo "${SDIMG_ROOTFS_TYPE}" | egrep -q "*\.xz"
-    then
-        xzcat ${SDIMG_ROOTFS} | dd of=${SDIMG} conv=notrunc seek=1 bs=$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} \* 1024)
+    dd if=${WORKDIR}/boot.img of=${SDIMG} conv=notrunc \
+        seek=$(expr ${IMAGE_ROOTFS_ALIGNMENT}) bs=1K
+
+    if [ "${RPI_AB_PARTITION_LAYOUT}" = "0" ]; then
+        # If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
+        if echo "${SDIMG_ROOTFS_TYPE}" | egrep -q "*\.xz"
+        then
+            xzcat ${SDIMG_ROOTFS} | dd of=${SDIMG} conv=notrunc \
+                seek=$(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT}) bs=1K
+        else
+            dd if=${SDIMG_ROOTFS} of=${SDIMG} conv=notrunc \
+                 seek=$(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT}) bs=1K
+        fi
     else
-        dd if=${SDIMG_ROOTFS} of=${SDIMG} conv=notrunc seek=1 bs=$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} \* 1024)
+        # If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
+        if echo "${SDIMG_ROOTFS_TYPE}" | egrep -q "*\.xz"
+        then
+            xzcat ${SDIMG_ROOTFS} | dd of=${SDIMG} conv=notrunc \
+                seek=$(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT}) bs=1K
+
+	        xzcat ${SDIMG_ROOTFS} | dd of=${SDIMG} conv=notrunc \
+                seek=$(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} + ${ROOTFS_PARTITION_SIZE}) bs=1K
+	    else
+	        dd if=${SDIMG_ROOTFS} of=${SDIMG} conv=notrunc \
+                seek=$(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT}) bs=1K
+
+            dd if=${SDIMG_ROOTFS} of=${SDIMG} conv=notrunc \
+            seek=$(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} + ${ROOTFS_PARTITION_SIZE}) bs=1K
+	    fi
     fi
 }
 
-- 
2.43.0


