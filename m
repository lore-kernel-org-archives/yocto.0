Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com [209.85.167.67])
 by mx.groups.io with SMTP id smtpd.web10.7498.1607353270482298674
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 07:01:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KUdTODPT;
 spf=pass (domain: gmail.com, ip: 209.85.167.67, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f67.google.com with SMTP id s30so18517918lfc.4
        for <yocto@lists.yoctoproject.org>; Mon, 07 Dec 2020 07:01:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MDzhp7yIqn4ylaVKw6AVt54ymSTU8B9Lxvtl3MG81sQ=;
        b=KUdTODPTij8NpVHm8f823mUnWpkySQ7blnOQaxDHnPwG/c/BDUyQJOEaEBY4NMtc17
         u9ojWo8SsOqQp0/u5lOrDXUlRKkcMpuw5840+adwq8uZ5nYiFLcxFr8cjrHYVQIYvBXc
         d96TBigO9lg3PMrymKfwEyWHRXhCqhpIvNBZdmywjTPbuSHqmcdlqCXe21efpo6mc1Qw
         JhHdKP1eX1lV1vvLCOlUU3ejIu9yfZpaeMbIxTSM5vo+KL2WdrqPCeOx7J2leNMIGNgm
         tKDa7pKifl1l+Pdfg96UOfepe3WytNf5bs5JcBP0vzhjGPi2hLtbqRNFQ7rdTxMCQE14
         Svkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MDzhp7yIqn4ylaVKw6AVt54ymSTU8B9Lxvtl3MG81sQ=;
        b=WZ85XlXMkqWyQNfuYaqkG82EQPcJemQxnAFSMYdSeFWWt0oPjP39V25ExOQxFn5rgD
         rPJgsB5l5XJ3PjbQIMsihM5tVV7ce3KRAArA6F1Xg5CM4hscMk4eGsCo8o+aBGORDUnr
         dTN69M4+0F6KRnh261v3OGqye/pAh6ffIKzF8QsT5VRhWy9yVlnIjGKpV2M3g9/bm6w6
         ybaogJUbK1eMzEJ7YQQR49Ee2h7A03ug7VgRONKXBBrqFG0ESFqQFOrR9Hseq4T3vi0J
         fKBE1PKUju4gyx+rMwiPTB6MEO60/CBb/YUh5CxwIeyeO+68z4fLYwTSOkA4X0Yd3lHw
         0IRA==
X-Gm-Message-State: AOAM533uLMeTY92+Z0cBxYgWqb6XPiVTVNYSZzVk3yOKWgYnQWUFa+Lp
	cQTHso16eJZRswzmRKOWRP9TsmlfPvqc0w==
X-Google-Smtp-Source: ABdhPJy1Yoq9pNjaSNRbPrDNlBOUb7d+psYUsxeUL355PgBWSC8zOH4WyE2tNqePWKBCBTlcDlYf9Q==
X-Received: by 2002:a05:6512:1095:: with SMTP id j21mr8035165lfg.309.1607353268260;
        Mon, 07 Dec 2020 07:01:08 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id 5sm2928681lfr.197.2020.12.07.07.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 07:01:06 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v2 0/5] Add 96Boards Nitrogen support
Date: Mon,  7 Dec 2020 15:00:59 +0000
Message-Id: <20201207150104.12208-1-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

Hello,

v1 -> v2:
 - README.txt: fix bad MACHINE examples: change _ to -, i.e. 96b_nitrogen -> 96b-nitrogen

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
    $ MACHINE=96b-nitrogen DISTRO=zephyr bitbake zephyr-philosophers
 4. Flash app to the board:
    $ MACHINE=96b-nitrogen DISTRO=zephyr bitbake zephyr-philosophers -c flash_usb

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

