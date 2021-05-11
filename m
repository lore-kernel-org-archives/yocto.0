Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.1211.1620749448829584594
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 09:10:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=L0bivPjk;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B9A1838C066A
	for <yocto@yoctoproject.org>; Tue, 11 May 2021 16:10:48 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id n17-20020a7bc5d10000b0290169edfadac9so1010974wmk.1
        for <yocto@yoctoproject.org>; Tue, 11 May 2021 09:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CsRkqVPPGqy9pbpUYQUvS4h9wMfYq1tAQj75G/2Ss0A=;
        b=L0bivPjkhaeAEgaLSwPetKdfkMExjlxV7fGbfrXZTxROqdgBnaPIz1RL1gPUcb0s06
         rPurouQtcAZw5/lu3QElzDo9u8U7w3Fj/nD35EVrHskhFlTTiW1xxK69apxacF7EmI6F
         ejtrLeos1DYNJRn17gswazd8Jp1wXNnrndWLhNSyK/mNXPJj8iFH3Awox6U7O6so7Nsg
         uKBR9Wu51cQpHv+FA7pf9BYTa5y2OngUqO2/ff4iT4JWmhdcysV0QuNcVhrglNtK4PCK
         gS6tKSiXU4/qtOFI69wXReC5naxC6SojkAxywoI+iUjA6wU0eeNOPtgRNxMTzhBXhdlT
         Htog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CsRkqVPPGqy9pbpUYQUvS4h9wMfYq1tAQj75G/2Ss0A=;
        b=o832NIvJxh2H/w098yQTPHY5u6ZK191KGu9eZtr98vAeHqlZY0XYRWATVI6sy+c5Vy
         vPPTmIMGNpFs+9rNOYfojK78QkCbm1OXZFhj8x6xO/pZ8cxe85xuRprZFe5nBWq3hGlw
         8oMXXmj3JzR6p7jOdnAxEaVhy1MAXEl6y5rjnQcHB3mBL4fAKsRqPnNILyThkq4KfJLJ
         RN9ceHQbXwS561URtM2sdW11NIS68QRBXMM1SW6aa/8ORIaJsrNPxzy1V1APBKA7KqLI
         nYYtYOHiUWtIWWFOJTHn0BOMxgyrbJwTATyycRuMXjGWbyFlgOWAS9WfRXijbg+cxTNG
         0rJg==
X-Gm-Message-State: AOAM5332yAoVqw+QLMMVEGCAuN9t0s2geRA55ideTk5oYApoM2N3R92T
	rrWHMdiM/AM/AOCos7NcHFeWNnce/QUoVw==
X-Google-Smtp-Source: ABdhPJwL9Ln3n58Goay3eqGoYmo3PdTyDw6LV7MBtQ1027BQ2qM4pmJZaQm7FzyvKyfmLLvEdwb0ZA==
X-Received: by 2002:a1c:228a:: with SMTP id i132mr33584222wmi.10.1620749447484;
        Tue, 11 May 2021 09:10:47 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id n123sm3929243wme.24.2021.05.11.09.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 09:10:46 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v6 4/6] NanoPi-M4: activate Wifi support
Date: Tue, 11 May 2021 18:10:16 +0200
Message-Id: <20210511161018.168172-5-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210511161018.168172-1-yann@blade-group.com>
References: <20210511161018.168172-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

---
 conf/machine/include/nanopi-m4.inc                    | 5 ++++-
 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg | 5 +++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/na=
nopi-m4.inc
index a14b705..cb27928 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -3,7 +3,7 @@
=20
 require rk3399.inc
=20
-MACHINE_FEATURES +=3D "usbhost serial"
+MACHINE_FEATURES +=3D "usbhost serial wifi"
=20
 KMACHINE =3D "nanopi-m4"
 KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4.dtb"
@@ -23,3 +23,6 @@ IMAGE_BOOT_FILES ?=3D "\
     "
=20
 SERIAL_CONSOLES =3D "1500000;ttyS2"
+
+# wifi firmware
+MACHINE_EXTRA_RRECOMMENDS +=3D "linux-firmware-bcm4356"
diff --git a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg b/reci=
pes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
index f3a2abf..d42b744 100644
--- a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
+++ b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
@@ -9,3 +9,8 @@ CONFIG_PWRSEQ_SIMPLE=3Dy
=20
 # RTL8211E
 CONFIG_REALTEK_PHY=3Dm
+
+# AP6356S Wifi
+CONFIG_WLAN_VENDOR_BROADCOM=3Dy
+CONFIG_BRCMFMAC=3Dm
+CONFIG_BRCMFMAC_SDIO=3Dy
--=20
2.30.2

