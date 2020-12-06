Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com [209.85.167.66])
 by mx.groups.io with SMTP id smtpd.web10.2404.1607285738385954621
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Dec 2020 12:15:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jv4beBr5;
 spf=pass (domain: gmail.com, ip: 209.85.167.66, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f66.google.com with SMTP id y19so2923996lfa.13
        for <yocto@lists.yoctoproject.org>; Sun, 06 Dec 2020 12:15:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=B1pW6APd8e0RGx+/3lQBoAYM2LOCokvOrV42sFbrv+0=;
        b=jv4beBr5BkC2zutMvG2Ek5+sp/HTO+zhRKVu0BEbF74gIHgdKz5laC67DM0Bucs91l
         Z1h8ptvsir9XNn6jkFe4BDNY3KolezRJxR6XpPqZde1GXocWKOvekHLdXZn7HMIKTa+z
         zwasOhx97AG0ucmNcJxjhxsoHkFTCvMqCf8Qf9zhIeJk6a0KDGHjPGA/YDZbV9E6UDxI
         f1kCPd6rKFk1fI23Cd/+BeUO4pqVNUXbuA3ll85yRfToUo0pKYFvBqvphY+h5XnKcTsU
         QTIwUifD3hTEzsuYDBc2p12dAu2rEw6m0+CfnvJHhMwgJco68U043A2IMZJTwZjIACIs
         /uAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=B1pW6APd8e0RGx+/3lQBoAYM2LOCokvOrV42sFbrv+0=;
        b=p/Qb/pSBM2Xsun74fjHLVxJzXx9jJy4JJOEIwRhoNhvnyvdkC8ONVrB6NbFmzBYSK5
         t1cTPkqo+eJZxSSjW7x6DTtcQszUQfTvIJ9zr7YJkWx+9Gv5tpA2zSFzayqItUjqz6iZ
         /9mk/Rp658aQNqxMsx3kgYfbot4yZTqNOUSG6j5sYR2KR5w9V/QVegDlc8kVseiD9AV4
         Oiu4XB3C6COmKYt9xpU7QDc9uzJ5LOvjJwknpymDcQhzFa45F8AegjpC3xRE79hFBPMn
         9soG45KmSpsepS5G5M5lEFxFZMNKtq3F0R4iRmmsdK0ggE0xEY371/tdwMIx3bp/AMca
         TxRQ==
X-Gm-Message-State: AOAM532aly2mWC9lpNhILE+v3kjIa1IaCWqmkZIeCEYCkkywe2V+zX0V
	5sYzUbqjPM53YqrWGEGvP8qD3YLHjp//pA==
X-Google-Smtp-Source: ABdhPJyqlIKM8kl85eHkR+3BIN0ZRrkU/xKEKkum+ue+HzVKERHazIZFoJrBtp6NoDnHx/u2BDihiQ==
X-Received: by 2002:a19:22c9:: with SMTP id i192mr7528444lfi.65.1607285736566;
        Sun, 06 Dec 2020 12:15:36 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id 16sm530682ljr.11.2020.12.06.12.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Dec 2020 12:15:36 -0800 (PST)
From: zmuda.w@gmail.com
X-Google-Original-From: Wojciech Zmuda <wojciech.zmuda@huawei.com>
To: yocto@lists.yoctoproject.org
Cc: davide.ricci@huawei.com,
	zbigniew.bodek@huawei.com,
	jaroslaw.marek@huawei.com,
	robert.drab@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 0/5] Add 96Boards Nitrogen support
Date: Sun,  6 Dec 2020 20:15:16 +0000
Message-Id: <20201206201521.3377-1-wojciech.zmuda@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

This patch set adds support for the Nitrogen board by 96Boards.
The support consists of:
 - adding configs for Cortex-M4, nRF52832 SoC and Nitrogen board,
 - adding bbclass with pyocd-based do_flash_usb() implementation.

Tested on Nitrogen and on QEMU so I hope I didn't accidentally
break anything.

Verification:
 1. Install pyocd.
 2. Connect Nitrogen and make sure you can see Bus 001 Device 004: ID 0d28:0204 NXP ARM mbed
    in lsusb.
 3. Build a sample app:
    $ MACHINE=96b_nitrogen DISTRO=zephyr bitbake zephyr-philosophers
 4. Flash app to the board:
    $ MACHINE=96b_nitrogen DISTRO=zephyr bitbake zephyr-philosophers -c flash_usb

Wojciech Zmuda (5):
  zephyr-kernel: clone Nordic HAL
  conf: machine: add support for Nordic nRF52832 Cortex-M4 chip
  conf: machine: add 96boards Nitrogen support
  zephyr-kernel: don't limit deploy to .elf file
  zephyr-flash-pyocd.bbclass: support for flashing via pyocd

 README.txt                                    | 23 +++++++++++++++++++
 classes/zephyr-flash-pyocd.bbclass            | 17 ++++++++++++++
 classes/zephyr-kernel-src.bbclass             |  7 +++---
 conf/machine/96b-nitrogen.conf                |  8 +++++++
 conf/machine/include/nrf52832.inc             | 10 ++++++++
 conf/machine/include/tune-cortexm4.inc        | 19 +++++++++++++++
 .../zephyr-kernel/zephyr-helloworld.bb        |  3 ++-
 recipes-kernel/zephyr-kernel/zephyr-image.inc |  2 +-
 .../zephyr-kernel/zephyr-kernel-common.inc    |  5 +++-
 .../zephyr-kernel/zephyr-philosophers.bb      |  3 ++-
 10 files changed, 90 insertions(+), 7 deletions(-)
 create mode 100644 classes/zephyr-flash-pyocd.bbclass
 create mode 100644 conf/machine/96b-nitrogen.conf
 create mode 100644 conf/machine/include/nrf52832.inc
 create mode 100644 conf/machine/include/tune-cortexm4.inc

-- 
2.25.1

