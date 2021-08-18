Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web10.49916.1629259401540867788
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 21:03:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RfMQs+CG;
 spf=pass (domain: gmail.com, ip: 209.85.214.173, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id f3so1005791plg.3
        for <yocto@lists.yoctoproject.org>; Tue, 17 Aug 2021 21:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Hiyg5OQyZkaAAM3L7wGnSs2AkE8YmdfgJIsJWI7mN6E=;
        b=RfMQs+CGL72TbeRYeHcFUZUYW2Ykl7/9vDBfG9SjkG8Fd+4y80EDQoLn3wojOCUDQm
         HC192u8bTP58bj49n3kYf7/uYw4yHFehC9UAFJwQwEJyEsmvNugexjU6dsgG2t7jhcqp
         zkeY4QPxb4UoG+/ByQQjt1ASa/mhURK0RYYJhKlHxkJscXNywSZZNOxWYLgsfHT5Mjax
         pN8TbAwqTOrqckg06W8GlgZNmriffhhT1CDMlF10rC3ullrl/Tt+bypBnedI6DOmbIju
         iuL6vZE55kBqaZfe5QjQ9coCdjD+izf82Um/XMxcd4Av5ks9fH/91cFQWkK1fzEtL6xN
         R9Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Hiyg5OQyZkaAAM3L7wGnSs2AkE8YmdfgJIsJWI7mN6E=;
        b=p5a3BVx+dFG9Qaigm7NGVOD8EqCfQLhjUM+t8MBb+i20+XTyj9gENYLWuodeLrgmWH
         n6Cjo1IVDHpBpZFzmU3D4LMVbBxb9x6B8Rt5a1rnhk4e8TnHeXB3Vh6fyEltYEML3P4N
         RKB2RPRyVH4pH3cLHSfuaXwuTIf1nqO8ImkQ8gu5RW93O1pkSNAInRtccJJASOiyNhMi
         6kift1AxxVgESI57p/6cJPoThTALzZxmnyIJ1CatkIljEPF8BjyfaEe/P/zRYubvvUlq
         oxugoq6SKJnoAF0J/0U+JbqdvGzj9MljQDiW2kI29NFYoKyXFTIzUHZr59GaUbPtZ+aF
         xyCQ==
X-Gm-Message-State: AOAM532sIWPjgiZyznpimHkphGhj5ydToZLblDq+rxbwNDRZTY2zo+ZG
	H8V1lX3Ux0xRWN96+PSj9YUvf0gkz31ofaNUq7U=
X-Google-Smtp-Source: ABdhPJxiC+NCtfB/J0sRscgNJi7qxojDZeHfrvVqf3Yg2fX/i0HMreywaIGntSJ6hylE8LEx8hKCgFBbm/vF4VINAnU=
X-Received: by 2002:a17:90a:bd18:: with SMTP id y24mr7266873pjr.83.1629259400808;
 Tue, 17 Aug 2021 21:03:20 -0700 (PDT)
MIME-Version: 1.0
References: <195aff34-e88c-f8cb-ee51-5acbb16fa782@gmail.com>
 <5012.1629221783349156471@lists.yoctoproject.org> <CAMKF1soOuqJqZSxOmnZu-J29+xtusaWiNKeebVK8jHd8gPdAXg@mail.gmail.com>
In-Reply-To: <CAMKF1soOuqJqZSxOmnZu-J29+xtusaWiNKeebVK8jHd8gPdAXg@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 18 Aug 2021 06:03:09 +0200
Message-ID: <CAGAf8LyhWB2hvFgufgNLq077BpHvA-PKLbEdZx4hJxibR6i9gg@mail.gmail.com>
Subject: Re: [yocto] Getting bitbake error after 54% recipes are baked. #dunfell #yocto
To: Khem Raj <raj.khem@gmail.com>, "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: vishal.rana118@gmail.com, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

> keep in mind that based upon how many vcores you allocate to VM will
> determine memory pressure
> as well. So if you have 2 cores perhaps 4GB is ok or maybe even 4
> cores might workout ok but some bigger packages like
> chromium etc. need minimal 16GB RAM to build.

This should be reflected somewhere in YOCTO documentation. Especially
for chromium.

In the section: Host HW Requirements (with some explanation why).

Zee
_______


On Tue, Aug 17, 2021 at 10:14 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Tue, Aug 17, 2021 at 10:36 AM <vishal.rana118@gmail.com> wrote:
> >
> > Previously SDRAM was 3 GB allocated.
> >
> > After changing SDRAM to 4 GB.
> > then trying to build/make/bitbake..
>
> keep in mind that based upon how many vcores you allocate to VM will
> determine memory pressure
> as well. So if you have 2 cores perhaps 4GB is ok or maybe even 4
> cores might workout ok but some bigger packages like
> chromium etc. need minimal 16GB RAM to build.
>
> >
> > getting new error i.e.
> > Unable to connect to bitbake server
>
> this seems that it finds bitbake is still running and its trying to
> reconnect to it. Maybe just reboot the box and try again
>
> >
> >
>
> 
>
