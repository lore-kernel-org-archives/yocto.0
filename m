Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
 by mx.groups.io with SMTP id smtpd.web12.14686.1586880685353132989
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 09:11:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=c++S/9nr;
 spf=pass (domain: gmail.com, ip: 209.85.208.65, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f65.google.com with SMTP id e5so218388edq.5
        for <yocto@lists.yoctoproject.org>; Tue, 14 Apr 2020 09:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RQ8/Nd32d4GtshKA50ABP0B5I55XJb6VYO6HVQrF1F4=;
        b=c++S/9nrvay6wKD4x9x4q8fgY7VIlN25VvgYIUjihCpIZmT2WVrfszTHGKm2JcN9Mu
         B6+U55n6fKGDji8fuyFVUWleIeLmz+AOIORElLko/IyB9gDSngPzN9BvCfd5gUJ6SY5c
         dG4qjozzy8Dv9E7uyNown3ft+QYEGIW1b1zvktfK+LrySAAByQFKaTfQaAsIHXXjvgUC
         ei+uM6ABdVoR1FamZ6LgBPhRKW71f1lKTUOdwonStmENDw6UyMZfYVN3AGXIraUmNFfq
         YAFpp6cJGTl5aerg/wUgUkctkjl40xiNuv68S8kzDoLwEVKHF7ji4aO6Y6wT92CoRy+V
         4pxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RQ8/Nd32d4GtshKA50ABP0B5I55XJb6VYO6HVQrF1F4=;
        b=SHgrZZbHehvE7+MlbGq69sDGctDsB6Jh82E4CAvmbS21LhxVwZRN1yBqeDwRf71mnT
         LU+b0v1QogUyo5Apq0cMOog0tlHzjn/i4btcihPNondg3PPOD/b4qTEe6dxsNoAay3CT
         EMEE+rRmEJPXfhGdVkp0riY0z7x9FYqBlakf2eH+QWqaH2kCXZnBqRPloQp2ysN68owL
         NbN2rYNlrlXODP2roRzFG0O/c18sDcKZ8gJoxVtU2NV4tP4S1LoQIoNZl8LA3NEXrSyA
         Ds6VUnVcP3yljoHE/mBzF2uvjROonHjRHVOquNDuFx07/4mI8nCopNcrQY5KQhLZ6x6e
         WbEg==
X-Gm-Message-State: AGi0PuaIC4YamYitIbvC/ue6CvXUKu+D/xIJjlwLwGYe6X7nVP5Q1SlZ
	BwiB5DNWwsqTY24AzTCFea5mhG07rRYh6kOcnVQ=
X-Google-Smtp-Source: APiQypL+HAxpn2Lem/ZKRYJ7dWK+VwffitsfLPAVYihvhAVGS9gZdeMkijOh/JWBW6cAExRuMGoM99HaHmg9fe3+0MY=
X-Received: by 2002:a17:906:add7:: with SMTP id lb23mr968203ejb.6.1586880683516;
 Tue, 14 Apr 2020 09:11:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200414133215.8055-1-JPEWhacker@gmail.com> <CAMKF1sohxdUaR5z-pV3SuqHF4jKjqh9Ly7UhCqSxm8RyLznVpw@mail.gmail.com>
 <c7cb54b5-4525-05b6-0ad4-05ce79782069@gmail.com>
In-Reply-To: <c7cb54b5-4525-05b6-0ad4-05ce79782069@gmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Tue, 14 Apr 2020 12:11:10 -0400
Message-ID: <CADkTA4Mcd7fyyx0AL+AU84AdOBHq6_xhcfsLsf_59D9Rqc3dkg@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] Use linux-yocto kernel from OE-core
To: Joshua Watt <JPEWhacker@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>, yocto <yocto@lists.yoctoproject.org>, 
	Trevor Woerner <twoerner@gmail.com>, jin@mediatomb.cc
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 14, 2020 at 12:02 PM Joshua Watt <JPEWhacker@gmail.com> wrote:
>
>
> On 4/14/20 10:48 AM, Khem Raj wrote:
> > On Tue, Apr 14, 2020 at 6:32 AM Joshua Watt <JPEWhacker@gmail.com> wrote:
> >> Updates all machines to use the linux-yocto kernel from OE-core instead
> >> of maintaining distinct kernels in this repository.
> >>
> >> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> >> ---
> >>   conf/machine/include/rk3288.inc               |  2 +-
> >>   conf/machine/include/rockchip-defaults.inc    |  3 +-
> >>   ...-cfg-Allow-specification-of-ncurses-.patch | 51 -------------------
> >>   recipes-kernel/linux/linux-longterm_4.19.bb   |  9 ----
> >>   recipes-kernel/linux/linux-longterm_5.4.bb    |  7 ---
> >>   recipes-kernel/linux/linux-mainline_5.6.bb    |  9 ----
> >>   recipes-kernel/linux/linux-mutual.inc         | 18 -------
> >>   recipes-kernel/linux/linux-stable_5.5.bb      |  7 ---
> >>   ...-Keep-rk3288-tinker-SD-card-IO-power.patch | 31 +++++++++++
> >>   recipes-kernel/linux/linux-yocto_%.bbappend   |  2 +
> >>   recipes-kernel/linux/linux-yocto_5.4.bbappend |  5 ++
> >>   11 files changed, 41 insertions(+), 103 deletions(-)
> >>   delete mode 100644 recipes-kernel/linux/files/0001-menuconfig-mconf-cfg-Allow-specification-of-ncurses-.patch
> >>   delete mode 100644 recipes-kernel/linux/linux-longterm_4.19.bb
> >>   delete mode 100644 recipes-kernel/linux/linux-longterm_5.4.bb
> >>   delete mode 100644 recipes-kernel/linux/linux-mainline_5.6.bb
> >>   delete mode 100644 recipes-kernel/linux/linux-mutual.inc
> >>   delete mode 100644 recipes-kernel/linux/linux-stable_5.5.bb
> >>   create mode 100644 recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch
> >>   create mode 100644 recipes-kernel/linux/linux-yocto_%.bbappend
> >>   create mode 100644 recipes-kernel/linux/linux-yocto_5.4.bbappend
> >>
> > I think another solution could be to use yocto kernel tooling but
> > point to mainline kernels much like what meta-meson [1] is doing
> > this will let you keep bumping to latest releases from mainline, this
> > approach is used by many other BSPs
> >
> > [1] https://github.com/superna9999/meta-meson/blob/master/recipes-kernel/linux/linux-yocto-meson64_5.4.bb
>
> My goal here was to minimize the maintenance required for this BSP layer
> to get newer kernels. Using the linux-yocto kernel in OE-core is quite
> simple (as this patch shows) and allows us to piggyback off of Bruce's
> work to keep everything up to date. While it is possible that OE-core
> accidentally breaks something in this layer with a kernel update, it
> seems likely this would be pretty rare and would probably require less
> overall work than maintaining our own kernel recipes, particularly for
> the set of boards in this BSP which have really good and stable support
> in the kernel.
>

