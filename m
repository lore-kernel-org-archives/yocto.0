Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.5027.1617267159457388694
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Apr 2021 01:52:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=UcllXfTV;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 820F338C08B9
	for <yocto@yoctoproject.org>; Thu,  1 Apr 2021 08:52:36 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id x13so984831wrs.9
        for <yocto@yoctoproject.org>; Thu, 01 Apr 2021 01:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7IEGRuppnXlCizpAO5Dd+gw2EAs6iIxHqRUIJL3BibM=;
        b=UcllXfTVd9M5QIZr8zg+zbQl72SvKk7pVNgFO3ZbH/kPHMMFPovO+n6zCrvK/imoNf
         SnnOFIK/z9yvGshwb21PEjA1vZa+KYfmk8kHC55hsVi9VOgyNyM4I9nd37+Jk3a0F4ye
         pZz+nXX4GzLf0Gz71zXfRIkQuavu4dPe13BmQFnbWTNEzWdwz3HX7koAC5X94DOL20uC
         M1ON7r397lM5Q58ZWPaCam2TAXatqnr5/Fh9M0O/6Z2spFjuLtPKLQEPI0qwOpgCcuDn
         EsKfEicsdxMJTFQERyfqfRpEL55XWb3NrpGXf+vylb0wPlESkbhCKgjN4ppaRphpZ0bH
         l7yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7IEGRuppnXlCizpAO5Dd+gw2EAs6iIxHqRUIJL3BibM=;
        b=XANyQlY4ATh/sLH1ezLXTfZ9IEbpaBP+JKQBZWZNAh+iUrE3Ob9yZ4qusVetRj59In
         UuV037tSzdyrs06k2+MIEJqGnaMyEZn18WI3SuVrCOhQ3r1q6HeYau13xtAE2yl2fb/u
         dWoze7krFDuFSBBBr1RsRspP9ZRkJd7AHZLWPeukVtkFOrvyc5QEVSvRJ+WIqJTPCbZi
         DdQH3ulPMmfpjnXBCiXCw70oHhv7ttHqakheU6akLP8PxoqrLvR8gCNMC0f10Ynf7Het
         kbXSuY3D4Gr5ogz9IpK5SJDVY1i9pUA20pe3nbmLxk+ULKrHGiuqDyNrQxqXigNNA9KQ
         6TIQ==
X-Gm-Message-State: AOAM531IxDDsgl1A5cTlhLSezXns/d2xlogwbgBh+l7fGyE5CZyHNQNn
	65EiOXpe3/Gc9UZ5dX3PypJY5hdfq9l9dA==
X-Google-Smtp-Source: ABdhPJyv3/zd/sk83XCsWrSbCxZz0z0iQjpUMRUUzp73zqqkuox8Qx3ymgKJkBJbo2dKU8FPz5pUeQ==
X-Received: by 2002:adf:9043:: with SMTP id h61mr8317713wrh.216.1617267154859;
        Thu, 01 Apr 2021 01:52:34 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id 9sm7143467wmf.13.2021.04.01.01.52.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 01:52:34 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v2 0/4] kmeta BSP for nanopi-m4
Date: Thu,  1 Apr 2021 10:52:09 +0200
Message-Id: <20210401085213.1209080-1-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This second iteration adds support for KBUILD_DEFCONFIG=3D"", as well as
a loosely-related patch to avoid touching KCONFIG_MODE.

Kernel weight:
 - standard                11MB
 - tiny                     5MB
 - tiny with no defconfig   2.5MB

Changes in v2:
 - added explicit CONFIG_PHYLIB and CONFIG_MMC to support empty defconfig
 - added CONFIG_SPI_ROCKCHIP

Yann Dirson (4):
  linux-yocto: reduce bbappend duplication
  rockchip-defaults: don't force KCONFIG_MODE to alldefconfig
  NanoPi-M4: let all variants use the same KMACHINE type
  WIP linux-yocto: add a NanoPi-M4 BSP

 conf/machine/include/nanopi-m4.inc            |  1 +
 conf/machine/include/rockchip-defaults.inc    |  1 -
 ...cto-dev.bbappend =3D> linux-yocto%.bbappend} |  6 +++
 .../linux/linux-yocto-rt_%.bbappend           | 10 ----
 .../linux/linux-yocto-tiny_%.bbappend         | 10 ----
 .../linux-yocto/bsp/nanopi-m4-standard.scc    |  7 +++
 .../linux/linux-yocto/bsp/nanopi-m4-tiny.scc  |  7 +++
 .../linux/linux-yocto/bsp/nanopi-m4.cfg       | 40 ++++++++++++++
 .../linux/linux-yocto/bsp/nanopi-m4.scc       |  5 ++
 .../linux/linux-yocto/bsp/rk3399.cfg          | 50 +++++++++++++++++
 .../linux/linux-yocto/bsp/rk3399.scc          |  5 ++
 .../linux/linux-yocto/bsp/rockchip.cfg        | 53 +++++++++++++++++++
 .../linux/linux-yocto/bsp/rockchip.scc        |  6 +++
 recipes-kernel/linux/linux-yocto_%.bbappend   | 10 ----
 14 files changed, 180 insertions(+), 31 deletions(-)
 rename recipes-kernel/linux/{linux-yocto-dev.bbappend =3D> linux-yocto%.=
bbappend} (80%)
 delete mode 100644 recipes-kernel/linux/linux-yocto-rt_%.bbappend
 delete mode 100644 recipes-kernel/linux/linux-yocto-tiny_%.bbappend
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/nanopi-m4-standa=
rd.scc
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/nanopi-m4-tiny.s=
cc
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/nanopi-m4.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/nanopi-m4.scc
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/rk3399.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/rk3399.scc
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/rockchip.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/rockchip.scc
 delete mode 100644 recipes-kernel/linux/linux-yocto_%.bbappend

--=20
2.30.2

