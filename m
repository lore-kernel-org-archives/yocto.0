Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
 by mx.groups.io with SMTP id smtpd.web10.10757.1615824085350579989
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Mar 2021 09:01:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ne2JrNuX;
 spf=pass (domain: gmail.com, ip: 209.85.166.171, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-il1-f171.google.com with SMTP id v14so9797546ilj.11
        for <yocto@lists.yoctoproject.org>; Mon, 15 Mar 2021 09:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=277grrDngFpTImeuj08h59gs0BvPyC2QF3zJ/IqToHM=;
        b=Ne2JrNuXkexT3lnzC0LKpaQ2WSPLtrlN+6F5ZqBR6JOqVFv2Xmg0aB1PbCVkFyTu4Z
         MHOmmw8OsO31jvdlqrIRvjAI/JGL45LHDshwytmFKFaJg48+10D13uRKLbkYB6EICpjq
         3+CMwnIwOT8Fi1vjr5xxPpz2gsgmp0Rf5zRBOJjh7JGC9H7lsBECDUT2yFTvNUhXABIJ
         op43FPLjWQWX8ZVNu02AAd4unJHCmYfrC4l8H3QUz+EGSdXwoeRKiUIDSf716sNG3H4a
         T89ZsRdwEFoc1Hp5xt7d6uIWx0qK3SgNOoSaJJEoSPuvIP7bQaL0DFYM04yAZcFqbSew
         fiwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=277grrDngFpTImeuj08h59gs0BvPyC2QF3zJ/IqToHM=;
        b=JDgn4HPmkXIsP/iPxOzYiwNB7H3k99sw7/0/3xjBcEqMXPbydnROsAz4b23F0cP2bf
         lrTthTbArkycqxV5dDkrSLom1FVQB5Iy9coCdEgL4U1xLikXT+N+YY7YQ7nNAd3Q99aN
         Qc/FSvpMg9Ok1ZeHayFdUP/nBeO1uyuHythsBY7nLMCOlnXJJ9yTDQtglIXqTQm2jCWe
         PtrqjKqZrzidfBtyspFWp+qD0gIiBXtndRpiCfRo+gDNd8WMJ3ai+b14I7tcgB1Jsqrn
         u7yNR/JGwhoCmo2V1Jf7YPAWwt6S6pqOIYJe5ZVpm7hX97/ZXIQ2dpQI/jXYngavOM3K
         9N/w==
X-Gm-Message-State: AOAM531/4vtw6k6moXs9iCYR/PvxlM/Dw8cY7XDx25fCDCygB//PRKa/
	geZxkqP/aFVOCAkUnSx5C1XIhE1Y4KnBpaPCTgo=
X-Google-Smtp-Source: ABdhPJwZjOiNu/os8R9Pc9eXzM4N5N0x4U6ftWfQ77b4Gi5aUys/E9Ozu4rA7DwJcZ7n2/cjfNxnfwt5gw2W67RCKOo=
X-Received: by 2002:a92:6511:: with SMTP id z17mr241041ilb.232.1615824084426;
 Mon, 15 Mar 2021 09:01:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LyKF9dAcPc9VVBTNcurVzNp3wgmgfVgDhMdK35fHtn_hw@mail.gmail.com>
 <29235.1615763811371292564@lists.yoctoproject.org>
In-Reply-To: <29235.1615763811371292564@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 15 Mar 2021 17:01:13 +0100
Message-ID: <CAGAf8LzJxFDXnf0T99oCEo7iN37p0K0_CZWH=2r1NHW=ypZNvg@mail.gmail.com>
Subject: Re: [yocto] How can I create a truly minimal distribution that runs entirely from RAM?
To: p32@tuta.io
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

> How can I instruct Yocto to execute do_image_cpio first?

YOCTO people are entitled to answer that question. Aren't ya, INTEL folks???

Actually, iNTEL (IOTG) is responsible for that (since YOCTO support is
90% from INTEL), and I assume INTEL YOCTO people are entitled
answering that///

Thank you,
Zee (Zoran)
_______

On Mon, Mar 15, 2021 at 12:17 AM p32 via lists.yoctoproject.org
<p32=tuta.io@lists.yoctoproject.org> wrote:
>
> Thank you very much. I figured out that you can have Yocto create a suitable U-Boot wrapper as follows (from the image recipe):
> IMAGE_FSTYPES = "cpio.xz.u-boot"
>
> Now there is only one last issue that I wasn't able to solve yet: I would like Yocto to not only generate this U-Boot file but also add it to the boot partition of a wic.gz image. I tried to extend the image recipe as follows:
> IMAGE_FSTYPES = "cpio.xz.u-boot wic.gz"
> IMAGE_BOOT_FILES_append += "${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.cpio.xz.u-boot"
>
> Unfortunately, there is a dependency issue here. BitBake schedules the do_image_wic task before the do_image_cpio task, which creates the u-boot file. I tried to fix it as follows (from the image recipe):
> do_image_wic[depends] = "my-image-recipe:do_image_cpio"
>
> While the dependency graph acknowledges this dependency, BitBake does not seem to care about it. Whatever I try, do_image_wic is always executed first and, obviously, does not succeed. I think the problem is comparable to the unsolved one outlined here:
> https://stackoverflow.com/questions/58954170/yocto-creating-a-dependency-for-wic-to-cpio-gz-image
>
> How can I instruct Yocto to execute do_image_cpio first?
>
> 
>
