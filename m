Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com [209.85.222.193])
 by mx.groups.io with SMTP id smtpd.web09.2015.1579809013925634767
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 11:50:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PQCy9NV4;
 spf=pass (domain: gmail.com, ip: 209.85.222.193, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f193.google.com with SMTP id 21so4712582qky.4
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 11:50:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=e2tpg/R5sfFE84fG3oIJVIlwSM+/LdL6vxlh/tgkNAo=;
        b=PQCy9NV4nn1EB8Lb6aYs470tn4p0RnXXrhTYFTnHsLwe1WKzJQBTtUdYAsoA3ymVs7
         IaichpqxL3W66kFbT0oEP+3WAsDmFjzis3YyavjxfbH+Ep5ueNekNvXvLORqZoVWxF9H
         w+X6fDEM2gNk0Jvz/9lmQ/aqOar0i3rxIkNqkko7PPeuZIY94e6Q1Fxscpj5M1LBmPLs
         0kT5hSNpX12uMWYyVR9onG4MEWqjsoPZnK45n3FEDlUupRIBd+YEd2X14S0MRUx68AHO
         Ir/DRq/04Xpa8UewXpAyR/Np6+jzyDzcqGVyyMR0ersd/anpjVipKQCRTYkliVULGsn0
         WG9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e2tpg/R5sfFE84fG3oIJVIlwSM+/LdL6vxlh/tgkNAo=;
        b=qMYGf9sl31GPNtERObXrd2EIUjVrAuVml/MC4OuxU9rHh7z7eguZMovFzSbdSMjhNV
         bWHfNXhl5N/vB5VR2Scyy4oP9VfTTDKbTocvypiQK6Tu8enTi8RvIJSokYWgZjRLxXDd
         uab3/VCss7W3O3nXyxPvEAHWrQJzPe85rOsDUXPob1O7ven9Sttr9ZZdNPE7+MaGWOMv
         429X2KdWV4p6r+0ijCAGMUYCDFhmFArAUzjkdTUVBj/w4OaaJzxXuTKZJG6/wJcmAGd4
         IYPwaIEhgMDonyz2JfZwnSMSYh/OJWpXsfZfvFZV89lqep70i1EA2Bke76rXkUmqD5pt
         I7hQ==
X-Gm-Message-State: APjAAAUqxWwbAI1Piwyz7zOkAtWTlxDNAL48zNH0ivELWpblCKcJhADA
	DcADg//Z7SGLIlt4mK6/uXokXR3CaxBSdPRpA5Q=
X-Google-Smtp-Source: APXvYqyV+V4Nh0VdVQOYcSxwUTv0/4Sx/bpfKvOfiqsRI8DhHBu/bdB1sJlOArIhuLZaLG82N4Q41czIqP2ALL4LUxk=
X-Received: by 2002:ae9:ef50:: with SMTP id d77mr17328624qkg.71.1579809012825;
 Thu, 23 Jan 2020 11:50:12 -0800 (PST)
MIME-Version: 1.0
References: <20200123160821.778821-1-JPEWhacker@gmail.com> <20200123160821.778821-3-JPEWhacker@gmail.com>
In-Reply-To: <20200123160821.778821-3-JPEWhacker@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 23 Jan 2020 11:49:46 -0800
Message-ID: <CAMKF1srfnM=Nt9BFGEoZOfbC6cvFhQj9Zvmi7KzhHT=61VABAw@mail.gmail.com>
Subject: Re: [yocto][meta-rockchip][PATCH 2/4] gcc-arm-none-eabi-native: Add recipe
To: Joshua Watt <JPEWhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org, Trevor Woerner <twoerner@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 23, 2020 at 8:08 AM Joshua Watt <JPEWhacker@gmail.com> wrote:
>
> Adds a recipe to pull down the prebuilt GCC for compiling on Cortex-R
> and Cortex-M processors from ARM. This toolchain is required to build
> Arm Trusted Firmware for the Rockchip rk3399 SoC, since it must compile
> some firmware for the M0 coprocessor.
>

can this use mutliconfig ?
This seems then can be avoided

> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> ---
>  ...cc-arm-none-eabi-native_9-2019-q4-major.bb | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
>
> diff --git a/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
> new file mode 100644
> index 0000000..a0c832d
> --- /dev/null
> +++ b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
> @@ -0,0 +1,37 @@
> +# Copyright (C) 2019 Garmin Ltd. or its subsidaries
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +DESCRIPTION = "Baremetal GCC for ARM-R and ARM-M processors"
> +LICENSE = "GPL-3.0-with-GCC-exception & GPLv3"
> +
> +LIC_FILES_CHKSUM = "file://share/doc/gcc-arm-none-eabi/license.txt;md5=c18349634b740b7b95f2c2159af888f5"
> +
> +PROVIDES = "virtual/arm-none-eabi-gcc"
> +
> +SRC_URI = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/RC2.1/${BPN}-${PV}-x86_64-linux.tar.bz2"
> +
> +SRC_URI[md5sum] = "fe0029de4f4ec43cf7008944e34ff8cc"
> +SRC_URI[sha256sum] = "bcd840f839d5bf49279638e9f67890b2ef3a7c9c7a9b25271e83ec4ff41d177a"
> +
> +S = "${WORKDIR}/${BPN}-${PV}"
> +
> +inherit native
> +
> +COMPATIBLE_HOST = "x86_64.*-linux"
> +
> +do_install() {
> +    install -d ${D}${datadir}/arm-none-eabi/
> +    cp -r ${S}/. ${D}${datadir}/arm-none-eabi/
> +
> +    install -d ${D}${bindir}
> +    # Symlink all executables into bindir
> +    for f in ${D}${datadir}/arm-none-eabi/bin/arm-none-eabi-*; do
> +        lnr $f ${D}${bindir}/$(basename $f)
> +    done
> +}
> +
> +INSANE_SKIP_${PN} = "already-stripped"
> +
> +INHIBIT_SYSROOT_STRIP = "1"
> +INHIBIT_PACKAGE_STRIP = "1"
> +INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> --
> 2.24.1
>
> 
