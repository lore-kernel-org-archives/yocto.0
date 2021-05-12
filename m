Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.5703.1620860838365180714
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 16:07:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XDr4hnC6;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9E62A38C0652
	for <yocto@yoctoproject.org>; Wed, 12 May 2021 23:07:17 +0000 (UTC)
Received: by mail-qk1-f170.google.com with SMTP id l129so23955087qke.8
        for <yocto@yoctoproject.org>; Wed, 12 May 2021 16:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3onnCYDYC49w8Ska8bwsWHK018qpf2tjIz3th8UYKvY=;
        b=XDr4hnC6SFTw6MOlA21dJKUGHxVJ+Xa/xfN5gcb7wH/op3BqunLX0VEsExUs4GAvAN
         a7f40e1zBJeYh9qDZ8z2uFoBn0c1nB6KV45Q+J6hdY3lferFxRdM/PcSrAClOAazDjdQ
         CIipWA/5eLGNbAHK/bFS0bxyqwsIPK9io4yKeg0ZOVmcHONzIOnPS2ITz3n5H5byNFS7
         d/LBZwwAx7IUJtYeaQKpXzmbdibz4+1z3J3gDIe4tvwZFrDIKsg3Fz4PzKNaZgvGuxTT
         uU+AvHggb3zyHYkekcLga9FDG5ZcKe4mGulRNw/IZBxaIBQUq2erztBBzsZjLfxyh0tS
         8kjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3onnCYDYC49w8Ska8bwsWHK018qpf2tjIz3th8UYKvY=;
        b=JVYOpx05lP0oNhXUQA0I2ln6fRjpRpJZdkGo/ZPYTU1cxDihf10nth4+w5LVCtsY54
         2i+y7aU8AmJHPBDtG0kNMUdJQfM6kaCV+Jlqk+P0RjnAr+z6tiUvLZDMPQUxViVLYQ7r
         dfAhjP8RjyFg8IidmDm8tfwy+n383W8jiy13N92uOueGgrasf4AhjMsxQE7AeEUtuAYg
         f1v15jYRsaV5OM7RJvRb/Wu6A8QhQ8P/FBldhQQTyuHaS/cc4LiqtFt+xQGEMhdEOrXu
         oE1Rr/qxhv4VHoYflq9oDvSKOdGrmv1DPJWKEGKzCEyygB9jkc3I2zJwjsHb0x3G6ju6
         aVLg==
X-Gm-Message-State: AOAM530Z4yy5UIvA86uJPmt5GPTv9OhtM154OS5baxWtU44T0HQs8Gia
	x6NowjoTfXCXPGPP5kn5yMNKol2gaaxVcLY78lI=
X-Google-Smtp-Source: ABdhPJx7733YPbVsu8GBZ1bnBSh5Bn0E0r2ssL1uj0rTFgnkPAznp9jPDN2zz6+aQM+mOBB19yqqD5o+kl0mVENZMmA=
X-Received: by 2002:a37:994:: with SMTP id 142mr35431391qkj.119.1620860836482;
 Wed, 12 May 2021 16:07:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAF2aNtzrjYOUYdevN83fJ-Dn6Jjp1SsNh1Q5zO0MXFEjW4xcUg@mail.gmail.com>
In-Reply-To: <CAF2aNtzrjYOUYdevN83fJ-Dn6Jjp1SsNh1Q5zO0MXFEjW4xcUg@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 12 May 2021 16:06:50 -0700
Message-ID: <CAMKF1sqxa+F4POAOb78tZd2ArPPk9ZTjfRMWSWEXyDyXxug9Pw@mail.gmail.com>
Subject: Re: [yocto] Yocto with xtensa
To: Jack Daniels <onyx22574@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello Jack,

I think we do not have support for Xtensa architecture working out of
box upstream. Although it should be possible to add it with little
effort, but no one has spun patches to do so
thus far.

Thanks
-Khem

On Wed, May 12, 2021 at 1:29 PM Jack Daniels <onyx22574@gmail.com> wrote:
>
> Dears,
>
> I am looking for a way to include sample code for DSP (xtensa) with Yocto/Linux. what would be the procedure to include such a code and eventually interprocessor communication between xtensa core and CPU under Yocto/Linux?
>
> Thank you.
> BR/J
>
>
> 
>
