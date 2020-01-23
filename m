Received: from mail-il1-f194.google.com (mail-il1-f194.google.com [209.85.166.194])
 by mx.groups.io with SMTP id smtpd.web09.9492.1579794777649007700
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 07:52:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oPTgRr/G;
 spf=pass (domain: gmail.com, ip: 209.85.166.194, mailfrom: jpewhacker@gmail.com)
Received: by mail-il1-f194.google.com with SMTP id p8so2396284iln.12
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 07:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PHJDFsKUgEqVBPZN6MefaKcm/YRLIydcNQTPf24tnKY=;
        b=oPTgRr/GKLkQ4jSEoL1PfMvYXpW7j2ojofwicRYXXOh6m3P6OhSgNtEMG+3LjQsNHn
         B9dtoH+5lwHNWOgKs0M7bhtCGRImqVKQAobACN70f+t43mrWK/Yf6JAq8cQ0WRP4J6Cy
         w6QUA1c8JI93ZRnpLx6K9pexprDm8HqcQn4c066NmRucLJ6Nn4UtgnVMtUTUoNgdjPom
         2BjWohQ531+u69t71Qa0Zo5C7XoIYTpFbTwD0vLw3dZMa7anBaV1UvBnt3QpbNO8LcaQ
         z/pCisvJm7G+aVeLT5mTVjjqxNc4yoUI8EQRCZK5YhqcNII3fqbjrFTINy2YQdTIpTVN
         4ZCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PHJDFsKUgEqVBPZN6MefaKcm/YRLIydcNQTPf24tnKY=;
        b=S9F77fSgFg8c11yHNLsnkN/oyx/2/kPll7ok2kuuzhDcJWWzwSESdjvnoaF6wqX+h4
         7oSG/Vl16OWkWxhl0nSDLCdiQDHVXPMD05dG/LE1AYMGqCRtAAhl2DTqdUxDgd4UYfBz
         dfrSRsX+RuHbN9avNAQr3RD/qypM03rgPNbfGD/Pk+w2sz70DaWPtIjGxqMPNHgOdR33
         ZzahTMzHCGUAvlU5iZmuaM95yIcS5XdrNLqyDiytOpWqk6EkxEtt7PX2bCk5jQ246dS8
         JwtsKGChKCC/lXQ7cgZNJzlpDx5z8t4stwabpWkDEb0jNe0rXsJVmxh2MbSuuPH4B+cx
         j4ow==
X-Gm-Message-State: APjAAAWKN39oNu+ZTkamFd9Ux5MyR2CGcBSB/eoRu0HJoerVRWMqloNx
	WHmRaW3mhTVcqegshVwRC6VcHHcjHaE=
X-Google-Smtp-Source: APXvYqwC3ed1rEYYLSexBDjf7l+WvkVtG0m6badNhSG/i5XWotPKMKniHIutT/1Xdr2BcUIV31kWMA==
X-Received: by 2002:a92:c990:: with SMTP id y16mr13375340iln.109.1579794776809;
        Thu, 23 Jan 2020 07:52:56 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id o6sm740445ilc.76.2020.01.23.07.52.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 07:52:56 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH] rk3288: Add common rk3288 boot include wic
Date: Thu, 23 Jan 2020 09:52:50 -0600
Message-Id: <20200123155250.778310-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds a common rk3288-boot.wks file that all machine kickstart files can
include to get their boot partitions correctly configured.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 wic/firefly-rk3288.wks | 23 ++---------------------
 wic/rk3288-boot.wks    | 24 ++++++++++++++++++++++++
 wic/tinker-rk3288.wks  | 23 ++---------------------
 wic/vyasa-rk3288.wks   | 25 +++----------------------
 4 files changed, 31 insertions(+), 64 deletions(-)
 create mode 100644 wic/rk3288-boot.wks

diff --git a/wic/firefly-rk3288.wks b/wic/firefly-rk3288.wks
index 5013aea..c2027bd 100644
--- a/wic/firefly-rk3288.wks
+++ b/wic/firefly-rk3288.wks
@@ -1,26 +1,7 @@
 # Copyright (C) 2019 Garmin Ltd. or its subsidiaries
 # Released under the MIT license (see COPYING.MIT for the terms)
-#
-# Disk layout
-# Note that the reference documentation refers to 512 byte disk sectors, but
-# wic uses 1KB blocks
-#
-#   Partition   Start Sector    Number of Sectors
-#   loader1     64              8000
-#   reserved1   8064            128
-#   reserved2   8192            8192
-#   loader2     16384           8192
-#   atf         24576           8192
-#   boot        32768           229376
-#   root        262144          -
-#
 
