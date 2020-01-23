Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web10.2799.1579812372704467026
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 12:46:13 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 09C7240BF7;
	Thu, 23 Jan 2020 20:46:12 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 46nEGk3P7Uoe; Thu, 23 Jan 2020 20:46:11 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 55198400E8;
	Thu, 23 Jan 2020 20:46:08 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 0F70A1743AB; Thu, 23 Jan 2020 15:46:08 -0500 (EST)
Date: Thu, 23 Jan 2020 15:46:08 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Joshua Watt <JPEWhacker@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org,
	Trevor Woerner <twoerner@gmail.com>
Subject: Re: [yocto][meta-rockchip][PATCH 2/4] gcc-arm-none-eabi-native: Add recipe
Message-ID: <20200123204608.GD4735@denix.org>
References: <20200123160821.778821-1-JPEWhacker@gmail.com>
 <20200123160821.778821-3-JPEWhacker@gmail.com>
 <CAMKF1srfnM=Nt9BFGEoZOfbC6cvFhQj9Zvmi7KzhHT=61VABAw@mail.gmail.com>
 <31fc4c12-5abf-30c0-96a0-e3a54d7db14f@gmail.com>
 <CAMKF1sqZZ4iBetcakRS-00oCFSW7A1whyf5wr9J_o1qUoaoEMg@mail.gmail.com>
 <79f3d4de-e3b1-53da-b25e-c62214d20034@gmail.com>
MIME-Version: 1.0
In-Reply-To: <79f3d4de-e3b1-53da-b25e-c62214d20034@gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 23, 2020 at 02:14:57PM -0600, Joshua Watt wrote:
> 
> On 1/23/20 2:06 PM, Khem Raj wrote:
> >On Thu, Jan 23, 2020 at 11:59 AM Joshua Watt <jpewhacker@gmail.com> wrote:
> >>
> >>On 1/23/20 1:49 PM, Khem Raj wrote:
> >>>On Thu, Jan 23, 2020 at 8:08 AM Joshua Watt <JPEWhacker@gmail.com> wrote:
> >>>>Adds a recipe to pull down the prebuilt GCC for compiling on Cortex-R
> >>>>and Cortex-M processors from ARM. This toolchain is required to build
> >>>>Arm Trusted Firmware for the Rockchip rk3399 SoC, since it must compile
> >>>>some firmware for the M0 coprocessor.
> >>>>
> >>>can this use mutliconfig ?
> >>>This seems then can be avoided
> >>I'm not sure if multiconfig is applicable in this case; This is required
> >>because the same recipe (arm-trusted-firmware) requires 2 different
> >>compilers to be available; the target compiler (aarch64-poky-linux), and
> >>an arm-none-eabi-gcc compiler specifically to compile some M0 firmware
> >>that goes into ATF.
> >>
> >>Multiconfig would work (I think), if the recipe only needed one or the
> >>other, but not in this case where it needs both.
> >right, so question is if this recipe can be effectively two such recipes. If not
> >then perhaps this solution is ok or perhaps we can just use prebuilts for the M0
> 
> It *might* be possible to build it in two passes, but I'd rather not
> because its not the way the ATF is intended to be built. The code
> currently expects that it can build with the arm-none-eabi-gcc, so
> anything thing we do differently is more likely to break. Right now,
> the AFT recipe should be pretty easy to maintain; breaking it apart
> will make it quite a bit more complicated.
> 
> I'd rather have a prebuilt (for now) GCC building some firmware from
> source that download a prebuilt firmware image :)
> 
> Like I said, long term I'd like to build up the arm-none-eabi-gcc
> from gcc-cross in OE-core, I just haven't figured out the best way
> to do that yet.

Ha, this is quite familiar as well! We had these gcc-arm-none-eabi-native and 
other recipes in meta-ti for compiling different pieces for secondary cores in 
our SoCs - MCUs, DSPs, etc. That was way before multiconfig was available.

Recently I was looking into converting the old model into multiconfig - there 
was a discussion with fray last month regarding this and he posted a more 
generic proposal to oe-architecture list. I still need to get back to that 
activity - kind of got busy after the holidays...

-- 
Denys


> >>I also looked at building an additional gcc-cross recipe that explicitly
> >>targets arm-none-eabi, but the maintenance was going to be a pain unless
> >>A) the recipe lived in OE-core or B) this layer copied all of the GCC
> >>recipes. Neither of those was appealing at the moment, but I plan on
> >>revisiting it. Even when I did have it in OE-core, I had some trouble
> >>with some manifest warnings, so I'm not quite sure I was doing it correctly.
> >>
> >>>>Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> >>>>---
> >>>>   ...cc-arm-none-eabi-native_9-2019-q4-major.bb | 37 +++++++++++++++++++
> >>>>   1 file changed, 37 insertions(+)
> >>>>   create mode 100644 recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
> >>>>
> >>>>diff --git a/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
> >>>>new file mode 100644
> >>>>index 0000000..a0c832d
> >>>>--- /dev/null
> >>>>+++ b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
> >>>>@@ -0,0 +1,37 @@
> >>>>+# Copyright (C) 2019 Garmin Ltd. or its subsidaries
> >>>>+# Released under the MIT license (see COPYING.MIT for the terms)
> >>>>+
> >>>>+DESCRIPTION = "Baremetal GCC for ARM-R and ARM-M processors"
> >>>>+LICENSE = "GPL-3.0-with-GCC-exception & GPLv3"
> >>>>+
> >>>>+LIC_FILES_CHKSUM = "file://share/doc/gcc-arm-none-eabi/license.txt;md5=c18349634b740b7b95f2c2159af888f5"
> >>>>+
> >>>>+PROVIDES = "virtual/arm-none-eabi-gcc"
> >>>>+
> >>>>+SRC_URI = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/RC2.1/${BPN}-${PV}-x86_64-linux.tar.bz2"
> >>>>+
> >>>>+SRC_URI[md5sum] = "fe0029de4f4ec43cf7008944e34ff8cc"
> >>>>+SRC_URI[sha256sum] = "bcd840f839d5bf49279638e9f67890b2ef3a7c9c7a9b25271e83ec4ff41d177a"
> >>>>+
> >>>>+S = "${WORKDIR}/${BPN}-${PV}"
> >>>>+
> >>>>+inherit native
> >>>>+
> >>>>+COMPATIBLE_HOST = "x86_64.*-linux"
> >>>>+
> >>>>+do_install() {
> >>>>+    install -d ${D}${datadir}/arm-none-eabi/
> >>>>+    cp -r ${S}/. ${D}${datadir}/arm-none-eabi/
> >>>>+
> >>>>+    install -d ${D}${bindir}
> >>>>+    # Symlink all executables into bindir
> >>>>+    for f in ${D}${datadir}/arm-none-eabi/bin/arm-none-eabi-*; do
> >>>>+        lnr $f ${D}${bindir}/$(basename $f)
> >>>>+    done
> >>>>+}
> >>>>+
> >>>>+INSANE_SKIP_${PN} = "already-stripped"
> >>>>+
> >>>>+INHIBIT_SYSROOT_STRIP = "1"
> >>>>+INHIBIT_PACKAGE_STRIP = "1"
> >>>>+INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> >>>>--
> >>>>2.24.1
> >>>>
> >>>>

> 

