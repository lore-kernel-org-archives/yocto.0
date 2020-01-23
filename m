Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
 by mx.groups.io with SMTP id smtpd.web12.1923.1579808812041715701
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 11:46:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=s0lIzNcG;
 spf=pass (domain: gmail.com, ip: 209.85.166.54, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f54.google.com with SMTP id t26so4145025ioi.13
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 11:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZIjKKeayc22ILXtl7ba63h6JavodSwjVQhPhGgi9wKE=;
        b=s0lIzNcGjGHwXNPG9/vQKZMz4aI2s5scP+QPeGVG+MzP6k7WLpcCfwfB8DliQvXX9f
         PZojTW1PJrymurVOMnNcrxl8FZYC2eVNWTnhgpkAVk3JxdP4pZIc48PplXMOD8ehUzpB
         Ux9GR4tnfXI/Xw6apo+pQOoMS9iEcYsM6AUpjMV1HANm2t95Rn3/azLEpzWKIjygoeXD
         0ChTqbyAb/gD/B/CscEi0PE4+YsESacgRNlNMDIT79CWqU//5KF5waG1Od4meB2w62pG
         5HthJUe02Q/9Bd8IdgvE4Jo8li7vakH6g4pBXXNmSN8Cm0JySKuW7t6y+aLLiq9LOmRd
         aNjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZIjKKeayc22ILXtl7ba63h6JavodSwjVQhPhGgi9wKE=;
        b=D9xfsTLguDlZSGL4liPOAIjGVA5T61Kqp0Vx9c0Y263VwtaY0rWqAyzWjd+8BX9v8M
         F94CC52vQnbITze8UxzfmylnGZ7kQzmB748x95gWa/EiddqFrYz9isRzY4qY8P+LX+QP
         BLsKNNkj6g4AMVFxC7uRHDAP+4bOmZ4vzzZ3apsJDxxYar5AKdUVgDi/R5VmtQc2Lq0c
         h6/3KEja1outJacRNN3h8D9cBTZYrRcNfUxZx0ao/1xmSWqoXQPKiEPdj4p6ZFwJwFnU
         B5YFb9t4RcNSStARjClfvpfiBWNIw/Dxjstyf03A0UANhVh5hPcgEBt5GpinOfxtCG8v
         wy1w==
X-Gm-Message-State: APjAAAU7PGPRV3lyC7xLtpWwcsVjkCFSI5uNiX6sMSvT6W1S0cOil8hP
	bH7C/66cijUIi7NWjAWnca5wk4OOLvo=
X-Google-Smtp-Source: APXvYqyMtI75UYfmqEgIBblPa1yeNzY2LiQwHsUGCDeyR9ve1tQ7oTE6rkFUduM6YUCiIQ/0P1T+fw==
X-Received: by 2002:a05:6602:24ce:: with SMTP id h14mr162427ioe.268.1579808809786;
        Thu, 23 Jan 2020 11:46:49 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id u5sm644834ion.51.2020.01.23.11.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 11:46:49 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH v2 0/4] Add Rock Pi 4 Support
Date: Thu, 23 Jan 2020 13:46:41 -0600
Message-Id: <20200123194645.1240023-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200123160821.778821-1-JPEWhacker@gmail.com>
References: <20200123160821.778821-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for building the Raxada Rock Pi 4 development board

V2: Machine has been renamed "rock-pi-4" to match the manufacturers name

Joshua Watt (4):
  arm-trusted-firmware: Add recipe
  gcc-arm-none-eabi-native: Add recipe
  rk3399: Add generic rk3399 support
  rock-pi-4: Add machine

 README                                        |  1 +
 conf/machine/include/rk3066.inc               |  3 +
 conf/machine/include/rk3188.inc               |  3 +
 conf/machine/include/rk3288.inc               |  3 +
 conf/machine/include/rk3399.inc               | 27 ++++++
 conf/machine/include/rockchip-defaults.inc    |  2 -
 conf/machine/rock-pi-4.conf                   | 28 ++++++
 ...hip-Prevent-macro-expansion-in-paths.patch | 94 +++++++++++++++++++
 .../arm-trusted-firmware_2.2.bb               | 44 +++++++++
 recipes-bsp/u-boot/u-boot%.bbappend           |  8 ++
 ...cc-arm-none-eabi-native_9-2019-q4-major.bb | 37 ++++++++
 recipes-graphics/mesa/mesa_%.bbappend         |  1 +
 wic/rk3399-boot.wks                           | 24 +++++
 wic/rock-pi-4.wks                             |  7 ++
 14 files changed, 280 insertions(+), 2 deletions(-)
 create mode 100644 conf/machine/include/rk3399.inc
 create mode 100644 conf/machine/rock-pi-4.conf
 create mode 100644 recipes-bsp/arm-trusted-firmware/arm-trusted-firmware/0001-rockchip-Prevent-macro-expansion-in-paths.patch
 create mode 100644 recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb
 create mode 100644 recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
 create mode 100644 wic/rk3399-boot.wks
 create mode 100644 wic/rock-pi-4.wks

-- 
2.24.1

