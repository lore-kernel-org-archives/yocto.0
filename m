Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web11.15.1614881896167898150
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Mar 2021 10:18:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CyCgWJSU;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id d20so27807908qkc.2
        for <yocto@lists.yoctoproject.org>; Thu, 04 Mar 2021 10:18:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+iF+Egb8tFUvi0J6mdge/lzn0djl0cKyVBvZGC+X9nI=;
        b=CyCgWJSUVlpGnQO7ipgatq3noEEsLeNCek/LaCr8oY96q3+I1sVxNry7Uf/m8VZPEn
         /A2CZvc8cqa8+fF7wY2YQzTWrZLV4cq3eW8uG8Iq2ILuV9wp6y1psVlwUaTamGft2+Ij
         lBHdAXnvlAubWt/kVnruU/prfj7A0XYyBbjFO0DF5utIVwcIGnMoV2E6ZXJJkuOX1BSs
         wchdsf+OHqPOBFbGQ1Skxnl2lAkWIXejdBnLGwV/O+HHGwbRAyx5pr/gl0SquF6iFiC7
         GJqCJaMd6FdG5GS9AqfZfdJ0t4N6HuRh1SmoZB5Yo/XLs4BJTVfVge5sJCAyHGQ15MoW
         66Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+iF+Egb8tFUvi0J6mdge/lzn0djl0cKyVBvZGC+X9nI=;
        b=I8ZBrhgf+QSPHt+MSa5SNxqZACsGeCiEMVyiEdUHY/k4cZBFQk7mQgQ7pVAgpAKT4H
         M6rHsmIlUqlSKclYXuXaF1t+giym+ahqbCWHoyzYhOuUntLtnUNaWxVUhvK9w2J41Dnr
         GzYzIj5CBBv2ffRnulJf9xpagzg5ZjtCFbTge8Eh3yiAEfkpTqpyl1ssnj6yxVVlmntc
         ET8LQ+3vDi+PjEDl8NFuXYF6nQ1A/8NC3GO9D3Y9XEiVCymJybst/c0P4r6yy8Je9PJt
         nMqGVhQC0hJ2WT4IiX5wJ9r3PNyTAuyc3g4P3KqD00WCgsZ0347KHJyXyoMRKfEmM/GC
         QBoQ==
X-Gm-Message-State: AOAM533bthEmRXFuQHO8fPvVodFvOK5KZFqlYMoKd6n8DbeHZrBbKwHW
	t61Re4OkZXBcrrxf3Toq2Ko7lAsBz+YSSpJnDGA=
X-Google-Smtp-Source: ABdhPJxtDX/nWz57NBN/UNM9htF9JeliHqnTZ7uc8eQngvPdbuY8ANVS9+ULCdwP2w4bJgmdwp0jhv1uImcd3cUI0ns=
X-Received: by 2002:a37:a350:: with SMTP id m77mr5154415qke.146.1614881895071;
 Thu, 04 Mar 2021 10:18:15 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv37Ca1eWCMXCOXarByH0xtDFtvNE9nF8BXdF4u9OKZdShg@mail.gmail.com>
 <CAMKF1sr3yX2qjKrfq5c9k4h_0zfDszDFD+dw5NX_2TtRyeH02Q@mail.gmail.com>
 <CAAfyv349Bs2D4GdNOrZW_0ryeXjeRJa+EwXPemmkKrF9YNcA4A@mail.gmail.com>
 <9f6c9505-0e34-9ffd-862f-32f2f5b1b1ab@gmail.com> <1319345d-a3ea-44d0-81a7-e540411355de@iki.fi>
In-Reply-To: <1319345d-a3ea-44d0-81a7-e540411355de@iki.fi>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 4 Mar 2021 10:17:48 -0800
Message-ID: <CAMKF1soqAnQ3cjFRqEgveoLdM+ZXoTO-bTQLU48QEgmY_zTFCQ@mail.gmail.com>
Subject: Re: [yocto] cc1 binary in final rootfs even when no reference to it
To: Anders Montonen <Anders.Montonen@iki.fi>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 4, 2021 at 10:04 AM Anders Montonen <Anders.Montonen@iki.fi> wrote:
>
> On 4.3.2021 2.06, Khem Raj wrote:
> > On 3/3/21 11:29 AM, Belisko Marek wrote:
> >> On Wed, Mar 3, 2021 at 6:31 PM Khem Raj <raj.khem@gmail.com> wrote:
> >>>
> >>> this file comes from cpp output package. Can you check if somehow cpp
> >>> is being pulled into your image
> >> It turns out that cpp + cpp-symlinks is pulled by python3-pycparser.
> >> It is really necessary to be as runtime dependency in recipe?
> > it a parser for C language written in python, so my initial thoughts
> > will be no. but there might be some dependencies on cpp, you might
> > have to dive a bit deeper.
>
>
> I've run into this, and from memory cpp is needed if you intend to run
> the parser, but since the dependency is added through
> RDEPENDS_${PN}_class-target it gets installed even if you're only
> running the parser on the host. I ended up removing the target
> dependency due to license conflicts, and didn't encounter any problems.
>

right perhaps its fine to drop this and maybe add it as rsuggests or something

> -anders
>
>
> 
>
