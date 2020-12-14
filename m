Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com [209.85.167.68])
 by mx.groups.io with SMTP id smtpd.web11.36368.1607958896494558420
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Dec 2020 07:14:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iPJa/0zM;
 spf=pass (domain: gmail.com, ip: 209.85.167.68, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f68.google.com with SMTP id a12so30968103lfl.6
        for <yocto@lists.yoctoproject.org>; Mon, 14 Dec 2020 07:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PVzYPTb7j7vjVXLwLJZvxwVVqvsmyC2p1+l43mFTfsU=;
        b=iPJa/0zMxLFUrwNrp/A9qXirUBRdeMjb17UqgBrtKv2+Te92d3JMOKm74VFhDWnrxt
         /mdGSRFSuWlRsV8szPnS8xIxa28cigyMY6rqwaPcUJJXwJxLOXj4rQKQCnP2F0WY+SYi
         Twk4O9EGkB3F2ayf4cEXQ4FKUI5B5nfsias9cirFSfpxL8yuk2OEYSL7PNADYJVlCjwa
         Gxkdy2REMrfcyu1IIci80lQ/yDa5cU9Bkvit12xg1sKuYMAgjl2PI+6EMYJs3qLmzAHx
         BlOLMqDnrsDuWg+s3QR3gU1g/wEsFjm5BAFj2TgnjGJ6zazB0kZ9KFwsrDick+vGZ+ZA
         Dc5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PVzYPTb7j7vjVXLwLJZvxwVVqvsmyC2p1+l43mFTfsU=;
        b=j5lofjshicGO1nD5Yf1vlM5AGSPgxvzonXdr32bf6V8vLkVMlr+Y9dTg5sQddR9SCi
         SQt9Fft4u/nT38lYN1131821SkuXc6aEln/NuMBZencFwtvc5rMwnbkljQJUJOwyJWYM
         QhiM3H8P8YnYlXiswh76dQRtxe1XN40Nj8Vm9bsRVI4jt1w20H1jwky5cm6OTtxkvDLY
         /2REFHQ4k4cBqJ6+1oOTfqvEIFhB9DHXWu5Yo/OE6+PLoJPUph4hnzbl590Fy5uQYynE
         DdGhYCoJ6mN+IdHjqkccAKULxBWV4m2K7qFSDXUt6koSZZBJvgNFH8T9XVEzGRvk9O1/
         LiSg==
X-Gm-Message-State: AOAM533d0jUtWwRUoVsvhBXkywBzc6Nub/MbrNWry9ja6LkMsnjF1hDu
	Ticw/MHZh6tlsAhyXLFcmGNxy9juOgczjQ==
X-Google-Smtp-Source: ABdhPJxISkRCqR+FbnUAw24LCu28xo+s3DByoQPumPnIU25YIoIBdKJfuV18C87MTsKcFp6CTzakQQ==
X-Received: by 2002:ac2:5a50:: with SMTP id r16mr10377984lfn.195.1607958894425;
        Mon, 14 Dec 2020 07:14:54 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id d23sm1885286ljj.24.2020.12.14.07.14.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Dec 2020 07:14:53 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 0/3] Add 96Boards Avenger96 support
Date: Mon, 14 Dec 2020 15:14:39 +0000
Message-Id: <20201214151442.4592-1-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

This patch set adds support of Avenger96 boards based on
STMicro STM32MP157AAC 2xCortex-A7+2xCortex-M4 SoC.
The support consists of:
 - cloning dependencies i.e. STM32 HAL and OpenAMP framework,
 - adding STM32MP1 and Avenger96 $MACHINE config files.

Verification:

1. Build an example app for Avenger96:

   $ DISTRO=zephyr MACHINE=96b-avenger96 bitbake zephyr-philosophers

2. Please be aware that Avenger96's Cortex-M4 core can be
   programmed and got out of reset only by software running
   on the Cortex-A7 core, e.g. by U-Boot or Linux. Therefore,
   despite the SoC can enter DFU mode, it cannot be used
   for programming the M4 firmware. This example uses Linux.

3. Linux has to be built with remoteproc support. This can
   be verified with simple dmesg inspection:

   root@stm32mp1-av96:~# dmesg | grep remoteproc
   [    2.336231] remoteproc remoteproc0: m4 is available

4. Transfer the example app to the board, e.g. using scp.
   The elf is located as usual in build/tmp-newlib/deploy/images/96b-avenger96/.

5. On the board, check the expected location of the fimrware image.
   Empty path defaults to /lib/firmware. You can leave them as
   they are and copy the Zephyr ELF file to the location pointed
   by them or you can echo the new path and image name.

   root@stm32mp1-av96:~# cat /sys/module/firmware_class/parameters/path
   <empty>

   root@stm32mp1-av96:~# cat /sys/class/remoteproc/remoteproc0/firmware
   rproc-m4-fw

6. After the image path and name are configured, start the M4 core:

   root@stm32mp1-av96:~# echo start > /sys/class/remoteproc/remoteproc0/state
   remoteproc remoteproc0: powering up m4
   remoteprocroc remoteproc0: Booting fw image rproc-m4-fw, size 591544
   rproc-srm-core m4@0:m4_system_resources: bound m4@0:m4_system_resources:m4_led (ops 0xc0be1210)
   remoteproc remoteproc0: remote processor m4 is now

7. Firmware output can be inspected with:

   root@stm32mp1-av96:~# cat /sys/kernel/debug/remoteproc/remoteproc0/trace0
   Philosopher 5 [C:-2]        STARVING
   Philosopher 3 [P: 0]    DROPPED ONE FORK
   Philosopher 3 [P: 0]  THINKING [  25 ms ]
   Philosopher 2 [P: 1]   EATING  [  425 ms ]
   Philosopher 3 [P: 0]        STARVING
   Philosopher 4 [C:-1]        STARVING
   Philosopher 4 [C:-1]    HOLDING ONE FORK
   Philosopher 4 [C:-1]   EATING  [  800 ms ]
   Philosopher 3 [P: 0]    HOLDING ONE FORK
   Philosopher 2 [P: 1]    DROPPED ONE FORK
   Philosopher 2 [P: 1]  THINKING [  725 ms ]
   Philosopher 1 [P: 2]   EATING  [  225 ms ]

Wojciech Zmuda (3):
  zephyr-kernel: clone STM32 HAL
  zephyr-kernel: clone OpenAMP
  conf: machine: add 96boards Avenger96 support

 classes/zephyr-kernel-src.bbclass                     |  6 ++++++
 conf/machine/96b-avenger96.conf                       |  8 ++++++++
 conf/machine/include/stm32mp1-cortex-m4.inc           | 11 +++++++++++
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc |  2 ++
 4 files changed, 27 insertions(+)
 create mode 100644 conf/machine/96b-avenger96.conf
 create mode 100644 conf/machine/include/stm32mp1-cortex-m4.inc

-- 
2.25.1

