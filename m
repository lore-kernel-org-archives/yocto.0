Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7748.1620220042092751520
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 06:07:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=qGy6Hgxi;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9389838C04C2
	for <yocto@yoctoproject.org>; Wed,  5 May 2021 13:07:21 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id 82-20020a1c01550000b0290142562ff7c9so1086713wmb.3
        for <yocto@yoctoproject.org>; Wed, 05 May 2021 06:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6d9/Bg+ztM8LhDffkhy2GBq+k/riPh0YP17Wce69hkE=;
        b=qGy6HgxiUStHywC4lOAI8taarEjT80+91uqPDa1vqC/BxQnjZ7C0kQsPotWQT8oDoI
         qsXQJ40719P0WWopVoZzqkowC+pCVqYPq47ycr96Cz9iLeqsATr83LYaTMyNsP3Dbzqr
         AyVRgwmLdFvbsTNBR2NXvfVfbhU9JAMtGnKcRV0utL/oZOpcoRTWOFC0saxsX6IJrEeg
         b9aAPIl2IcjtjmhD0+FfNaJqXhN+hAO+LIwSmNzOiBGYvGQCH5XW0klkUN4+1RYYQUdU
         MqqYP3t70Rg5sf7KNcvAWiuNyDKb1WoxmkgYEytk5BPzKvZjCnzIjnY6b9GOEiUtxKQ7
         /f5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6d9/Bg+ztM8LhDffkhy2GBq+k/riPh0YP17Wce69hkE=;
        b=KtnhCWfy+w8OvL7oOKbiPmAMYDFXtWFVS46WqEkqlZ629a7yy/H5f57C0Zlizzx9dx
         kZ/ChEHEWaDQiaSYgTO5KnpzKWAASli3liSYnv1IYRbPX6ldbI5IcyY+nmvpOO2knEmq
         i31T3nx4qEhUKiOU4KCaZ4jGI+a2UFQ0ihVbkE5QWtQuvI1B1bGT3HYDKp9oFN+FVx1B
         8DlvmOxvAGKRxXC1jdhuAybvHiOsSToZgl6tLfYUL8C9hytt/V42nQ/ac9fZCfUeNUc5
         DwfpFknOtJg3J30LdN0ho3QOOHgcDQiOttRmn3WeDrRt8sewjgFxCJCWjSCRQ6IKPlmL
         aprw==
X-Gm-Message-State: AOAM530/7CcfqJIpi6IQuY2RtWYeXPh+7UphITcrAf4n45C0Oz9AQNCt
	iluEcGGdGGkwAjAENHrZ6d1Q/snrI1pXSQ==
X-Google-Smtp-Source: ABdhPJzsux1+4iz2ERA0Re4lNNUIGyhhsWbtS7AmWEtF5DtzAI9NiuAeBTspfDfo0AXHDVktpTJcAw==
X-Received: by 2002:a1c:1d41:: with SMTP id d62mr9751931wmd.76.1620220040140;
        Wed, 05 May 2021 06:07:20 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id y14sm2847014wrr.82.2021.05.05.06.07.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 06:07:17 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v5 0/2] kmeta BSP for nanopi-m4
Date: Wed,  5 May 2021 15:06:37 +0200
Message-Id: <20210505130639.2652269-1-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

The Wifi/BT support requires firmware, to be properly packaged; BT
support itself is still buggy in mainline; audio jack requires a
couple of patches.

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

Yann Dirson (2):
  linux-yocto: add an initial NanoPi-M4 BSP
  WIP linux-yocto: add workaround to disable VOPL usage on HDMI

 .../files/bsp/rockchip/hdmi-no-vopl.patch     | 65 +++++++++++++++++
 .../files/bsp/rockchip/nanopi-m4-standard.scc |  7 ++
 .../files/bsp/rockchip/nanopi-m4-tiny.scc     |  7 ++
 .../linux/files/bsp/rockchip/nanopi-m4.cfg    | 11 +++
 .../linux/files/bsp/rockchip/nanopi-m4.scc    |  5 ++
 .../linux/files/bsp/rockchip/rk3399.cfg       | 70 +++++++++++++++++++
 .../linux/files/bsp/rockchip/rk3399.scc       |  5 ++
 .../linux/files/bsp/rockchip/rockchip.cfg     | 50 +++++++++++++
 .../linux/files/bsp/rockchip/rockchip.scc     |  8 +++
 recipes-kernel/linux/linux-yocto%.bbappend    |  6 ++
 10 files changed, 234 insertions(+)
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

--=20
2.30.2

