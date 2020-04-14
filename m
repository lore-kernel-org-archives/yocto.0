Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com [209.85.160.194])
 by mx.groups.io with SMTP id smtpd.web11.14015.1586879312813945044
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 08:48:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IlF+PSps;
 spf=pass (domain: gmail.com, ip: 209.85.160.194, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f194.google.com with SMTP id i19so7599632qtp.13
        for <yocto@lists.yoctoproject.org>; Tue, 14 Apr 2020 08:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3QfPyA62N1spRP9FL5k4a9jM5hL0O/qAn/bR8ePOQcw=;
        b=IlF+PSpsSIYwY8Kl0rEf3Go5nC7mQJQXc/6MhrlJ0LlQUDPY0ZsVBkI4MzfueSKOF8
         HAybhwDJPT+9t2PvpfMJ0eyHJD82aG30mGJX1QRw39UGZnKguYraCRFXVEV/2IR7YJc8
         F88cDgqK/ehNHIg+NIubqUz57DMrNXWRAZI6u5bFeocEeqPzEZIMN4B/4MGTkT6Rg6HV
         8qJQKxIUIWBRLoCE+o82iwhUjpr6+hTMiByT0jLbZwZ4LJFxn77dK+DkvQs9Q0h9Th+Q
         Aa7co8YVAXdfx5JKJ05+xNyPcSx5/p8+5WmOF5pGI6os5cqDwR/hWd6hl6XG+KXpf1If
         Tbew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3QfPyA62N1spRP9FL5k4a9jM5hL0O/qAn/bR8ePOQcw=;
        b=FJm0uOsdCrkZWWV14PpmNgcC1MKvfiZgAL1k078ba3/8NK5++Q7HS3kWmgECNwwgRk
         LTlTFgG/fQF14B+Sm7hVdMNRC+V7rDNUAk58OF4noUcDVIfJSHPcDB414QjkAYPy1jrS
         rKdHePv3d97a5RJiKxGnwa74Adu3cPxkiPud/wpq+vDAP/+qnMahuQOwNlFYFuMU6G9b
         dMfSyccZL4Oo6Lj/RWB3lM7ec+JHfSlr+46Ixsdj2wWluwYMJFMyyNHlHkJYyQPQYEh6
         N+kdj5ISoxZ4hnzC/BxyCR93qZlfeWAAwsU7Orvz1eAxSRp5WJRbpjeEXb2jNcGLeWp7
         QRCg==
X-Gm-Message-State: AGi0PubyqOpgCOMJLSmnQJWyn6N8phc/tcMRVG6ZJvThgki8wyiOki1L
	b/jRXnPtwQ5ug7AYUdlXm+zExUGTK1U5SAkjsVk=
X-Google-Smtp-Source: APiQypJ0vJRSaCLdrF4s5gPkEK2V082nDstbQTZAqXaO368F8is9xOXha9j+fXgo4rTFH+4WRaVaM7/dcca87OeEw5k=
X-Received: by 2002:ac8:6b86:: with SMTP id z6mr16568369qts.293.1586879311541;
 Tue, 14 Apr 2020 08:48:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200414133215.8055-1-JPEWhacker@gmail.com>
In-Reply-To: <20200414133215.8055-1-JPEWhacker@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 14 Apr 2020 08:48:04 -0700
Message-ID: <CAMKF1sohxdUaR5z-pV3SuqHF4jKjqh9Ly7UhCqSxm8RyLznVpw@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] Use linux-yocto kernel from OE-core
To: Joshua Watt <JPEWhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org, Trevor Woerner <twoerner@gmail.com>, jin@mediatomb.cc
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 14, 2020 at 6:32 AM Joshua Watt <JPEWhacker@gmail.com> wrote:
>
> Updates all machines to use the linux-yocto kernel from OE-core instead
> of maintaining distinct kernels in this repository.
>
> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> ---
>  conf/machine/include/rk3288.inc               |  2 +-
>  conf/machine/include/rockchip-defaults.inc    |  3 +-
>  ...-cfg-Allow-specification-of-ncurses-.patch | 51 -------------------
>  recipes-kernel/linux/linux-longterm_4.19.bb   |  9 ----
>  recipes-kernel/linux/linux-longterm_5.4.bb    |  7 ---
>  recipes-kernel/linux/linux-mainline_5.6.bb    |  9 ----
>  recipes-kernel/linux/linux-mutual.inc         | 18 -------
>  recipes-kernel/linux/linux-stable_5.5.bb      |  7 ---
>  ...-Keep-rk3288-tinker-SD-card-IO-power.patch | 31 +++++++++++
>  recipes-kernel/linux/linux-yocto_%.bbappend   |  2 +
>  recipes-kernel/linux/linux-yocto_5.4.bbappend |  5 ++
>  11 files changed, 41 insertions(+), 103 deletions(-)
>  delete mode 100644 recipes-kernel/linux/files/0001-menuconfig-mconf-cfg-Allow-specification-of-ncurses-.patch
>  delete mode 100644 recipes-kernel/linux/linux-longterm_4.19.bb
>  delete mode 100644 recipes-kernel/linux/linux-longterm_5.4.bb
>  delete mode 100644 recipes-kernel/linux/linux-mainline_5.6.bb
>  delete mode 100644 recipes-kernel/linux/linux-mutual.inc
>  delete mode 100644 recipes-kernel/linux/linux-stable_5.5.bb
>  create mode 100644 recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch
>  create mode 100644 recipes-kernel/linux/linux-yocto_%.bbappend
>  create mode 100644 recipes-kernel/linux/linux-yocto_5.4.bbappend
>

