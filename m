Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com [209.85.160.193])
 by mx.groups.io with SMTP id smtpd.web11.2155.1579809993445330280
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 12:06:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EN9Gj/Ma;
 spf=pass (domain: gmail.com, ip: 209.85.160.193, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f193.google.com with SMTP id i13so3520738qtr.3
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 12:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4bN2++3dCijohGiwBakpcFY9EiIZl21inyY903Fs08w=;
        b=EN9Gj/MaAwDrlJ/T2gkLz3llggASfwXVJ1UjmALCBfDer8rZPLsQbMb8HmcZkVpfx3
         2AMrSfwJxEPCKPHcnGxOs4CaS1ednU10CRCDeCicGsZYnhHJ4z06cOO2lzKhHzIuxOtF
         D9+K95oqvDGbbdg/fObCA7sXEF/K6IZWz6KBn6qK5HoIvIW9paIwmNDKfhsN7A56pxFq
         MDDvTEzuCDKL9skrFslCZLS+hD6jto1srh+b95YWdp/fjwxCTeVxHkfBMN4iRwdwt7PS
         SygILwzwQfiTi1OnVOBGDcutn2SsOcILZJZxl5HcguDCvsXCJE7+NKPhi8RJ5s8jiSIc
         tfaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4bN2++3dCijohGiwBakpcFY9EiIZl21inyY903Fs08w=;
        b=YI/Kb/It55ax21JO56BV50F2GM4PUXyMuarv3crebT8Dw/21AK5eaz9rru+5ae0THM
         AWaoUCevRscZun2dtBDv9XIuGl9YKxmEJ4lMTtY/m5GCF18GVhMk94ctjAx/S0Lmcwru
         vxBwVR0fDjU4ktZtVuYzysY7iS1CmL+SoikBwrAbkZo//ndBTfdjyKN7dlQ6ADV6GotW
         ItFvs8qX7mAw55gHDDCiZnZ2i+cSRHR5hsf5R7EpsLApgheONm2KZ1BsxK8bJ+ex1IpI
         19LxC7PVn9CE4xRFWvQwERAq3bim1E2DaX1I0Op+eUkiLQIf1ZOce8xlAQFU5wYCm62q
         4PsQ==
X-Gm-Message-State: APjAAAV9DIV0ZASpP4VqlV01Gy/O6wNh/HEGuxd+IuWY5RXlqA4eKliT
	2A5hHgxpLNUyEvpEWUKNOeDRLCLV3G3KLsWWRkw=
X-Google-Smtp-Source: APXvYqzjrAj735kmk0Qzm4F5PMBkl7djKsVxnRT/RzMr45RMsh/IZ5nDx6caQkzPBo0yBDfcxU/A7cTjF4SjVNbcUww=
X-Received: by 2002:ac8:4657:: with SMTP id f23mr18265327qto.378.1579809992237;
 Thu, 23 Jan 2020 12:06:32 -0800 (PST)
MIME-Version: 1.0
References: <20200123160821.778821-1-JPEWhacker@gmail.com> <20200123160821.778821-3-JPEWhacker@gmail.com>
 <CAMKF1srfnM=Nt9BFGEoZOfbC6cvFhQj9Zvmi7KzhHT=61VABAw@mail.gmail.com> <31fc4c12-5abf-30c0-96a0-e3a54d7db14f@gmail.com>
In-Reply-To: <31fc4c12-5abf-30c0-96a0-e3a54d7db14f@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 23 Jan 2020 12:06:05 -0800
Message-ID: <CAMKF1sqZZ4iBetcakRS-00oCFSW7A1whyf5wr9J_o1qUoaoEMg@mail.gmail.com>
Subject: Re: [yocto][meta-rockchip][PATCH 2/4] gcc-arm-none-eabi-native: Add recipe
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org, Trevor Woerner <twoerner@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 23, 2020 at 11:59 AM Joshua Watt <jpewhacker@gmail.com> wrote:
>
>
> On 1/23/20 1:49 PM, Khem Raj wrote:
> > On Thu, Jan 23, 2020 at 8:08 AM Joshua Watt <JPEWhacker@gmail.com> wrote:
> >> Adds a recipe to pull down the prebuilt GCC for compiling on Cortex-R
> >> and Cortex-M processors from ARM. This toolchain is required to build
> >> Arm Trusted Firmware for the Rockchip rk3399 SoC, since it must compile
> >> some firmware for the M0 coprocessor.
> >>
> > can this use mutliconfig ?
> > This seems then can be avoided
>
> I'm not sure if multiconfig is applicable in this case; This is required
> because the same recipe (arm-trusted-firmware) requires 2 different
> compilers to be available; the target compiler (aarch64-poky-linux), and
> an arm-none-eabi-gcc compiler specifically to compile some M0 firmware
> that goes into ATF.
>
> Multiconfig would work (I think), if the recipe only needed one or the
> other, but not in this case where it needs both.

right, so question is if this recipe can be effectively two such recipes. If not
then perhaps this solution is ok or perhaps we can just use prebuilts for the M0

>
> I also looked at building an additional gcc-cross recipe that explicitly
> targets arm-none-eabi, but the maintenance was going to be a pain unless
> A) the recipe lived in OE-core or B) this layer copied all of the GCC
> recipes. Neither of those was appealing at the moment, but I plan on
> revisiting it. Even when I did have it in OE-core, I had some trouble
> with some manifest warnings, so I'm not quite sure I was doing it correctly.
>
> >
> >> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> >> ---
> >>   ...cc-arm-none-eabi-native_9-2019-q4-major.bb | 37 +++++++++++++++++++
> >>   1 file changed, 37 insertions(+)
> >>   create mode 100644 recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
> >>
> >> diff --git a/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
> >> new file mode 100644
> >> index 0000000..a0c832d
> >> --- /dev/null
> >> +++ b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
> >> @@ -0,0 +1,37 @@
> >> +# Copyright (C) 2019 Garmin Ltd. or its subsidaries
> >> +# Released under the MIT license (see COPYING.MIT for the terms)
> >> +
> >> +DESCRIPTION = "Baremetal GCC for ARM-R and ARM-M processors"
> >> +LICENSE = "GPL-3.0-with-GCC-exception & GPLv3"
> >> +
> >> +LIC_FILES_CHKSUM = "file://share/doc/gcc-arm-none-eabi/license.txt;md5=c18349634b740b7b95f2c2159af888f5"
> >> +
> >> +PROVIDES = "virtual/arm-none-eabi-gcc"
> >> +
> >> +SRC_URI = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/RC2.1/${BPN}-${PV}-x86_64-linux.tar.bz2"
> >> +
> >> +SRC_URI[md5sum] = "fe0029de4f4ec43cf7008944e34ff8cc"
> >> +SRC_URI[sha256sum] = "bcd840f839d5bf49279638e9f67890b2ef3a7c9c7a9b25271e83ec4ff41d177a"
> >> +
> >> +S = "${WORKDIR}/${BPN}-${PV}"
> >> +
> >> +inherit native
> >> +
> >> +COMPATIBLE_HOST = "x86_64.*-linux"
> >> +
> >> +do_install() {
> >> +    install -d ${D}${datadir}/arm-none-eabi/
> >> +    cp -r ${S}/. ${D}${datadir}/arm-none-eabi/
> >> +
> >> +    install -d ${D}${bindir}
> >> +    # Symlink all executables into bindir
> >> +    for f in ${D}${datadir}/arm-none-eabi/bin/arm-none-eabi-*; do
> >> +        lnr $f ${D}${bindir}/$(basename $f)
> >> +    done
> >> +}
> >> +
> >> +INSANE_SKIP_${PN} = "already-stripped"
> >> +
> >> +INHIBIT_SYSROOT_STRIP = "1"
> >> +INHIBIT_PACKAGE_STRIP = "1"
> >> +INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> >> --
> >> 2.24.1
> >>
> >> 
