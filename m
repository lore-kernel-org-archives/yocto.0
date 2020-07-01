Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.11769.1593565711944612657
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 18:08:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=k5qMiy7j;
 spf=pass (domain: gmail.com, ip: 209.85.221.48, mailfrom: jpewhacker@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id j4so19609156wrp.10
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2020 18:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=4lxrxNYzRgWMaNaqjZQV4ZRuP468lhu2dR+Uev/y+/g=;
        b=k5qMiy7jzgRY1ujLY9/nkiPj6J3Y/KrupN0EK2BMjEijsz5vk/yxfTkPYuyNFaEbYD
         Zacpd7m0V94ixtb/LNvW+wwo6EQdMLEH+o6klGzad8Ti9GJv+WSTjt+7GiC608Wo3o+Q
         qiSHZCuRPNuw6YT3/kpaujcwEUN+q3LhB7Zv+tdL8+ODzqShx6R/kF8H9BImHzd3wcve
         DYhsm5X1AT0Ad/IsKpOT2QgiKKT9+6j6LQQ85TFf0AEAc5P9BAIhWZdslqBRRtEzlcrM
         J9GD2NVjtnnVlYt0/W2C9sIGUywS7Ua0RDfC1S+dR6O+fy0Evu14o1JWIPpOrOngpZ9f
         CoqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=4lxrxNYzRgWMaNaqjZQV4ZRuP468lhu2dR+Uev/y+/g=;
        b=N2Ds93iDIS1ShACbJ821uGCRqbYG8BJgegGkzXsHOSSiBS0UpVtKBIJfCG7QI/WTGr
         2S5QWsRCLFPi4KoTjHnXWsC+Yu+iW7ofWXP3lJWupMJe0WqmAVfAK3a5Pyv4EIvEJi7H
         42N4KC9+/eMXVH010GQtB8RBmwBafhRgFIZdnWWCGCcy1qwF0unmBWHVXYllPmi+MJ23
         QGuPmjHWFV1sWqD1T+C44h+IqLOUnL60gFTXW/ZJ7LCipp5n2iv2Yxhv1VcX4MTyD5a9
         8sY1bYr71mRQNOAUcSEzc49koOnZerHffBDdepxr/Yp8D2AjbV+51HvEAQarEsThlgbB
         sSog==
X-Gm-Message-State: AOAM530663ym9pTgXg9TLLz5HI1130CK0SGu1nE/TdJDXSIzYBK9uY82
	J9HTrXVmFyIm4Ot3EuxO+m6icir+5yZ8IWRhcvM=
X-Google-Smtp-Source: ABdhPJwyaiWNRAi5yxUCYBpqTNyYuSVpiK7bLNjeBOyzcnWNCBO2DVzD9GzkJT3ALsyYWs3GQKk96JdmrOU6Hv9CHYM=
X-Received: by 2002:adf:f104:: with SMTP id r4mr25281524wro.90.1593565710417;
 Tue, 30 Jun 2020 18:08:30 -0700 (PDT)
MIME-Version: 1.0
References: <dlSN.1593554206630147499.1cxR@lists.yoctoproject.org>
In-Reply-To: <dlSN.1593554206630147499.1cxR@lists.yoctoproject.org>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Tue, 30 Jun 2020 20:08:18 -0500
Message-ID: <CAJdd5GYmGrZk3B5+2H9Ud=A+YWXJe_j4EN+AEM=e+QXxcmJGKw@mail.gmail.com>
Subject: Re: [yocto] Dunfell 3.1.1 gcc-sanitizers build failure
To: MikeB <mabnhdev@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 30, 2020 at 4:56 PM MikeB <mabnhdev@gmail.com> wrote:
>
> I recently tried upgrading from 3.1.0 to 3.1.1.  I'm not sure if this is=
 a bug or just my problem.  I maintain five different architectures and all=
 five have the same failure in gcc-sanitizers as I'm trying to build the SD=
K.
>
> | cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-share=
d/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or directory
> | WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/a=
arch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1 exi=
t 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" > /data/mabnhdev/exos-yocto-dun=
fell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/g=
cc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.new'
> | ERROR: Execution of '/data/mabnhdev/exos-yocto-dunfell/build/exos-arm6=
4/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure=
.31505' failed with exit code 1:
> | cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-share=
d/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or directory
> | WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/a=
arch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1 exi=
t 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" > /data/mabnhdev/exos-yocto-dun=
fell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/g=
cc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.new'
>
> At first, I thought this may be a dependency issue because I inherit "rm=
_work" to tidy up; but I tried a build without it - i.e. keeping all work a=
round - and got the same failure.

I've encountered a similar error just today when switching SDKMACHINE.
Are you using archive.bbclass by any chance (INHERIT +=3D "archive")? I
just recently fixed a bug in archive.bbclass
(7a57e777597d7f66d065582cfb83cd8f9468f4af) where the archiving of
gcc-source raced with do_preconfigure and I'm wondering if it's
related

>
> I've attached the full error log.  Any troubleshooting advice would be a=
ppreciated.=20
