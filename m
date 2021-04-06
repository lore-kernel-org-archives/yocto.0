Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.2900.1617752847714179505
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 16:47:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=ibEE090B;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1FC2038C06D4
	for <yocto@yoctoproject.org>; Tue,  6 Apr 2021 23:47:27 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id e18so15939888wrt.6
        for <yocto@yoctoproject.org>; Tue, 06 Apr 2021 16:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=H5U8X/giPh7slgzko9OTYICh/1nkkRYPjJf3yjl4uj0=;
        b=ibEE090B3amuIdSji9Abu+Eu0CT0+YEYh9tJ81vlWGfamCwKmz9AIXW/c0vG8wCQeE
         Wyy+CDExrhxtE7MnfxH2MU8jJnRpqZAAsmzp8HRveaCS32OIK+rNhsW9EkyNLL7JnUCl
         3wEFeS5B3oGGxkFb+B/dobKZDEuZSRnJ6QUg2amqGljbCcC4qxAmKQSbZn1ErmvjnZ30
         xaFTyNr6Kb0ed0nW/2nN6EwydcimptUplYEiFqKQln0DeuEqfmokFfplIgAa7hduE36n
         mZG2HBZBQRm2T8/KSxJ3Hkk68ofsEv/5SoOOmjh6lqnL0QPgoq/sATsWH65z9GS/UUt0
         Wlwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=H5U8X/giPh7slgzko9OTYICh/1nkkRYPjJf3yjl4uj0=;
        b=A8+oQBlylbzCavOzoDggwNUztK5FOoOTbpbgMhJzxHQFehgFUpdwJQhQRtG+jsFjI1
         roYAU8XK62w+RHZvHmDIE5xvhlvl8h+wQz+bMqmUSKxEPcu4wu2TdzmG3gxDCPq993zG
         ZPxqHau+XzH43KK1XYXMq4QnR9y4HCIFW8p1DY1S68MvDkfKhghHhjiB0IJCCtoesGCo
         G+CyhNn+gI1sjDU5S1Ssr0hEeU63OqPUm+uullm2GR0ttm1NuVc8MPJDshEcBDKnStgd
         NxRSjZC2TCQaqm5u45p5pxtWERzumJNYTQNzsjQCJObEXR+i+CrMMV/v29kRtt0mLIQS
         D9+g==
X-Gm-Message-State: AOAM532ywzRm7GT1Mf5BUWhkmhaBeBYQE1XW0xaPfTaj4+ccEe3IgL6V
	OlNIH4nLBWTu9JZq/NjWvbxbeBvEStmrQQ==
X-Google-Smtp-Source: ABdhPJx6eNbAUNEhm8hkdOQFz92Zgw2jNPDCSTC66AlF0+ZdPxF9MMG7uWAko/qDbGvu0qQKBjs5mA==
X-Received: by 2002:a5d:5291:: with SMTP id c17mr796899wrv.110.1617752845459;
        Tue, 06 Apr 2021 16:47:25 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id 128sm5001953wmc.43.2021.04.06.16.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 16:47:24 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH] trusted-firmware-a: use 1500000 baud for serial console
Date: Wed,  7 Apr 2021 01:47:00 +0200
Message-Id: <20210406234700.2493404-1-yann@blade-group.com>
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
 .../files/serial-console-baudrate.patch       | 35 +++++++++++++++++++
 .../trusted-firmware-a_%.bbappend             |  5 +++
 2 files changed, 40 insertions(+)
 create mode 100644 recipes-bsp/trusted-firmware-a/files/serial-console-b=
audrate.patch

diff --git a/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate=
.patch b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.pat=
ch
new file mode 100644
index 0000000..10b5a2b
--- /dev/null
+++ b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
@@ -0,0 +1,35 @@
+From 840d6b6420e1fd8cdf6e4de7fa58a6f8de151622 Mon Sep 17 00:00:00 2001
+From: Yann Dirson <yann@blade-group.com>
+Date: Tue, 6 Apr 2021 17:28:45 +0200
+Subject: [PATCH] Set serial console baudrate back to 1500000.
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

