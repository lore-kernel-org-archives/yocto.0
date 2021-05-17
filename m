Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.18098.1621253999969195774
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 05:20:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=OoXBzwD1;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2636738C0579
	for <yocto@yoctoproject.org>; Mon, 17 May 2021 12:19:59 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id 62so2432922wmb.3
        for <yocto@yoctoproject.org>; Mon, 17 May 2021 05:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IsPD5Q4wfCqMdBkufq2j+YvAjcZsuTibJ4eJDtIC7OU=;
        b=OoXBzwD1ma6EG7Yf/5DbyRr8LgbPTuEOB9HArVUKiXHN6yu1Hs/o6EuCoYeoCiyfQB
         1CjnPlA8Ol/41a105Dzhe0xGADToQkEfRscXPaw5VBoIpMjizcDYH0uJ3/unj0KX72P2
         nCqeqrBq8tFw0SObYuU3RFlbwUhaznS7MX8RuwkN8KemuRj5+oZAEjqdZu6jIuarAvDH
         buibO0NALwOpkM69BQR8CYzuqcx3hqaiWK9R1osoAjEZ8hLW8Kye8+DwxktBjPgiS83O
         qQMaI5sBo/mPIByJkWXn9yuCWZI81vsSGIRDxV+1hV+nLYZazWKq3nZu774loEMPaqgB
         YEig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IsPD5Q4wfCqMdBkufq2j+YvAjcZsuTibJ4eJDtIC7OU=;
        b=aRJsp8khxWbRws5nypQ72urZ5ojtT2k2DQay5I+bfjmA/e8iFgnYrZpwKW6KM0gN45
         O/geqzLBp2VSx3e8lZtu9Hg9rK8fNv2x0U1LgEIJnE1D6ZG1IUTw7S57tCqh66lH/vUN
         3mkDXZIaLYrKthgk1zHLLe2vmGoXvAtXpvn9gFhIIh+I28UkVOnIP/InEgwsyWJ0tGaC
         QUVirVxwDMFSD9cDY09V0wuOGCIFGJrylWXdEPxa1qr3LQFDd0fLfmyOftD5hiHfTq7i
         RVDjmfteyqfxrv7m/KfyH6bn3E/eAZEz/2MQdJp5iIeV/MGCssvW0A1lUehhnmYm//nR
         DyhA==
X-Gm-Message-State: AOAM532ogycYCYa/NCxgw47MX2+hRpTAV6hZNJ+7DGRHiTQ3KWr1S6qC
	bWhvFUvOzxLlkLCgzkaXGyvYQ8cvwazBcA==
X-Google-Smtp-Source: ABdhPJxlUsjaWAOxfUAa5aZZJNUKbK8w+1Ytz4ZEJOcLMZTPSk5KjksYO2KZ42FubPfJV4t5ZoWLwg==
X-Received: by 2002:a05:600c:414b:: with SMTP id h11mr14169670wmm.139.1621253997549;
        Mon, 17 May 2021 05:19:57 -0700 (PDT)
Received: from blanquette.saintdenis.blade-group.net ([185.123.26.202])
        by smtp.gmail.com with ESMTPSA id y2sm23702270wmq.45.2021.05.17.05.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 05:19:57 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v7 0/6] kmeta BSP for nanopi-m4
Date: Mon, 17 May 2021 14:19:32 +0200
Message-Id: <20210517121938.207004-1-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

With this version the most board features work (Wifi requires recent
poky master for a linux-firmware fix), except for the audio jack and
possibly Bluetooth support (the WIP patches are mostly here for
discussion).

I'm not especially happy with the BT support:
- it uses the rkwifibt repo because I don't have any other BT firmware
  for this chip
- I was not able to get it to work on the board I have (even with vendor
  image with legacy kernel), so I may have a problem with this particular
  piece of hardware.  At least it can do discover and pairing, maybe wide=
r
  testing will be useful.


Changes in v7:
- use "KMETA_EXTERNAL_BSP" and "nopatch" in the BSP definition to get the
  patches properly applied, as discussed in
  https://lists.yoctoproject.org/g/yocto/topic/82769152
- remove WIP tag from "add workaround to disable VOPL usage on HDMI" than=
ks
  to this

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
  linux-yocto: add workaround to disable VOPL usage on HDMI
  linux-firmware: import variables file for ap4356s firmware from
    armbian
  NanoPi-M4: activate Wifi support
  WIP Import rkwifibt-firmware from vendor's meta-rockchip
  WIP NanoPi-M4: activate BT support

 conf/machine/include/nanopi-m4.inc            |   9 +-
 .../files/brcmfmac4356-sdio.txt               | 126 ++++++++++++++++++
 .../linux-firmware/linux-firmware_%.bbappend  |  13 ++
 .../files/bsp/rockchip/hdmi-no-vopl.patch     |  65 +++++++++
 .../files/bsp/rockchip/nanopi-m4-standard.scc |   8 ++
 .../files/bsp/rockchip/nanopi-m4-tiny.scc     |   8 ++
 .../linux/files/bsp/rockchip/nanopi-m4.cfg    |  22 +++
 .../linux/files/bsp/rockchip/nanopi-m4.scc    |   5 +
 .../linux/files/bsp/rockchip/rk3399.cfg       |  70 ++++++++++
 .../linux/files/bsp/rockchip/rk3399.scc       |   5 +
 .../linux/files/bsp/rockchip/rockchip.cfg     |  50 +++++++
 .../linux/files/bsp/rockchip/rockchip.scc     |   8 ++
 recipes-kernel/linux/linux-yocto%.bbappend    |   6 +
 .../rkwifibt-firmware/files/LICENSE.rockchip  |  41 ++++++
 .../rkwifibt-firmware/rkwifibt-firmware.bb    | 110 +++++++++++++++
 15 files changed, 545 insertions(+), 1 deletion(-)
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

