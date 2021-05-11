Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.1147.1620749447324535832
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 09:10:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=rg3XazgY;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 514D738C066A
	for <yocto@yoctoproject.org>; Tue, 11 May 2021 16:10:46 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id m9so20723770wrx.3
        for <yocto@yoctoproject.org>; Tue, 11 May 2021 09:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IxCBNrjJ6Y1g4yL9sMko1faRT+sVhVpYE1eY44SEWIk=;
        b=rg3XazgYnMpMi0SXwNLQ0/7bHlTRgMGp9W84eUEXh6Mv/P90oe7kgobverFhEid2ZZ
         PzeT2ngCFCsqH8U61VhVFuISPp9C0m5C14/58PPF8m1tZ4Q4w9l1M2CmFKJ55APAySG5
         DBd7CNN3+A1dmaI7OrEI+CGll7TdBRclMNkWmWftHt1JHsRQmU4mLMNVQMkEr0MJN9aX
         BmW/Gc2qO+0aYmK86Po1dVE6a/gPfPe1dr8GPsUliteB0RsSkBDp7RZnoSqZKQ3SvLfW
         ZbdNeAriuiwyoJg6xHFG5Sdpz+2ZZTT6vWfY/+8Z3H+YF43HId63m9XWUSULMWkj/Hin
         N24A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IxCBNrjJ6Y1g4yL9sMko1faRT+sVhVpYE1eY44SEWIk=;
        b=bS7l/VeTr4YF4BmwkcBUFpzqjJ+XdeByrT/O6FWta7oAXvReszUJ494iBnnViljaJz
         iOoHp+/K9nqPOyGqTFN3DYh9uSx7H0XMMBmU9kY08OhaGzjXQZwRFUux8EgSP2wpCXyD
         9BrAs/7PH+ET1gLZf8z1WtqQDw5tcZIYOX6At0WraVhRM9wNOu+vFQLqM5zA4tW8cXi3
         C/Yl4R8oKt0ultAJ4j+1PFcSHq7ZCK2vuVCYNsSr8QE9itkljYuRuxq1JEvDwlp6K7Oc
         /fnE2fSpkWfeVanumVosxJWIfCsLjF/pKFp+zma3MTKcaxdxN1S9p78Vsf4G2z0aNl0s
         XKNA==
X-Gm-Message-State: AOAM533EnnHk2WFLXTGMJgF5vE0qXHsBtU/yw+/26FXob766Vb1xEJeU
	bo3aif1QNpb1ABNzbzrrEIKuqH4UH2ShCw==
X-Google-Smtp-Source: ABdhPJz2sMUW3qnSkZ3Figs0fHQEsF52hM7cKrDbwGowa7CNjD5KU/8sWAwumKM64yNBAbTlEC9xeA==
X-Received: by 2002:a5d:6a90:: with SMTP id s16mr39116516wru.163.1620749444705;
        Tue, 11 May 2021 09:10:44 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id n123sm3929243wme.24.2021.05.11.09.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 09:10:43 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v6 0/6] kmeta BSP for nanopi-m4
Date: Tue, 11 May 2021 18:10:12 +0200
Message-Id: <20210511161018.168172-1-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

With this version the Wifi works (requires recent poky master for a
linux-firmware fix).

I'm not especially happy with the BT support:
- it uses the rkwifibt repo because I don't have any other BT firmware
  for this chip
- I was not able to get it to work on the board I have (even with vendor
  image with legacy kernel), so I may have a problem with this particular
  piece of hardware.  At least it can do discover and pairing, maybe wide=
r
  testing will be useful.


Changes in v6:
- support for Wifi and BT

Changes in v5:
- removed AP6356S-related config options, will come later with proper
  wifi/bt support
- removed CONFIG_SND_SOC_RK3288_HDMI_ANALOG which turns out not to be
  needed for HDMI audio
- new patch to get HDMI to work

Changes in v4:
- install our bsp files in bsp/rockchip/ rather than directly in bsp/
- also add "serial" to MACHINE_FEATURES

Changes in v3:
- relocate the bsp files into files/ so we don't have to add linux-yocto/
  to FILESEXTRAPATHS for all other kernels
- removed the "don't force KCONFIG_MODE to alldefconfig" (not needed fina=
lly,
  and causing interferences in default setup)
- add "usbhost" to MACHINE_FEATURES to enable lsusb and friends
- better hardware coverage (though still no wifi/bt/audio, and buggy hdmi=
)

Yann Dirson (6):
  linux-yocto: add an initial NanoPi-M4 BSP
  WIP linux-yocto: add workaround to disable VOPL usage on HDMI
  linux-firmware: import variables file for ap4356s firmware from
    armbian
  NanoPi-M4: activate Wifi support
  WIP Import rkwifibt-firmware from vendor's meta-rockchip
  WIP NanoPi-M4: activate BT support

 conf/machine/include/nanopi-m4.inc            |   9 +-
 .../files/brcmfmac4356-sdio.txt               | 126 ++++++++++++++++++
 .../linux-firmware/linux-firmware_%.bbappend  |  13 ++
 .../files/bsp/rockchip/hdmi-no-vopl.patch     |  65 +++++++++
 .../files/bsp/rockchip/nanopi-m4-standard.scc |   7 +
 .../files/bsp/rockchip/nanopi-m4-tiny.scc     |   7 +
 .../linux/files/bsp/rockchip/nanopi-m4.cfg    |  22 +++
 .../linux/files/bsp/rockchip/nanopi-m4.scc    |   5 +
 .../linux/files/bsp/rockchip/rk3399.cfg       |  70 ++++++++++
 .../linux/files/bsp/rockchip/rk3399.scc       |   5 +
 .../linux/files/bsp/rockchip/rockchip.cfg     |  50 +++++++
 .../linux/files/bsp/rockchip/rockchip.scc     |   8 ++
 recipes-kernel/linux/linux-yocto%.bbappend    |   6 +
 .../rkwifibt-firmware/files/LICENSE.rockchip  |  41 ++++++
 .../rkwifibt-firmware/rkwifibt-firmware.bb    | 110 +++++++++++++++
 15 files changed, 543 insertions(+), 1 deletion(-)
 create mode 100644 recipes-kernel/linux-firmware/files/brcmfmac4356-sdio=
.txt
 create mode 100644 recipes-kernel/linux-firmware/linux-firmware_%.bbappe=
nd
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/hdmi-no-vopl.=
patch
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-sta=
ndard.scc
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-tin=
y.scc
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.scc
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rk3399.cfg
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rk3399.scc
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rockchip.cfg
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rockchip.scc
 create mode 100644 recipes-kernel/rkwifibt-firmware/files/LICENSE.rockch=
ip
 create mode 100644 recipes-kernel/rkwifibt-firmware/rkwifibt-firmware.bb

--=20
2.30.2

