Return-Path: <haokexin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EED71C48BF6
	for <webhook@archiver.kernel.org>; Thu, 22 Feb 2024 01:22:23 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
 by mx.groups.io with SMTP id smtpd.web10.3379.1708564938573246530
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Feb 2024 17:22:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MXZpxrjN;
 spf=pass (domain: gmail.com, ip: 209.85.167.169, mailfrom: haokexin@gmail.com)
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3bbbc6e51d0so4488196b6e.3
        for <yocto@lists.yoctoproject.org>; Wed, 21 Feb 2024 17:22:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708564937; x=1709169737; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VVZaRJvQH0dAMb32dCGxvKMlK0uYyn3CzxZ4k2lDmJs=;
        b=MXZpxrjNRtPZUxFQp2Pgkv0N2L1zYE0VeHaL8N3CxvHogioGlsfCxv2qzGKHpCiARw
         xTMga3VykUmpNPxSHq5J/hFqg1EitjnF4ikvsWcwv5Sy6BfgbVDU2IaPmK0DGqv6VCWi
         q9+tuS6hkPHD5ZEAEgNMcoLxJ2o5eO1rPptXA/syuko4pVYXAyDsPdhKW+TGAXNSyufo
         Zhzl6mCidZFNsxT1zkVWLUeb1J3APoca+V4Z6aEV7DuyPROxWo14ykPcHDLK+pxuiWjg
         1tPio1QAlmms2ybOBE0z/OtpW9gY8zOvVYfugm2q4mdiVL0uLnDaER8t9QwGToFZRRAb
         woLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708564937; x=1709169737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VVZaRJvQH0dAMb32dCGxvKMlK0uYyn3CzxZ4k2lDmJs=;
        b=uwVsvPh3PEz1kkDnU9S2+Nmmc7ww+vFeYfGbJDBKljCyLxqyhVw5N9p0p2OMyRG0c+
         RqMJtSnJ2IqLVk8g0cplwyIEcE0eI+bDfEAUbRf58B7hcGfE8yW1ufJXIpbppBsOZ/hl
         F/2GJKizrb2KsEWqqy8D59fSeeupmn5lJ5UN9NXriSL9Nw+e9nMxoGtYXJWF+1Kk0TRk
         OfOBdysqSMTQl+Uaap+arxuXcCZh13DSz03ubhtOTfOhIscG5kI+X64dsDFiUH/wXYMp
         tLn4WmtIkdZBKMUF9JycHuScxwKdluGQ0VQfkNNYNsPEp/raPQuD3oiR+iTyZAOmL4EF
         9/OQ==
X-Gm-Message-State: AOJu0YwQzaxgptkiHAB8g/GzcWfXM4j3KWwSIDl4KBteyDkkZ5UVB3uz
	cKXtj7Mbn/svfb2jfUsazlLEpL/Itavs+HqA6YUbIK5y5b5sOQGjusygV+Ad
X-Google-Smtp-Source: AGHT+IG1qr6BZ4uKt7ZpAlW82ZgCuXzjfwRNaUEn/aG64pLB8oX1h22xd3t7ToYm/t/nNMB/hGeaMw==
X-Received: by 2002:a05:6359:4c21:b0:17b:5712:70f2 with SMTP id kj33-20020a0563594c2100b0017b571270f2mr4649869rwc.11.1708564936600;
        Wed, 21 Feb 2024 17:22:16 -0800 (PST)
Received: from pek-lpggp6.wrs.com (unknown-105-121.windriver.com. [147.11.105.121])
        by smtp.gmail.com with ESMTPSA id x7-20020a056a000bc700b006e4883591e7sm2975948pfu.144.2024.02.21.17.22.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 17:22:16 -0800 (PST)
From: Kevin Hao <haokexin@gmail.com>
To: Yocto Project <yocto@lists.yoctoproject.org>
Cc: Armin Kuster <akuster808@gmail.com>,
	Paul Gortmaker <Paul.Gortmaker@windriver.com>
Subject: [meta-security][PATCH 2/3] dm-verity: Adjust the image names according to the oe-core change
Date: Thu, 22 Feb 2024 09:21:53 +0800
Message-Id: <20240222012154.386022-3-haokexin@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240222012154.386022-1-haokexin@gmail.com>
References: <20240222012154.386022-1-haokexin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 01:22:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62562

From: Kevin Hao <kexin.hao@windriver.com>