You replied faster than I could, so I turfed my answer! See below.

>
> I think it should be possible to easily track the upstream vanilla
> kernel branches in the linux-yocto recipe, and Bruce has done some work
> to make this easier, but I think there might need to be little more work
> in that area before it's completely ready to go.

Everything is good go to go,  and I can point out what has been in place
for a while:  linux-yocto master is tracking mainline maser. No changes
and linux-yocto v<x.y>/base tracks -stable, no changes.

If you want to pick up the bare minimum of boot fixes, or some of the
filesystem features v<x.y>/standard/base.
Any significant bsp or board changes are always isolated in their own branch.

As Joshua said, chasing a bunch of different versions (even if they are
all pointing to the same upstream, (linux-yocto included)) does mean
that there is variance, duplicated sanity and the need to chuck patches
around.  i.e. you'll get all the CVEs (that could be outside of
-stable), -stable,
etc, at the same pace as other boards. I don't see that as a bad thing, but
of course, opinions vary :D

If it makes things even easier, I could create a linux-yocto-mainline
(recipe name off the top of my head) and it would just be the linux-yocto
recipe pointing KBRANCH to master, or v<x.y>/base, no other changes.
I'm sensitive to creating too many kernel recipes since it then becomes
more confusing to pick the right thing .. but doing it the way I mention means
that the breakage/QA/update follows the linux-yocto jumps and is very little
extra effort.

