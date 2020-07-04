Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.27327.1593900066141991009
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jul 2020 15:01:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aQ+z8E8I;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: karthik.poduval@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9463E01DFA; Sat,  4 Jul 2020 15:01:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (karthik.poduval[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DBD6E01DBC
	for <yocto@yoctoproject.org>; Sat,  4 Jul 2020 15:01:03 -0700 (PDT)
Received: by mail-vk1-f176.google.com with SMTP id c11so2706300vkn.11
        for <yocto@yoctoproject.org>; Sat, 04 Jul 2020 15:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=iyxtUKg07UpYpFwqDbU/0166OBzEt0Rjh6VESeAgpXY=;
        b=aQ+z8E8Iqvkg3Q4OMvrgBPCKzVjqJgUhF+VUEN1ryiYjZNldS0Fctx9Jloadx8HaWk
         2z0taJdQ9ZncgjbplWUaRzVgL7OJ2HudMhBTif/4l0kD6xRNMDQjpsEhFKtnyXUlmfY6
         QVzjJWxe1WJE+SKcGPNey4ZJy6FahM5nyrojuj3G4wxK+p2weGeXD//DL7OPlXaqM/zg
         D64TK1wlXjjM8Q713HL4zZ03jc98bSQfQvbloysP7BjAB8skVOptXRMEUEKKk4Dc9V8c
         p/cBkatwIPEc/BSQDC/S/RWOgfoXSZYGNPFneRXw3uoRr+yqnC40dccDCJSJGO163msR
         +mqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=iyxtUKg07UpYpFwqDbU/0166OBzEt0Rjh6VESeAgpXY=;
        b=TQzisnS5635YkcxPm0aTUeV3nrFWkWAnHU/zHJ2lBVNx30UBnCnKD5+qPEDz3xh1iU
         uooTIOa1nDu5zUpbxOLQOCT9k+lQGoCSRq9Jii42gl8OKM36v3CeQ5jl0KgcGn9CwMeO
         FOujiY8VXLtibHSwkya9utaIR8f47aEE3AGeec+SDeL6jc1tIrf9LapVBux+D+JFDcKX
         1YSDLzMgyolWL8GgGu3szVlTFmpOOzP/cBIeOaHAkNYl+d0P8ayeatnpwUUKTAiH3DVA
         gJ0kz6/oBqsJqR2MCB+B0ZMUodBfp/LO2rjGxuYNyA9X5Iiy9IQ7/vNY22e16qy0vcvL
         UNsA==
X-Gm-Message-State: AOAM533RHG1kyrAMVPsNyJeKRUVCT77sJllpAat2s+ys14w/qwow0c8q
	IHUtZ9+i0IFpc6iLBRriPOYmgUms9hlsSPgR6e5RJfiUBQA=
X-Google-Smtp-Source: ABdhPJykYXKWOM6GCp9h3AGwzliG2ds6uz+7bvLAFq+4AfMDb+E+YD6b3evnmwWDHY5MIrV4kQe1g2Wz3Q85D8W2Efg=
X-Received: by 2002:a05:6122:104c:: with SMTP id z12mr28332433vkn.37.1593900062876;
 Sat, 04 Jul 2020 15:01:02 -0700 (PDT)
MIME-Version: 1.0
From: "Karthik Poduval" <karthik.poduval@gmail.com>
Date: Sat, 4 Jul 2020 15:00:52 -0700
Message-ID: <CAFP0Ok-aasodWKBaQffNe5Mi=XJ2zn_-ffyNGkNNh3ehgmZiyg@mail.gmail.com>
Subject: Trouble with dual qemu with meta-xlinx on yocto 3.1 dunfell
To: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi All,

I am trying to build an image for Xilinx ZCU102, MACHINE=zcu102-zynqmp
using the YOE distro https://github.com/YoeDistro/yoe-distro.

Here are the relevant layers I added.
meta-xilinx-bsp
/home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp
5
meta-xilinx-contrib
/home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-contrib
 5
meta-xilinx-pynq
/home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-pynq
5
meta-xilinx-standalone
/home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-standalone
 7
meta-xilinx-tools
/home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx-tools  5
meta-petalinux        /home/kpoduval/workspace/yoe-zcu/sources/meta-petalinux  5

meta-xilinx, meta-xilinx-tools and meta-petalinux are on master branch
which has dunfell support.

Initially it gave trouble with xsct tool as described in
https://github.com/Xilinx/meta-xilinx-tools/issues/19, but this was
resolved by installing libtinfo5 on Ubuntu 20.04 using command.
sudo apt-get install libtinfo5

Towards the very end of the build, bitbake complaints about two
recipes proving qemu, here is the exact error message.
ERROR: linux-xlnx-5.4+gitAUTOINC+22b71b4162-r0 do_deploy: The file
/usr/bin/qemu-aarch64 is installed by both qemu-xilinx-native and
qemu-native, aborting
ERROR: Logfile of failure stored in:
/home/kpoduval/workspace/yoe-zcu/build/tmp/work/zcu102_zynqmp-yoe-linux/linux-xlnx/5.4+gitAUTOINC+22b71b4162-r0/temp/log.do_deploy.3102630
ERROR: Task (/home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp/recipes-kernel/linux/linux-xlnx_2020.1.bb:do_deploy)
failed with exit code '1'


The following warning was also presented after recipe parsing.

ERROR: Multiple .bb files are due to be built which each provide
qemu-native:################################################################################################################



| ETA:  0:00:00
  /home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-devtools/qemu/qemu-native_4.2.0.bb
  /home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp/recipes-devtools/qemu/qemu-xilinx-native_2020.1.bb
A list of tasks depending on these providers is shown and may help
explain where the dependency comes from.
/home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-devtools/qemu/qemu-native_4.2.0.bb
has unique dependees:
  /home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_prepare_recipe_sysroot
  /home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-core/images/core-image-minimal.bb:do_rootfs
  /home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-core/glib-2.0/glib-2.0_2.62.4.bb:do_package_write_ipk
  /home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-core/udev/eudev_3.2.9.bb:do_package_write_ipk
  /home/kpoduval/workspace/yoe-zcu/sources/meta-yoe/recipes-core/images/initramfs-image.bb:do_rootfs
/home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp/recipes-devtools/qemu/qemu-xilinx-native_2020.1.bb
has unique dependees:
  /home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp/recipes-devtools/qemu/qemu-xilinx-system-native_2020.1.bb:do_prepare_recipe_sysroot
  /home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp/recipes-devtools/qemu/qemu-xilinx-multiarch-helper-native_1.0.bb:do_populate_sysroot
It could be that one recipe provides something the other doesn't and
should. The following provider and runtime provider differences may be
helpful.
/home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-devtools/qemu/qemu-native_4.2.0.bb
has unique provides:

/home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-devtools/qemu/qemu-native_4.2.0.bb
has unique rprovides:
  qemu-native
/home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp/recipes-devtools/qemu/qemu-xilinx-native_2020.1.bb
has unique provides:
  qemu-xilinx-native
/home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp/recipes-devtools/qemu/qemu-xilinx-native_2020.1.bb
has unique rprovides:
  qemu-xilinx-native

build command used.
bitbake core-image-minimal

Here are some things I added to local conf, but it didn't help resolve
the issue.
PREFERRED_PROVIDER_virtual/pmu-firmware = "pmu-firmware"
PREFERRED_PROVIDER_virtual/boot-bin = "xilinx-bootbin"
PREFERRED_PROVIDER_virtual/dtb = "device-tree"
PREFERRED_PROVIDER_qemu = "qemu"
PREFERRED_PROVIDER_qemu-helper-native = "qemu-helper-native"
IMAGE_INSTALL_remove = " qemu"

-- 
Regards,
Karthik Poduval
