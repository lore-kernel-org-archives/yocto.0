Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.28953.1593907172300793875
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jul 2020 16:59:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hOHWPsvf;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: karthik.poduval@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA634E01DFA; Sat,  4 Jul 2020 16:59:31 -0700 (PDT)
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
	*      [209.85.221.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 753ADE01DBC;
	Sat,  4 Jul 2020 16:59:29 -0700 (PDT)
Received: by mail-vk1-f178.google.com with SMTP id h1so7726662vkn.12;
        Sat, 04 Jul 2020 16:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h9SVVv7GsAhpRDwD7gRiv38BXXjuucpiwNhQ2oZLgSM=;
        b=hOHWPsvfp34++ArDRKzoj1HOGsgGaLh44o4whOSfAbFv3bPa5fAhyQhQU4PHbR3zyS
         ww0ZUFUiLjqtvT74oxzrSZBqcblRVuxA85RNwp9BLc5pw7F3E/MpLW8cVClehkVyDUe8
         00W/baNQLHAps5YP+EqHIen6eaT7YAnS4nOGWJ/e2a5f9IBhguilThKe3fmoYFt9kD/L
         IBEDUCKZ0hfAFWy8/bjXrzwZKfXI/E02zkCk+5RpncPpTd7ye5f3SVbhvIBY8iP3Kzde
         0F/NHX10q1w00XrJHhG/S71ZykSOQORozZ6ODDiyJmyaFT5wBkyvCrBmrVkygxAAJEWc
         ydJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h9SVVv7GsAhpRDwD7gRiv38BXXjuucpiwNhQ2oZLgSM=;
        b=pedA4tThp9j5m4rRlc8S/YeNs7i3Ox+nHjKbDVLRpv9ZlMT8lZ9SGxkVpwCBtY5d1v
         kc9eDHalKzJF2Z5v8G1YcjEiXvORtLfBTn7LVpdA3oLubwrcnc4oJyaezZ1D08rAJmok
         JxlbsguQHWbvjJX/oZmcqwuMCIQQ7ZQPsNhAd3VAqMs6GxrYAAysXdIM8jK9DwDJW/V1
         Yo1eod4l4bAi64SbJ2YpboAJF0EZJgBTBR1inIvK9iuXikjHMBIbvYY4skKsZ624fBEi
         OokRMrcm1RAP2dIkB+8v185VO5x2k2xDCCkvjqZH7KXMiyprCNrINDhR/GSTmF6tO2KN
         Mhzw==
X-Gm-Message-State: AOAM533cE4jZ8qrjVfNhzqLDC5u/4xT2fLj+Q7+mHqpUV9/oAb4Bv6x9
	Cd0sZxYCsIgOQjcqUfSv+ix6hArSRZ1CEFmVVWQ=
X-Google-Smtp-Source: ABdhPJy5rkMUgoWy8VkCZHkYL772nZW6hcyvSKQ+RfIXEF5eZyp/XysL6OYezhhvPyEjy+ud6Ghf3GuB71atSdjZFxA=
X-Received: by 2002:a1f:2409:: with SMTP id k9mr1873021vkk.80.1593907168992;
 Sat, 04 Jul 2020 16:59:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP0Ok-aasodWKBaQffNe5Mi=XJ2zn_-ffyNGkNNh3ehgmZiyg@mail.gmail.com>
 <161EB0A0F4530D55.26531@lists.yoctoproject.org>
In-Reply-To: <161EB0A0F4530D55.26531@lists.yoctoproject.org>
From: "Karthik Poduval" <karthik.poduval@gmail.com>
Date: Sat, 4 Jul 2020 16:59:17 -0700
Message-ID: <CAFP0Ok-=XsAGrY_DARmxwV_btJJz8yy-FpGxKOQ-hPkvGh=atQ@mail.gmail.com>
Subject: Re: [yocto] Trouble with dual qemu with meta-xlinx on yocto 3.1 dunfell
To: karthik poduval <karthik.poduval@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>, meta-xilinx@yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

I was able to get past the error. Here are the conf values used.

PREFERRED_PROVIDER_virtual/pmu-firmware = "pmu-firmware"
PREFERRED_PROVIDER_virtual/boot-bin = "xilinx-bootbin"
PREFERRED_PROVIDER_virtual/dtb = "device-tree"
PREFERRED_PROVIDER_qemu-native = "qemu-xilinx-native"
PREFERRED_PROVIDER_qemu-helper-native = "qemu-helper-native"
IMAGE_INSTALL_remove = " qemu"

It made better sense to go with qemu provided by Xilinx instead of oe.
I also ran into another error.
Exception: FileExistsError: [Errno 17] File exists:
'/home/kpoduval/workspace/yoe-zcu/build/tmp/sysroots-components/x86_64/qemu-xilinx-native/sysroot-providers/qemu-native'
-> '/home/kpoduval/workspace/yoe-zcu/build/tmp/work/zcu102_zynqmp-yoe-linux/linux-xlnx/5.4+gitAUTOINC+22b71b4162-r0/recipe-sysroot-native/sysroot-providers/qemu-native'

This was solved by removing oe's qemu-native via a clean build.
bitbake qemu-native -c cleanall

After which the image builds fine.

On Sat, Jul 4, 2020 at 4:32 PM Karthik Poduval via
lists.yoctoproject.org
<karthik.poduval=gmail.com@lists.yoctoproject.org> wrote:
>
> On Sat, Jul 4, 2020 at 3:00 PM karthik poduval
> <karthik.poduval@gmail.com> wrote:
> >
> > Hi All,
> >
> > I am trying to build an image for Xilinx ZCU102, MACHINE=zcu102-zynqmp
> > using the YOE distro https://github.com/YoeDistro/yoe-distro.
> >
> > Here are the relevant layers I added.
> > meta-xilinx-bsp
> > /home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp
> > 5
> > meta-xilinx-contrib
> > /home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-contrib
> >  5
> > meta-xilinx-pynq
> > /home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-pynq
> > 5
> > meta-xilinx-standalone
> > /home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-standalone
> >  7
> > meta-xilinx-tools
> > /home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx-tools  5
> > meta-petalinux        /home/kpoduval/workspace/yoe-zcu/sources/meta-petalinux  5
> >
> > meta-xilinx, meta-xilinx-tools and meta-petalinux are on master branch
> > which has dunfell support.
> >
> > Initially it gave trouble with xsct tool as described in
> > https://github.com/Xilinx/meta-xilinx-tools/issues/19, but this was
> > resolved by installing libtinfo5 on Ubuntu 20.04 using command.
> > sudo apt-get install libtinfo5
> >
> > Towards the very end of the build, bitbake complaints about two
> > recipes proving qemu, here is the exact error message.
> > ERROR: linux-xlnx-5.4+gitAUTOINC+22b71b4162-r0 do_deploy: The file
> > /usr/bin/qemu-aarch64 is installed by both qemu-xilinx-native and
> > qemu-native, aborting
> > ERROR: Logfile of failure stored in:
> > /home/kpoduval/workspace/yoe-zcu/build/tmp/work/zcu102_zynqmp-yoe-linux/linux-xlnx/5.4+gitAUTOINC+22b71b4162-r0/temp/log.do_deploy.3102630
> > ERROR: Task (/home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp/recipes-kernel/linux/linux-xlnx_2020.1.bb:do_deploy)
> > failed with exit code '1'
> >
> >
> > The following warning was also presented after recipe parsing.
> >
> > ERROR: Multiple .bb files are due to be built which each provide
> > qemu-native:################################################################################################################
> >
> >
> >
> > | ETA:  0:00:00
> >   /home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-devtools/qemu/qemu-native_4.2.0.bb
> >   /home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp/recipes-devtools/qemu/qemu-xilinx-native_2020.1.bb
> > A list of tasks depending on these providers is shown and may help
> > explain where the dependency comes from.
> > /home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-devtools/qemu/qemu-native_4.2.0.bb
> > has unique dependees:
> >   /home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_prepare_recipe_sysroot
> >   /home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-core/images/core-image-minimal.bb:do_rootfs
> >   /home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-core/glib-2.0/glib-2.0_2.62.4.bb:do_package_write_ipk
> >   /home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-core/udev/eudev_3.2.9.bb:do_package_write_ipk
> >   /home/kpoduval/workspace/yoe-zcu/sources/meta-yoe/recipes-core/images/initramfs-image.bb:do_rootfs
> > /home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp/recipes-devtools/qemu/qemu-xilinx-native_2020.1.bb
> > has unique dependees:
> >   /home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp/recipes-devtools/qemu/qemu-xilinx-system-native_2020.1.bb:do_prepare_recipe_sysroot
> >   /home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp/recipes-devtools/qemu/qemu-xilinx-multiarch-helper-native_1.0.bb:do_populate_sysroot
> > It could be that one recipe provides something the other doesn't and
> > should. The following provider and runtime provider differences may be
> > helpful.
> > /home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-devtools/qemu/qemu-native_4.2.0.bb
> > has unique provides:
> >
> > /home/kpoduval/workspace/yoe-zcu/sources/openembedded-core/meta/recipes-devtools/qemu/qemu-native_4.2.0.bb
> > has unique rprovides:
> >   qemu-native
> > /home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp/recipes-devtools/qemu/qemu-xilinx-native_2020.1.bb
> > has unique provides:
> >   qemu-xilinx-native
> > /home/kpoduval/workspace/yoe-zcu/sources/meta-xilinx/meta-xilinx-bsp/recipes-devtools/qemu/qemu-xilinx-native_2020.1.bb
> > has unique rprovides:
> >   qemu-xilinx-native
> >
> > build command used.
> > bitbake core-image-minimal
> >
> > Here are some things I added to local conf, but it didn't help resolve
> > the issue.
> > PREFERRED_PROVIDER_virtual/pmu-firmware = "pmu-firmware"
> > PREFERRED_PROVIDER_virtual/boot-bin = "xilinx-bootbin"
> > PREFERRED_PROVIDER_virtual/dtb = "device-tree"
> > PREFERRED_PROVIDER_qemu = "qemu"
> > PREFERRED_PROVIDER_qemu-helper-native = "qemu-helper-native"
> > IMAGE_INSTALL_remove = " qemu"
> >
> > --
> > Regards,
> > Karthik Poduval
>
>
>
> --
> Regards,
> Karthik Poduval
> 



-- 
Regards,
Karthik Poduval
