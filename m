Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
 by mx.groups.io with SMTP id smtpd.web12.9639.1579795711203830795
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 08:08:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=E6UFLvYE;
 spf=pass (domain: gmail.com, ip: 209.85.166.48, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f48.google.com with SMTP id z8so3517432ioh.0
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 08:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M98/1x5vR+x8exQt3kEfgfV+AkfFbFmZztCcZRsFTG0=;
        b=E6UFLvYE8jp5bgZilnOzfrLKEMcr/kWkeqgvN3kzHwrZ50NELz1kjMWCAXvamYxIbH
         qNtTfJ7z6kHYtNy/E5LpQbRd5S2lzSW1n63CWxQRBsnORRRF/iVyLTm4UsMiWrlxY0q9
         arYMXMiRQ8wackM0Q9BG6le6q3tO1VV0sTcGzJ4hWCfkl+Gie3aWgowTdsQTK8eggZRX
         rRsx1bjobEfaGmiWTaU+tzuDJGoilBceuR5WQyJtvv93pNEgaZiZi6mTqhxgs/O60FFt
         Mv9exxMgDTLY4tf/8xFTT8LHVoIFyI1ggq6CfNTRyKFkUqq/4KNwZdobbQNwBHgdcNpG
         tSDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M98/1x5vR+x8exQt3kEfgfV+AkfFbFmZztCcZRsFTG0=;
        b=A0/6/OhvYLjjdhGPcD5O7z6PmMKDZequAC2E+n8Cm0H20+upRuBokISs+m/35BFzba
         qN5tT2ggMpeVj+nyK8hSdhXIZ+h21ZtJhSYX8gAqZ9tC2Wb2AUgN0sRibCvRTG92oY0s
         HFTwae7sOWWvAgwFR8l5nEJ+K3TneJpni0K1IG+v+QHb1ov54/P05v14dNxFIN9ijjhV
         xML1P7XCj3n0J2Q/U83M+B7Y/K0jn/tMeprcVWNdDy5C51E4FrThvTtIJBv+MmW5SszF
         XeWGCWa6tOi8Lh2OPHjE02/b8DnxHftnhOWbtu5xANFI60u3MCgLfvoMLM41BLVCd+kx
         yH2Q==
X-Gm-Message-State: APjAAAWg1rnoDE9cPskq8czyqyPY9B9DHTXYzsHdGm1HZUNpIYi9PcXc
	DCgrGYZXeX7zxeOpjkDnUiiJtChBVKE=
X-Google-Smtp-Source: APXvYqwZdJHTiYBVYfmBiyE1Fy85+Tq35A0m3gZ8uGrLdwgbsXBqA1YW0G4tINxkR02u8nBsbDzOzw==
X-Received: by 2002:a02:aa11:: with SMTP id r17mr11722446jam.88.1579795709524;
        Thu, 23 Jan 2020 08:08:29 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id w15sm523063iol.86.2020.01.23.08.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 08:08:28 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH 0/4] Add RockPi 4 support
Date: Thu, 23 Jan 2020 10:08:17 -0600
Message-Id: <20200123160821.778821-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for building the Raxada Rock Pi 4 development board

Joshua Watt (4):
  arm-trusted-firmware: Add recipe
  gcc-arm-none-eabi-native: Add recipe
  rk3399: Add generic rk3399 support
  rock-pi-4-rk3399: Add machine

 conf/machine/include/rk3066.inc               |  3 +
 conf/machine/include/rk3188.inc               |  3 +
 conf/machine/include/rk3288.inc               |  3 +
 conf/machine/include/rk3399.inc               | 27 ++++++
 conf/machine/include/rockchip-defaults.inc    |  2 -
 conf/machine/rock-pi-4-rk3399.conf            | 28 ++++++
 ...hip-Prevent-macro-expansion-in-paths.patch | 94 +++++++++++++++++++
 .../arm-trusted-firmware_2.2.bb               | 44 +++++++++
 recipes-bsp/u-boot/u-boot%.bbappend           |  8 ++
 ...cc-arm-none-eabi-native_9-2019-q4-major.bb | 37 ++++++++
 recipes-graphics/mesa/mesa_%.bbappend         |  1 +
 wic/rk3399-boot.wks                           | 24 +++++
 wic/rock-pi-4-rk3399.wks                      |  7 ++
 13 files changed, 279 insertions(+), 2 deletions(-)
 create mode 100644 conf/machine/include/rk3399.inc
 create mode 100644 conf/machine/rock-pi-4-rk3399.conf
 create mode 100644 recipes-bsp/arm-trusted-firmware/arm-trusted-firmware/0001-rockchip-Prevent-macro-expansion-in-paths.patch
 create mode 100644 recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb
 create mode 100644 recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
 create mode 100644 wic/rk3399-boot.wks
 create mode 100644 wic/rock-pi-4-rk3399.wks

-- 
2.24.1

