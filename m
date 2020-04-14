Received: from mail-il1-f196.google.com (mail-il1-f196.google.com [209.85.166.196])
 by mx.groups.io with SMTP id smtpd.web11.14346.1586880124579167916
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 09:02:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MU1cvu6u;
 spf=pass (domain: gmail.com, ip: 209.85.166.196, mailfrom: jpewhacker@gmail.com)
Received: by mail-il1-f196.google.com with SMTP id u5so214642ilb.5
        for <yocto@lists.yoctoproject.org>; Tue, 14 Apr 2020 09:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=aVGikU3kYACbAmCR/JoR+k+akWIOprI3f0qMSXupU9U=;
        b=MU1cvu6uKHKCTba6sogBPz6op9EAQ/tm0rMDifz5IPVXSNP0gpRwkMuIn/kJapLXiL
         K0nWR/NQGbZYwtSGh6/cADapBU+uKQOqAoyxS6+EhOLHCHhrqPMd/G/eSDZKL008wlSL
         A8Xi3o75sVCHzToV1qHdzpZYlrCf4fIlcVqGksToiOh69dVe4LqtwUn/jDmqjmxgvwcM
         zfdB7st1FeDd9jH016ZS8luho576+yG1hBxvZwibRxwB1/gpfw5750FIK22/nzsSyD24
         dQVO9xhXAJg7apT70niLZ+Gb71/Ea1vGAPlgzld+VYCghCLc+U8VWvXyul7c6HAGpjVe
         SStw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=aVGikU3kYACbAmCR/JoR+k+akWIOprI3f0qMSXupU9U=;
        b=NRJbPcDzXtBNqEwhTarVFJvz9bZIRfQ5+RlZdVovjdr7jD1XtPaPUPZnvi0DFRjc4s
         wMDhZZgJdQah91VrkXdBc6KjFScV4y79Asb28G+B+S4z6q+H9uZjDbyy8sQRGRCAIgAU
         qRkNlSOSVpK9XGJgwngxDpw+CNlR0tFe//gJaRrwH1xO8qprycYWOuhFw64ejXM6O3MD
         x+xzOyWtgkd79lOPOQ7o16O7JJiNyn55qIEfRQlbDhVeWzvOUF3bVpR2uT2XwNFOZU0N
         xkclXhj5kHvnUm1dt7NyhA6FTNOIEWFQoS5bN1kAYze1EPL9rM4zj0W+wQtBERiznlJx
         DcOA==
X-Gm-Message-State: AGi0PubL02eUD10msLTCRnpb9Dv4C2L6DMKKnhMXrkZ2sargJat4RMaj
	xU8tE/RJOJVZeBVZTNfFN7U=
X-Google-Smtp-Source: APiQypI72vXhQm42V9F0UvpVrj5ShVVdlvTlQKw86S+kvKZsCKAwuJvhLTWK1QbKLeeoBv80TYfaKg==
X-Received: by 2002:a05:6e02:66b:: with SMTP id l11mr858936ilt.284.1586880123777;
        Tue, 14 Apr 2020 09:02:03 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:587b:faea:1fb:be1d? ([2605:a601:ac3d:c100:587b:faea:1fb:be1d])
        by smtp.gmail.com with ESMTPSA id p5sm2035040ilk.20.2020.04.14.09.02.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Apr 2020 09:02:02 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] Use linux-yocto kernel from OE-core
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org, Trevor Woerner <twoerner@gmail.com>,
 jin@mediatomb.cc
References: <20200414133215.8055-1-JPEWhacker@gmail.com>
 <CAMKF1sohxdUaR5z-pV3SuqHF4jKjqh9Ly7UhCqSxm8RyLznVpw@mail.gmail.com>
