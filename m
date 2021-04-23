Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.10322.1619187475269842562
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 07:17:55 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=dy9VwsNe;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8F99F38C0534
	for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 14:17:54 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id i21-20020a05600c3555b029012eae2af5d4so1328289wmq.4
        for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 07:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FNeaM8eQbM3/CL+dZl6MkUs5o08JCzFwEOu1VGcsbMc=;
        b=dy9VwsNeZ+7Dp35jhGZgv9dH4YJOTxapzi92GtLKse0ad1XSQdPm2Qnus7kmU0bRnZ
         oF3hlrDHV270mEme2QJB9D7DYKfb076Z2gd3/l2z+N1Ga1QzlX0RS4cz7ijaVqVb2pnp
         YHCniVfVgmbUAK07oh7Brkz4DVQ5K62Mz2Z12eWLvdl11K1n10sqw7G9P70RZBQRX35+
         HaakUQEFC5vxPqvZ3ehUCxtzVA6foRz84ourJ0q7wWf0DHSaCFog8VPXxV+jRy3WPCbg
         HIuUlpLEWg3W5z1+ovRp8mMb6ht9rDI6HYA7Qr2gFrKl0eoRpzxOItBIFav+GtE7gxTY
         FssQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FNeaM8eQbM3/CL+dZl6MkUs5o08JCzFwEOu1VGcsbMc=;
        b=DtkoompN+GoHC87Zi7vX9ki8jHta8xkDrkS3y0mtx3CgnjiPIulrTwPcMhqVGP01rA
         nhIUSjA+3WrAL/XD/tCuzfT+JeljhbKunP0xCyhJrnJ/xaqRgCT/ZpDXXLfu4dtu8zDp
         L+B9Nyux2EmgVGrx/Ls8/5Y/hUhvpEyUSHXQm25EGE5v6lPSfZdVGeWFoJvvi8XF4I+f
         CqvjmPpfaGagTV1sba1U3+vZj5g2ERUlSonrvzlEaleDwBAtWrmsH0/Vx+a9qhmnq5hh
         1fqh8KDl6aqVG69HAlcb4qpem8ZuLUwN35+Rtu0IOgpuoWpPylkr8JyeJNq4hRYXWiN6
         PiqQ==
X-Gm-Message-State: AOAM531cgO5aTtdNxzs7rXAerXkLNp4t+EEfWuuAZYSjMruN3BbgnaGM
	/jYXZPyfY+SGZ62C9wb2lxjPk8jdHDt1sA==
X-Google-Smtp-Source: ABdhPJzVCN9JfhQY5x6qThuNMnwvLE8sDtGmCIgs3fZB9nmliXdVhi6rxqOr47ioaRi7hn68/i3aYA==
X-Received: by 2002:a1c:2587:: with SMTP id l129mr4474191wml.135.1619187473134;
        Fri, 23 Apr 2021 07:17:53 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id t14sm9432928wrz.55.2021.04.23.07.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 07:17:52 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v3 0/3] kmeta BSP for nanopi-m4
Date: Fri, 23 Apr 2021 16:17:10 +0200
Message-Id: <20210423141713.1970329-1-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

Changes from in v3:
- relocate the bsp files into files/ so we don't have to add linux-yocto/
  to FILESEXTRAPATHS for all other kernels
- removed the "don't force KCONFIG_MODE to alldefconfig" (not needed fina=
lly,
  and causing interferences in default setup)
- add "usbhost" to MACHINE_FEATURES to enable lsusb and friends
- better hardware coverage (though still no wifi/bt/audio, and buggy hdmi=
)

The Wifi/BT support requires firmware, to be properly packaged; BT
support itself is still buggy in mainline; audio jack requires a
couple of patches; HDMI requires at the very least a DTS patch, and
LibreELEC maintains a "latest and greatest" DRM patchset, but it can
conflicts with some patches in default kmeta.

Yann Dirson (3):
  rockchip-defaults: don't force KCONFIG_MODE to alldefconfig
  NanoPi-M4: let all variants use the same KMACHINE type
  linux-yocto: add a NanoPi-M4 BSP

 conf/machine/include/nanopi-m4.inc            |  1 +
 conf/machine/include/rockchip-defaults.inc    |  1 -
 .../linux/files/bsp/nanopi-m4-standard.scc    |  7 +++
 .../linux/files/bsp/nanopi-m4-tiny.scc        |  7 +++
 recipes-kernel/linux/files/bsp/nanopi-m4.cfg  | 40 ++++++++++++++
 recipes-kernel/linux/files/bsp/nanopi-m4.scc  |  5 ++
 recipes-kernel/linux/files/bsp/rk3399.cfg     | 50 +++++++++++++++++
 recipes-kernel/linux/files/bsp/rk3399.scc     |  5 ++
 recipes-kernel/linux/files/bsp/rockchip.cfg   | 53 +++++++++++++++++++
 recipes-kernel/linux/files/bsp/rockchip.scc   |  6 +++
 recipes-kernel/linux/linux-yocto%.bbappend    |  6 +++
 11 files changed, 180 insertions(+), 1 deletion(-)
 create mode 100644 recipes-kernel/linux/files/bsp/nanopi-m4-standard.scc
 create mode 100644 recipes-kernel/linux/files/bsp/nanopi-m4-tiny.scc
 create mode 100644 recipes-kernel/linux/files/bsp/nanopi-m4.cfg
 create mode 100644 recipes-kernel/linux/files/bsp/nanopi-m4.scc
 create mode 100644 recipes-kernel/linux/files/bsp/rk3399.cfg
 create mode 100644 recipes-kernel/linux/files/bsp/rk3399.scc
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip.cfg
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip.scc

--=20
2.30.2