I think another solution could be to use yocto kernel tooling but
point to mainline kernels much like what meta-meson [1] is doing
this will let you keep bumping to latest releases from mainline, this
approach is used by many other BSPs

[1] https://github.com/superna9999/meta-meson/blob/master/recipes-kernel/linux/linux-yocto-meson64_5.4.bb

> diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
> index a7edac5..480e250 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -7,7 +7,7 @@ require conf/machine/include/tune-cortexa17.inc
>  require conf/machine/include/soc-family.inc
>  require conf/machine/include/rockchip-defaults.inc
>
> -KBUILD_DEFCONFIG = "multi_v7_defconfig"
> +KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
>  KERNEL_IMAGETYPE = "zImage"
>
>  SERIAL_CONSOLES = "115200;ttyS2"
> diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
> index 82fd590..a4e2a2c 100644
> --- a/conf/machine/include/rockchip-defaults.inc
> +++ b/conf/machine/include/rockchip-defaults.inc
> @@ -1,7 +1,8 @@
>  # meta-rockchip default settings
>
>  # kernel
> -PREFERRED_PROVIDER_virtual/kernel ?= "linux-stable"
> +PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> +KCONFIG_MODE ?= "alldefconfig"
>  LINUX_VERSION_EXTENSION ?= "-rockchip"
>
>  # xserver
> diff --git a/recipes-kernel/linux/files/0001-menuconfig-mconf-cfg-Allow-specification-of-ncurses-.patch b/recipes-kernel/linux/files/0001-menuconfig-mconf-cfg-Allow-specification-of-ncurses-.patch
> deleted file mode 100644
> index 0b2d077..0000000
> --- a/recipes-kernel/linux/files/0001-menuconfig-mconf-cfg-Allow-specification-of-ncurses-.patch
> +++ /dev/null
> @@ -1,51 +0,0 @@
> -From 846b11d8c834af4fa62393dadb490ea8246b332c Mon Sep 17 00:00:00 2001
> -From: Bruce Ashfield <bruce.ashfield@windriver.com>
> -Date: Mon, 2 Jul 2018 23:10:28 -0400
> -Subject: [PATCH] menuconfig,mconf-cfg: Allow specification of ncurses location
> -
> -In some cross build environments such as the Yocto Project build
> -environment it provides an ncurses library that is compiled
> -differently than the host's version.  This causes display corruption
> -problems when the host's curses includes are used instead of the
> -includes from the provided compiler are overridden.  There is a second
> -case where there is no curses libraries at all on the host system and
> -menuconfig will just fail entirely.
> -
> -The solution is simply to allow an override variable in
> -check-lxdialog.sh for environments such as the Yocto Project.  Adding
> -a CROSS_CURSES_LIB and CROSS_CURSES_INC solves the issue and allowing
> -compiling and linking against the right headers and libraries.
> -
> -Signed-off-by: Jason Wessel <jason.wessel@windriver.com>
> -cc: Michal Marek <mmarek@suse.cz>
> -cc: linux-kbuild@vger.kernel.org
> -Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ----
> - scripts/kconfig/mconf-cfg.sh | 8 ++++++++
> - 1 file changed, 8 insertions(+)
> - mode change 100755 => 100644 scripts/kconfig/mconf-cfg.sh
> -
> -diff --git a/scripts/kconfig/mconf-cfg.sh b/scripts/kconfig/mconf-cfg.sh
> -old mode 100755
> -new mode 100644
> -index c812872d7f9d..65a9b9e5b8a6
> ---- a/scripts/kconfig/mconf-cfg.sh
> -+++ b/scripts/kconfig/mconf-cfg.sh
> -@@ -4,6 +4,14 @@
> - PKG="ncursesw"
> - PKG2="ncurses"
> -
> -+if [ "$CROSS_CURSES_LIB" != "" ]; then
> -+    echo libs=\'$CROSS_CURSES_LIB\'
> -+    if [ x"$CROSS_CURSES_INC" != x ]; then
> -+      echo cflags=\'$CROSS_CURSES_INC\'
> -+    fi
> -+    exit 0
> -+fi
> -+
> - if [ -n "$(command -v pkg-config)" ]; then
> -       if pkg-config --exists $PKG; then
> -               echo cflags=\"$(pkg-config --cflags $PKG)\"
> ---
> -2.20.1
> -
> diff --git a/recipes-kernel/linux/linux-longterm_4.19.bb b/recipes-kernel/linux/linux-longterm_4.19.bb
> deleted file mode 100644
> index 11c18e3..0000000
> --- a/recipes-kernel/linux/linux-longterm_4.19.bb
> +++ /dev/null
> @@ -1,9 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> -
> -LINUX_VERSION ?= "4.19.113"
> -KBRANCH ?= "linux-4.19.y"
> -SRCREV ?= "54b4fa6d39551639cb10664f6ac78b01993a1d7e"
> -
> -require linux-mutual.inc
> -
> -COMPATIBLE_MACHINE = "(firefly-rk3288|marsboard-rk3066|radxarock|rock2-square|^tinker-board$|vyasa-rk3288)"
> diff --git a/recipes-kernel/linux/linux-longterm_5.4.bb b/recipes-kernel/linux/linux-longterm_5.4.bb
> deleted file mode 100644
> index 60be6fe..0000000
> --- a/recipes-kernel/linux/linux-longterm_5.4.bb
> +++ /dev/null
> @@ -1,7 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> -
> -LINUX_VERSION ?= "5.4.28"
> -KBRANCH ?= "linux-5.4.y"
> -SRCREV ?= "462afcd6e7ea94a7027a96a3bb12d0140b0b4216"
> -
> -require linux-mutual.inc
> diff --git a/recipes-kernel/linux/linux-mainline_5.6.bb b/recipes-kernel/linux/linux-mainline_5.6.bb
> deleted file mode 100644
> index 8d33590..0000000
> --- a/recipes-kernel/linux/linux-mainline_5.6.bb
> +++ /dev/null
> @@ -1,9 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> -
> -LINUX_VERSION ?= "5.6-rc7"
> -KBRANCH ?= "master"
> -SRCREV ?= "16fbf79b0f83bc752cee8589279f1ebfe57b3b6e"
> -
> -require linux-mutual.inc
> -
> -LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"
> diff --git a/recipes-kernel/linux/linux-mutual.inc b/recipes-kernel/linux/linux-mutual.inc
> deleted file mode 100644
> index ba3ab6e..0000000
> --- a/recipes-kernel/linux/linux-mutual.inc
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -DESCRIPTION = "Linux Kernel"
> -SECTION = "kernel"
> -LICENSE = "GPLv2"
> -
> -LIC_FILES_CHKSUM = "file://COPYING;md5=bbea815ee2795b2f4230826c0c6b8814"
> -
> -SRC_URI = " \
> -    git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;branch=${KBRANCH} \
> -    file://0001-menuconfig-mconf-cfg-Allow-specification-of-ncurses-.patch \
> -    "
> -
> -inherit kernel
> -require recipes-kernel/linux/linux-yocto.inc
> -
> -PV = "${LINUX_VERSION}+git${SRCPV}"
> -
> -KCONF_BSP_AUDIT_LEVEL = "0"
> -deltask kernel_configme
> diff --git a/recipes-kernel/linux/linux-stable_5.5.bb b/recipes-kernel/linux/linux-stable_5.5.bb
> deleted file mode 100644
> index b5c7cdc..0000000
> --- a/recipes-kernel/linux/linux-stable_5.5.bb
> +++ /dev/null
> @@ -1,7 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> -
> -LINUX_VERSION ?= "5.5.13"
> -KBRANCH ?= "linux-5.5.y"
> -SRCREV ?= "fe5ae687d01e74854ed33666c932a9c11e22139c"
> -
> -require linux-mutual.inc
> diff --git a/recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch b/recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch
> new file mode 100644
> index 0000000..751f1ad
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch
> @@ -0,0 +1,31 @@
> +From 04ab2a1f052f363985b373f07ea71840918378d2 Mon Sep 17 00:00:00 2001
> +From: Joshua Watt <JPEWhacker@gmail.com>
> +Date: Wed, 19 Feb 2020 13:10:32 -0600
> +Subject: [PATCH] ARM: dts: rockchip: Keep rk3288-tinker SD card IO powered
> + during reboot
> +
> +IO voltage regulator for the SD card must be kept on all the time,
> +otherwise when the board reboots the SD card can't be read by the
> +bootloader.
> +
> +Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> +Upstream-Status: Accepted in 5.7
> +---
> + arch/arm/boot/dts/rk3288-tinker.dtsi | 1 +
> + 1 file changed, 1 insertion(+)
> +
> +diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
> +index 312582c1bd37..acfaa12ec239 100644
> +--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
> ++++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
> +@@ -276,6 +276,7 @@
> +                       };
> +
> +                       vccio_sd: LDO_REG5 {
> ++                              regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt = <1800000>;
> +                               regulator-max-microvolt = <3300000>;
> +--
> +2.17.1
> +
> diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
> new file mode 100644
> index 0000000..97b8cda
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto_%.bbappend
> @@ -0,0 +1,2 @@
> +COMPATIBLE_MACHINE .= "|firefly-rk3288|marsboard-rk3066|radxarock|rock-pi-4|rock2-square|tinker-board-s|tinker-board|vyasa-rk3288"
> +
> diff --git a/recipes-kernel/linux/linux-yocto_5.4.bbappend b/recipes-kernel/linux/linux-yocto_5.4.bbappend
> new file mode 100644
> index 0000000..e832529
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto_5.4.bbappend
> @@ -0,0 +1,5 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +# tinker-board and tinker-board-s. rk3288 covers both
> +SRC_URI_append_rk3288 = " file://0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch"
> +
> --
> 2.17.1
>
> 
