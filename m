Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.4799.1617867272031398533
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Apr 2021 00:34:32 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=QWM/3gst;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9CCB738C0523
	for <yocto@yoctoproject.org>; Thu,  8 Apr 2021 07:34:29 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id j5so8758wrn.4
        for <yocto@yoctoproject.org>; Thu, 08 Apr 2021 00:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CTuhWRUs4gf4MvGDyMefo3uLrcDL5YwBCKm1XhqYkKw=;
        b=QWM/3gsto4Ydco8yBRiPuSG/FZHWB1i/dhrIc4MA3pAoobkE0FptW6UfseqZ0dHimM
         Num/mEZIE9H7PFVfncqjEwn97QuqRNTDGTrSA24L1LDOIYo1ix2Uo2geuvpZx61m1zxc
         /qcen6CmNw2w/Z6pkcDFMWZ+tXLxtYgSQaEO7n6GbDNwFZJQ5sPOMSUeCu8f6NEUN2B2
         GOqWAUgO9aR6QVncRjTz1zXZ/ccmNlgEUzQ49PER1v7mEpKw6sTtsm1wj8dRDHwl4CTv
         z6a4A/TCUArFx3/SdpNuIETLBItqZY1UNfKWcyq2om67Pbw2wFIwfbaXqx14ZJ9GKiwJ
         llNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CTuhWRUs4gf4MvGDyMefo3uLrcDL5YwBCKm1XhqYkKw=;
        b=b6N66XsYQ68AZ0fznENnBiR24AXhUl+hj+wEJk+YkL3m6rElT1lNmLt2nOU+cnEX9d
         QUaPj8xedSl4o2yemnSpHb9id6j4Ss9vQ77Hr5ezR3ygZ7CJrIyjOPhqrsUQ1Zh9mUhc
         qAe9T78a3QdpVbJF6AOUDNjSJcMpEQdfDuayjUeaj8xHX1yR6mQUJDOGqDNjvx/lKvJf
         JbjwhaxqoaV8ZNKkPKBof2P9CA8QBzaoOMMKP5z/y7/T6sYWqg5T/U89Mufeg9Q+8Fmr
         hog4DcN0iEart64MSc2c6QHv8X6LR3ZRhWtTYHKEXR5QWBQeq7Atr99RetlCpoZL8zKZ
         XuHA==
X-Gm-Message-State: AOAM530SiLx2q6rEM8WUIlaXf6zcFYvgvX/f7gs9IiEZWgZWbh7BRjKr
	/ksbL0fulwps9EuBNnG5OGuhk1L1hoS8eQ==
X-Google-Smtp-Source: ABdhPJyAC7kdWKQDMaMa92fR2ByKNWHY+EtgHrfZrzbtEO79unB/gFUUIfrKKs1UEDQbd6asCMoYqg==
X-Received: by 2002:a5d:4537:: with SMTP id j23mr9490913wra.249.1617867267945;
        Thu, 08 Apr 2021 00:34:27 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id d7sm14866871wrw.63.2021.04.08.00.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 00:34:27 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v2] trusted-firmware-a: use 1500000 baud for serial console
Date: Thu,  8 Apr 2021 09:34:02 +0200
Message-Id: <20210408073402.2537232-1-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

TF-A runs between two u-boot stages which both uses 1500000 baud, it
just makes no sense to use the same UART at a different rate.

Here is a sample session with the successive stages, with TF-A artificial=
ly
separated for emphasis:

 [20210406-175438.135934] U-Boot TPL 2021.01 (Jan 11 2021 - 18:11:43)
 [20210406-175438.135956] Channel 0: DDR3, 933MHz
 [20210406-175438.236974] BW=3D32 Col=3D10 Bk=3D8 CS0 Row=3D15 CS=3D1 Die=
 BW=3D16 Size=3D1024MB
 [20210406-175438.237000] Channel 1: DDR3, 933MHz
 [20210406-175438.237004] BW=3D32 Col=3D10 Bk=3D8 CS0 Row=3D15 CS=3D1 Die=
 BW=3D16 Size=3D1024MB
 [20210406-175438.237008] 256B stride
 [20210406-175438.237012] Trying to boot from BOOTROM
 [20210406-175438.237015] Returning to boot ROM...
 [20210406-175438.237018]
 [20210406-175438.573394] U-Boot SPL 2021.01 (Jan 11 2021 - 18:11:43 +000=
0)
 [20210406-175438.573431] Trying to boot from MMC1

 [20210406-175438.589254] NOTICE:  BL31: v2.3():v2.3-dirty
 [20210406-175440.534055] NOTICE:  BL31: Built : 15:56:43, Apr 20 2020

 [20210406-175441.393423] U-Boot 2021.01 (Jan 11 2021 - 18:11:43 +0000)
 [20210406-175441.393429]
 [20210406-175441.393433] SoC: Rockchip rk3399

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 .../files/serial-console-baudrate.patch       | 36 +++++++++++++++++++
 .../trusted-firmware-a_%.bbappend             |  5 +++
 2 files changed, 41 insertions(+)
 create mode 100644 recipes-bsp/trusted-firmware-a/files/serial-console-b=
audrate.patch

Changes in v2:
 - added Upstream-Status tag

diff --git a/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate=
.patch b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.pat=
ch
new file mode 100644
index 0000000..2d6e9bf
--- /dev/null
+++ b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
@@ -0,0 +1,36 @@
+From 840d6b6420e1fd8cdf6e4de7fa58a6f8de151622 Mon Sep 17 00:00:00 2001
+From: Yann Dirson <yann@blade-group.com>
+Date: Tue, 6 Apr 2021 17:28:45 +0200
+Subject: [PATCH] Set serial console baudrate back to 1500000.
+Upstream-Status: Inappropriate[other]
+
+TF-A runs between two u-boot stages which both uses 1500000 baud, it
+just makes no sense to use the same UART at a different rate.
+
+This effectively reverts part of 0c05748bdebfad9fa43a80962186438bb8fbce6=
2.
+Main reason for that change stated in https://developer.trustedfirmware.=
org/T762
+is ChromeOS compatibility.
+
+Looks like this patch may become unnecessary in the future, when
+u-boot and TF-A get to communicate this value.
+
+---
+ plat/rockchip/rk3399/rk3399_def.h | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/plat/rockchip/rk3399/rk3399_def.h b/plat/rockchip/rk3399/rk=
3399_def.h
+index ba83242eb..8d6ecfbe6 100644
+--- a/plat/rockchip/rk3399/rk3399_def.h
++++ b/plat/rockchip/rk3399/rk3399_def.h
+@@ -17,7 +17,7 @@
+ /**********************************************************************=
****
+  * UART related constants
+  **********************************************************************=
****/
+-#define RK3399_BAUDRATE			115200
++#define RK3399_BAUDRATE			1500000
+ #define RK3399_UART_CLOCK		24000000
+=20
+ /**********************************************************************=
********
+--=20
+2.30.2
+
diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend=
 b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index 442dee8..1942c17 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -4,3 +4,8 @@ DEPENDS_append_rk3399 =3D " virtual/arm-none-eabi-gcc-nat=
ive"
=20
 COMPATIBLE_MACHINE_append_rk3399 =3D "|rk3399"
 COMPATIBLE_MACHINE_append_rk3328 =3D "|rk3328"
+
+FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
+SRC_URI +=3D "\
+    file://serial-console-baudrate.patch \
+"
--=20
2.30.2

