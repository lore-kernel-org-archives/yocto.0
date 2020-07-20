Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web11.7388.1595285443854406375
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 15:50:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vQ6rrzlp;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id e13so17450933qkg.5
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jul 2020 15:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QrtKFnh2Dr2spfFqbs9/S207aJcnh0/8316/QHQADLo=;
        b=vQ6rrzlpP8yL3hA5qzkDtJs615s6b2TwioCz0e/gTnLzNKPqdpPJP6PuETYWqFc9cX
         nSnSZQn6vwYTk6xfTdYDpoqPpvDo+k2bQnyysSbUaidIqcs8wCGxC3Fsi0iV8DYttBx0
         T2gPFys5HXHCKk4OtuJF4nxDYF9Fkshiq4oPWz2iNtVuxgHiQQaj5qRatcBXOFt6LFT5
         tD7R3J3CZuK5krD1iddNoW5RJMLaS6x0ic1bfiUiYBG0GeRxIGJX/N7uGKzhuoGIUUBC
         I1TmJ3hQP8OZDh6DRxly4lOKFNyHV4SJi2bSi86Na88oSOfEj93rv0FDrRpkp4iWRehH
         zeUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QrtKFnh2Dr2spfFqbs9/S207aJcnh0/8316/QHQADLo=;
        b=s6Ddyr8RC8EZNaRbHrWZs/IWkEGuMUZxeKXmIEQP5iv0mRzuNaVCVdawKrU5+Tm0nS
         OjZXLm032rgCRrweJpaiNLO4FkHsaw2vKOLibXcHWaTq1uLRZzav59bVzcOCUybVwVS9
         Rmb8wh+hnh6L6FzPCdFEABYuu/sAuLsrOf42UInUNM5DD1HzjuDqvHJ8MTJ34VOIvMTP
         vLMWmMNAK20tiT0A/+3KwC5F7NiDHkZ3wyCa74bbfdj6VmpOjuYiNyg8ARWKk6qAHMRi
         e/6fOcDip8vPUrAlIRH54BisyKkpyg8/w1oEx0lPIa9YvQTLiOxR3UO79Rb/1G8dqmsu
         vYWQ==
X-Gm-Message-State: AOAM5324rWyEJYzO5+7L/VlYftrgi/KmD+b5+ZyNUbZ8NgER/VQckVRu
	rA5QWGVem8W1KgLy1B1C2SIAZVjec96nOvT/8us=
X-Google-Smtp-Source: ABdhPJwmjHkmwj4Y1YkXhHNmKDwNkUcNnDr1jKFzpQrarnvJHzKldVgsAxlv9esbMa8XRlqXZBhHj01dS6WqBcynig0=
X-Received: by 2002:a37:8d85:: with SMTP id p127mr17062968qkd.225.1595285442921;
 Mon, 20 Jul 2020 15:50:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200720223426.17416-1-twoerner@gmail.com>
In-Reply-To: <20200720223426.17416-1-twoerner@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 20 Jul 2020 15:50:16 -0700
Message-ID: <CAMKF1srHZV1yv+vE-STbPkBcSypaznqi8W-h0dT4Eb+NB5ORTw@mail.gmail.com>
Subject: Re: [yocto] [PATCH][meta-rockchip] arm-none-eabi toolchain
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 20, 2020 at 3:34 PM Trevor Woerner <twoerner@gmail.com> wrote:
>
> We now have a dependency on meta-arm/meta-arm in order to build tf-a (there's
> no point carrying our own recipe when there's a common, consolidated one to
> use in meta-arm).
>
> meta-arm/meta-arm now has a dependency on meta-arm/meta-arm-toolchain.
> meta-arm-toolchain now also has a recipe for arm-none-eabi, so we might as
> well use that too, and remove our own version.
>

this also means you should add meta-arm-toolchain to layer dependencies.

> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  ...cc-arm-none-eabi-native_9-2019-q4-major.bb | 37 -------------------
>  1 file changed, 37 deletions(-)
>  delete mode 100644 recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
>
> diff --git a/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
> deleted file mode 100644
> index a0c832d..0000000
> --- a/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
> +++ /dev/null
> @@ -1,37 +0,0 @@
> -# Copyright (C) 2019 Garmin Ltd. or its subsidaries
> -# Released under the MIT license (see COPYING.MIT for the terms)
> -
> -DESCRIPTION = "Baremetal GCC for ARM-R and ARM-M processors"
> -LICENSE = "GPL-3.0-with-GCC-exception & GPLv3"
> -
> -LIC_FILES_CHKSUM = "file://share/doc/gcc-arm-none-eabi/license.txt;md5=c18349634b740b7b95f2c2159af888f5"
> -
> -PROVIDES = "virtual/arm-none-eabi-gcc"
> -
> -SRC_URI = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/RC2.1/${BPN}-${PV}-x86_64-linux.tar.bz2"
> -
> -SRC_URI[md5sum] = "fe0029de4f4ec43cf7008944e34ff8cc"
> -SRC_URI[sha256sum] = "bcd840f839d5bf49279638e9f67890b2ef3a7c9c7a9b25271e83ec4ff41d177a"
> -
> -S = "${WORKDIR}/${BPN}-${PV}"
> -
> -inherit native
> -
> -COMPATIBLE_HOST = "x86_64.*-linux"
> -
> -do_install() {
> -    install -d ${D}${datadir}/arm-none-eabi/
> -    cp -r ${S}/. ${D}${datadir}/arm-none-eabi/
> -
> -    install -d ${D}${bindir}
> -    # Symlink all executables into bindir
> -    for f in ${D}${datadir}/arm-none-eabi/bin/arm-none-eabi-*; do
> -        lnr $f ${D}${bindir}/$(basename $f)
> -    done
> -}
> -
> -INSANE_SKIP_${PN} = "already-stripped"
> -
> -INHIBIT_SYSROOT_STRIP = "1"
> -INHIBIT_PACKAGE_STRIP = "1"
> -INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> --
> 2.26.0.106.g9fadedd637
>
> 
