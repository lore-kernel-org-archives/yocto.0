Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.1110.1614799795346827942
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Mar 2021 11:29:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NRy/bR/M;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5344838C0625
	for <yocto@yoctoproject.org>; Wed,  3 Mar 2021 19:29:54 +0000 (UTC)
Received: by mail-yb1-f171.google.com with SMTP id c131so25766097ybf.7
        for <yocto@yoctoproject.org>; Wed, 03 Mar 2021 11:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yrQ9didu5tO3FvT/4pXsWECW4yKySJPUHeDIqjEkbrg=;
        b=NRy/bR/M/NayxaZeW5E+2q/ykc4CNJnCm1/zBS8Sxb2aot66DsEa1SLEhb4hMklolE
         szz3zjwmO8V4pctyPLlA6b71s4p3xzIUFllOi1HBNDkEbWItAzmT3fOWvtKzFT3A3TC3
         Bi/KDmjJ0PYkAqHqubFbFrthHHjCYNcitXuFn2yGEWA6vxvRwOMsPXfLnCdPtOIt6Kow
         6o4GYQCANagGEqSEvsl9yL6kUSpc62+2/XKp4wlni95jWIEWXT9/uDpgEunAeGOLTm6i
         +NVhsHJSKS/Clfg8+TXBF0UYWVdmRybDN2pYZyEelENka4YtisdEq8atmnfZ7VJ1KKsd
         WoPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yrQ9didu5tO3FvT/4pXsWECW4yKySJPUHeDIqjEkbrg=;
        b=qabztegt90hrwN6xpDpfC6oB3DDZC/LrcnBI9OdNiyavuYAK5GPJR0LleUwttNFdjI
         BpR+ZnQ2v3Cz2/t9GCQsiXYKY90FQjnVE0VnsuSTK+N2bzUP36mB5xmuepFRu6tyYVFi
         bWUu/WAYrv93MLMdRzuKRIuoiYPSNZw11OtWm2g4lLwrbFYrL9IrhDRGVhyrTBY90QhD
         fvKzwhy8EbmxiLKVzukwsICiT9sW0/dj7qowh4CvvWePn/2MgKept7wsldexqSTC+1Gq
         a+SlehoT7Iy49iQFi43rcxADFfZQNfeSWMOWsdrm7nKbXY18H4z9GqLTvb+jzpimV3UH
         P6ww==
X-Gm-Message-State: AOAM532pIFKjKy0D7k5cuIIwawJIErNtvt9+VdlKJZj7esMPZKEkH/8P
	u6dNCCYCaxe1OoA9aItFt1LkFG9ZDOBq6/zJWFpDD1QMKBCg3A==
X-Google-Smtp-Source: ABdhPJxURCE13rH195/BwA1nMJBRhQ2slT2mqsDgU3PudHqG6IeaMWSPEXF5KCcWID9Goj5Ghx5LbS1ml6IGRlIKQrM=
X-Received: by 2002:a25:b049:: with SMTP id e9mr1307786ybj.71.1614799792951;
 Wed, 03 Mar 2021 11:29:52 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv37Ca1eWCMXCOXarByH0xtDFtvNE9nF8BXdF4u9OKZdShg@mail.gmail.com>
 <CAMKF1sr3yX2qjKrfq5c9k4h_0zfDszDFD+dw5NX_2TtRyeH02Q@mail.gmail.com>
In-Reply-To: <CAMKF1sr3yX2qjKrfq5c9k4h_0zfDszDFD+dw5NX_2TtRyeH02Q@mail.gmail.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Wed, 3 Mar 2021 20:29:41 +0100
Message-ID: <CAAfyv349Bs2D4GdNOrZW_0ryeXjeRJa+EwXPemmkKrF9YNcA4A@mail.gmail.com>
Subject: Re: [yocto] cc1 binary in final rootfs even when no reference to it
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 3, 2021 at 6:31 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> this file comes from cpp output package. Can you check if somehow cpp
> is being pulled into your image
It turns out that cpp + cpp-symlinks is pulled by python3-pycparser.
It is really necessary to be as runtime dependency in recipe?
>
> On Wed, Mar 3, 2021 at 6:10 AM Marek Belisko <marek.belisko@gmail.com> wrote:
> >
> > Hello,
> >
> > on dunfell images I start seeing that cc1 binary (checked by buildhistory):
> > files-in-image.txt:-rwxr-xr-x root       root         17674124
> > ./usr/libexec/gcc/arm-poky-linux-gnueabi/9.3.0/cc1
> >
> > is present in the final image. I check taskexp but cannot find any
> > reference which pointes to it.
> > Any ideas how to check or it's a common problem?
> >
> > Thanks and regards,
> >
> > marek
> >
> > --
> > as simple and primitive as possible
> > -------------------------------------------------
> > Marek Belisko - OPEN-NANDRA
> > Freelance Developer
> >
> > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > Tel: +421 915 052 184
> > skype: marekwhite
> > twitter: #opennandra
> > web: http://open-nandra.com
> >
> > 
> >



-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
