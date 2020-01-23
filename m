Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com [209.85.160.194])
 by mx.groups.io with SMTP id smtpd.web11.4112.1579818889885146245
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 14:34:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gf02nvNH;
 spf=pass (domain: gmail.com, ip: 209.85.160.194, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f194.google.com with SMTP id w47so66567qtk.4
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 14:34:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ab9DJ1zR4X6r6K6FJb3VcXH52zbM5nAKXCR8w+9Qpi0=;
        b=gf02nvNHMlii+XGDWVXCJYtGSfY2Xhr00ka2cmvSoieOC+r9UR7dwMIB+veTrXz62l
         3+tgKY6/eW1+S+UBr/qJ/TG9R2+eQkuL73AoaW3HVpQiNDjrrLhq5XSeblYFdry7xC7Q
         TZYAC6blrl5Sq/vK9bzGmqnUlpqwJQhNWoTbOXlytASqx239QlYeGEAVk+ZCju/biK6s
         CWdmbWZd0McfVXBfqZlV2SQFVfWhd7Xa0A4aCBw9QrqNRL6E5JGmOUDvrl3nXkAoja4Z
         jnzgv0UK25wEl5pKOjRsieAk7zwZrY4hEHrrBKKpmZYvRYSGFSsxWBic8GLQ+B2qPluI
         uPQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ab9DJ1zR4X6r6K6FJb3VcXH52zbM5nAKXCR8w+9Qpi0=;
        b=KbtPK4Zj7FvWYOWFa43p8u7aZi0To6r50RsD0rN8y8Wt0bh3WsM35CRW9uHW/EjDge
         KBTARXH2K6BrLERQTmByYreAc7CMSQDJJ+dTrFIYBg8FxbGcOlGvPPebAE38Pogl7tzb
         R+ALxhBinm6A4KqTDxd3NtayA69D4AcmjMUv6SGyVPY/EfY1ze3JzP1qijnEkluKE/H2
         c0ExDte/TUvCF6I9IztJFX3TWbYefWBZrCKnxx7r64ZNdoXwMH3bdRy93eXZUHbHiQeM
         lD4922LU8tdrhle5Kh6scrZO4GON47HuuPyqRzcVOPJP+NW0ruO5Fk38//MtIsAgFcLN
         qRHQ==
X-Gm-Message-State: APjAAAXiDs71soH+pn8ju/RRG3szl8PpEpA1owcXYAF4DWes6KzYoyP6
	wvOABEU2RR727Ap/5wiyAZ0Buzi0AnqNvVlqoss=
X-Google-Smtp-Source: APXvYqyhgdYxqFJ0fXKItF9tSt9xILQXokvSRmDagmn24DggD3bruo+Wcxk/ye1ILHqUM2kLedwNykvE+JzsDvmA0A8=
X-Received: by 2002:ac8:1a30:: with SMTP id v45mr525530qtj.80.1579818888652;
 Thu, 23 Jan 2020 14:34:48 -0800 (PST)
MIME-Version: 1.0
References: <20200123160821.778821-1-JPEWhacker@gmail.com> <20200123160821.778821-3-JPEWhacker@gmail.com>
 <CAMKF1srfnM=Nt9BFGEoZOfbC6cvFhQj9Zvmi7KzhHT=61VABAw@mail.gmail.com>
 <31fc4c12-5abf-30c0-96a0-e3a54d7db14f@gmail.com> <CAMKF1sqZZ4iBetcakRS-00oCFSW7A1whyf5wr9J_o1qUoaoEMg@mail.gmail.com>
 <79f3d4de-e3b1-53da-b25e-c62214d20034@gmail.com>
In-Reply-To: <79f3d4de-e3b1-53da-b25e-c62214d20034@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 23 Jan 2020 14:34:22 -0800
Message-ID: <CAMKF1sodkGWYJRfhv3+GJ3FXChKsoHmqAN42qzK+_zUz4NftVg@mail.gmail.com>
Subject: Re: [yocto][meta-rockchip][PATCH 2/4] gcc-arm-none-eabi-native: Add recipe
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org, Trevor Woerner <twoerner@gmail.com>
Content-Type: text/plain; charset="UTF-8"

I know you have a working solution, however, I was thinking if
we want ATF to work well with yocto build system and therefore
might require better re-architecting upstream. Since arm and aarch32
backends are different you will need two compiler backends
essentially, it wont work like x86 could work. So perhaps
its best for ATF to build these components separately ot atleast
have possibility to do so.

On Thu, Jan 23, 2020 at 12:14 PM Joshua Watt <jpewhacker@gmail.com> wrote:
>
>
> On 1/23/20 2:06 PM, Khem Raj wrote:
> > On Thu, Jan 23, 2020 at 11:59 AM Joshua Watt <jpewhacker@gmail.com> wrote:
> >>
> >> On 1/23/20 1:49 PM, Khem Raj wrote:
> >>> On Thu, Jan 23, 2020 at 8:08 AM Joshua Watt <JPEWhacker@gmail.com> wrote:
> >>>> Adds a recipe to pull down the prebuilt GCC for compiling on Cortex-R
> >>>> and Cortex-M processors from ARM. This toolchain is required to build
> >>>> Arm Trusted Firmware for the Rockchip rk3399 SoC, since it must compile
> >>>> some firmware for the M0 coprocessor.
> >>>>
> >>> can this use mutliconfig ?
> >>> This seems then can be avoided
> >> I'm not sure if multiconfig is applicable in this case; This is required
> >> because the same recipe (arm-trusted-firmware) requires 2 different
> >> compilers to be available; the target compiler (aarch64-poky-linux), and
> >> an arm-none-eabi-gcc compiler specifically to compile some M0 firmware
> >> that goes into ATF.
> >>
> >> Multiconfig would work (I think), if the recipe only needed one or the
> >> other, but not in this case where it needs both.
> > right, so question is if this recipe can be effectively two such recipes. If not
> > then perhaps this solution is ok or perhaps we can just use prebuilts for the M0
>
> It *might* be possible to build it in two passes, but I'd rather not
> because its not the way the ATF is intended to be built. The code
> currently expects that it can build with the arm-none-eabi-gcc, so
> anything thing we do differently is more likely to break. Right now, the
> AFT recipe should be pretty easy to maintain; breaking it apart will
> make it quite a bit more complicated.
>
> I'd rather have a prebuilt (for now) GCC building some firmware from
> source that download a prebuilt firmware image :)
>
> Like I said, long term I'd like to build up the arm-none-eabi-gcc from
> gcc-cross in OE-core, I just haven't figured out the best way to do that
> yet.
>
>
> >
> >> I also looked at building an additional gcc-cross recipe that explicitly
> >> targets arm-none-eabi, but the maintenance was going to be a pain unless
> >> A) the recipe lived in OE-core or B) this layer copied all of the GCC
> >> recipes. Neither of those was appealing at the moment, but I plan on
> >> revisiting it. Even when I did have it in OE-core, I had some trouble
> >> with some manifest warnings, so I'm not quite sure I was doing it correctly.
> >>
> >>>> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> >>>> ---
> >>>>    ...cc-arm-none-eabi-native_9-2019-q4-major.bb | 37 +++++++++++++++++++
> >>>>    1 file changed, 37 insertions(+)
> >>>>    create mode 100644 recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
> >>>>
> >>>> diff --git a/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
> >>>> new file mode 100644
> >>>> index 0000000..a0c832d
> >>>> --- /dev/null
> >>>> +++ b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
> >>>> @@ -0,0 +1,37 @@
> >>>> +# Copyright (C) 2019 Garmin Ltd. or its subsidaries
> >>>> +# Released under the MIT license (see COPYING.MIT for the terms)
> >>>> +
> >>>> +DESCRIPTION = "Baremetal GCC for ARM-R and ARM-M processors"
> >>>> +LICENSE = "GPL-3.0-with-GCC-exception & GPLv3"
> >>>> +
> >>>> +LIC_FILES_CHKSUM = "file://share/doc/gcc-arm-none-eabi/license.txt;md5=c18349634b740b7b95f2c2159af888f5"
> >>>> +
> >>>> +PROVIDES = "virtual/arm-none-eabi-gcc"
> >>>> +
> >>>> +SRC_URI = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/RC2.1/${BPN}-${PV}-x86_64-linux.tar.bz2"
> >>>> +
> >>>> +SRC_URI[md5sum] = "fe0029de4f4ec43cf7008944e34ff8cc"
> >>>> +SRC_URI[sha256sum] = "bcd840f839d5bf49279638e9f67890b2ef3a7c9c7a9b25271e83ec4ff41d177a"
> >>>> +
> >>>> +S = "${WORKDIR}/${BPN}-${PV}"
> >>>> +
> >>>> +inherit native
> >>>> +
> >>>> +COMPATIBLE_HOST = "x86_64.*-linux"
> >>>> +
> >>>> +do_install() {
> >>>> +    install -d ${D}${datadir}/arm-none-eabi/
> >>>> +    cp -r ${S}/. ${D}${datadir}/arm-none-eabi/
> >>>> +
> >>>> +    install -d ${D}${bindir}
> >>>> +    # Symlink all executables into bindir
> >>>> +    for f in ${D}${datadir}/arm-none-eabi/bin/arm-none-eabi-*; do
> >>>> +        lnr $f ${D}${bindir}/$(basename $f)
> >>>> +    done
> >>>> +}
> >>>> +
> >>>> +INSANE_SKIP_${PN} = "already-stripped"
> >>>> +
> >>>> +INHIBIT_SYSROOT_STRIP = "1"
> >>>> +INHIBIT_PACKAGE_STRIP = "1"
> >>>> +INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> >>>> --
> >>>> 2.24.1
> >>>>
> >>>> 