Cheers,

Bruce

>
> >> diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
> >> index a7edac5..480e250 100644
> >> --- a/conf/machine/include/rk3288.inc
> >> +++ b/conf/machine/include/rk3288.inc
> >> @@ -7,7 +7,7 @@ require conf/machine/include/tune-cortexa17.inc
> >>   require conf/machine/include/soc-family.inc
> >>   require conf/machine/include/rockchip-defaults.inc
> >>
> >> -KBUILD_DEFCONFIG = "multi_v7_defconfig"
> >> +KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
> >>   KERNEL_IMAGETYPE = "zImage"
> >>
> >>   SERIAL_CONSOLES = "115200;ttyS2"
> >> diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
> >> index 82fd590..a4e2a2c 100644
> >> --- a/conf/machine/include/rockchip-defaults.inc
> >> +++ b/conf/machine/include/rockchip-defaults.inc
> >> @@ -1,7 +1,8 @@
> >>   # meta-rockchip default settings
> >>
> >>   # kernel
> >> -PREFERRED_PROVIDER_virtual/kernel ?= "linux-stable"
> >> +PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> >> +KCONFIG_MODE ?= "alldefconfig"
> >>   LINUX_VERSION_EXTENSION ?= "-rockchip"
> >>
> >>   # xserver
> >> diff --git a/recipes-kernel/linux/files/0001-menuconfig-mconf-cfg-Allow-specification-of-ncurses-.patch b/recipes-kernel/linux/files/0001-menuconfig-mconf-cfg-Allow-specification-of-ncurses-.patch
> >> deleted file mode 100644
> >> index 0b2d077..0000000
> >> --- a/recipes-kernel/linux/files/0001-menuconfig-mconf-cfg-Allow-specification-of-ncurses-.patch
> >> +++ /dev/null
> >> @@ -1,51 +0,0 @@
> >> -From 846b11d8c834af4fa62393dadb490ea8246b332c Mon Sep 17 00:00:00 2001
> >> -From: Bruce Ashfield <bruce.ashfield@windriver.com>
> >> -Date: Mon, 2 Jul 2018 23:10:28 -0400
> >> -Subject: [PATCH] menuconfig,mconf-cfg: Allow specification of ncurses location
> >> -
> >> -In some cross build environments such as the Yocto Project build
> >> -environment it provides an ncurses library that is compiled
> >> -differently than the host's version.  This causes display corruption
> >> -problems when the host's curses includes are used instead of the
> >> -includes from the provided compiler are overridden.  There is a second
> >> -case where there is no curses libraries at all on the host system and
> >> -menuconfig will just fail entirely.
> >> -
> >> -The solution is simply to allow an override variable in
> >> -check-lxdialog.sh for environments such as the Yocto Project.  Adding
> >> -a CROSS_CURSES_LIB and CROSS_CURSES_INC solves the issue and allowing
> >> -compiling and linking against the right headers and libraries.
> >> -
> >> -Signed-off-by: Jason Wessel <jason.wessel@windriver.com>
> >> -cc: Michal Marek <mmarek@suse.cz>
> >> -cc: linux-kbuild@vger.kernel.org
> >> -Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> >> ----
> >> - scripts/kconfig/mconf-cfg.sh | 8 ++++++++
> >> - 1 file changed, 8 insertions(+)
> >> - mode change 100755 => 100644 scripts/kconfig/mconf-cfg.sh
> >> -
> >> -diff --git a/scripts/kconfig/mconf-cfg.sh b/scripts/kconfig/mconf-cfg.sh
> >> -old mode 100755
> >> -new mode 100644
> >> -index c812872d7f9d..65a9b9e5b8a6
> >> ---- a/scripts/kconfig/mconf-cfg.sh
> >> -+++ b/scripts/kconfig/mconf-cfg.sh
> >> -@@ -4,6 +4,14 @@
> >> - PKG="ncursesw"
> >> - PKG2="ncurses"
> >> -
> >> -+if [ "$CROSS_CURSES_LIB" != "" ]; then
> >> -+    echo libs=\'$CROSS_CURSES_LIB\'
> >> -+    if [ x"$CROSS_CURSES_INC" != x ]; then
> >> -+      echo cflags=\'$CROSS_CURSES_INC\'
> >> -+    fi
> >> -+    exit 0
> >> -+fi
> >> -+
> >> - if [ -n "$(command -v pkg-config)" ]; then
> >> -       if pkg-config --exists $PKG; then
> >> -               echo cflags=\"$(pkg-config --cflags $PKG)\"
> >> ---
> >> -2.20.1
> >> -
> >> diff --git a/recipes-kernel/linux/linux-longterm_4.19.bb b/recipes-kernel/linux/linux-longterm_4.19.bb
> >> deleted file mode 100644
> >> index 11c18e3..0000000
> >> --- a/recipes-kernel/linux/linux-longterm_4.19.bb
> >> +++ /dev/null
> >> @@ -1,9 +0,0 @@
> >> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> >> -
> >> -LINUX_VERSION ?= "4.19.113"
> >> -KBRANCH ?= "linux-4.19.y"
> >> -SRCREV ?= "54b4fa6d39551639cb10664f6ac78b01993a1d7e"
> >> -
> >> -require linux-mutual.inc
> >> -
> >> -COMPATIBLE_MACHINE = "(firefly-rk3288|marsboard-rk3066|radxarock|rock2-square|^tinker-board$|vyasa-rk3288)"
> >> diff --git a/recipes-kernel/linux/linux-longterm_5.4.bb b/recipes-kernel/linux/linux-longterm_5.4.bb
> >> deleted file mode 100644
> >> index 60be6fe..0000000
> >> --- a/recipes-kernel/linux/linux-longterm_5.4.bb
> >> +++ /dev/null
> >> @@ -1,7 +0,0 @@
> >> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> >> -
> >> -LINUX_VERSION ?= "5.4.28"
> >> -KBRANCH ?= "linux-5.4.y"
> >> -SRCREV ?= "462afcd6e7ea94a7027a96a3bb12d0140b0b4216"
> >> -
> >> -require linux-mutual.inc
> >> diff --git a/recipes-kernel/linux/linux-mainline_5.6.bb b/recipes-kernel/linux/linux-mainline_5.6.bb
> >> deleted file mode 100644
> >> index 8d33590..0000000
> >> --- a/recipes-kernel/linux/linux-mainline_5.6.bb
> >> +++ /dev/null
> >> @@ -1,9 +0,0 @@
> >> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> >> -
> >> -LINUX_VERSION ?= "5.6-rc7"
> >> -KBRANCH ?= "master"
> >> -SRCREV ?= "16fbf79b0f83bc752cee8589279f1ebfe57b3b6e"
> >> -
> >> -require linux-mutual.inc
> >> -
> >> -LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"
> >> diff --git a/recipes-kernel/linux/linux-mutual.inc b/recipes-kernel/linux/linux-mutual.inc
> >> deleted file mode 100644
> >> index ba3ab6e..0000000
> >> --- a/recipes-kernel/linux/linux-mutual.inc
> >> +++ /dev/null
> >> @@ -1,18 +0,0 @@
> >> -DESCRIPTION = "Linux Kernel"
> >> -SECTION = "kernel"
> >> -LICENSE = "GPLv2"
> >> -
> >> -LIC_FILES_CHKSUM = "file://COPYING;md5=bbea815ee2795b2f4230826c0c6b8814"
> >> -
> >> -SRC_URI = " \
> >> -    git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;branch=${KBRANCH} \
> >> -    file://0001-menuconfig-mconf-cfg-Allow-specification-of-ncurses-.patch \
> >> -    "
> >> -
> >> -inherit kernel
> >> -require recipes-kernel/linux/linux-yocto.inc
> >> -
> >> -PV = "${LINUX_VERSION}+git${SRCPV}"
> >> -
> >> -KCONF_BSP_AUDIT_LEVEL = "0"
> >> -deltask kernel_configme
> >> diff --git a/recipes-kernel/linux/linux-stable_5.5.bb b/recipes-kernel/linux/linux-stable_5.5.bb
> >> deleted file mode 100644
> >> index b5c7cdc..0000000
> >> --- a/recipes-kernel/linux/linux-stable_5.5.bb
> >> +++ /dev/null
> >> @@ -1,7 +0,0 @@
> >> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> >> -
> >> -LINUX_VERSION ?= "5.5.13"
> >> -KBRANCH ?= "linux-5.5.y"
> >> -SRCREV ?= "fe5ae687d01e74854ed33666c932a9c11e22139c"
> >> -
> >> -require linux-mutual.inc
> >> diff --git a/recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch b/recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch
> >> new file mode 100644
> >> index 0000000..751f1ad
> >> --- /dev/null
> >> +++ b/recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch
> >> @@ -0,0 +1,31 @@
> >> +From 04ab2a1f052f363985b373f07ea71840918378d2 Mon Sep 17 00:00:00 2001
> >> +From: Joshua Watt <JPEWhacker@gmail.com>
> >> +Date: Wed, 19 Feb 2020 13:10:32 -0600
> >> +Subject: [PATCH] ARM: dts: rockchip: Keep rk3288-tinker SD card IO powered
> >> + during reboot
> >> +
> >> +IO voltage regulator for the SD card must be kept on all the time,
> >> +otherwise when the board reboots the SD card can't be read by the
> >> +bootloader.
> >> +
> >> +Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> >> +Upstream-Status: Accepted in 5.7
> >> +---
> >> + arch/arm/boot/dts/rk3288-tinker.dtsi | 1 +
> >> + 1 file changed, 1 insertion(+)
> >> +
> >> +diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
> >> +index 312582c1bd37..acfaa12ec239 100644
> >> +--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
> >> ++++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
> >> +@@ -276,6 +276,7 @@
> >> +                       };
> >> +
> >> +                       vccio_sd: LDO_REG5 {
> >> ++                              regulator-always-on;
> >> +                               regulator-boot-on;
> >> +                               regulator-min-microvolt = <1800000>;
> >> +                               regulator-max-microvolt = <3300000>;
> >> +--
> >> +2.17.1
> >> +
> >> diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
> >> new file mode 100644
> >> index 0000000..97b8cda
> >> --- /dev/null
> >> +++ b/recipes-kernel/linux/linux-yocto_%.bbappend
> >> @@ -0,0 +1,2 @@
> >> +COMPATIBLE_MACHINE .= "|firefly-rk3288|marsboard-rk3066|radxarock|rock-pi-4|rock2-square|tinker-board-s|tinker-board|vyasa-rk3288"
> >> +
> >> diff --git a/recipes-kernel/linux/linux-yocto_5.4.bbappend b/recipes-kernel/linux/linux-yocto_5.4.bbappend
> >> new file mode 100644
> >> index 0000000..e832529
> >> --- /dev/null
> >> +++ b/recipes-kernel/linux/linux-yocto_5.4.bbappend
> >> @@ -0,0 +1,5 @@
> >> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >> +
> >> +# tinker-board and tinker-board-s. rk3288 covers both
> >> +SRC_URI_append_rk3288 = " file://0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch"
> >> +
> >> --
> >> 2.17.1
> >>
> >>
> 



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