Message-ID: <c7cb54b5-4525-05b6-0ad4-05ce79782069@gmail.com>
Date: Tue, 14 Apr 2020 11:02:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sohxdUaR5z-pV3SuqHF4jKjqh9Ly7UhCqSxm8RyLznVpw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 4/14/20 10:48 AM, Khem Raj wrote:
> On Tue, Apr 14, 2020 at 6:32 AM Joshua Watt <JPEWhacker@gmail.com> wrote:
>> Updates all machines to use the linux-yocto kernel from OE-core instead
>> of maintaining distinct kernels in this repository.
>>
>> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
>> ---
>>   conf/machine/include/rk3288.inc               |  2 +-
>>   conf/machine/include/rockchip-defaults.inc    |  3 +-
>>   ...-cfg-Allow-specification-of-ncurses-.patch | 51 -------------------
>>   recipes-kernel/linux/linux-longterm_4.19.bb   |  9 ----
>>   recipes-kernel/linux/linux-longterm_5.4.bb    |  7 ---
>>   recipes-kernel/linux/linux-mainline_5.6.bb    |  9 ----
>>   recipes-kernel/linux/linux-mutual.inc         | 18 -------
>>   recipes-kernel/linux/linux-stable_5.5.bb      |  7 ---
>>   ...-Keep-rk3288-tinker-SD-card-IO-power.patch | 31 +++++++++++
>>   recipes-kernel/linux/linux-yocto_%.bbappend   |  2 +
>>   recipes-kernel/linux/linux-yocto_5.4.bbappend |  5 ++
>>   11 files changed, 41 insertions(+), 103 deletions(-)
>>   delete mode 100644 recipes-kernel/linux/files/0001-menuconfig-mconf-cfg-Allow-specification-of-ncurses-.patch
>>   delete mode 100644 recipes-kernel/linux/linux-longterm_4.19.bb
>>   delete mode 100644 recipes-kernel/linux/linux-longterm_5.4.bb
>>   delete mode 100644 recipes-kernel/linux/linux-mainline_5.6.bb
>>   delete mode 100644 recipes-kernel/linux/linux-mutual.inc
>>   delete mode 100644 recipes-kernel/linux/linux-stable_5.5.bb
>>   create mode 100644 recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch
>>   create mode 100644 recipes-kernel/linux/linux-yocto_%.bbappend
>>   create mode 100644 recipes-kernel/linux/linux-yocto_5.4.bbappend
>>
> I think another solution could be to use yocto kernel tooling but
> point to mainline kernels much like what meta-meson [1] is doing
> this will let you keep bumping to latest releases from mainline, this
> approach is used by many other BSPs
>
> [1] https://github.com/superna9999/meta-meson/blob/master/recipes-kernel/linux/linux-yocto-meson64_5.4.bb

My goal here was to minimize the maintenance required for this BSP layer 
to get newer kernels. Using the linux-yocto kernel in OE-core is quite 
simple (as this patch shows) and allows us to piggyback off of Bruce's 
work to keep everything up to date. While it is possible that OE-core 
accidentally breaks something in this layer with a kernel update, it 
seems likely this would be pretty rare and would probably require less 
overall work than maintaining our own kernel recipes, particularly for 
the set of boards in this BSP which have really good and stable support 
in the kernel.


I think it should be possible to easily track the upstream vanilla 
kernel branches in the linux-yocto recipe, and Bruce has done some work 
to make this easier, but I think there might need to be little more work 
in that area before it's completely ready to go.

>> diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
>> index a7edac5..480e250 100644
>> --- a/conf/machine/include/rk3288.inc
>> +++ b/conf/machine/include/rk3288.inc
>> @@ -7,7 +7,7 @@ require conf/machine/include/tune-cortexa17.inc
>>   require conf/machine/include/soc-family.inc
>>   require conf/machine/include/rockchip-defaults.inc
>>
>> -KBUILD_DEFCONFIG = "multi_v7_defconfig"
>> +KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
>>   KERNEL_IMAGETYPE = "zImage"
>>
>>   SERIAL_CONSOLES = "115200;ttyS2"
>> diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
>> index 82fd590..a4e2a2c 100644
>> --- a/conf/machine/include/rockchip-defaults.inc
>> +++ b/conf/machine/include/rockchip-defaults.inc
>> @@ -1,7 +1,8 @@
>>   # meta-rockchip default settings
>>
>>   # kernel
>> -PREFERRED_PROVIDER_virtual/kernel ?= "linux-stable"
>> +PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>> +KCONFIG_MODE ?= "alldefconfig"
>>   LINUX_VERSION_EXTENSION ?= "-rockchip"
>>
>>   # xserver
>> diff --git a/recipes-kernel/linux/files/0001-menuconfig-mconf-cfg-Allow-specification-of-ncurses-.patch b/recipes-kernel/linux/files/0001-menuconfig-mconf-cfg-Allow-specification-of-ncurses-.patch
>> deleted file mode 100644
>> index 0b2d077..0000000
>> --- a/recipes-kernel/linux/files/0001-menuconfig-mconf-cfg-Allow-specification-of-ncurses-.patch
>> +++ /dev/null
>> @@ -1,51 +0,0 @@
>> -From 846b11d8c834af4fa62393dadb490ea8246b332c Mon Sep 17 00:00:00 2001
>> -From: Bruce Ashfield <bruce.ashfield@windriver.com>
>> -Date: Mon, 2 Jul 2018 23:10:28 -0400
>> -Subject: [PATCH] menuconfig,mconf-cfg: Allow specification of ncurses location
>> -
>> -In some cross build environments such as the Yocto Project build
>> -environment it provides an ncurses library that is compiled
>> -differently than the host's version.  This causes display corruption
>> -problems when the host's curses includes are used instead of the
>> -includes from the provided compiler are overridden.  There is a second
>> -case where there is no curses libraries at all on the host system and
>> -menuconfig will just fail entirely.
>> -
>> -The solution is simply to allow an override variable in
>> -check-lxdialog.sh for environments such as the Yocto Project.  Adding
>> -a CROSS_CURSES_LIB and CROSS_CURSES_INC solves the issue and allowing
>> -compiling and linking against the right headers and libraries.
>> -
>> -Signed-off-by: Jason Wessel <jason.wessel@windriver.com>
>> -cc: Michal Marek <mmarek@suse.cz>
>> -cc: linux-kbuild@vger.kernel.org
>> -Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>> ----
>> - scripts/kconfig/mconf-cfg.sh | 8 ++++++++
>> - 1 file changed, 8 insertions(+)
>> - mode change 100755 => 100644 scripts/kconfig/mconf-cfg.sh
>> -
>> -diff --git a/scripts/kconfig/mconf-cfg.sh b/scripts/kconfig/mconf-cfg.sh
>> -old mode 100755
>> -new mode 100644
>> -index c812872d7f9d..65a9b9e5b8a6
>> ---- a/scripts/kconfig/mconf-cfg.sh
>> -+++ b/scripts/kconfig/mconf-cfg.sh
>> -@@ -4,6 +4,14 @@
>> - PKG="ncursesw"
>> - PKG2="ncurses"
>> -
>> -+if [ "$CROSS_CURSES_LIB" != "" ]; then
>> -+    echo libs=\'$CROSS_CURSES_LIB\'
>> -+    if [ x"$CROSS_CURSES_INC" != x ]; then
>> -+      echo cflags=\'$CROSS_CURSES_INC\'
>> -+    fi
>> -+    exit 0
>> -+fi
>> -+
>> - if [ -n "$(command -v pkg-config)" ]; then
>> -       if pkg-config --exists $PKG; then
>> -               echo cflags=\"$(pkg-config --cflags $PKG)\"
>> ---
>> -2.20.1
>> -
>> diff --git a/recipes-kernel/linux/linux-longterm_4.19.bb b/recipes-kernel/linux/linux-longterm_4.19.bb
>> deleted file mode 100644
>> index 11c18e3..0000000
>> --- a/recipes-kernel/linux/linux-longterm_4.19.bb
>> +++ /dev/null
>> @@ -1,9 +0,0 @@
>> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>> -
>> -LINUX_VERSION ?= "4.19.113"
>> -KBRANCH ?= "linux-4.19.y"
>> -SRCREV ?= "54b4fa6d39551639cb10664f6ac78b01993a1d7e"
>> -
>> -require linux-mutual.inc
>> -
>> -COMPATIBLE_MACHINE = "(firefly-rk3288|marsboard-rk3066|radxarock|rock2-square|^tinker-board$|vyasa-rk3288)"
>> diff --git a/recipes-kernel/linux/linux-longterm_5.4.bb b/recipes-kernel/linux/linux-longterm_5.4.bb
>> deleted file mode 100644
>> index 60be6fe..0000000
>> --- a/recipes-kernel/linux/linux-longterm_5.4.bb
>> +++ /dev/null
>> @@ -1,7 +0,0 @@
>> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>> -
>> -LINUX_VERSION ?= "5.4.28"
>> -KBRANCH ?= "linux-5.4.y"
>> -SRCREV ?= "462afcd6e7ea94a7027a96a3bb12d0140b0b4216"
>> -
>> -require linux-mutual.inc
>> diff --git a/recipes-kernel/linux/linux-mainline_5.6.bb b/recipes-kernel/linux/linux-mainline_5.6.bb
>> deleted file mode 100644
>> index 8d33590..0000000
>> --- a/recipes-kernel/linux/linux-mainline_5.6.bb
>> +++ /dev/null
>> @@ -1,9 +0,0 @@
>> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>> -
>> -LINUX_VERSION ?= "5.6-rc7"
>> -KBRANCH ?= "master"
>> -SRCREV ?= "16fbf79b0f83bc752cee8589279f1ebfe57b3b6e"
>> -
>> -require linux-mutual.inc
>> -
>> -LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"
>> diff --git a/recipes-kernel/linux/linux-mutual.inc b/recipes-kernel/linux/linux-mutual.inc
>> deleted file mode 100644
>> index ba3ab6e..0000000
>> --- a/recipes-kernel/linux/linux-mutual.inc
>> +++ /dev/null
>> @@ -1,18 +0,0 @@
>> -DESCRIPTION = "Linux Kernel"
>> -SECTION = "kernel"
>> -LICENSE = "GPLv2"
>> -
>> -LIC_FILES_CHKSUM = "file://COPYING;md5=bbea815ee2795b2f4230826c0c6b8814"
>> -
>> -SRC_URI = " \
>> -    git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;branch=${KBRANCH} \
>> -    file://0001-menuconfig-mconf-cfg-Allow-specification-of-ncurses-.patch \
>> -    "
>> -
>> -inherit kernel
>> -require recipes-kernel/linux/linux-yocto.inc
>> -
>> -PV = "${LINUX_VERSION}+git${SRCPV}"
>> -
>> -KCONF_BSP_AUDIT_LEVEL = "0"
>> -deltask kernel_configme
>> diff --git a/recipes-kernel/linux/linux-stable_5.5.bb b/recipes-kernel/linux/linux-stable_5.5.bb
>> deleted file mode 100644
>> index b5c7cdc..0000000
>> --- a/recipes-kernel/linux/linux-stable_5.5.bb
>> +++ /dev/null
>> @@ -1,7 +0,0 @@
>> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>> -
>> -LINUX_VERSION ?= "5.5.13"
>> -KBRANCH ?= "linux-5.5.y"
>> -SRCREV ?= "fe5ae687d01e74854ed33666c932a9c11e22139c"
>> -
>> -require linux-mutual.inc
>> diff --git a/recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch b/recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch
>> new file mode 100644
>> index 0000000..751f1ad
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch
>> @@ -0,0 +1,31 @@
>> +From 04ab2a1f052f363985b373f07ea71840918378d2 Mon Sep 17 00:00:00 2001
>> +From: Joshua Watt <JPEWhacker@gmail.com>
>> +Date: Wed, 19 Feb 2020 13:10:32 -0600
>> +Subject: [PATCH] ARM: dts: rockchip: Keep rk3288-tinker SD card IO powered
>> + during reboot
>> +
>> +IO voltage regulator for the SD card must be kept on all the time,
>> +otherwise when the board reboots the SD card can't be read by the
>> +bootloader.
>> +
>> +Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
>> +Upstream-Status: Accepted in 5.7
>> +---
>> + arch/arm/boot/dts/rk3288-tinker.dtsi | 1 +
>> + 1 file changed, 1 insertion(+)
>> +
>> +diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
>> +index 312582c1bd37..acfaa12ec239 100644
>> +--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
>> ++++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
>> +@@ -276,6 +276,7 @@
>> +                       };
>> +
>> +                       vccio_sd: LDO_REG5 {
>> ++                              regulator-always-on;
>> +                               regulator-boot-on;
>> +                               regulator-min-microvolt = <1800000>;
>> +                               regulator-max-microvolt = <3300000>;
>> +--
>> +2.17.1
>> +
>> diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
>> new file mode 100644
>> index 0000000..97b8cda
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-yocto_%.bbappend
>> @@ -0,0 +1,2 @@
>> +COMPATIBLE_MACHINE .= "|firefly-rk3288|marsboard-rk3066|radxarock|rock-pi-4|rock2-square|tinker-board-s|tinker-board|vyasa-rk3288"
>> +
>> diff --git a/recipes-kernel/linux/linux-yocto_5.4.bbappend b/recipes-kernel/linux/linux-yocto_5.4.bbappend
>> new file mode 100644
>> index 0000000..e832529
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-yocto_5.4.bbappend
>> @@ -0,0 +1,5 @@
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> +
>> +# tinker-board and tinker-board-s. rk3288 covers both
>> +SRC_URI_append_rk3288 = " file://0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch"
>> +
>> --
>> 2.17.1
>>
>> 
