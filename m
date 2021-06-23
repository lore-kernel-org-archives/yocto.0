Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web08.9208.1624461911621414980
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jun 2021 08:25:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FCfgTGQ0;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id y4so1597254qvs.10
        for <yocto@lists.yoctoproject.org>; Wed, 23 Jun 2021 08:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=JfkEMM4WchfxKQt78fCvFwdyLjvR4eV1gmUrPguE9fo=;
        b=FCfgTGQ0c3OzOBgfklcgh3/Gdxmz3KAkezt4UHjPjorUx/UGMNghy/0rZlLB7bu7pc
         vBLI4FlGhOuWxUuFobHcebPDrhg936LXgMBZjne22gWeSLkTdyN4kQk2SWZHdwoLJkMC
         XuQTuwh1zkernPI3HRATff3GS0F18GiML9uZhbSJ2xmsX3pEFTyyJ5Ojau1jbvxEGgYm
         Q1rLK7Be2tODCnsA+pcLme/i3fixLRixPIy1r+G0beav2u+NR5LASPd08ihbwDbk6F1d
         Dwp5xMR5F8OtZz+H3uqTXZ67K/L3xuj/uQBUcTerTKBz/kmqJ4AannpBDAFEH/go6wEw
         dEMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JfkEMM4WchfxKQt78fCvFwdyLjvR4eV1gmUrPguE9fo=;
        b=SvKPMLoyVhu85CDpT8PuNMNoZ67rDsdfIqDKDsbwZCMnHjJ6DYXMAR4qKh7MIAv6Aw
         oHKQtRrIqO0PruFKD7SCzKupXwjsAk8NWAEN0kVskBUDAzUHSzun9WSKdlXmEKvrmEVJ
         zO9q3qUY8y7u19sIitk9SFmpvo48yWiRHk5uShEzafARxjmL5A5/tYmUqHcSWiwHLJcl
         5vmGeSN61Ifb+m3MoFjxt18gA1LQquDCZREzUYOKZmuGezTvldONJXvfzihHCRyU+xoe
         oZtmGRkZuASOWdqQZHI8BJ6otT/P9UerNLfttwVcDjccrMx7DfjVFs9P0aqqO1DdbPSY
         oSmQ==
X-Gm-Message-State: AOAM531fdLcf5gM6p92YCxX58+v3qR9s4Qvf9nf3HDD2noU8BMINt5bH
	vn8e1cYGv37UtkxmVhpBkW3/knHPNytPag==
X-Google-Smtp-Source: ABdhPJzFpcy1Ol6ahyUWYq/vB1I1jgDA1I3l6bxFY3Qvqthc/0VVOMnc+SZqZDN5zaSTWD0gUHPdgQ==
X-Received: by 2002:ad4:4b22:: with SMTP id s2mr485974qvw.22.1624461910470;
        Wed, 23 Jun 2021 08:25:10 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id w185sm116800qkd.30.2021.06.23.08.25.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jun 2021 08:25:09 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 2/4] wic console device and baud
Date: Wed, 23 Jun 2021 11:24:55 -0400
Message-Id: <20210623152457.35324-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
In-Reply-To: <20210623152457.35324-1-twoerner@gmail.com>
References: <20210623152457.35324-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Take the console device and baud settings from the MACHINE configurations and
reuse them in the wic files. This reduces duplication and eliminates a
potential source of mistakes.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/rockchip-defaults.inc | 2 +-
 wic/firefly-rk3288.wks                     | 2 +-
 wic/rock-pi-4.wks                          | 2 +-
 wic/rock-pi-e.wks                          | 2 +-
 wic/tinker-board.wks                       | 2 +-
 wic/vyasa-rk3288.wks                       | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index fe4052e..3e7a2f2 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -28,5 +28,5 @@ IMAGE_FSTYPES += "ext4"
 
 # boot device (sd-card/emmc)
 RK_BOOT_DEVICE ??= "mmcblk0"
-WICVARS_append = " RK_BOOT_DEVICE"
+WICVARS_append = " RK_BOOT_DEVICE RK_CONSOLE_BAUD RK_CONSOLE_DEVICE"
 
diff --git a/wic/firefly-rk3288.wks b/wic/firefly-rk3288.wks
index da0067f..7b14d1f 100644
--- a/wic/firefly-rk3288.wks
+++ b/wic/firefly-rk3288.wks
@@ -4,4 +4,4 @@
 include rk3288-boot.wks
 part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
-bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/rock-pi-4.wks b/wic/rock-pi-4.wks
index c6174a9..5c02e9f 100644
--- a/wic/rock-pi-4.wks
+++ b/wic/rock-pi-4.wks
@@ -4,4 +4,4 @@
 include rk3399-boot.wks
 part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
-bootloader --ptable gpt --append="console=tty1 console=ttyS2,1500000n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/rock-pi-e.wks b/wic/rock-pi-e.wks
index 97f84d1..9c10d90 100644
--- a/wic/rock-pi-e.wks
+++ b/wic/rock-pi-e.wks
@@ -1,4 +1,4 @@
 include rk3328-boot.wks
 part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
-bootloader --ptable gpt --append="console=tty1 console=ttyS2,1500000n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/tinker-board.wks b/wic/tinker-board.wks
index 5a63ce0..00ae820 100644
--- a/wic/tinker-board.wks
+++ b/wic/tinker-board.wks
@@ -5,4 +5,4 @@ include rk3288-boot.wks
 
 part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
-bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/vyasa-rk3288.wks b/wic/vyasa-rk3288.wks
index 5db65df..5346fbd 100644
--- a/wic/vyasa-rk3288.wks
+++ b/wic/vyasa-rk3288.wks
@@ -4,5 +4,5 @@
 include rk3288-boot.wks
 part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
 
-bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
+bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
 
-- 
2.30.0.rc0

