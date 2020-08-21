Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web12.133342.1598017552485321428
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Aug 2020 06:45:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=I/wBtnzN;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: jpewhacker@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id t14so1883004wmi.3
        for <yocto@lists.yoctoproject.org>; Fri, 21 Aug 2020 06:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Qd++b1ig6F3gOAJcU0ysnfvsnrX2iFk+0VJaV4wA9RI=;
        b=I/wBtnzNyEqK4/KmY/aC4P43FJjmGzIeWTvbB0OLMlo2jTIrHsbCfznFV9zFIZpToG
         PYq8DGKwySte3BG2rnfEUlBeBlsTIm7pTe5d5ZyPOIO6xDXndK//RMC7iCK94rEyhV13
         NAHzsj9emA6N/VEYH3gc6oPMSkQ3yD97U2SdNI8awA2sliXIhZSNyj8SVH3v+W2nUYmL
         MjWwprft9HgMKCdNdCpIVzlRQCUrWw5ZlEPI0+GWAaDubWitMldJKFGcPPVP370lBciO
         EZSj26aHNGqDCKjg3tyPS1sKFc+UxqMHtBoPPNRMrx1Suv1xiNi0Qm8sXUC18x7xtwAu
         k+ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Qd++b1ig6F3gOAJcU0ysnfvsnrX2iFk+0VJaV4wA9RI=;
        b=MvC55okIFFEztzzM/MpqHwgOrVmPlbXJbHSbbzpWG6XREu9sylXmF6Hla4gwgqMiWo
         HXtcywpRK/eG9JT5hPlSo6WNVK+fXnqJUK+kJocb75oE4FsjBM/XLFQhd6rsAjqZBHJF
         OrEMjd2wgx5+h5atSDvEAClTR5hh7kjCOGEIkh0FiwxhA0YLg7bqq+0470szZHaUrjF9
         p5frq5eM6fBApmh2Pql94TksG07AIfPoNf6plMgNpchM4zDNHbhK00WXlyC/SRo4JLoC
         EIglOY32ECoy4Zz2c7wplPe9GR3oBb7A33qWJFFJZGqrU+NvYv9MiocZEkFnWzfDmZKu
         I6Wg==
X-Gm-Message-State: AOAM530cSORbQJ7oDagXg+ccgXj1fJQOil1MziOaosKyDVybrduiLffB
	8/rL59a+d/UMNbEmWtQRiwLX8Kt4uT5mIpf8dQ0=
X-Google-Smtp-Source: ABdhPJw81ebelRB4Efi8rDuui+4UfgJJgDZSg8WVM6rygNSnxWus/naAv5BIrj7ORtiZaLICx9ygpPGQHwwMxLeFp1o=
X-Received: by 2002:a7b:cb4d:: with SMTP id v13mr4178267wmj.56.1598017550775;
 Fri, 21 Aug 2020 06:45:50 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv9ZurpyfDd_33WVxKZk-TQBuiLYKQea=MqFvj_Jz0URig@mail.gmail.com>
In-Reply-To: <CA+FhBv9ZurpyfDd_33WVxKZk-TQBuiLYKQea=MqFvj_Jz0URig@mail.gmail.com>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Fri, 21 Aug 2020 08:45:39 -0500
Message-ID: <CAJdd5Gb3KMjeDw3TgamsBKHam6JjuBfDJ2L+GLUfqwoG-4fnWQ@mail.gmail.com>
Subject: Re: [yocto] Changing SDKPATH
To: Damien LEFEVRE <lefevre.da@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 21, 2020 at 8:30 AM Damien LEFEVRE <lefevre.da@gmail.com> wrote:
>
> Hi,
>
> I would need that to change the default location for the SDK install script to avoid mistakes with multiple SDKs and ease installations. How can I change the SDKPATH?
>
> My distro includes conf/distro/poky.conf and I overwrite
> SDKPATH = "/opt/${IMAGE_BASENAME}-${SDK_VERSION}-${DISTRO_CODENAME}-${MACHINE}"

You can't include IMAGE_BASENAME in SDKPATH because it's not known at
the time recipe are built; it's only defined when the final image is
created. I'm guessing that's the source of your error.

For reference, we do:

  SDKPATH = "/opt/toolchains/${DISTRO}-${MACHINE}/${SDK_VERSION}"

and it works fine.

>
> If I set SDKPATH to something other than /opt/${DISTRO}/${SDK_VERSION} , nativesdk-libgcc-initial fails some sanity test:
> ...
> checking how to run the C preprocessor... x86_64-pokysdk-linux-gcc -E --sysroot=/data/yocto/zeus/build-jetson-xavier/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-libgcc-initial/7.3.0-r0/recipe-sysroot
> configure: error: in `/data/yocto/zeus/build-jetson-xavier/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-libgcc-initial/7.3.0-r0/gcc-7.3.0/build.x86_64-pokysdk-linux.x86_64-pokysdk-linux/libgcc':
> configure: error: C preprocessor "x86_64-pokysdk-linux-gcc -E --sysroot=/data/yocto/zeus/build-jetson-xavier/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-libgcc-initial/7.3.0-r0/recipe-sysroot " fails sanity check
> See `config.log' for more details.
> WARNING: exit code 1 from a shell command.
> ...
>
> Thanks,
> -Damien
> 
