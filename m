Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.1148.1620749450780518106
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 09:10:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=IFT4UYbU;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9564138C066A
	for <yocto@yoctoproject.org>; Tue, 11 May 2021 16:10:50 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id h4so20689285wrt.12
        for <yocto@yoctoproject.org>; Tue, 11 May 2021 09:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+NFyuJYgi+yFAv9p+Yri1SfBOErIb3nx3a/HU7w1Csk=;
        b=IFT4UYbUYXvWvbP2CUTDG+MDVbPRYla9ePJ8XrK94queFDkgAPNKI1iMVMdmsnr+YV
         sLEAQ57+5jw8pA6Zon1RdyLdKTvStC68Lg10A7XAOQ5I6iskDULk4X8t82qH4Mo2pTUW
         tiPizknaHK18x9BSf0wyfFScQRvaPFBY7lJYcRVBTxywd0wOzqOk+aeF50sOpQz/bniX
         QqlP5+LZ+Lr+LT2jcy/uczDyDyjmbhWwQPzUDEChcblmcGxleX5zAjUJOExEL2bqJb5p
         fyYDV2dbSG6XP+aiusCTBMrjrmJeJsSUyXhUgGpObj6UXKBLHqc42cN5K8Laqi4F4Ib1
         KLeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+NFyuJYgi+yFAv9p+Yri1SfBOErIb3nx3a/HU7w1Csk=;
        b=IQ9p2gVvYIJrbLEh/L8bT3TO34Gb4l5bDKrx0ZSNxiy95bhOBMZZp2Q7fRC0Dmmwtw
         tk27iwPtM6i5YlMlMHiPKCTyD4JoTPdm+OBUCd6olS4i3at3XgvIYzDkdetyTl4VjK+R
         GBYeSL6zxpuVxl6Ga/izoETKcncdJHtsF8Amd6yxs0qfFWihLlC05VZh6LLQRC3J2ZHx
         AN8Dm1d3TEZLXhSI6RIVllDfPQAw7YfrnyAC7/xGGxe9+0Dyewz764mwUpO2IxKW/hK0
         j7VG5eaXiE5YqfCMQwQnisnhr+MPAbjM1m9O0tgd19r+xlD9B4Z6ABJcV5AF0Y22DWW9
         DpLQ==
X-Gm-Message-State: AOAM531FVkqVK7hh86L9wEBTwo7uWpQctJ/oI+4PAOZf8pn7mxHiyb8Q
	2iZ8UFIlQXPAKKhBwnsLxZGh1TH2xvc5Zg==
X-Google-Smtp-Source: ABdhPJz+sWe66gjV4uusKxjOBR7IbDr5x1fWQnZg45UcmoQyjAHoZuPBg1ThnC/yl4o+ok0kN6HA/w==
X-Received: by 2002:a5d:6990:: with SMTP id g16mr3554541wru.64.1620749449300;
        Tue, 11 May 2021 09:10:49 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id n123sm3929243wme.24.2021.05.11.09.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 09:10:48 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v6 6/6] WIP NanoPi-M4: activate BT support
Date: Tue, 11 May 2021 18:10:18 +0200
Message-Id: <20210511161018.168172-7-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210511161018.168172-1-yann@blade-group.com>
References: <20210511161018.168172-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

Take the firmware from rbwifibt, as a compatible one does not seem to
be available in broadcom-bt-firmware.

Disclaimer: I have only been able to scan/pair with devices, I could
not establish a connection.  However, with the same board I've had the
same results with the board vendor's own FriendlyCore image.
---
 conf/machine/include/nanopi-m4.inc                    | 6 +++++-
 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg | 6 ++++++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/na=
nopi-m4.inc
index cb27928..3bd5c97 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -3,7 +3,7 @@
=20
 require rk3399.inc
=20
-MACHINE_FEATURES +=3D "usbhost serial wifi"
+MACHINE_FEATURES +=3D "usbhost serial wifi bluetooth"
=20
 KMACHINE =3D "nanopi-m4"
 KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4.dtb"
@@ -26,3 +26,7 @@ SERIAL_CONSOLES =3D "1500000;ttyS2"
=20
 # wifi firmware
 MACHINE_EXTRA_RRECOMMENDS +=3D "linux-firmware-bcm4356"
+
+# bluetooth firmware
+#MACHINE_EXTRA_RRECOMMENDS +=3D "broadcom-bt-firmware-bcm4356a2"
+MACHINE_EXTRA_RRECOMMENDS +=3D "rkwifibt-firmware-ap6356-bt"
diff --git a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg b/reci=
pes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
index d42b744..d45e879 100644
--- a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
+++ b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
@@ -14,3 +14,9 @@ CONFIG_REALTEK_PHY=3Dm
 CONFIG_WLAN_VENDOR_BROADCOM=3Dy
 CONFIG_BRCMFMAC=3Dm
 CONFIG_BRCMFMAC_SDIO=3Dy
+
+# AP6356S BT
+CONFIG_BT_HCIUART=3Dm
+CONFIG_SERIAL_DEV_BUS=3Dy
+CONFIG_SERIAL_DEV_CTRL_TTYPORT=3Dy
+CONFIG_BT_HCIUART_BCM=3Dy
--=20
2.30.2

