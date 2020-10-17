Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
 by mx.groups.io with SMTP id smtpd.web12.2941.1602957840562179661
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:04:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qW8dQk8a;
 spf=pass (domain: gmail.com, ip: 209.85.215.194, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f194.google.com with SMTP id l18so3416455pgg.0
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=UmSyIclv7de+HAwGpckTOlN49PUaX2ZViTlcyYovUYM=;
        b=qW8dQk8aJlEonvh6VROlnl/ryWxyaUaMKYwl5F6Ibjn2bZFxAQd8sIlyOwy2dT5zY2
         hqAdsBwLLCvVkyX0OlG/vVCwCOBOHL55mBIYMU0U1Mrbyal5xD/FECWYMRqp4o98smRB
         XXyhSx4Smt9pbEh21BI4JAat2kFLVndH5QQRnJyF3oK1M7TlK9Gnjyqe8WlD/gipZyiw
         0dfkOk2r2S2JzByuKiG6EH2x/WpW9Ughw//oJwxmIqQhZeDNZXSBgfec1gzCstlbpMFY
         j5JUknpQ9yBB/2dgXY+My12UqHYeqM0E0jtK7vlR/HyC+7BSqugkwvOUFK3BrgjTzBpU
         jXkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=UmSyIclv7de+HAwGpckTOlN49PUaX2ZViTlcyYovUYM=;
        b=K3KHSM8RvBXG22PCe8+/ZLL7ChHeYsth2x7yZ3Jd3Hpgi5xVQ4yo8giT9TDmzSbmiP
         D2IHteRwF6CQL+Z8MKWEMdJt/72Xij4gz7q9mr7FcILuuUoLThySlGujDMBsLdPF2YjA
         GCX6xgmqP8Vwr1L2VLuoZiREn8++FiCLHCHBXE+rSKUXukhOLCdysZ8VvkGy2Z8YK/AZ
         Y6TuYxDQXV8pjzow8Lc5E9WE+p7mDDVcXkzxap1EWsA3lEt1XBAJ3PzcOZ8fK8nqXdNF
         FVJWJFs4o8QicBHXh8wfclwEmnardBP11Tw9yzfckuu4J/5Ikooh52aN6SImqZx0ZRoZ
         JH7Q==
X-Gm-Message-State: AOAM533Iaej0vfeS6lDkpIDOPan4iqlyf9hJ67hxo8pBmkwg5fZrezto
	h1E518CxhZgHUjYXSb7I03yX0cqvW2I=
X-Google-Smtp-Source: ABdhPJwSR2LtOCLXg3FdWWy5pnvUEzuVwNDGI5fptkpm5nE3I1yhRqLhf1ies5dIC481aB+YdvYxgw==
X-Received: by 2002:a05:6a00:23c6:b029:158:1257:de73 with SMTP id g6-20020a056a0023c6b02901581257de73mr9849641pfc.10.1602957839833;
        Sat, 17 Oct 2020 11:03:59 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:59 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 23/32] wic: add wks.in for intel dm-verity
Date: Sat, 17 Oct 2020 11:03:20 -0700
Message-Id: <8cf792d3aa734ba6e344581b347887af606d2bf7.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: Naveen Saini <naveen.kumar.saini@intel.com>

Based on systemd-bootdisk-microcode.wks.in, this adds
the dm-verity image similar to the beaglebone wks
already in meta-security.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 0de4f3bfb7fffe8d91026f00ce7f9384e13dfc54)
---
 wic/systemd-bootdisk-dmverity.wks.in | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 wic/systemd-bootdisk-dmverity.wks.in

diff --git a/wic/systemd-bootdisk-dmverity.wks.in b/wic/systemd-bootdisk-dmverity.wks.in
new file mode 100644
index 0000000..ef114ca
--- /dev/null
+++ b/wic/systemd-bootdisk-dmverity.wks.in
@@ -0,0 +1,15 @@
+# A dm-verity variant of the regular wks for IA machines. We need to fetch
+# the partition images from the IMGDEPLOYDIR as the rootfs source plugin will
+# not recreate the exact block device corresponding with the hash tree. We must
+# not alter the label or any other setting on the image.
+# Based on OE-core's systemd-bootdisk.wks and meta-security's beaglebone-yocto-verity.wks.in file
+#
+# This .wks only works with the dm-verity-img class.
+
+part /boot --source bootimg-efi --sourceparams="loader=systemd-boot,initrd=microcode.cpio" --ondisk sda --label msdos --active --align 1024 --use-uuid
+
+part / --source rawcopy --ondisk sda  --sourceparams="file=${IMGDEPLOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.verity" --use-uuid
+
+part swap --ondisk sda --size 44 --label swap1 --fstype=swap --use-uuid
+
+bootloader --ptable gpt --timeout=5 --append=" "
-- 
2.17.1