-part loader1    --ondisk mmcblk0 --align 32     --size 4000K            --source rawcopy --sourceparams="file=idbloader.img"
-part reserved1  --ondisk mmcblk0 --align 4032   --size 64K
-part reserved2  --ondisk mmcblk0 --align 4096   --size 4096K
-part loader2    --ondisk mmcblk0 --align 8192   --size 4096K            --source rawcopy --sourceparams="file=u-boot.bin"
-part atf        --ondisk mmcblk0 --align 12288  --size 4096K
-part /boot      --ondisk mmcblk0 --align 16384  --size=114688K --active --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
-part /          --ondisk mmcblk0 --align 131072                         --source rootfs            --fstype=ext4 --label root
+include rk3288-boot.wks
+part / --align 131072 --source rootfs --fstype=ext4 --label root
 
 bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk0p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/rk3288-boot.wks b/wic/rk3288-boot.wks
new file mode 100644
index 0000000..53c8162
--- /dev/null
+++ b/wic/rk3288-boot.wks
@@ -0,0 +1,24 @@
+# Copyright (C) 2020 Garmin Ltd. or its subsidiaries
+# Released under the MIT license (see COPYING.MIT for the terms)
+#
+# Disk layout
+# Note that the reference documentation refers to 512 byte disk sectors, but
+# wic uses 1KB blocks
+#
+#   Partition   Start Sector    Number of Sectors
+#   loader1     64              8000
+#   reserved1   8064            128
+#   reserved2   8192            8192
+#   loader2     16384           8192
+#   atf         24576           8192
+#   boot        32768           229376
+#   root        262144          -
+#
+
+part loader1    --align 32     --size 4000K            --source rawcopy --sourceparams="file=idbloader.img"
+part reserved1  --align 4032   --size 64K
+part reserved2  --align 4096   --size 4096K
+part loader2    --align 8192   --size 4096K            --source rawcopy --sourceparams="file=u-boot.bin"
+part atf        --align 12288  --size 4096K
+part /boot      --align 16384  --size=114688K --active --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
+
diff --git a/wic/tinker-rk3288.wks b/wic/tinker-rk3288.wks
index 5013aea..c2027bd 100644
--- a/wic/tinker-rk3288.wks
+++ b/wic/tinker-rk3288.wks
@@ -1,26 +1,7 @@
 # Copyright (C) 2019 Garmin Ltd. or its subsidiaries
 # Released under the MIT license (see COPYING.MIT for the terms)
-#
-# Disk layout
-# Note that the reference documentation refers to 512 byte disk sectors, but
-# wic uses 1KB blocks
-#
-#   Partition   Start Sector    Number of Sectors
-#   loader1     64              8000
-#   reserved1   8064            128
-#   reserved2   8192            8192
-#   loader2     16384           8192
-#   atf         24576           8192
-#   boot        32768           229376
-#   root        262144          -
-#
 
-part loader1    --ondisk mmcblk0 --align 32     --size 4000K            --source rawcopy --sourceparams="file=idbloader.img"
-part reserved1  --ondisk mmcblk0 --align 4032   --size 64K
-part reserved2  --ondisk mmcblk0 --align 4096   --size 4096K
-part loader2    --ondisk mmcblk0 --align 8192   --size 4096K            --source rawcopy --sourceparams="file=u-boot.bin"
-part atf        --ondisk mmcblk0 --align 12288  --size 4096K
-part /boot      --ondisk mmcblk0 --align 16384  --size=114688K --active --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
-part /          --ondisk mmcblk0 --align 131072                         --source rootfs            --fstype=ext4 --label root
+include rk3288-boot.wks
+part / --align 131072 --source rootfs --fstype=ext4 --label root
 
 bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk0p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/vyasa-rk3288.wks b/wic/vyasa-rk3288.wks
index 3fc9a5b..f019e0d 100644
--- a/wic/vyasa-rk3288.wks
+++ b/wic/vyasa-rk3288.wks
@@ -1,27 +1,8 @@
 # Copyright (C) 2019 Garmin Ltd. or its subsidiaries
 # Released under the MIT license (see COPYING.MIT for the terms)
-#
-# Disk layout
-# Note that the reference documentation refers to 512 byte disk sectors, but
-# wic uses 1KB blocks
-#
-#   Partition   Start Sector    Number of Sectors
-#   loader1     64              8000
-#   reserved1   8064            128
-#   reserved2   8192            8192
-#   loader2     16384           8192
-#   atf         24576           8192
-#   boot        32768           229376
-#   root        262144          -
-#
 
-part loader1    --ondisk mmcblk2 --align 32     --size 4000K            --source rawcopy --sourceparams="file=idbloader.img"
-part reserved1  --ondisk mmcblk2 --align 4032   --size 64K
-part reserved2  --ondisk mmcblk2 --align 4096   --size 4096K
-part loader2    --ondisk mmcblk2 --align 8192   --size 4096K            --source rawcopy --sourceparams="file=u-boot.bin"
-part atf        --ondisk mmcblk2 --align 12288  --size 4096K
-part /boot      --ondisk mmcblk2 --align 16384  --size=114688K --active --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
-part /          --ondisk mmcblk2 --align 131072                         --source rootfs            --fstype=ext4 --label root
+include rk3288-boot.wks
+part / --align 131072 --source rootfs --fstype=ext4 --label root
 
 bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk2p7 rootfstype=ext4 init=/sbin/init"
-                                  
+
-- 
2.24.1

