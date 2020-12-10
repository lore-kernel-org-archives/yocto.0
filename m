Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com [209.85.167.66])
 by mx.groups.io with SMTP id smtpd.web12.15669.1607616168388273272
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Dec 2020 08:02:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=k/xe5DCx;
 spf=pass (domain: gmail.com, ip: 209.85.167.66, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f66.google.com with SMTP id 23so8940945lfg.10
        for <yocto@lists.yoctoproject.org>; Thu, 10 Dec 2020 08:02:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7ij60p99Wvr/7t7x1/P+eDuIEt4plWdHH37VfDhyikI=;
        b=k/xe5DCxktQ2H3RoImZxjxmjzdS0zSz+npL2xyIhNt+k2VsnspcDNBEEFMIUmYf1Lw
         DM3du1iok8B0hGBtipbIbMgAjBlPbixetfKxCnnQ+pRf+y24VqE5tJPkQ77XTamsCPPL
         3NU2NsG2BTL1KXY2j6Le5gVaX8ci798De2qtrh5UWDWUS0aYaUVb2VVpN87tVhRPNHxb
         B8CMyVNeHKAHfi+oq37VVJiqHfTui/tRd/ylipPkv7BCZbwIOfUZEtXZo7f5AzX3dqQ/
         vTBlZnCqVH2l+e5opvAeVzJq4ZkEfab4eaUS6+nNuQ436B/L3mAYE/3ptHcTNSJVBxa8
         nBxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7ij60p99Wvr/7t7x1/P+eDuIEt4plWdHH37VfDhyikI=;
        b=CeICBajleQzgZf0Isx3Vno36/ypswJz+YqylGf1VPg2aaxBQu5gv+NW9KF/kwMiIHQ
         EozASezm/JfkwUUzqPM4Pew7Ex/z919Nqf5u9bG0gU/YX5K8B9MrdvR3A4Hop2f25gQT
         EYepuRTH3su9cfOR7N/ClfYimFN/cbxnDhMcLzEUx7zPbDmhZKg/KP7XyjidGC7PIBXq
         XzoYjLCj4mXuCmQW7fbGxUy3EJu/pFvQpLibyJxb6ZizHqqQZdvudY5cyrRRrMc6EFvN
         9V3zSjEkUvEDXWzZ0w3SKsjyM/6CU3JQ5IeY+M2a4wbBnhuMo0NqbjOLzQVwXzJ8pr8T
         /lJQ==
X-Gm-Message-State: AOAM532bQ4gxQBPNoQiw2/nPwU50Q/bBh/s+gej2BJDZUI0uhk9rowbQ
	j5+TdYj70tiYQNfDy9MQkdZdqYvUZ19E5A==
X-Google-Smtp-Source: ABdhPJx9mQlnxzE/ZO/isGqnzOmy+7aFd9MXYbUnbxFmTO1tVm8peWH1Mm7PuaEAMbIaxhkNysYxyA==
X-Received: by 2002:a05:6512:1102:: with SMTP id l2mr2809390lfg.500.1607616165657;
        Thu, 10 Dec 2020 08:02:45 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id n10sm646744ljg.139.2020.12.10.08.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 08:02:45 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v3 0/5] Add 96Boards Nitrogen support
Date: Thu, 10 Dec 2020 16:02:06 +0000
Message-Id: <20201210160211.71850-1-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

Hello,

v2 -> v3:
 - fix accidentally broken QEMU builds. The build failed when do_deploy looked
   for .hex files that were generated for physical machines but not for QEMU
   (which does not need them). Fix the issue by reverting the change of generating
   .hex files. They were introduced for pyocd, but it occurs that pyocd is happy
   with ELFs, so this idea of .hex files was removed altogether from this patch set.
   Instead, zephyr-flash-pyocd gets ELFs and happily flashes Nitrogen.
 - fix building zephyr-kernel-test-all targets for physical boards. Explained in
   commit message of patch 5/5.
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

You can also build the test suite i.e. bitbake zephyr-kernel-test-all
and manually flash Nitrogen with images from the deploy directory. They are
not picked up by do_flash_usb implementation from zephyur-flash-pyocd,
as it works with single ELF file with the same name that the target has.
The same limitation is present in the current do_flash_usb implementation
from the zephyr-flash-dfu class.

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