After the oe-core commit 26d97acc7137 ("image-artifact-names: include
${IMAGE_NAME_SUFFIX} directly in both ${IMAGE_NAME} and
${IMAGE_LINK_NAME}"), the image names have changed from
  core-image-minimal-qemux86-64-20230307181808.rootfs.ext4
  core-image-minimal-qemux86-64.ext4
to
  core-image-minimal-qemux86-64.rootfs-20230307181456.ext4
  core-image-minimal-qemux86-64.rootfs.ext4

Adjust the images name used by dm-verity according to this change.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 classes/dm-verity-img.bbclass        | 6 +++---
 wic/beaglebone-yocto-verity.wks.in   | 2 +-
 wic/systemd-bootdisk-dmverity.wks.in | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 2f212d6c7bcb..62c3069b63e6 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -111,10 +111,10 @@ process_verity() {
     # Create wks.in fragment with build specific UUIDs for partitions.
     # Unfortunately the wks.in does not support line continuations...
     # First, the unappended filesystem data partition.
-    echo 'part / --source rawcopy --ondisk sda --sourceparams="file=${DM_VERITY_DEPLOY_DIR}/${DM_VERITY_IMAGE}-${MACHINE}.rootfs.${DM_VERITY_IMAGE_TYPE}.verity" --part-name verityroot --part-type="${DM_VERITY_ROOT_GUID}"'" --uuid=\"$ROOT_UUID\"" > $WKS_INC
+    echo 'part / --source rawcopy --ondisk sda --sourceparams="file=${DM_VERITY_DEPLOY_DIR}/${DM_VERITY_IMAGE}-${MACHINE}${IMAGE_NAME_SUFFIX}.${DM_VERITY_IMAGE_TYPE}.verity" --part-name verityroot --part-type="${DM_VERITY_ROOT_GUID}"'" --uuid=\"$ROOT_UUID\"" > $WKS_INC
 
     # note: no default mount point for hash data partition
-    echo 'part --source rawcopy --ondisk sda --sourceparams="file=${DM_VERITY_DEPLOY_DIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.vhash" --part-name verityhash --part-type="${DM_VERITY_RHASH_GUID}"'" --uuid=\"$RHASH_UUID\"" >> $WKS_INC
+    echo 'part --source rawcopy --ondisk sda --sourceparams="file=${DM_VERITY_DEPLOY_DIR}/${DM_VERITY_IMAGE}-${MACHINE}${IMAGE_NAME_SUFFIX}.${DM_VERITY_IMAGE_TYPE}.vhash" --part-name verityhash --part-type="${DM_VERITY_RHASH_GUID}"'" --uuid=\"$RHASH_UUID\"" >> $WKS_INC
 }
 
 verity_setup() {
@@ -162,7 +162,7 @@ verity_setup() {
 verity_hash() {
     cd ${IMGDEPLOYDIR}
     ln -sf ${IMAGE_NAME}.${DM_VERITY_IMAGE_TYPE}.vhash \
-        ${IMAGE_BASENAME}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.vhash
+        ${IMAGE_BASENAME}-${MACHINE}${IMAGE_NAME_SUFFIX}.${DM_VERITY_IMAGE_TYPE}.vhash
 }
 
 VERITY_TYPES = " \
diff --git a/wic/beaglebone-yocto-verity.wks.in b/wic/beaglebone-yocto-verity.wks.in
index d2923de12786..2d332d88bd16 100644
--- a/wic/beaglebone-yocto-verity.wks.in
+++ b/wic/beaglebone-yocto-verity.wks.in
@@ -12,5 +12,5 @@
 # This .wks only works with the dm-verity-img class.
 
 part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4 --fixed-size 32 --sourceparams="loader=u-boot" --use-uuid
-part / --source rawcopy --ondisk mmcblk0 --sourceparams="file=${IMGDEPLOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.verity"
+part / --source rawcopy --ondisk mmcblk0 --sourceparams="file=${IMGDEPLOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}${IMAGE_NAME_SUFFIX}.${DM_VERITY_IMAGE_TYPE}.verity"
 bootloader --append="console=ttyS0,115200"
diff --git a/wic/systemd-bootdisk-dmverity.wks.in b/wic/systemd-bootdisk-dmverity.wks.in
index 846636877290..0ac9ccab6af0 100644
--- a/wic/systemd-bootdisk-dmverity.wks.in
+++ b/wic/systemd-bootdisk-dmverity.wks.in
@@ -10,7 +10,7 @@
 
 part /boot --source bootimg-efi --sourceparams="loader=systemd-boot,initrd=microcode.cpio" --ondisk sda --label msdos --active --align 1024 --use-uuid
 
-part / --source rawcopy --ondisk sda  --sourceparams="file=${IMGDEPLOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.verity" --use-uuid
+part / --source rawcopy --ondisk sda  --sourceparams="file=${IMGDEPLOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}${IMAGE_NAME_SUFFIX}.${DM_VERITY_IMAGE_TYPE}.verity" --use-uuid
 
 part swap --ondisk sda --size 44 --label swap1 --fstype=swap --use-uuid
 
-- 
2.40.1


