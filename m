Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com [209.85.167.68])
 by mx.groups.io with SMTP id smtpd.web11.8971.1587897716772086377
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Apr 2020 03:41:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hdYrv2NX;
 spf=pass (domain: gmail.com, ip: 209.85.167.68, mailfrom: qian.hao.developer@gmail.com)
Received: by mail-lf1-f68.google.com with SMTP id r17so11355299lff.2
        for <yocto@lists.yoctoproject.org>; Sun, 26 Apr 2020 03:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=838hpbgjRZ8CrkmMUzMQ/ci7iWnELzWwR7CllOkJnLk=;
        b=hdYrv2NXKDi8TTmNwJw+XoJNHpVrpw0P6m2SOwbwK6JpSqE6mISsaOweRBd/MRhW3X
         fN9Xa9SHcXx+75ah26c4t4TDGyyh9KewFoigR/bJEcCGUeipIC8qytZ6yFEW6i97ssoh
         tGnlJl40Vn46xSos/PqpAMlJE1DGeaVxzZOm6dOHwvbvk3U5VZPbfMqsLpvy7n2BxOWb
         pCdnam0UTGcuIA+F/8jyooM15koWCCaM0MZTbUz574oLNR6ogEwqnS3y2Fg5UI9cgzRC
         5Evj1+r4zFiSw8Sm5eIBuZLLC3D3RwFBcjK1Ifs6WEFgPZgKhJZUv9XWeE6o/5kRi6cN
         2dEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=838hpbgjRZ8CrkmMUzMQ/ci7iWnELzWwR7CllOkJnLk=;
        b=bnLHWFSbY1nGrrelE7phbNrLZRENUZJbOBV9ZfCA7qZJ66tdGgQauN8S95jAWwaSd7
         5yXsETCuewVPw/nwmZvkTZ8WR7+crjMysr2Wizgcn40MrRLEEV95nCeavOGhXfPnrgPt
         UYy+Rk79L0WXXH9QllmCB5q2Y74LqZl/W7evfDR/Z/u3PhAsBZIJAhDCQABH/LKn34X8
         CwLflyi/9se/WkRj6uEyFXAf51VtxPcFycBYTr5bKUW9u0ob7Ovx9nTZ0irPYj+Qn9wN
         misl0+R74IZbUHezaDl+J8oME9oVSTvo6rCCyW9R7xHXdlT41ISFpyxjJzr+e0QFBD+W
         hQdQ==
X-Gm-Message-State: AGi0PuaiArU8fSjjXGiLouZASo6N3MHi67ojW5h+/45olx1oyFmRy2HR
	hUTTli4ajYngoyu+WlnA44s5/0Z3ID30ecvbQXNfXXW3
X-Google-Smtp-Source: APiQypKraKfwMNyGhZ/qQ2kK0jYI70VfAdehmIAPu1YTHr08IAc0Xd2HndFPMS6E9WeIti8AxzuUdqs5XK12fY3PzpI=
X-Received: by 2002:a05:6512:31c1:: with SMTP id j1mr12347968lfe.14.1587897714444;
 Sun, 26 Apr 2020 03:41:54 -0700 (PDT)
MIME-Version: 1.0
From: "Hao Qian" <qian.hao.developer@gmail.com>
Date: Sun, 26 Apr 2020 19:41:40 +0900
Message-ID: <CACxpVWcXzG=RQO=FNTWxnwoSwBBU6+wx4x5od9ARZHCi2XOXMA@mail.gmail.com>
Subject: Kernel panic of "not syncing" occurs when booting on qemu with extracted code by devtool #yocto #devtool #qemu
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to add some drivers to linux kernel and confirm it with qemu.

I clone the poky repository, build and boot as below steps:
----------------------------------------------------------------------------
1. clone poky (poky only)
    $ git clone git://git.yoctoproject.org/poky
2. initialize build folder by oe-init-build-env
    $ source poky/oe-init-build-env ./build
3. extract linux repository (but do no modifications)
    $ devtool modify virtual/kernel
4. build with default configurations
    $ bitbake core-image-minimal
5. boot on qemux86-64
    $ runqemu nographic
----------------------------------------------------------------------------
and I can boot linux without any panic at this time.


However, when I try to re-build and boot again, I got a panic at boot time 100%.
What I did are listed below:
----------------------------------------------------------------------------
6. re-build with clean
    $ bitbake virtual/kernel -c clean && bitbake core-image-minimal -c
clean && bitbake core-image-minimal
    (I also tried replacing "-c clean" with "-c cleanall", adding "rm
-rf tmp/ cache/ sstate/", but got same panic error)
7. boot on qemux86-64
    $ runqemu nographic
    (also tried "runqemu qemux86-64 nographic")
----------------------------------------------------------------------------

The log of panic is:
============= panic log ===============
[ 2.177811] rtc_cmos 00:00: setting system clock to
2020-04-03T22:35:00 UTC (1585953300)
[ 2.186697] md: Waiting for all devices to be available before autodetect
[ 2.186838] md: If you don't use raid, use raid=noautodetect
[ 2.189483] md: Autodetecting RAID arrays.
[ 2.189595] md: autorun ...
[ 2.189665] md: ... autorun DONE.
[ 2.190837] VFS: Cannot open root device "vda" or
unknown-block(0,0): error -6
[ 2.190993] Please append a correct "root=" boot option; here are
the available partitions:
[ 2.191290] 0b00 1048575 sr0
[ 2.191310] driver: sr
[ 2.191485] VFS: Unable to mount root fs on unknown-block(0,0)
[ 2.191606] User configuration error - no valid root filesystem found
[ 2.191797] Kernel panic - not syncing: Invalid configuration from
end user prevents continuing
[ 2.192134] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.2.32 #1
[ 2.192279] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS rel-1.12.1-0-ga5cab58e9a3f-prebuilt.qemu.org 04/01/2014
[ 2.192613] Call Trace:
[ 2.193218] dump_stack+0x6d/0x9a
[ 2.193337] panic+0x101/0x2d7
[ 2.193445] mount_block_root+0x2cf/0x2f2
[ 2.193538] mount_root+0x7d/0x80
[ 2.193612] prepare_namespace+0x13f/0x177
[ 2.193701] kernel_init_freeable+0x236/0x25a
[ 2.193798] ? rest_init+0xb0/0xb0
[ 2.193872] kernel_init+0xe/0x100
[ 2.193946] ret_from_fork+0x35/0x40
[ 2.194488] Kernel Offset: 0x2e00000 from 0xffffffff81000000
(relocation range: 0xffffffff80000000-0xffffffffbfffffff)
[ 2.194918] ---[ end Kernel panic - not syncing: Invalid
configuration from end user prevents continuing ]---
======================================

P.S. panic will not happen if I didn't extract linux repository
with "devtool modify" command.


I've tried to search answers on yocto-mailing-list, stackoverflow, nxp
community and other websites, but can not find any solution for this
problem.

Could anyone please help to fix this problem, or just offers some advices?

Best regards,
Qian
