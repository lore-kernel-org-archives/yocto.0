Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web08.3096.1616030174061382218
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Mar 2021 18:16:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=r3BW7Yo8;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id n79so507772qke.3
        for <yocto@lists.yoctoproject.org>; Wed, 17 Mar 2021 18:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=//B0pQT0WqS4ICToUy0ilWoFDRIrqle2zQJofJQPJdA=;
        b=r3BW7Yo8Moy7A1Xordzbjd8s6H4dGU1rPlJTnC6EHRI11xjFIB9E5Bfpfs4JGOiPgQ
         4s8m5ENHnncX9z5M/0IM5/oUS2FAgaF2fCAJTmcyiI9Fm2BPYjaeTfw4xxMwecdljGk3
         to7vdfPnwK0kjrC+z/NqXhBQSh68zQYP1hgBTQJf+xt4MVtZgSSejirV2NXPunaRxhc6
         P9foc/BTWJWt+DW/RttoqV23+yUr2x/OOjrdAgFbji4aAVzasQ/MjUhE9u9cm1WxAqgP
         4HSmyLxZgKwgCey2j7guTa+XZodNoiJwT+VPIcK4T2k1qdac3wXPQVn9e4dKfOJB/Yi2
         COgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=//B0pQT0WqS4ICToUy0ilWoFDRIrqle2zQJofJQPJdA=;
        b=dIFps8SVBcLOno71i8F9H6fb/wUYVwJp20sp/latM87blmMSIjbCRNO8tOPToYqhUw
         jR2e+PywPUxfdBdSX50wEgBRiuS/jsp4i1un+YoAyHB05qCuy+xROwLawZkAShVOW/n5
         BEpTaxxyVhHY4BpZyeiOSVx0okwMXqXG1u9iRGb6tE8gLNa96VaX84xXArGRuOkmIl/G
         a5OcxajORplGz2+ctPgQfWVtg8UOzP4hx7Lz0mcyEcL6rHZGd+QnfnSvtvyIgPeOi8ke
         i/HtvUb+CnOEhi06WwSZs1C/yBRSnmvpQlY2dRGPL8ei6Ly3xvdk7LHuDFEycCMHKaZy
         BgSA==
X-Gm-Message-State: AOAM5324hTYJhYiMG8MSj3+iCjfMbI/btO/gbKX1AwAsYoJDnOk/oSxt
	F+z0803JCyA7X2V4BXJsdierOjQMPXsH+P6OxzM=
X-Google-Smtp-Source: ABdhPJxXjwrn7PnDiRk7vG5E5mfIQjL1Ylyy85/Iyiwuqt5UO45HdheMq6B3co4JeYFbtJAMfsjJlBarTOuGmYGUq3U=
X-Received: by 2002:a05:620a:12ae:: with SMTP id x14mr2180768qki.25.1616030173032;
 Wed, 17 Mar 2021 18:16:13 -0700 (PDT)
MIME-Version: 1.0
References: <PR0P264MB08896A3DF38FEA8A2A85A18DE16A9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
In-Reply-To: <PR0P264MB08896A3DF38FEA8A2A85A18DE16A9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 17 Mar 2021 18:15:44 -0700
Message-ID: <CAMKF1srin_dQMyDG+cNGPEruU+avSxX5rmS7S45jw1fwt29nUA@mail.gmail.com>
Subject: Re: [yocto] Recipes and meta-data directory tree
To: keydi <krzysztof.dudziak@thalesgroup.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 17, 2021 at 9:43 AM keydi <krzysztof.dudziak@thalesgroup.com> wrote:
>
> Two projects are given. They use different YP release each.
> Projects use also different target platform each.
>
> I wonder if differences in structuring metadata- and recipes- directory tree between
> these two projects result solely from different YP releases in use.
> Or if these can be a result also of modifications conducted by platform vendors.
>
> Any hints in what extend these result from different YP release numbers in use?
>
> project A (YP release 2.6)
> xxxx /yocto/
> xxxx/yocto/downloads
> xxxx/yocto/meta
> xxxx/yocto/sstate-cache
> xxxx/yocto/build
> xxxx/yocto/.repo
> xxxx/yocto/src
> xxxx/yocto/prebuilt
> xxxx/yocto/meta/
> xxxx/yocto/meta/poky
> xxxx/yocto/meta/meta-security
> xxxx/yocto/meta/meta-clang
> xxxx/yocto/meta/meta-openembedded
> xxxx/yocto/meta/poky/
> xxxx/yocto/meta/poky/meta
> xxxx/yocto/meta/poky/documentation
> xxxx/yocto/meta/poky/meta-poky
> xxxx/yocto/meta/poky/meta-selftest
> xxxx/yocto/meta/poky/bitbake
> xxxx/yocto/meta/poky/.git
> xxxx/yocto/meta/poky/meta-yocto-bsp
> xxxx/yocto/meta/poky/meta-skeleton
> xxxx/yocto/meta/poky/scripts
> + a set of layers value chain specific, meta-... subdirectories with meta/  as root-point.
>
> project B (YP release 2.0, actually backport of some later release
> which unfortunately is not reflected in poky.conf)
> yyyy/poky/
> yyyy/poky/meta-yocto
> yyyy/poky/meta
> yyyy/poky/documentation
> yyyy/poky/meta-selftest
> yyyy/poky/meta-selinux
> yyyy/poky/build
> yyyy/poky/meta-cust-installer
> yyyy/poky/bitbake
> yyyy/poky/meta-yocto-bsp
> yyyy/poky/meta-skeleton
> yyyy/poky/scripts
> + a set of layers value chain specific, meta-... subdirectories with poky/  as root-point.
>
> I mean mainly following differences:
> * Project A places a set of value-chain specific layers/meta-... directories at same
> directory level as poky.
> * meta-yocto apparently not present in project A tree
> * meta-poky apparently not present in project B tree

OE allows you to build own distributions, so what you are looking at
is two different distributions based on different
different releases but using same build system ( OpenEmbedded ) over
major releases the build system gets changed
too in terms of its metadata as well new features and some old cruft
removed like usual projects. so you have different
releases, and different machines and different distro all contributing
to the differences.

>
> 
>
