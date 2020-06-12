Received: from mail-io1-f65.google.com (mail-io1-f65.google.com [209.85.166.65])
 by mx.groups.io with SMTP id smtpd.web11.1396.1591987094369937234
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jun 2020 11:38:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qqzFTuua;
 spf=pass (domain: gmail.com, ip: 209.85.166.65, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f65.google.com with SMTP id w18so11282538iom.5
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jun 2020 11:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w04zrTpOXrgTWoH0YSDXYxxoWMNfnpgySqo2CRGITp0=;
        b=qqzFTuuaij6NQkQJBXvSuvz8c+7xqrsL6ubfDrbUhmn8GLRx4Y2XaiwaAmR15QY5cl
         e2Luoq7l0fxBL9FuLErX0iS9ubmz1fY8hkI0TvlbowzIchXIGpJoa6/6w64eNZ3fTk3y
         /mI/YOaU5mEVMqAHlv7xvGIDjAeA/i8VMXYreqy6jmpYTL4/rXf1cLwf/YPP5LzM6Vo2
         wiYYYC6yZA8G5lHjNRgvMJP6mCGhp8D8tFb7ze0sFYuYbR8CcMzMoQW8qx//fUayTge7
         DF1HGWjMQ6t1CeWwBw4veDU6To/QnIFfQ0jXVdPDvBFhDKgImL+oX7u/AzqtRJzzD250
         IqTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w04zrTpOXrgTWoH0YSDXYxxoWMNfnpgySqo2CRGITp0=;
        b=mwU2Q5h5VaU0cB5fo6ON/tEIx9D02/7u/inyvReiXIpI1BVhxl8tMbg2b0a29EDWYa
         l5Sjo5Jgbzv04l+/vCoM8L/mbEvhgXPAUtDw37Zej9MKP8GI+n05a7F9c+cGRh11aGHd
         ctRhTuzRjTW7cMb1YAikPL9/9XRTBt3kdmvASDzEoPA9Y+/gg26ibqs11P/l89UMAUHq
         rgPNcG/ub17e7/hOheyHI1efyxasXW9/N7vX/icYaEDT+d0zrNZBTdANROYmPZBD5xFt
         w7fJUTNzQD2okK/PhyrUdP4UZA5dArUtsQg7j4jCZH+AJvVOXrhkYl9c/IZczvYF1/L0
         LvWQ==
X-Gm-Message-State: AOAM533bv8iKn7GfmVdVMWww/OBOC1jhk2mg88CtcQYtK0DbPYzEUnbt
	+Ty3FyZoQWi3xB7xdo3xoUITPhoy
X-Google-Smtp-Source: ABdhPJwnaLDElGcBq4FDyy69Ao6oer699BX0bZdg9bB4euKjFo1N6bPSaK8b1e1JubPEgo+12TclkA==
X-Received: by 2002:a6b:e215:: with SMTP id z21mr15200338ioc.115.1591987093444;
        Fri, 12 Jun 2020 11:38:13 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from localhost.localdomain ([2605:a601:ac3d:c100:35f5:8651:479a:b9eb])
        by smtp.gmail.com with ESMTPSA id p11sm3436716ioo.26.2020.06.12.11.38.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2020 11:38:12 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [meta-rockchip][PATCH] wic: Use --offset and --fixed-size instead of --align and --size
Date: Fri, 12 Jun 2020 13:38:09 -0500
Message-Id: <20200612183809.865-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The --align argument isn't intended to make a partition exist at a fixed
location like the Rockchip boot ROM requires. Use the recently added
--offset argument which will fail to build the image if the partition
can't be placed at the correct location. Also used --fixed-size to make
sure that Wic isn't inserting hidden padding that changes things around.

Finally, the location of the rootfs isn't required to be at sector
262144 since u-boot and the kernel reads the partition table to find it
and actually hasn't been at this location anyway since Wic has been
padding the /boot partition, so remove it's alignment requirements.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 wic/firefly-rk3288.wks |  2 +-
 wic/rk3288-boot.wks    | 14 +++++++-------
 wic/rk3399-boot.wks    | 14 +++++++-------
 wic/rock-pi-4.wks      |  2 +-
 wic/tinker-board.wks   |  2 +-
 wic/vyasa-rk3288.wks   |  2 +-
 6 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/wic/firefly-rk3288.wks b/wic/firefly-rk3288.wks
index b60aa0e..da0067f 100644
--- a/wic/firefly-rk3288.wks
+++ b/wic/firefly-rk3288.wks
@@ -2,6 +2,6 @@
 # Released under the MIT license (see COPYING.MIT for the terms)
 
 include rk3288-boot.wks
-part / --align 131072 --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
+part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
 bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/rk3288-boot.wks b/wic/rk3288-boot.wks
index c0b7d95..e4d30cc 100644
--- a/wic/rk3288-boot.wks
+++ b/wic/rk3288-boot.wks
@@ -12,13 +12,13 @@
 #   loader2     16384           8192
 #   atf         24576           8192
 #   boot        32768           229376
-#   root        262144          -
+#   root        262144          -           (suggested)
 #
 
-part loader1    --align 32     --size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=idbloader.img"
-part reserved1  --align 4032   --size 64K              --ondisk ${RK_BOOT_DEVICE}
-part reserved2  --align 4096   --size 4096K            --ondisk ${RK_BOOT_DEVICE}
-part loader2    --align 8192   --size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=u-boot.bin"
-part atf        --align 12288  --size 4096K            --ondisk ${RK_BOOT_DEVICE}
-part /boot      --align 16384  --size=114688K --active --ondisk ${RK_BOOT_DEVICE} --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
+part loader1    --offset 32     --fixed-size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=idbloader.img"
+part reserved1  --offset 4032   --fixed-size 64K              --ondisk ${RK_BOOT_DEVICE}
+part reserved2  --offset 4096   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
+part loader2    --offset 8192   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=u-boot.bin"
+part atf        --offset 12288  --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
+part /boot      --offset 16384  --size       114688K --active --ondisk ${RK_BOOT_DEVICE} --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
 
diff --git a/wic/rk3399-boot.wks b/wic/rk3399-boot.wks
index 885d46b..8a65179 100644
--- a/wic/rk3399-boot.wks
+++ b/wic/rk3399-boot.wks
@@ -12,13 +12,13 @@
 #   loader2     16384           8192
 #   atf         24576           8192
 #   boot        32768           229376
-#   root        262144          -
+#   root        262144          -           (suggested)
 #
 
-part loader1    --align 32     --size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=idbloader.img"
-part reserved1  --align 4032   --size 64K              --ondisk ${RK_BOOT_DEVICE}
-part reserved2  --align 4096   --size 4096K            --ondisk ${RK_BOOT_DEVICE}
-part loader2    --align 8192   --size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=u-boot.itb"
-part atf        --align 12288  --size 4096K            --ondisk ${RK_BOOT_DEVICE}
-part /boot      --align 16384  --size=114688K --active --ondisk ${RK_BOOT_DEVICE} --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
+part loader1    --offset 32     --fixed-size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=idbloader.img"
+part reserved1  --offset 4032   --fixed-size 64K              --ondisk ${RK_BOOT_DEVICE}
+part reserved2  --offset 4096   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
+part loader2    --offset 8192   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=u-boot.itb"
+part atf        --offset 12288  --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
+part /boot      --offset 16384  --size       114688K --active --ondisk ${RK_BOOT_DEVICE} --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
 
diff --git a/wic/rock-pi-4.wks b/wic/rock-pi-4.wks
index 75ac358..c6174a9 100644
--- a/wic/rock-pi-4.wks
+++ b/wic/rock-pi-4.wks
@@ -2,6 +2,6 @@
 # Released under the MIT license (see COPYING.MIT for the terms)
 
 include rk3399-boot.wks
-part / --align 131072 --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
+part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
 bootloader --ptable gpt --append="console=tty1 console=ttyS2,1500000n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/tinker-board.wks b/wic/tinker-board.wks
index 8f08138..5a63ce0 100644
--- a/wic/tinker-board.wks
+++ b/wic/tinker-board.wks
@@ -3,6 +3,6 @@
 
 include rk3288-boot.wks
 
-part / --align 131072 --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
+part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
 bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/vyasa-rk3288.wks b/wic/vyasa-rk3288.wks
index b577e5a..5db65df 100644
--- a/wic/vyasa-rk3288.wks
+++ b/wic/vyasa-rk3288.wks
@@ -2,7 +2,7 @@
 # Released under the MIT license (see COPYING.MIT for the terms)
 
 include rk3288-boot.wks
-part / --align 131072 --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
+part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
 bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
 
-- 
2.26.2

