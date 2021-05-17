Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.18249.1621254001590980377
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 05:20:01 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=KomqlrqP;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7C7E538C0579
	for <yocto@yoctoproject.org>; Mon, 17 May 2021 12:20:01 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id z137-20020a1c7e8f0000b02901774f2a7dc4so1193009wmc.0
        for <yocto@yoctoproject.org>; Mon, 17 May 2021 05:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CsRkqVPPGqy9pbpUYQUvS4h9wMfYq1tAQj75G/2Ss0A=;
        b=KomqlrqP7UGEjZxiTQwcSFq+MLfdrHciWlCTtT5RnyOIMBIkqSy9YIYYQe2kC/gWGT
         pW2pIOrdv4FaoBG791Oa8jLnDBNOSYdCLUy1tjrINj17zqQixUFPD8YAsJ4ltBXA3qiK
         /VJIFAEAHbLk8357ZwWfQ/tq38BL+1UoVfAvL7/xsBQgqVJJX6H7TLhHXIAYHp5uOp1H
         zG70lNkdSEoauk77pQUIfqs1xO/AHtNIwCWUHhRbCqcZ0edGfRIGgFw0vsPpfOE8A45v
         64H4XVuW9Tz16wpHrJgidx+uxKT0zCZO7CrkXFD3Qw7zJqbq+8LdewjB5hsSJsq2xHyj
         siVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CsRkqVPPGqy9pbpUYQUvS4h9wMfYq1tAQj75G/2Ss0A=;
        b=NsTbve/I3PWXzh5TuIl9ckvWlnVA+oeSjDvTdiKtWpdgSM1sBktPJPhMuUowtglarP
         2QptKeTOShZmPvsRkHslY+HlA0vZN1jw5uBZ5deVE+9r50GQGW9Katb0l6+AQNjBmRR3
         D0Eiw9MKF0lFPN7bOx1ppccqVw82Eg11DRJegO0bSP6UfBQX3mIf2BAhhDE1YjKpfA4b
         WeFfDpzFTZJAKCnwxftnAcS405hVHRZ7rN1V10ATtinMLbgHLL1qHDDc6zZj0aIj+zUY
         +OioorEhpAFvGRu4nddOIEltPWlLDEU7ztx91vg59RBoFV5vWpSsczybpH8sdXlOSAC0
         9Ehw==
X-Gm-Message-State: AOAM533Iqpz7jYh0hLjVXsmE0cSHa5uiNVZi0Hg/VHGSVWOd6/DBBtS5
	lWXFZWP7ZG+XCHDNpnaenuSGYLgzFy2I4g==
X-Google-Smtp-Source: ABdhPJwTKWbO2FKUVCTh35MWe5Mx79cydq8H3WaNCtnmUSuEvVNGcNobvd1hW/EIOhS24JPSQ88XcA==
X-Received: by 2002:a1c:7210:: with SMTP id n16mr5261137wmc.18.1621254000310;
        Mon, 17 May 2021 05:20:00 -0700 (PDT)
Received: from blanquette.saintdenis.blade-group.net ([185.123.26.202])
        by smtp.gmail.com with ESMTPSA id y2sm23702270wmq.45.2021.05.17.05.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 05:19:59 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v7 4/6] NanoPi-M4: activate Wifi support
Date: Mon, 17 May 2021 14:19:36 +0200
Message-Id: <20210517121938.207004-5-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210517121938.207004-1-yann@blade-group.com>
References: <20210517121938.207004-1-yann@blade-group.com>
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

