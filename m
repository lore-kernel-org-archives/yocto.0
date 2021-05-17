Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.18250.1621254003287591708
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 05:20:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=nh4vv1+o;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 30B7138C0579
	for <yocto@yoctoproject.org>; Mon, 17 May 2021 12:20:03 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id v12so6164569wrq.6
        for <yocto@yoctoproject.org>; Mon, 17 May 2021 05:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+NFyuJYgi+yFAv9p+Yri1SfBOErIb3nx3a/HU7w1Csk=;
        b=nh4vv1+oBXVvtcsmoJ0NAG8LVQf9RpLq72+njNWe3QkXTjsuH1BclW2f65EWAuuRKf
         t2wnumB+GGRtHKLI3ibtJWd0hI2mNn4dYBENUoiFa/HsJzTNFciwKxbyLcpQgP4VQzSG
         JtTa/fPgFgYMHIR5GGz47U23zrOJr29Lb2kHi1Hv7YYsKsx8biiKKXyiDQD/iSiw6IgY
         MfvaaEv9/0GPs7CsJWi0L7dSGm9SnDTVNUuV/wXJ0DZv7iMuKj8FA47cv3PHSM7hjo8f
         bjtVsJUaoJ7QWNEhLYayX/lQWEq/X8b4UsR0IM9y7DE3/1Z9wLZYxcwDECvzO1KBmnbf
         RhcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+NFyuJYgi+yFAv9p+Yri1SfBOErIb3nx3a/HU7w1Csk=;
        b=DFaul2GAVfDaZTQJm38uEdZxiIU0SAH2F0atg/Cm1zPhTJJE7wsH0+7+2zznNGrvqg
         ynPTmTVAKI0me2g2vHdGvbHTFBf1bK5Ro+V14G61kDrEpKAFahfrMH9UFdcHu+vMnh18
         xucc+ZFoSyr2UxjIESiuLXvJHfmkB0ZBPxjkpze6UqA//8aJlDk6qNQo8ZYTl7FKiFAf
         5w4f6VCElfE+0akJl4yXvUqbbAByi0NWm33D/5rROZREeuMWhZFW4RT4XLTVAYq1YXf1
         dUPH2rxG9C8ovjupxEAo1UkJZHvgoKTt3vTND5MTsCZVIdDLqtPi6yIBjMC5AFvFUSdA
         b57w==
X-Gm-Message-State: AOAM533P/gSHhXDgVOJkexE+1a/5vcnCf0PDDI1Z+1px4slc9LWXCII6
	VLkP0+IU8KIvSHaSeL6NxLGZt9OWK07q8g==
X-Google-Smtp-Source: ABdhPJx0Tid9IP+v64WkeuUNVQo15ljq5mIFlAWu9JvMHrRn2B+IVusjIKEg5w2QfBIbULHTYNPbXQ==
X-Received: by 2002:adf:f309:: with SMTP id i9mr12204498wro.307.1621254001979;
        Mon, 17 May 2021 05:20:01 -0700 (PDT)
Received: from blanquette.saintdenis.blade-group.net ([185.123.26.202])
        by smtp.gmail.com with ESMTPSA id y2sm23702270wmq.45.2021.05.17.05.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 05:20:01 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v7 6/6] WIP NanoPi-M4: activate BT support
Date: Mon, 17 May 2021 14:19:38 +0200
Message-Id: <20210517121938.207004-7-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210517121938.207004-1-yann@blade-group.com>
References: <20210517121938.207004-1-yann@blade-group.com>
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

